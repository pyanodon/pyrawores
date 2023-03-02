local Event = require('__stdlib__/stdlib/event/event')

Event.register(Event.core_events.init_and_config, function()
    remote.call('pywiki', 'add_section', 'rawores')

    remote.call('pywiki', 'add_page', {
        name = 'big-mines',
        section = 'rawores',
        text_only = true
    })
end)