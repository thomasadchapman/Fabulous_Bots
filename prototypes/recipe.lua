
-- recipe factory: vanilla robot + wood => fabulous robot
function createRecipe(vanillaName, name, count)
    local recipe = table.deepcopy(data.raw.recipe[vanillaName]);
    recipe.name = name;
    recipe.icon = "__Fabulous-Bots__/graphics/icons/" .. name .. ".png";
    recipe.icon_size = 32;
    recipe.subgroup = "other";
    recipe.ingredients = {
        { vanillaName, 1 },
        { "wood", 1 },
    };

    -- result are evenly distributed for each fabulous robot
    local results = {};
    local probability = 1 / count;
    for i = 1, count, 1
    do
        table.insert(results,  {
            name = name .. "-" .. i,
            probability = probability,
            amount = 1
        });
    end

    recipe.results = results;
    return recipe;
end

-- register new fabulous robot recipes - count needs to correspond to code in entity.lua)
data:extend {
    createRecipe("construction-robot", "fabulous-construction-robot", 2),
    createRecipe("logistic-robot", "fabulous-logistic-robot", 2)
};
