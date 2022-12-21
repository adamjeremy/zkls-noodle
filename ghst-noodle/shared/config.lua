Config = {}

-- DEBUG CONFIGS --
Config.Debug = true -- Client / Server Debug Prints
Config.DebugPoly = true -- Debug Polyzones

-- PROGRESSBAR CONFIGS --
Config.Times = { -- Time to make items (Set in seconds)
    Food = 5,
    Drinks = 5,
    WashHands = 5
}

-- MINIGAME CONFIG --
Config.Minigame = {
    Circles = 2,
    Time = 20
}

-- BUSINESS CONFIGS --
Config.Job = 'noodle' -- Name of the job in 'qb-core > shared > jobs.lua'
Config.Business = {
    Name = 'Noodle Exchange', -- Blip Name / Business Name
    AutoDuty = true, -- Players on/off duty auto changes when entering/leaving the polyzone

    -- Business Blip Info
    Blip = {
        coords = vector3(-1230.01, -285.54, 37.74),
        sprite = 788,
        color = 1,
        size = 0.5,
    },

    
    -- For on/off duty when enetering the business (Only used if AutoDuty = true)
    BusinessPoly = {
        Zones = {
            [1] = {
                minZ = 0,
                maxZ = 800,
                zone = {
                    vector2(-1248.11, -266.20),
                    vector2(-1231.82, -293.06),
                    vector2(-1217.80, -285.12),
                    vector2(-1232.58, -260.52)
                }
            }
        }
    },
}

Config.Locations = {
    ['Registers'] = { -- Cash Register Locations
        [1] = {
            coords = vector3(-1235.57, -270.45, 37.77),
            heading = 30,
            width = 0.5,
            length = 0.5,
            info = {
                label = 'Register',
                icon = 'fas fa-dollar-sign',
                event = 'jim-payments:client:Charge', -- Use your own payments event
            }
        },
        [2] = {
            coords = vector3(-1237.22, -271.34, 37.77),
            heading = 30,
            width = 0.5,
            length = 0.5,
            info = {
                label = 'Register',
                icon = 'fas fa-dollar-sign',
                event = 'jim-payments:client:Charge', -- Use your own payments event
            }
        }
    },
    ['Duty'] = { -- On / Off Duty Locations
        [1] = {
            coords = vector3(-1234.84, -269.71, 37.78),
            heading = 30,
            width = 0.5,
            length = 0.5,
            info = {
                label = 'On / Off Duty',
                icon = 'fas fa-clock',
            }
        }
    },
    ['Stashes'] = { -- Stash Locations
        [1] = {
            coords = vector3(-1238.45, -269.12, 37.77),
            heading = 119,
            width = 0.9,
            length = 2.3,
            info = {
                label = 'Stash',
                icon = 'fas fa-box',
            }
        }
    },
    ['Trays'] = { -- Locations for Trays (Give Food to Customers)
        [1] = {
            coords = vector3(-1236.14, -270.69, 37.77),
            heading = 27,
            width = 0.5,
            length = 0.5,
            info = {
                label = 'Tray',
                icon = 'fas fa-box',
            }
        },
        [2] = {
            coords = vector3(-1237.79, -271.59, 37.77),
            heading = 30,
            width = 0.5,
            length = 0.5,
            info = {
                label = 'Tray',
                icon = 'fas fa-box',
            }
        }
    },
    ['Sink'] = { -- Sink Locations
        [1] = {
            coords = vector3(-1237.3, -266.38, 37.77),
            heading = 30,
            width = 1.0,
            length = 1.2,
            info = {
                label = 'Wash Hands',
                icon = 'fas fa-soap',
            }
        },
        [2] = {
            coords = vector3(-1236.64, -267.63, 37.77),
            heading = 30,
            width = 1.0,
            length = 1.4,
            info = {
                label = 'Wash Hands',
                icon = 'fas fa-soap',
            }
        }
    },
    ['Food'] = { -- Make Food Locations
        [1] = {
            coords = vector3(-1239.61, -266.62, 37.77),
            heading = 29,
            width = 2.6,
            length = 1.0,
            info = {
                label = 'Food',
                icon = 'fas fa-burger',
            }
        }
    },
    ['Drinks'] = { -- Make Drink Locations
        [1] = {
            coords = vector3(-1239.01, -272.2, 37.77),
            heading = 120,
            width = 1,
            length = 1.2,
            info = {
                label = 'Drinks',
                icon = 'fas fa-droplet',
            }
        }
    },
    ['Coffee'] = { -- Make Coffee Locations
        [1] = {
            coords = vector3(122.84, -1041.62, 29.28),
            heading = 251,
            width = 0.5,
            length = 1,
            info = {
                label = 'Coffee',
                icon = 'fas fa-mug-hot',
            }
        }
    },
    ['Alcohol'] = { -- Make Alcohol Locations
        [1] = {
            coords = vector3(0,0,0),
            heading = 0,
            width = 0,
            length = 0,
            info = {
                label = 'Alcohol',
                icon = 'fas fa-wine-glass',
            }
        }
    },
}

