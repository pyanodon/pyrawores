require "__pypostprocessing__.lib"

require "scripts/wiki/text-pages"

remote.add_interface("pyro", {
    ---@param func string
    execute_on_nth_tick = function(func)
        py.mod_nth_tick_funcs[func]()
    end
})

py.finalize_events()
