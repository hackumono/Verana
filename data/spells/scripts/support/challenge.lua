local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)

local area = createCombatArea(AREA_SQUARE1X1)
setCombatArea(combat, area)

function onTargetCreature(cid, target) return doChallengeCreature(cid, target) end
setCombatCallback(combat, CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature")

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
