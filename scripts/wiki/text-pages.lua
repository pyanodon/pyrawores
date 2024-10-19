py.on_event(py.events.on_init(), function()
    remote.call("pywiki", "add_section", "rawores")

    remote.call("pywiki", "add_page", {
        name = "big-mines",
        section = "rawores",
        text_only = true
    })
end)
