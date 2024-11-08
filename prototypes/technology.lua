data:extend{
  {
    type = "technology",
    name = "hydrothermal-liquefaction",
    icon = "__htl__/graphics/technology.png",
    icon_size = 128,
    prerequisites = {"coal-liquefaction"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "hydrothermal-liquefaction"
      }
    },
    unit =
    {
      count = 400,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
    order = "d-d"
  },
}

if not mods["space-age"] then
  return
end

data.raw.technology["hydrothermal-liquefaction"].unit =
{
  count = 400,
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"space-science-pack", 1},
    {"metallurgic-science-pack", 1}
  },
  time = 30
}

