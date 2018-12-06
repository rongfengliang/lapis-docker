local lapis = require("lapis")
local app = lapis.Application()

app:get("/", function()
  return "Welcome to Lapis  dalongrong " .. require("lapis.version")
end)

app:get("/users", function()
  return "users" .. require("lapis.version")
end)

app:get("/apps", function()
  return "apps" .. require("lapis.version")
end)


app:get("/mobiles", function()
  return "mobiles" .. require("lapis.version")
end)


app:get("/paas", function()
  return "paas " .. require("lapis.version")
end)
app:get("/saas", function()
  return "saas " .. require("lapis.version")
end)

return app
