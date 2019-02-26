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
      {type="item", name="wood", amount=5},
      {type="fluid", name="crude-oil", amount=25},
      {type="fluid", name="steam", amount=50}
    },
    results=
    {
      {type="fluid", name="crude-oil", amount=50}
    },
    icon = "__htl__/graphics/icon.png",
    icon_size = 32,
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-d[hydrothermal-liquefaction]",
    allow_decomposition = false
  }
})
