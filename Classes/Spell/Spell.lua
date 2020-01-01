local DMW = DMW
local Spell = DMW.Classes.Spell

function Spell:New(SpellID, CastType)
    self.Ranks = SpellID
    self.SpellID = self.Ranks[1]
    self.SpellName = GetSpellInfo(self.SpellID)
    self.BaseCD = GetSpellBaseCooldown(self.SpellID) / 1000
    self.BaseGCD = select(2, GetSpellBaseCooldown(self.SpellID)) / 1000
    self.MinRange = select(5,GetSpellInfo(self.SpellID)) or 0
    self.MaxRange = select(6,GetSpellInfo(self.SpellID)) or 0
    self.CastType = CastType or "Normal" -- Ground, Normal, Pet ect.
    self.IsHarmful = IsHarmfulSpell(self.SpellName) or false
    self.IsHelpful = IsHelpfulSpell(self.SpellName) or false
    self.LastCastTime = 0
    self.LastBotTarget = "player"
    local costTable = GetSpellPowerCost(self.SpellID)
    for _, costInfo in pairs(costTable) do
        if costInfo.costPerSec > 0 then
            self.CastType = "Channel"
        end
    end
end

function Spell:Cost(Rank)
    local CostTable
    if Rank then
        CostTable = GetSpellPowerCost(self.Ranks[Rank])
    else
        CostTable = GetSpellPowerCost(self.SpellName)
    end
    if CostTable then
        for _, costInfo in pairs(CostTable) do
            if costInfo.cost > 0 then
                return costInfo.cost
            end
        end
    end
    return 0
end

function Spell:CD(Rank)
    if DMW.Pulses == self.CDUpdate then
        return self.CDCache
    end
    local LocStart, LocDuration, Start, CD
    self.CDUpdate = DMW.Pulses
    if not Rank then
        LocStart, LocDuration = GetSpellLossOfControlCooldown(self.SpellName)
        Start, CD = GetSpellCooldown(self.SpellName)
    else
        LocStart, LocDuration = GetSpellLossOfControlCooldown(self.Ranks[Rank])
        Start, CD = GetSpellCooldown(self.Ranks[Rank])
    end
    if not Start then
        Start, CD = GetSpellCooldown(self.SpellID)
    end
	if LocStart and (LocStart + LocDuration) > (Start + CD) then
		Start = LocStart
		CD = LocDuration
	end
    local FinalCD = 0
    if Start > 0 and CD > 0 then
        FinalCD = Start + CD - DMW.Time
    else
        self.CDCache = 0
        return 0
    end
    if DMW.Player:GCDRemain() > 0 then
        FinalCD = FinalCD
    else
        FinalCD = FinalCD - 0.1
    end
    if FinalCD < 0 then FinalCD = 0 end
    self.CDCache = FinalCD
    return FinalCD
end

function Spell:IsReady(Rank)
    if self:Known(Rank) and self:Usable(Rank) and self:CD(Rank) == 0 then
        return true
    end
    return false
end

function Spell:Charges(Rank)
    if Rank then
        return GetSpellCharges(self.Ranks[Rank])
    else
        return GetSpellCharges(self.SpellName)
    end
end

function Spell:ChargesFrac(Rank)
    local Charges, MaxCharges, Start, Duration
    if Rank then
        Charges, MaxCharges, Start, Duration = GetSpellCharges(self.Ranks[Rank])
    else
        Charges, MaxCharges, Start, Duration = GetSpellCharges(self.SpellName)
    end
    if Charges ~= MaxCharges then
        return Charges + (1 - (Start + Duration - DMW.Time) / Duration)
    else
        return Charges
    end
end

function Spell:RechargeTime(Rank)
    local Charges, MaxCharges, Start, Duration
    if Rank then
        Charges, MaxCharges, Start, Duration = GetSpellCharges(self.Ranks[Rank])
    else
        Charges, MaxCharges, Start, Duration = GetSpellCharges(self.SpellName)
    end
    if Charges ~= MaxCharges then
        return Start + Duration - DMW.Time
    else
        return 0
    end
end

function Spell:FullRechargeTime(Rank)
    local Charges, MaxCharges, Start, Duration
    if Rank then
        Charges, MaxCharges, Start, Duration = GetSpellCharges(self.Ranks[Rank])
    else
        Charges, MaxCharges, Start, Duration = GetSpellCharges(self.SpellName)
    end
    if Charges ~= MaxCharges then
        local ChargesFracRemain = MaxCharges - (Charges + (1 - (Start + Duration - DMW.Time) / Duration))
        return ChargesFracRemain * Duration
    else
        return 0
    end
end

function Spell:CastTime(Rank)
    if Rank then
        return select(4, GetSpellInfo(self.Ranks[Rank])) / 1000
    end
    return select(4, GetSpellInfo(self.SpellName)) / 1000
end

function Spell:Known(Rank)
    if Rank then
        return IsSpellKnown(self.Ranks[Rank])
    end
    return GetSpellInfo(self.SpellName)
end

function Spell:Usable(Rank)
    return (not Rank and IsUsableSpell(self.SpellName)) or (Rank and IsUsableSpell(self.Ranks[Rank]))
end

function Spell:HighestRank()
    for i = #self.Ranks, 1, -1 do
        if IsSpellKnown(self.Ranks[i]) then
            return i
        end
    end
end

function Spell:getTotemUnit()
    local totemLinked = DMW.Player.Totems[self.TotemElement]
    if totemLinked and totemLinked.Name and totemLinked.Unit == nil then
        for k,v in pairs(DMW.Units) do
            if v.Name:find(totemLinked.RealName) and ObjectCreator(v.Pointer) == DMW.Player.Pointer then
                totemLinked.Unit = v
                break
            end
        end
    end
end

-- ...totem keys not to overwrite
function Spell:CheckTotem(Unit,...)
    -- self:getTotemUnit()
    local playerToUnitRange = (Unit == DMW.Player or Unit == nil) and 0 or Unit:RawDistance()
    local range = self.Key == "TremorTotem" and 35 or 25
    if playerToUnitRange > range then
        -- print("Unit out of range, range = ")
        return false, "Unit out of range, range = "
    end
    if DMW.Player.Totems[self.TotemElement].Name == nil then
        -- print("no totem")
        return true, "no totem"
    end
    local totemUnit = DMW.Player.Totems[self.TotemElement].Unit
    if totemUnit ~= nil then
        local totemToUnitRange = (Unit == DMW.Player or Unit == nil) and 0 or totemUnit:RawDistance(Unit)
        if totemToUnitRange > range then
            -- print("existing totem is out of range")
            return true, "existing totem is out of range"
        else
            if DMW.Player.Totems[self.TotemElement].Name == self.Key then
                -- print("same totem, no need to use new")
                return false, "same totem, no need to use new"
            end
            for i=1, select("#", ...) do
                local noOverwrite = select(i, ...)
                if DMW.Player.Totems[self.TotemElement].Name == noOverwrite then
                    -- print("no overwrite for this")
                    return false, "no overwrite for this"
                end
            end
            -- print("need to cast totem, all ok")
            return true, "need to cast totem, all ok"
        end
    end
end
