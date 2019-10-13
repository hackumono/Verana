local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)

local condition = createConditionObject(CONDITION_LIGHT)
setConditionParam(condition, CONDITION_PARAM_LIGHT_LEVEL, 9)
setConditionParam(condition, CONDITION_PARAM_LIGHT_COLOR, 215)
setConditionParam(condition, CONDITION_PARAM_TICKS, 33 * 60 * 1000)
setCombatCondition(combat, condition)

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
