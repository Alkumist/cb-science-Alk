local meld = require("meld")

local science_packs = {
	["automation-science-pack"] = {
		{ model = "cone_slim", variant = "liquid_red" },
		{ variant = "liquid_red" },
	},
	["logistic-science-pack"] = {
		{ model = "cube", variant = "liquid_green" },
		{ variant = "liquid_green" },
	},
	["military-science-pack"] = {
		{ model = "sphere_spiked", variant = "liquid_black" },
		{ variant = "liquid_black" },
	},
	["chemical-science-pack"] = {
		{ model = "sphere_tiny", variant = "liquid_cyan" },
		{ variant = "liquid_cyan" },
	},
	["production-science-pack"] = {
		{ model = "sphere_double", variant = "liquid_purple" },
		{ variant = "liquid_purple" },
	},
	["utility-science-pack"] = {
		{ model = "triangle", variant = "liquid_yellow" },
		{ variant = "liquid_yellow" },
	},
	["space-science-pack"] = {
		{ model = "cone_inverted", variant = "liquid_white" },
		{ variant = "liquid_white" },
	},
	["metallurgic-science-pack"] = {
		{ model = "hexagon", variant = "liquid_orange" },
		{ variant = "liquid_orange" },
	},
	["electromagnetic-science-pack"] = {
		{ model = "hourglass", variant = "liquid_pink" },
		{ variant = "liquid_pink" },
	},
	["agricultural-science-pack"] = {
		{ model = "tube_one", variant = "liquid_lime" },
		{ variant = "liquid_lime" },
	},
	["cryogenic-science-pack"] = {
		{ model = "cone_normal", variant = "frozen_blue" },
		{ variant = "frozen_blue" },
		{ variant = "liquid_blue" },
	}
}

for name, requests in pairs(science_packs) do
	local variant = quality_glassware.request_flask(name, requests)
	if data.raw["technology"][name] then
		meld(
			data.raw["technology"][name],
			quality_glassware.technology_graphics_for(variant, meld)
		)
	end
	if data.raw["tool"][name] then
		meld(
			data.raw["tool"][name],
			quality_glassware.item_graphics_for(variant, meld)
		)
	end
end
