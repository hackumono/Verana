local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)

local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, 10000)
setConditionParam(condition, CONDITION_PARAM_SKILL_MELEEPERCENT, 135)
setConditionParam(condition, CONDITION_PARAM_SKILL_SHIELDPERCENT, -100)
setConditionParam(condition, CONDITION_PARAM_BUFF, true)
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
