local iconsPath = "__Fabulous-Bots__/graphics/icons/";
local entityPath = "__Fabulous-Bots__/graphics/entity/";

-- fabulous-construction-robot entity factory
function createConstructionRobot(name) 
    local robot = table.deepcopy(data.raw["construction-robot"]["construction-robot"]);

    robot.name = name;
    robot.icon = iconsPath .. "fabulous-construction-robot.png";

    robot.idle.filename = entityPath .. name .. "/" .. name .. ".png";
    robot.idle.hr_version.filename = entityPath .. name .. "/hr-" .. name .. ".png";

    robot.in_motion.filename = entityPath .. name .. "/" .. name .. ".png";
    robot.in_motion.hr_version.filename = entityPath .. name .. "/hr-" .. name .. ".png";

    robot.shadow_idle.filename = entityPath .. name .. "/" .. name .. "-shadow.png";
    robot.shadow_idle.hr_version.filename = entityPath .. name .. "/hr-" .. name .. "-shadow.png";

    robot.shadow_in_motion.filename = entityPath .. name .. "/" .. name .. "-shadow.png";
    robot.shadow_in_motion.hr_version.filename = entityPath .. name .. "/hr-" .. name .. "-shadow.png";

    robot.working.filename = entityPath .. name .. "/" .. name .. "-working.png";
    robot.working.hr_version.filename = entityPath .. name .. "/hr-" .. name .. "-working.png";

    robot.shadow_working.filename = entityPath .. name .. "/" .. name .. "-shadow.png";
    robot.shadow_working.hr_version.filename = entityPath .. name .. "/hr-" .. name .. "-shadow.png";

    return robot;
end

-- fabulous-logistic-robot entity factory
function createLogisticRobot(name)
    local robot = table.deepcopy(data.raw["logistic-robot"]["logistic-robot"]);

    robot.name = name;
    robot.icon = iconsPath .. "fabulous-logistic-robot.png";

    robot.idle.filename = entityPath .. name .. "/" .. name .. ".png";
    robot.idle.hr_version.filename = entityPath .. name .. "/hr-" .. name .. ".png";

    robot.in_motion.filename = entityPath .. name .. "/" .. name .. ".png";
    robot.in_motion.hr_version.filename = entityPath .. name .. "/hr-" .. name .. ".png";

    robot.shadow_idle.filename = entityPath .. name .. "/" .. name .. "-shadow.png";
    robot.shadow_idle.hr_version.filename = entityPath .. name .. "/hr-" .. name .. "-shadow.png";

    robot.shadow_in_motion.filename = entityPath .. name .. "/" .. name .. "-shadow.png";
    robot.shadow_in_motion.hr_version.filename = entityPath .. name .. "/hr-" .. name .. "-shadow.png";

    robot.idle_with_cargo.filename = entityPath .. name .. "/" .. name .. ".png";
    robot.idle_with_cargo.hr_version.filename = entityPath .. name .. "/hr-" .. name .. ".png";

    robot.in_motion_with_cargo.filename =entityPath .. name .. "/" .. name .. ".png";
    robot.in_motion_with_cargo.hr_version.filename = entityPath .. name .. "/hr-" .. name .. ".png";

    robot.shadow_idle_with_cargo.filename = entityPath .. name .. "/" .. name .. "-shadow.png";
    robot.shadow_idle_with_cargo.hr_version.filename = entityPath .. name .. "/hr-" .. name .. "-shadow.png";

    robot.shadow_in_motion_with_cargo.filename = entityPath .. name .. "/" .. name .. "-shadow.png";
    robot.shadow_in_motion_with_cargo.hr_version.filename = entityPath .. name .. "/hr-" .. name .. "-shadow.png";

    return robot; 
end

-- register new fabulous robot entities (needs to correspond with code in items.lua)
data:extend {
    createConstructionRobot("fabulous-construction-robot-1"),
    createConstructionRobot("fabulous-construction-robot-2"),
    createLogisticRobot("fabulous-logistic-robot-1"),
    createLogisticRobot("fabulous-logistic-robot-2")
};