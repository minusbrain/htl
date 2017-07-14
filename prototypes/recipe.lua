data:extend(
{
  {
    type = "recipe",
    name = "hydrothermal-liquefaction",
    category = "oil-processing",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {type="item", name="raw-wood", amount=5},
      {type="fluid", name="crude-oil", amount=4},
      {type="fluid", name="steam", amount=50}
    },
    results=
    {
      {type="fluid", name="crude-oil", amount=5}
    },
    icon = "__base__/graphics/icons/fluid/coal-liquefaction.png",
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-d[hydrothermal-liquefaction]",
    allow_decomposition = false
  }
})
