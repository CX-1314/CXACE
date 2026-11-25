local base = "https://raw.githubusercontent.com/CX-1314/CXACE/refs/heads/main/"
local a = game:HttpGet(base .. "cortis_obf_part1.lua")
local b = game:HttpGet(base .. "cortis_obf_part2.lua")
loadstring(a .. b)()