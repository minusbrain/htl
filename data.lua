--data.lua

require("prototypes.recipe")
require("prototypes.technology")

for k, v in pairs(data.raw.module) do
  if v.name:find("productivity%-module") and v.limitation then
    table.insert(v.limitation, "hydrothermal-liquefaction")
  end
end
