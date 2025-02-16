local f = CreateFrame("Frame")

f:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")

f:SetScript("OnEvent", function(self, event)
    local timestamp, subEvent, _, sourceGUID, _, _, _, _, _, _, _, spellID, spellName, spellSchool, amount, overkill, school, resisted, blocked, absorbed, critical = CombatLogGetCurrentEventInfo()

    if (subEvent == "SWING_DAMAGE" or subEvent == "SPELL_DAMAGE" or subEvent == "SPELL_PERIODIC_DAMAGE") then
        if sourceGUID == UnitGUID("player") and critical then            
            C_GamePad.SetVibration("High", 1)
        end
    end
end)
