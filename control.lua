
script.on_event(defines.events.on_resource_depleted, function(event)

local E = event.entity

	if string.match(E.name , 'medium') == nil and string.match(E.name , 'low') == nil and string.match(E.name , 'trace') == nil then
	
		log(serpent.block(E.name))
		game.surfaces["nauvis"].create_entity{name=E.name..'-medium',position={E.position.x,E.position.y},force=E.force, amount = 2000}
	
	end

end)