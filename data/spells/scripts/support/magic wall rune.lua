local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatParam(combat, COMBAT_PARAM_CREATEITEM, 1497)

function onCastSpell(cid, var)
    if isPlayer(cid) == TRUE then
        if exhaustion.check(cid, 30030) then
            return FALSE
        else
            return doRemoveCondition(cid, CONDITION_PARALYZE), doCombat(cid, combat, var)
        end
    else
        return doRemoveCondition(cid, CONDITION_PARALYZE), doCombat(cid, combat, var)
    end
end  