-- STASH CONFIG --
Config.Stashes = {
    MaxSlots = 10,
    MaxWeight = 2000
}

-- TRAY CONFIG --
Config.Trays = {
    MaxSlots = 10,
    MaxWeight = 2000
}

-- FOOD CONFIG --
Config.Food = {
    [1] = {
        Item = 'butterednoodles', -- Oooh yeah, a grilled cheese
        CraftEmote = 'bbq', -- Emote used when making the item
        UseEmote = 'burger', -- Emote used when using the item
        UseTime = 5, -- How long you use the item for (set in seconds)
        Hunger = 2, -- How much hunger it refills
        Required = {
            [1] = {
                item = 'water_bottle',
                amount = 2,
            },
        }
    },
    [2] = {
        Item = 'japanesepannoodles', -- Oooh yeah, a grilled cheese
        CraftEmote = 'bbq', -- Emote used when making the item
        UseEmote = 'burger', -- Emote used when using the item
        UseTime = 5, -- How long you use the item for (set in seconds)
        Hunger = 2, -- How much hunger it refills
        Required = {
            [1] = {
                item = 'water_bottle',
                amount = 2,
            },
        }
    },
    [3] = {
        Item = 'spicykoreanbeefnoodles', -- Oooh yeah, a grilled cheese
        CraftEmote = 'bbq', -- Emote used when making the item
        UseEmote = 'burger', -- Emote used when using the item
        UseTime = 5, -- How long you use the item for (set in seconds)
        Hunger = 2, -- How much hunger it refills
        Required = {
            [1] = {
                item = 'water_bottle',
                amount = 2,
            },
        }
    },
    [4] = {
        Item = 'noodlebowl', -- Oooh yeah, a grilled cheese
        CraftEmote = 'bbq', -- Emote used when making the item
        UseEmote = 'burger', -- Emote used when using the item
        UseTime = 5, -- How long you use the item for (set in seconds)
        Hunger = 2, -- How much hunger it refills
        Required = {
            [1] = {
                item = 'water_bottle',
                amount = 2,
            },
        }
    },
    [5] = {
        Item = 'ramen', -- Oooh yeah, a grilled cheese
        CraftEmote = 'bbq', -- Emote used when making the item
        UseEmote = 'burger', -- Emote used when using the item
        UseTime = 5, -- How long you use the item for (set in seconds)
        Hunger = 2, -- How much hunger it refills
        Required = {
            [1] = {
                item = 'water_bottle',
                amount = 2,
            },
        }
    }

}

