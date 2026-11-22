require "__pypostprocessing__.lib"

require "scripts/wiki/text-pages"

py.on_event(defines.events.on_tick, function(event)
    local func_list = remote.call("on_nth_tick", "query", "pyro", event.tick)
    for _, func in pairs(func_list) do
        py.mod_nth_tick_funcs[func]()
    end
end)

py.finalize_events()
