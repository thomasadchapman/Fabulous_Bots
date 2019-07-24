local iconsPath = "__Fabulous-Bots__/graphics/icons/";

-- fabulous-construction-robot item factory
function createConstructionRobot(name) 
    local robot = table.deepcopy(data.raw.item["construction-robot"]);

    robot.name = name;
    robot.icon = iconsPath .. name .. ".png";
    robot.place_result = name;

    return robot;
end

-- fabulous-logistic-robot item factory
function createLogisticRobot(name)
    local robot = table.deepcopy(data.raw.item["logistic-robot"]);

    robot.name = name;
    robot.icon = iconsPath .. name .. ".png";
    robot.place_result = name;

    return robot; 
end
 
-- register new fabulous robot items (needs to correspond with code in entity.lua)
data:extend {
    createConstructionRobot("fabulous-construction-robot-1"),
    createConstructionRobot("fabulous-construction-robot-2"),
    createLogisticRobot("fabulous-logistic-robot-1"),
    createLogisticRobot("fabulous-logistic-robot-2")
};