-- DRINKS CONFIG --
Config.Drinks = {
    [1] = {
        Item = 'mcdbluefrozen', -- Yeah, you make that water bottle...
        CraftEmote = 'handshake', -- Emote used when making the item
        UseEmote = 'water', -- Emote used when using the item
        UseTime = 5, -- How long you use the item for (set in seconds)
        Thirst = 2, -- How much thirst it refills
        Required = {
            [1] = {
                item = 'water_bottle',
                amount = 1,
            },
        }
    },
    [2] = {
        Item = 'mcdcokefrozen', -- Yeah, you make that water bottle...
        CraftEmote = 'handshake', -- Emote used when making the item
        UseEmote = 'water', -- Emote used when using the item
        UseTime = 5, -- How long you use the item for (set in seconds)
        Thirst = 2, -- How much thirst it refills
        Required = {
            [1] = {
                item = 'water_bottle',
                amount = 1,
            },
        }
    },
    [3] = {
        Item = 'mcdredfrozen', -- Yeah, you make that water bottle...
        CraftEmote = 'handshake', -- Emote used when making the item
        UseEmote = 'water', -- Emote used when using the item
        UseTime = 5, -- How long you use the item for (set in seconds)
        Thirst = 2, -- How much thirst it refills
        Required = {
            [1] = {
                item = 'water_bottle',
                amount = 1,
            },
        }
    },
    [4] = {
        Item = 'mcddrpepper', -- Yeah, you make that water bottle...
        CraftEmote = 'handshake', -- Emote used when making the item
        UseEmote = 'water', -- Emote used when using the item
        UseTime = 5, -- How long you use the item for (set in seconds)
        Thirst = 2, -- How much thirst it refills
        Required = {
            [1] = {
                item = 'water_bottle',
                amount = 1,
            },
        }
    },
    [5] = {
        Item = 'mcdorangefanta', -- Yeah, you make that water bottle...
        CraftEmote = 'handshake', -- Emote used when making the item
        UseEmote = 'water', -- Emote used when using the item
        UseTime = 5, -- How long you use the item for (set in seconds)
        Thirst = 2, -- How much thirst it refills
        Required = {
            [1] = {
                item = 'water_bottle',
                amount = 1,
            },
        }
    },
    [6] = {
        Item = 'mcdsprite', -- Yeah, you make that water bottle...
        CraftEmote = 'handshake', -- Emote used when making the item
        UseEmote = 'water', -- Emote used when using the item
        UseTime = 5, -- How long you use the item for (set in seconds)
        Thirst = 2, -- How much thirst it refills
        Required = {
            [1] = {
                item = 'water_bottle',
                amount = 1,
            },
        }
    },
    [7] = {
        Item = 'water_bottle', -- Yeah, you make that water bottle...
        CraftEmote = 'handshake', -- Emote used when making the item
        UseEmote = 'water', -- Emote used when using the item
        UseTime = 5, -- How long you use the item for (set in seconds)
        Thirst = 2, -- How much thirst it refills
        Required = {
            [1] = {
                item = 'water_bottle',
                amount = 1,
            },
        }
    }

}

-- COFFEE CONFIG --
Config.Speed = {
    Multiplier = 1.1, -- How fast you run
    Length = math.random(20, 30) -- How long you run fast for (Set in seconds)
}
Config.Coffee = {
    [1] = {
        Item = 'coffee',
        CraftEmote = 'handshake', -- Emote used when making the item
        UseEmote = 'coffee', -- Emote used when using the item
        UseTime = 5, -- How long you use the item for (set in seconds)
        Thirst = 2, -- How much thirst it refills
        Required = {
            [1] = {
                item = 'water_bottle',
                amount = 1,
            },
        }
    }
}

-- ALCOHOL CONFIG --
Config.Drunk = {
    Liquor = { -- Values for liquor
        Min = 1, -- Slight Buzz
        Max = 3, -- Riggity-Wrecked, my guy
        Length = math.random(2, 3) -- How long you are drunk for, in minutes
    },
    Beer = { -- Values for beer
        Min = 1, -- Slight Buzz
        Max = 3, -- Riggity-Wrecked, my guy
        Length = math.random(2, 3) -- How long you are drunk for, in minutes
    }
}
Config.Alcohol = {
    [1] = {
        Item = 'vodka',
        CraftEmote = 'handshake', -- Emote used when making the item
        UseEmote = 'drink', -- Emote used when using the item
        UseTime = 5, -- How long you use the item for (set in seconds)
        Thirst = 2, -- How much thirst it refills
        Required = {
            [1] = {
                item = 'water_bottle',
                amount = 1,
            },
        }
    }
}
