Config = {}

Config.OpenControl = 289
Config.TrunkOpenControl = 47
Config.DeleteDropsOnStart = false

Config.Shops = {
    ['Market'] = {
        coords = {
            vector3(374.225, 326.717, 102.800),
            vector3(25.8929, -1346.71, 28.597),
            vector3(-48.1829, -1756.99, 28.500),
            vector3(-707.769, -913.886, 18.315),
            vector3(-1223.69, -907.031, 11.426),
            vector3(-1487.15, -380.113, 39.2634),
            vector3(1163.24, -323.212, 68.3051),
            vector3(1136.09, -981.251, 45.5158),
            vector3(2556.55, 382.399, 107.723),
            vector3(547.382, 2670.33, 41.2565),
            vector3(1961.21, 3741.6, 31.4437),
            vector3(1698.95, 4924.46, 41.1637),
            vector3(1729.65, 6415.65, 34.1372),
            vector3(-3243.03, 1001.66, 11.9307),
            vector3(2678.06, 3281.11, 54.3411),
        },
        items = {
            { name = "bread", price = 100, count = 1 },
            { name = "water", price = 100, count = 1 },
            { name = "cigarette", price = 100, count = 1 },
            { name = "lighter", price = 100, count = 1 },
            { name = "beer", price = 100, count = 1 },
        },
        markerType = 27,
        markerColour = { r = 255, g = 255, b = 255 },
        blipColour = 2,
        blipSprite = 52,
        blipSize= 0.1,
        msg = 'Marketi aç ~INPUT_CONTEXT~',
        enableBlip = true,
        job = 'all'
    },
    ['iFurit'] = {
        coords = {
            vector3(-629.2, -275.51, 35.58),
        },
        items = {
            { name = "phone", price = 20, count = 1 }, 
            { name = "radio", price = 20, count = 1 },
            { name = "tablette", price = 20, count = 1 },  
        },
        markerType = 27,
        markerColour = { r = 0, g = 0, b = 255 },
        blipColour = 5,
        blipSprite = 521,
        msg = 'Marketi aç ~INPUT_CONTEXT~',
        enableBlip = true,
        job = 'all'
    },
    ['YouTool'] = {
        coords = {
            vector3(1372, -1519.73, 57.48),
        },
        items = {
            { name = "repairkit", price = 20, count = 1 },
            { name = "tekerlek", price = 20, count = 1 },
            { name = "handcuffs", price = 20, count = 1 },
            { name = "nitrocannister", price = 20, count = 1 },
            { name = "wrench", price = 20, count = 1 },
            { name = "lockpick", price = 20, count = 1 },
        },
        markerType = 27,
        markerColour = { r = 0, g = 0, b = 255 },
        blipColour = 5,
        blipSprite = 566,
        msg = 'Marketi aç ~INPUT_CONTEXT~',
        enableBlip = true,
        job = 'all'
    },
    ['Eczane'] = {
        coords = {
            vector3(318.13, -1077.04, 28.49),
        },
        items = {
            { name = "bandage", price = 20, count = 1 },
            { name = "gauze", price = 15, count = 1 },       
            { name = "firstaid", price = 30, count = 1 },
            { name = "medkit", price = 25, count = 1 },    
            { name = "vicodin", price = 15, count = 1 }, 
            { name = "hydrocodone", price = 15, count = 1 },     
            { name = "morphine", price = 15, count = 1 },    
        },
        markerType = 27,
        markerColour = { r = 0, g = 0, b = 255 },
        blipColour = 1,
        blipSprite = 51,
        msg = 'Marketi aç ~INPUT_CONTEXT~',
        enableBlip = true,
        job = 'all'
        },
        ['LSMD Market'] = {
            coords = {
                vector3(315.15, -587.38, 42.35),
            },
            items = {
                { name = "bandage", price = 20, count = 1 },
                { name = "gauze", price = 15, count = 1 },       
                { name = "firstaid", price = 30, count = 1 },
                { name = "medkit", price = 25, count = 1 },    
                { name = "vicodin", price = 15, count = 1 }, 
                { name = "hydrocodone", price = 150, count = 1 },     
                { name = "morphine", price = 150, count = 1 },
                { name = "medikit", price = 150, count = 1 },    
            },
            markerType = 27,
            markerColour = { r = 0, g = 0, b = 255 },
            blipColour = 2,
            blipSprite = 52,
            msg = 'Marketi aç ~INPUT_CONTEXT~',
            enableBlip = false,
            job = 'ambulance'
    },
    ['LSPD Market'] = {
        coords = {
            vector3(456.08, -979.02, 30.69),
        },
        items = {
            { name = "WEAPON_PISTOL", price = 1000, count = 1 },
            { name = "WEAPON_COMBATPISTOL", price = 1000, count = 1 },
            { name = "WEAPON_STUNGUN", price = 1000, count = 1 },
            { name = "WEAPON_HANDCUFFS", price = 1000, count = 1 },
            { name = "WEAPON_FLASHLIGHT", price = 1000, count = 1 },
            { name = "voidrp_ammo_pistol", price = 20000, count = 1 },
            { name = "voidrp_ammo_pistol_large", price = 1000, count = 1 },
            { name = "handcuffs", price = 20, count = 1 },
            { name = "HeavyArmor", price = 5000, count = 1 },
            { name = "flashlight", price = 850, count = 1 },
            { name = "silencieux", price = 850, count = 1 },
            { name = "handcuffs", price = 20, count = 1 },
        },
        markerType = 27,
        markerColour = { r = 0, g = 0, b = 255 },
        blipColour = 2,
        blipSprite = 52,
        msg = 'Marketi aç ~INPUT_CONTEXT~',
        enableBlip = false,
        job = 'police'
},
    ['Silahcı'] = {
        coords = {
            vector3(44.38, -1742.76, 29.5),
            vector3(-662.180, -934.961, 20.929),
            vector3(810.25, -2157.60, 28.72),
            vector3(1693.44, 3760.16, 33.81),
            vector3(-330.24, 6083.88, 30.55),
            vector3(252.63, -50.00, 68.99),
            vector3(22.09, -1107.28, 28.90),
            vector3(2567.69, 294.38, 107.83),
            vector3(-1117.58, 2698.61, 17.65),
            vector3(842.44, -1033.42, 27.29),

        },
        items = {
            { name = "WEAPON_PISTOL", price = 1000, count = 1 },
            { name = "voidrp_ammo_pistol", price = 20000, count = 1 },
            { name = "voidrp_ammo_pistol_large", price = 1000, count = 1 },
            { name = "grip", price = 850, count = 1 },
            { name = "flashlight", price = 850, count = 1 },
            { name = "silencieux", price = 850, count = 1 },
            { name = "SmallArmor", price = 500, count = 1 },
            { name = "MedArmor", price = 1000, count = 1 },
        },
        markerType = 27,
        markerColour = { r = 255, g = 255, b = 255 },
        blipColour = 78,
        blipSprite = 110,
        msg = 'Marketi aç ~INPUT_CONTEXT~',
        enableBlip = true,
        job = 'all'
    },
}

Config.Stash = {
    ['Kanıt Dolabı'] = {
        coords = vector3(467.82, -989.23, 24.92),
        size = vector3(1.0, 1.0, 1.0),
        job = 'police',
        markerType = 2,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = 'Kanıt Dolabı ~INPUT_CONTEXT~'
    }
}

Config.Steal = {
    black_money = false,
    cash = true
}

Config.Seize = {
    black_money = false,
    cash = true
}

--Courtesy DoctorTwitch
Config.VehicleSlot = {
    [0] = 10, --Compact
    [1] = 15, --Sedan
    [2] = 20, --SUV
    [3] = 15, --Coupes
    [4] = 5, --Muscle
    [5] = 5, --Sports Classics
    [6] = 5, --Sports
    [7] = 0, --Super
    [8] = 5, --Motorcycles
    [9] = 10, --Off-road
    [10] = 20, --Industrial
    [11] = 20, --Utility
    [12] = 30, --Vans
    [13] = 0, --Cycles
    [14] = 0, --Boats
    [15] = 0, --Helicopters
    [16] = 0, --Planes
    [17] = 20, --Service
    [18] = 20, --Emergency
    [19] = 90, --Military
    [20] = 0, --Commercial
    [21] = 0 --Trains
}