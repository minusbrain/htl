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
