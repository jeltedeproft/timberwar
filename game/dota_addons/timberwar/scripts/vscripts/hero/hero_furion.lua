function furion_sprout( keys )
	local caster = keys.caster
	local ability = keys.ability
	local ability_level = ability:GetLevel() - 1
	local target = keys.target_points[1]

	local duration = ability:GetLevelSpecialValueFor("duration", ability_level)
	local vision_range = ability:GetLevelSpecialValueFor("vision_range", ability_level)

	CreateTempTree(target,duration)
	ResolveNPCPositions(target, 64.0 ) --Tree Radius
	AddFOWViewer( caster:GetTeamNumber(), target, vision_range, duration, false )
	EmitSoundOnLocationWithCaster( target, "Hero_Furion.Sprout", caster )
end