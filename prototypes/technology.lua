-- unlocks fabulous robots with corresponding vanilla technbology

table.insert(data.raw.technology["construction-robotics"].effects, {   
    type = "unlock-recipe",
    recipe = "fabulous-construction-robot"
})

table.insert(data.raw.technology["logistic-robotics"].effects, {   
    type = "unlock-recipe",
    recipe = "fabulous-logistic-robot"
})
