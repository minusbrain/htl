data:extend{
  {
    type = "technology",
    name = "hydrothermal-liquefaction",
    icon = "__base__/graphics/technology/coal-liquefaction.png",
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
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
    order = "d-d"
  },
}
