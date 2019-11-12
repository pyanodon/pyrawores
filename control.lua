
script.on_event(defines.events.on_resource_depleted, function(event)

local E = event.entity

	if string.match(E.name , 'medium') == nil and string.match(E.name , 'low') == nil and string.match(E.name , 'trace') == nil then

		log(serpent.block(E.name))
		game.surfaces["nauvis"].create_entity{name=E.name..'-medium',position={E.position.x,E.position.y},force=E.force, amount = 20}

	elseif string.match(E.name , 'medium') ~= nil then

		log(serpent.block(E.name))
		game.surfaces["nauvis"].create_entity{name=string.gsub(E.name,'medium','low'),position={E.position.x,E.position.y},force=E.force, amount = 20}

	elseif string.match(E.name , 'low') ~= nil then

		log(serpent.block(E.name))
		game.surfaces["nauvis"].create_entity{name=string.gsub(E.name,'low','trace'),position={E.position.x,E.position.y},force=E.force, amount = 20}

	end

end)
