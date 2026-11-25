-- 冰 · 分卷解密加载器
local base = "https://raw.githubusercontent.com/CX-1314/CXACE/refs/heads/main/"
local KEY = "bing-cx-2025"
local B = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
for i = 1, #B do M[B:sub(i, i)] = i - 1 end
local function b64d(s)
    local o, acc, bits = {}, 0, 0
    for i = 1, #s do
        local v = M[s:sub(i, i)]
        if v then
            acc = acc * 64 + v
            bits = bits + 6
            while bits >= 8 do
                bits = bits - 8
                o[#o + 1] = string.char(math.floor(acc / (2 ^ bits)) % 256)
            end
            acc = acc % (2 ^ bits)
        end
    end
    return table.concat(o)
end
local function dec(s)
    local o = {}
    for i = 1, #s do
        o[i] = string.char((s:byte(i) - KEY:byte((i - 1) % #KEY + 1)) % 256)
    end
    return table.concat(o)
end
local a = game:HttpGet(base .. "ACX1.lua")
local b = game:HttpGet(base .. "ACX2.lua")
local code = dec(b64d(a .. b))
local fn, err = loadstring(code)
if fn then fn() else print("[冰] 解密失败: " .. tostring(err)) end
