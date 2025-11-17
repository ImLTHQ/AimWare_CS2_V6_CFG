local RF=gui.Reference

-- GitHub Raw URL常量
local CHINESE_LANG_URL = "https://raw.githubusercontent.com/ImLTHQ/Chinese_Tutorial_for_AimWare_V6/refs/heads/main/CN.lang"

local WeaponList={"通用","电击枪","手枪","沙鹰与R8","冲锋枪","步枪","散弹枪","鸟狙","连狙","大狙","机枪"}

local function NM(RFName,SetName)  RFName:SetName(SetName)  end

-- 从URL获取最新汉化并应用
local function LoadRemoteLocalization()
    http.Get(CHINESE_LANG_URL, function(content)
        if content and content ~= "" then
            -- 解析汉化内容并应用
            for line in content:gmatch("[^

]+") do
                local original, translated = line:match("(.+)%-(.+)")
                if original and translated then
                    local ref = RF(original)
                    if ref then
                        ref:SetName(translated)
                    end
                end
            end
            print("汉化加载成功")
        else
            print("汉化加载失败")
        end
    end)
end

-- 加载远程汉化
LoadRemoteLocalization()