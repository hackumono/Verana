local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 40)
function onGetFormulaValues(cid, level, skill, attack, factor)
return -((1.6*skill + level) * 0.7 ), -((1.8*skill + level) * 0.9 )
end
setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")
function onUseWeapon(cid, var)
return doCombat(cid, combat, var)
end 