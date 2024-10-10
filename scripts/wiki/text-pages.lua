py.on_event("on_init", function()
    remote.call("pywiki", "add_section", "rawores")

    remote.call("pywiki", "add_page", {
        name = "big-mines",
        section = "rawores",
        text_only = true
    })
end)
