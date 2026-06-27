local providers = {
    grimmory = require("providers/grimmory"),
    bookorbit = require("providers/bookorbit"),
}

function providers.get(id)
    return providers[id] or providers.grimmory
end

function providers.isValid(id)
    return providers[id] ~= nil
end

return providers
