local RF=gui.Reference
local WCN={"通用","电击枪","手枪","沙鹰&R8","冲锋枪","步枪","散弹枪","鸟狙","连狙","大狙","机枪"}
local WEN={"Shared","Zeus","Pistol","Heavy Pistol","Submachine Gun","Rifle","Shotgun","Scout","Auto Sniper","Sniper","Light Machine Gun"}
local function NM(RF1,NM)  RF1:SetName(NM)  end
NM(RF("Legitbot"),"合法机器人")
NM(RF("合法机器人","Master Switch"),"总开关")

NM(RF("合法机器人","Aimbot"),"合法自瞄")
NM(RF("合法机器人","合法自瞄","Toggle"),"触发方式")--Toggle
NM(RF("合法机器人","合法自瞄","触发方式","Enable"),"开启自瞄")
NM(RF("合法机器人","合法自瞄","触发方式","Aim Key"),"自瞄按键")
NM(RF("合法机器人","合法自瞄","触发方式","Toggle Key"),"自瞄切换按键")


NM(RF("合法机器人","合法自瞄","Weapon"),"武器")--Weapon
NM(RF("合法机器人","合法自瞄","武器","Auto Fire"),"自动开火")
NM(RF("合法机器人","合法自瞄","武器","Fire On Press"),"按键开火")
NM(RF("合法机器人","合法自瞄","武器","Auto Pistol Interval"),"自动手枪间隔")

NM(RF("合法机器人","合法自瞄","Hitbox Selection"),"自瞄部位选择")--Hitbox Selection
for i = 1, 11, 1 do
    NM(RF("合法机器人","合法自瞄","自瞄部位选择",WEN[i], "Hitbox Advance Multiplier"),"自瞄部位切换速度")
    NM(RF("合法机器人","合法自瞄","自瞄部位选择",WEN[i], "Nearest To Crosshair"),"优先准星附近")
end

-------------------------------------------------------

NM(RF("合法机器人","Triggerbot"),"自动扳机")
NM(RF("合法机器人","自动扳机","Toggle"),"触发方式")--Toggle
NM(RF("合法机器人","自动扳机","触发方式","Enable"),"开启扳机")
NM(RF("合法机器人","自动扳机","触发方式","Trigger Key"),"扳机按键")
NM(RF("合法机器人","自动扳机","触发方式","Auto Fire"),"无需按键自动开火")

NM(RF("合法机器人","自动扳机","Weapon"),"武器")--Weapon
for i = 1, 11, 1 do
    NM(RF("合法机器人","自动扳机","武器",WEN[i],"Trigger Delay"),"扳机延迟")
    NM(RF("合法机器人","自动扳机","武器",WEN[i],"Trigger Burst"),"触发扳机后的连续开枪时间")
    NM(RF("合法机器人","自动扳机","武器",WEN[i],"Hit Chance"),"扳机命中率")
    NM(RF("合法机器人","自动扳机","武器",WEN[i],"Anti-Recoil"),"无后坐力")
    NM(RF("合法机器人","自动扳机","武器",WEN[i],"Anti-Spread"),"无扩散")
    
end

NM(RF("合法机器人","自动扳机","Hitbox Scan"),"扳机部位选择")--Hitbox Scan

-----------------------------------------

NM(RF("合法机器人","Weapon"),"武器配置")

NM(RF("合法机器人","武器配置","Accuracy"),"武器后坐力")--Accuracy
for i = 1, 11, 1 do
    NM(RF("合法机器人","武器配置","武器后坐力",WEN[i],"Recoil Control System"),"自动压枪")
    RF("合法机器人","武器配置","武器后坐力",WEN[i],"自动压枪"): SetOptions("关闭","瞄准时","瞄准及站立时")
    NM(RF("合法机器人","武器配置","武器后坐力",WEN[i],"Horizontal Recoil"),"水平压枪力度")
    NM(RF("合法机器人","武器配置","武器后坐力",WEN[i],"Vertical Recoil"),"垂直压枪力度")
end

NM(RF("合法机器人","武器配置","Target"),"武器目标")--Target
for i = 1, 11, 1 do
    NM(RF("合法机器人","武器配置","武器目标",WEN[i],"Minimum FOV Range"),"最小自瞄范围")
    NM(RF("合法机器人","武器配置","武器目标",WEN[i],"Maximum FOV Range"),"最大自瞄范围")
    NM(RF("合法机器人","武器配置","武器目标",WEN[i],"Non-Sticky Target"),"超出范围取消自瞄")
    NM(RF("合法机器人","武器配置","武器目标",WEN[i],"Target Switch Delay"),"目标切换延迟")
    NM(RF("合法机器人","武器配置","武器目标",WEN[i],"First Shot Delay"),"开枪延迟")
end

NM(RF("合法机器人","武器配置","Aiming"),"武器调整")--Aiming
for i = 1, 11, 1 do
    NM(RF("合法机器人","武器配置","武器调整",WEN[i],"Smooth Factor"),"自瞄平滑度")
    NM(RF("合法机器人","武器配置","武器调整",WEN[i],"Smooth Method"),"平滑模式")
    NM(RF("合法机器人","武器配置","武器调整",WEN[i],"Randomize Factor"),"随机自瞄部位")
    NM(RF("合法机器人","武器配置","武器调整",WEN[i],"Curve Factor"),"自瞄拉枪曲线")
end

NM(RF("合法机器人","武器配置","Visibility"),"可见性")--Visibility
for i = 1, 11, 1 do
    NM(RF("合法机器人","武器配置","可见性",WEN[i],"Auto Wall"),"穿墙自瞄")
    NM(RF("合法机器人","武器配置","可见性",WEN[i],"Through Smoke"),"穿烟自瞄")
end

-----------------------------------

NM(RF("合法机器人","Other"),"其它杂项")

NM(RF("合法机器人","其它杂项","Movement"),"运动")--Movement
NM(RF("合法机器人","其它杂项","运动","Walk Speed Customization"),"自定义慢走速度")
NM(RF("合法机器人","其它杂项","运动","Walk Speed"),"慢走速度")
NM(RF("合法机器人","其它杂项","运动","Quick Stop"),"快速急停")

NM(RF("合法机器人","其它杂项","Extra"),"额外")--Extra
NM(RF("合法机器人","其它杂项","额外","Backtrack Time"),"回溯")
NM(RF("合法机器人","其它杂项","额外","Knife Triggerbot"),"自动刀")

---------------------------------

NM(RF("合法机器人","Semirage"),"半暴力")

NM(RF("合法机器人","半暴力","Aimbot"),"自瞄")--Aimbot
NM(RF("合法机器人","半暴力","自瞄","Auto Stop"),"自动急停")

NM(RF("合法机器人","半暴力","Position Adjustment"),"射击位置调整")--Position Adjustment
NM(RF("合法机器人","半暴力","射击位置调整","Backtracking"),"回溯")


NM(RF("Ragebot"),"暴力机器人")
NM(RF("暴力机器人","Master Switch"),"总开关")

NM(RF("暴力机器人","Aimbot"),"暴力自瞄")


NM(RF("暴力机器人","暴力自瞄","Toggle"),"暴力自瞄")--Toggle
NM(RF("暴力机器人","暴力自瞄","暴力自瞄","Aimbot"),"开启暴力自瞄")
--NM(RF("暴力机器人","暴力自瞄","暴力自瞄","Off"),"关闭")
--NM(RF("暴力机器人","暴力自瞄","暴力自瞄","开启暴力自瞄","Automatic"),"自动开火")
--NM(RF("暴力机器人","暴力自瞄","暴力自瞄","开启暴力自瞄","Aim On Pres"),"手动开火")

NM(RF("暴力机器人","暴力自瞄","暴力自瞄","Knifebot"),"自动刀")
--NM(RF("暴力机器人","暴力自瞄","暴力自瞄","Off"),"关闭")
--NM(RF("暴力机器人","暴力自瞄","暴力自瞄","Default"),"智能")
--NM(RF("暴力机器人","暴力自瞄","暴力自瞄","Only Backstab"),"仅背刺")
--NM(RF("暴力机器人","暴力自瞄","暴力自瞄","Quick Stab"),"快速轻击")


NM(RF("暴力机器人","暴力自瞄","Aiming Adjustment"),"视觉调整")--Aiming Adjustment
NM(RF("暴力机器人","暴力自瞄","视觉调整","Silent Aim"),"静默瞄准")
NM(RF("暴力机器人","暴力自瞄","视觉调整","Anti-Recoil"),"无后坐力")



NM(RF("暴力机器人","暴力自瞄","Position Adjustment"),"高级")--Position Adjustment
NM(RF("暴力机器人","暴力自瞄","高级","Backtrack"),"回溯")
NM(RF("暴力机器人","暴力自瞄","Target"),"目标")--Target
NM(RF("暴力机器人","暴力自瞄","目标","Selection Mode"),"选择自瞄模式")
RF("暴力机器人","暴力自瞄","目标","选择自瞄模式"):SetOptions("最低血量","最近的人","最有威胁的人","KD高的人")
NM(RF("暴力机器人","暴力自瞄","目标","FOV"),"自瞄范围")
NM(RF("暴力机器人","暴力自瞄","目标","Aim Lock"),"准星锁定目标")





--------------------------------------

NM(RF("暴力机器人","Accuracy"),"武器杂项")

NM(RF("暴力机器人","武器杂项","Movement"),"运动")--Ragebot--Accuracy--Movement
NM(RF("暴力机器人","武器杂项","运动","Slow Walk Key"),"慢走按键")
NM(RF("暴力机器人","武器杂项","运动","Slow Walk Speed"),"慢走速度")
NM(RF("暴力机器人","武器杂项","运动","Quick Stop"),"快速急停")

NM(RF("暴力机器人","武器杂项","Walkbot"),"Peek")--Ragebot--Accuracy--Walkbot
NM(RF("暴力机器人","武器杂项","Peek","Auto Peek Enable"),"开启Peek功能")
NM(RF("暴力机器人","武器杂项","Peek","Auto Peek Key"),"Peek按键")
NM(RF("暴力机器人","武器杂项","Peek","Auto Peek Indicator"),"Peek指示器")
NM(RF("暴力机器人","武器杂项","Peek","Auto Peek Type"),"Peek类型")
RF("暴力机器人","武器杂项","Peek","Peek类型"):SetOptions("按着","切换")
NM(RF("暴力机器人","武器杂项","Peek","Auto Peek Maintain Origin"),"Peek保持原状")

NM(RF("暴力机器人","武器杂项","Attack"),"射击")--Attack
for i = 1, 11, 1 do
    NM(RF("暴力机器人","武器杂项","射击",WEN[i],"Magic Bullet Key"),"魔法子弹按键")
    NM(RF("暴力机器人","武器杂项","射击",WEN[i],"Magic Bullet View"),"魔法子弹视角")
end





NM(RF("暴力机器人","武器杂项","Automate"),"杂项")--Automate
for i = 1, 11, 1 do
    NM(RF("暴力机器人","武器杂项","杂项",WEN[i],"Auto Stop"),"自动急停")
    NM(RF("暴力机器人","武器杂项","杂项",WEN[i],"自动急停","Stop"),"立刻停止")
    NM(RF("暴力机器人","武器杂项","杂项",WEN[i],"自动急停","Slow Walk"),"慢走")
    NM(RF("暴力机器人","武器杂项","杂项",WEN[i],"自动急停","Duck"),"蹲下")
    NM(RF("暴力机器人","武器杂项","杂项",WEN[i],"自动急停","Early"),"提前")
    NM(RF("暴力机器人","武器杂项","杂项",WEN[i],"自动急停","In Molotov"),"火中急停")
    NM(RF("暴力机器人","武器杂项","杂项",WEN[i],"自动急停","In Air"),"空中急停")
    NM(RF("暴力机器人","武器杂项","杂项",WEN[i],"自动急停","Between Shots"),"两枪之间")
end
NM(RF("暴力机器人","武器杂项","杂项",WEN[3],"Auto Fire"),"自动开火")
NM(RF("暴力机器人","武器杂项","杂项",WEN[3],"自动开火","Auto Pistol"),"自动手枪")
NM(RF("暴力机器人","武器杂项","杂项",WEN[4],"Auto Fire"),"自动开火")
NM(RF("暴力机器人","武器杂项","杂项",WEN[4],"自动开火","Auto Pistol"),"自动手枪")
NM(RF("暴力机器人","武器杂项","杂项",WEN[8],"Auto Fire"),"自动开火")
NM(RF("暴力机器人","武器杂项","杂项",WEN[8],"自动开火","Auto Pistol"),"自动手枪")
NM(RF("暴力机器人","武器杂项","杂项",WEN[10],"Auto Fire"),"自动开火")
NM(RF("暴力机器人","武器杂项","杂项",WEN[10],"自动开火","Auto Pistol"),"自动手枪")
NM(RF("暴力机器人","武器杂项","杂项",WEN[4],"自动开火","Auto Revolver"),"R8自动预热")
NM(RF("暴力机器人","武器杂项","杂项",WEN[1],"Auto Fire"),"自动开火")
NM(RF("暴力机器人","武器杂项","杂项",WEN[1],"自动开火","Auto Pistol"),"自动手枪")
NM(RF("暴力机器人","武器杂项","杂项",WEN[1],"自动开火","Auto Revolver"),"R8自动预热")
for i = 8, 10, 1 do
    NM(RF("暴力机器人","武器杂项","杂项",WEN[i],"Auto Scope"),"自动开镜")
    NM(RF("暴力机器人","武器杂项","杂项",WEN[i],"自动开镜","Scope"),"自动开镜")
    NM(RF("暴力机器人","武器杂项","杂项",WEN[i],"自动开镜","Unscope"),"自动关镜")
end
NM(RF("暴力机器人","武器杂项","杂项",WEN[1],"Auto Scope"),"自动开镜")
NM(RF("暴力机器人","武器杂项","杂项",WEN[1],"自动开镜","Scope"),"自动开镜")
NM(RF("暴力机器人","武器杂项","杂项",WEN[1],"自动开镜","Unscope"),"自动关镜")

---------------------------------------

NM(RF("暴力机器人","Hitscan"),"武器数值")

NM(RF("暴力机器人","武器数值","Hitbox"),"命中部位")--Hitbox
for i = 1, 11, 1 do
    NM(RF("暴力机器人","武器数值","命中部位",WEN[i],"Head"),"头部")
    NM(RF("暴力机器人","武器数值","命中部位",WEN[i],"头部","Priority"),"优先瞄准头部")
    NM(RF("暴力机器人","武器数值","命中部位",WEN[i],"头部","Exposed"),"在最佳时机瞄准头部")
    NM(RF("暴力机器人","武器数值","命中部位",WEN[i],"头部","Center"),"只瞄准头部中心")
    NM(RF("暴力机器人","武器数值","命中部位",WEN[i],"Body"),"身体")
    NM(RF("暴力机器人","武器数值","命中部位",WEN[i],"身体","Priority"),"优先瞄准身体")
    NM(RF("暴力机器人","武器数值","命中部位",WEN[i],"身体","Lethal"),"在致命时瞄准身体")
    NM(RF("暴力机器人","武器数值","命中部位",WEN[i],"身体","Exposed"),"当头部被墙遮挡时瞄准身体")
    NM(RF("暴力机器人","武器数值","命中部位",WEN[i],"身体","Center"),"只瞄准身体中心")
    NM(RF("暴力机器人","武器数值","命中部位",WEN[i],"Limbs"),"四肢")
    NM(RF("暴力机器人","武器数值","命中部位",WEN[i],"四肢","Exposed"),"当其他部位被墙遮挡时瞄准四肢")
    NM(RF("暴力机器人","武器数值","命中部位",WEN[i],"四肢","Center"),"只瞄准四肢中心")
end


NM(RF("暴力机器人","武器数值","Accuracy"),"数值")--Accuracy
for i = 1, 11, 1 do
    NM(RF("暴力机器人","武器数值","数值",WEN[i],"Min Damage"),"最低伤害")
    NM(RF("暴力机器人","武器数值","数值",WEN[i],"Min Damage Options"),"最低伤害设置")
    NM(RF("暴力机器人","武器数值","数值",WEN[i],"最低伤害设置","Auto Wall"),"自动穿墙")
    NM(RF("暴力机器人","武器数值","数值",WEN[i],"最低伤害设置","Adaptive Damage"),"自适应伤害")
    NM(RF("暴力机器人","武器数值","数值",WEN[i],"Hit Chance"),"命中率")
    NM(RF("暴力机器人","武器数值","数值",WEN[i],"Enhanced Hit Chance"),"空中无扩散")
    NM(RF("暴力机器人","武器数值","数值",WEN[i],"Hit Chance Burst"),"二次命中率")
end

------------------------------

NM(RF("暴力机器人","Anti-Aim"),"反自瞄")
NM(RF("暴力机器人","反自瞄","Base Direction"),"基础方向")

NM(RF("暴力机器人","反自瞄","Left Direction"),"左侧方向")

NM(RF("暴力机器人","反自瞄","Right Direction"),"右侧方向")


NM(RF("暴力机器人","反自瞄","Condition"),"AA状态")--Condition
NM(RF("暴力机器人","反自瞄","AA状态","Auto Direction"),"自动方向")
NM(RF("暴力机器人","反自瞄","AA状态","自动方向","At Edges"),"自动朝向背身")
NM(RF("暴力机器人","反自瞄","AA状态","自动方向","At Targets"),"靠墙自动藏头")
NM(RF("暴力机器人","反自瞄","AA状态","Disable Conditions"),"禁用AA")
NM(RF("暴力机器人","反自瞄","AA状态","禁用AA","On Use"),"按E抬头")
NM(RF("暴力机器人","反自瞄","AA状态","禁用AA","On Knife"),"拿刀时抬头")
NM(RF("暴力机器人","反自瞄","AA状态","禁用AA","On Grenade"),"拿道具时抬头")
NM(RF("暴力机器人","反自瞄","AA状态","禁用AA","During Freeze Time"),"开局前抬头")

NM(RF("暴力机器人","反自瞄","Advanced"),"高级")--Advanced
NM(RF("暴力机器人","反自瞄","高级","Pitch Angle"),"头部角度")
RF("暴力机器人","反自瞄","高级","头部角度"):SetOptions("关闭","89度","0度")




NM(RF("Visuals"),"视觉效果")
NM(RF("视觉效果","Master Switch"),"总开关")

NM(RF("视觉效果","Overlay"),"透视功能")

NM(RF("视觉效果","透视功能","Preview"),"预览")--Preview
NM(RF("视觉效果","透视功能","预览","Selection"),"选项")
RF("视觉效果","透视功能","预览","选项"): SetOptions("敌人","队友","武器")

local EL={"敌人","队友"}
NM(RF("视觉效果","透视功能","Enemy"),"敌人")--Enemy
NM(RF("视觉效果","透视功能","Friend"),"队友")--Friendly
for i = 1, 2, 1 do
    NM(RF("视觉效果","透视功能",EL[i],"Box"),"方框")
    RF("视觉效果","透视功能",EL[i],"方框"): SetOptions("关闭","粗","细")
    NM(RF("视觉效果","透视功能",EL[i],"Box Precision"),"动态方框")
    NM(RF("视觉效果","透视功能",EL[i],"Name"),"显示名称")
    NM(RF("视觉效果","透视功能",EL[i],"Ammo"),"显示弹药")
    NM(RF("视觉效果","透视功能",EL[i],"Health"),"显示血条")
    NM(RF("视觉效果","透视功能",EL[i],"显示血条","Bar"),"血条")
    NM(RF("视觉效果","透视功能",EL[i],"显示血条","Number"),"数字")
    NM(RF("视觉效果","透视功能",EL[i],"Skeleton"),"显示骨骼")
    NM(RF("视觉效果","透视功能",EL[i],"Armor"),"显示护甲")
    NM(RF("视觉效果","透视功能",EL[i],"Money"),"显示经济")
    NM(RF("视觉效果","透视功能",EL[i],"Ping"),"显示延迟")
    NM(RF("视觉效果","透视功能",EL[i],"Flags"),"显示状态")
    NM(RF("视觉效果","透视功能",EL[i],"显示状态","Defusing"),"正在拆包")
    NM(RF("视觉效果","透视功能",EL[i],"显示状态","Planting"),"正在下包")
    NM(RF("视觉效果","透视功能",EL[i],"显示状态","Scoped"),"开镜中")
    NM(RF("视觉效果","透视功能",EL[i],"显示状态","Reloading"),"换弹中")
    NM(RF("视觉效果","透视功能",EL[i],"显示状态","Flashed"),"闪光致盲中")
    NM(RF("视觉效果","透视功能",EL[i],"显示状态","Has Defuser"),"拥有拆弹器")
    NM(RF("视觉效果","透视功能",EL[i],"显示状态","Has C4"),"拥有C4")
    NM(RF("视觉效果","透视功能",EL[i],"Weapon"),"显示武器")
    RF("视觉效果","透视功能",EL[i],"显示武器"): SetOptions("关闭","图标","名称")
    NM(RF("视觉效果","透视功能",EL[i],"Weapon Filter"),"过滤武器")
    NM(RF("视觉效果","透视功能",EL[i],"过滤武器","Active"),"当前武器")
    NM(RF("视觉效果","透视功能",EL[i],"过滤武器","Inventory"),"当前武器+投掷物")
    NM(RF("视觉效果","透视功能",EL[i],"过滤武器","Nades"),"全部武器")
    NM(RF("视觉效果","透视功能",EL[i],"Barrel"),"瞄准线")
    NM(RF("视觉效果","透视功能",EL[i],"Dormant"),"休眠ESP")
end









NM(RF("视觉效果","透视功能","Weapon"),"武器")--Weapon
NM(RF("视觉效果","透视功能","武器","Box"),"方框")
RF("视觉效果","透视功能","武器","方框"): SetOptions("关闭","粗","细")
NM(RF("视觉效果","透视功能","武器","Name"),"名称")
RF("视觉效果","透视功能","武器","名称"): SetOptions("关闭","图标","名称")
NM(RF("视觉效果","透视功能","武器","Nades"),"道具")
NM(RF("视觉效果","透视功能","武器","道具","Name"),"名称")
NM(RF("视觉效果","透视功能","武器","道具","Icon"),"图标")
NM(RF("视觉效果","透视功能","武器","道具","Detonate Timer"),"剩余时间")
NM(RF("视觉效果","透视功能","武器","Ammo"),"显示弹药")
NM(RF("视觉效果","透视功能","武器","C4 Timer"),"显示C4爆炸/拆除时间")
NM(RF("视觉效果","透视功能","武器","Defuser"),"显示拆弹器")

---------------------------------------------






NM(RF("视觉效果","World"),"世界")
NM(RF("视觉效果","世界","Camera"),"视角")--Camera
NM(RF("视觉效果","世界","视角","Third Person Enable"),"开启第三人称")
NM(RF("视觉效果","世界","视角","Third Person Distance"),"第三人称视野距离")
NM(RF("视觉效果","世界","视角","View FOV"),"第一人称视野距离")
NM(RF("视觉效果","世界","视角","Viewmodel FOV"),"手臂模型距离")



NM(RF("视觉效果","世界","Helper"),"帮助")--Helper
NM(RF("视觉效果","世界","帮助","Wallbang Info"),"穿墙指示器")
NM(RF("视觉效果","世界","帮助","穿墙指示器","Damage"),"伤害值")
NM(RF("视觉效果","世界","帮助","穿墙指示器","Circle"),"圆圈指示器")
NM(RF("视觉效果","世界","帮助","穿墙指示器","Crosshair"),"准心指示器")
NM(RF("视觉效果","世界","帮助","Out Of View"),"敌人指示器")
RF("视觉效果","世界","帮助","敌人指示器"): SetOptions("关闭","箭头指示器","箭头指示器+信息")
NM(RF("视觉效果","世界","帮助","Out Of View Scale"),"指示器缩放")
NM(RF("视觉效果","世界","帮助","Inferno"),"燃烧弹范围")
NM(RF("视觉效果","世界","帮助","燃烧弹范围","Local"),"自己")
NM(RF("视觉效果","世界","帮助","燃烧弹范围","Friendly"),"队友")
NM(RF("视觉效果","世界","帮助","燃烧弹范围","Enemy"),"敌人")
NM(RF("视觉效果","世界","帮助","Grenade Tracer"),"投掷物指示器")
NM(RF("视觉效果","世界","帮助","投掷物指示器","Local"),"自己")
NM(RF("视觉效果","世界","帮助","投掷物指示器","Friendly"),"队友")
NM(RF("视觉效果","世界","帮助","投掷物指示器","Enemy"),"敌人")
NM(RF("视觉效果","世界","帮助","Grenade Warning"),"投掷物预警")
NM(RF("视觉效果","世界","帮助","投掷物预警","Local"),"自己")
NM(RF("视觉效果","世界","帮助","投掷物预警","Friendly"),"队友")
NM(RF("视觉效果","世界","帮助","投掷物预警","Enemy"),"敌人")
NM(RF("视觉效果","世界","帮助","Hit Effects"),"命中提示")
NM(RF("视觉效果","世界","帮助","命中提示","Sound"),"音效")
NM(RF("视觉效果","世界","帮助","命中提示","Marker"),"标记")

----------------------------------------

NM(RF("视觉效果","Chams"),"实体上色")
NM(RF("视觉效果","实体上色","Selection"),"目标选择")
RF("视觉效果","实体上色","目标选择"): SetOptions("敌人","队友","自己","其他")
NM(RF("视觉效果","实体上色","Model"),"模型")
NM(RF("视觉效果","实体上色","模型","Occluded"),"墙后")
RF("视觉效果","实体上色","模型","墙后"): SetOptions("关闭","平面")
NM(RF("视觉效果","实体上色","模型","Visible"),"可视")
RF("视觉效果","实体上色","模型","可视"): SetOptions("关闭","平面","纹理","不可见")
NM(RF("视觉效果","实体上色","Attachments"),"武器道具")
NM(RF("视觉效果","实体上色","武器道具","Occluded"),"墙后")
RF("视觉效果","实体上色","武器道具","墙后"): SetOptions("关闭","平面")
NM(RF("视觉效果","实体上色","武器道具","Visible"),"可视")
RF("视觉效果","实体上色","武器道具","可视"): SetOptions("关闭","平面","纹理","不可见")




NM(RF("视觉效果","Skins (Beta)"),"皮肤修改(测试版)")
NM(RF("视觉效果","皮肤修改(测试版)","Stickers"),"贴纸")
NM(RF("视觉效果","皮肤修改(测试版)","List"),"列表")
NM(RF("视觉效果","皮肤修改(测试版)","列表","Add/Update"),"添加/更新皮肤")
NM(RF("视觉效果","皮肤修改(测试版)","列表","Remove"),"移除皮肤")
NM(RF("视觉效果","皮肤修改(测试版)","Configuration"),"皮肤配置")
--NM(RF("视觉效果","皮肤修改(测试版)","皮肤配置","Enabled"),"开启")
NM(RF("视觉效果","皮肤修改(测试版)","皮肤配置","Item"),"类型")
NM(RF("视觉效果","皮肤修改(测试版)","皮肤配置","Paint Kits"),"皮肤")
NM(RF("视觉效果","皮肤修改(测试版)","皮肤配置","Wear"),"磨损")
NM(RF("视觉效果","皮肤修改(测试版)","皮肤配置","Seed"),"编号")
NM(RF("视觉效果","皮肤修改(测试版)","皮肤配置","StatTrak"),"暗金计数器")
NM(RF("视觉效果","皮肤修改(测试版)","皮肤配置","Name"),"皮肤名称")


NM(RF("视觉效果","Other"),"其它功能")

NM(RF("视觉效果","其它功能","Extra"),"额外")--Extra
NM(RF("视觉效果","其它功能","额外","Radar"),"雷达")
NM(RF("视觉效果","其它功能","额外","Crosshair"),"准心")
NM(RF("视觉效果","其它功能","额外","Crosshair Recoil"),"准心后坐力")
RF("视觉效果","其它功能","额外","准心后坐力"): SetOptions("关闭","线性","渐变","跟随后坐力变化")
NM(RF("视觉效果","其它功能","额外","Anti-OBS"),"反OBS")


NM(RF("视觉效果","其它功能","Effects"),"特效")--Effects
NM(RF("视觉效果","其它功能","特效","Effects Removal"),"特效移除")
NM(RF("视觉效果","其它功能","特效","特效移除","No Flash"),"移除闪光")
NM(RF("视觉效果","其它功能","特效","特效移除","No Smoke"),"移除烟雾")
NM(RF("视觉效果","其它功能","特效","特效移除","No Recoil"),"移除后坐力动画")
NM(RF("视觉效果","其它功能","特效","特效移除","No Scope"),"移除开镜缩放")
NM(RF("视觉效果","其它功能","特效","特效移除","No Sky"),"移除天空")



NM(RF("Misc"),"杂项功能")
NM(RF("杂项功能","Master Switch"),"总开关")
NM(RF("杂项功能","General"),"一般功能")
NM(RF("杂项功能","一般功能","Extra"),"主要的")--Extra
NM(RF("杂项功能","一般功能","主要的","Show Spectators"),"显示观察者列表")
NM(RF("杂项功能","一般功能","主要的","Auto-Accept Match"),"自动接受比赛")
NM(RF("杂项功能","一般功能","Restrictions"),"限制")--Restrictions
NM(RF("杂项功能","一般功能","限制","Anti-Untrusted"),"反不可信")




NM(RF("杂项功能","Movement"),"移动功能")
NM(RF("杂项功能","移动功能","Jump"),"跳跃")--Jump
NM(RF("杂项功能","移动功能","跳跃","Auto Jump"),"自动连跳")
RF("杂项功能","移动功能","跳跃","自动连跳"): SetOptions("关闭","完美连跳","合法连跳")
NM(RF("杂项功能","移动功能","跳跃","Edge Jump"),"边缘跳跃")
NM(RF("杂项功能","移动功能","跳跃","Duck Jump"),"蹲跳")



NM(RF("杂项功能","移动功能","Auto Strafer"),"自动转向")--Auto Strafe
NM(RF("杂项功能","移动功能","自动转向","Enable"),"开启")
NM(RF("杂项功能","移动功能","自动转向","Air Strafe"),"空中加速")
NM(RF("杂项功能","移动功能","自动转向","Circle Strafe"),"绕圈跳")
NM(RF("杂项功能","移动功能","自动转向","Snake Strafe"),"蛇形跳")
NM(RF("杂项功能","移动功能","自动转向","WASD Strafe"),"WASD转向")
NM(RF("杂项功能","移动功能","自动转向","Strafe Mode"),"转向模式")
RF("杂项功能","移动功能","自动转向","转向模式"): SetOptions("静默","正常","侧身","按住W时","跟随准星")
NM(RF("杂项功能","移动功能","自动转向","Strafe Limit"),"转向平滑度")
NM(RF("杂项功能","移动功能","自动转向","Disable On Nade"),"手持投掷物时禁用加速")


NM(RF("杂项功能","Enhancement"),"增强功能")
NM(RF("杂项功能","增强功能","Appearance"),"容貌")--Appearance

NM(RF("杂项功能","增强功能","容貌","Chat Spam"),"发送AW广告")








NM(RF("Settings"),"软件设置")

NM(RF("软件设置","Configurations"),"参数设置")--cfg

NM(RF("软件设置","参数设置","Browse"),"列表")

NM(RF("软件设置","参数设置","File"),"文件")--File
NM(RF("软件设置","参数设置","文件","Name"),"名称")
NM(RF("软件设置","参数设置","文件","Create"),"创建")
NM(RF("软件设置","参数设置","文件","Rename"),"重命名")

NM(RF("软件设置","参数设置","Configuration"),"参数设置")--Configuration
NM(RF("软件设置","参数设置","参数设置","Load"),"加载")
NM(RF("软件设置","参数设置","参数设置","Save"),"保存")
NM(RF("软件设置","参数设置","参数设置","Reset"),"重置")
NM(RF("软件设置","参数设置","参数设置","Delete"),"删除")

NM(RF("软件设置","参数设置","Other"),"其它")--Other
NM(RF("软件设置","参数设置","其它","Set As Default"),"注入时自动加载")
NM(RF("软件设置","参数设置","其它","Import From Clipboard"),"从剪切板导入")
NM(RF("软件设置","参数设置","其它","Refresh List"),"刷新列表")
NM(RF("软件设置","参数设置","其它","Export To Clipboard"),"导出到剪切板")

------------------------------------------------------------

NM(RF("软件设置","Lua Scripts"),"LUA脚本")--lua

NM(RF("软件设置","LUA脚本","Browse"),"列表")

NM(RF("软件设置","LUA脚本","File"),"文件")--File
NM(RF("软件设置","LUA脚本","文件","Name"),"名字")
NM(RF("软件设置","LUA脚本","文件","Create"),"创建")
NM(RF("软件设置","LUA脚本","文件","Rename"),"重命名")

NM(RF("软件设置","LUA脚本","Script"),"脚本")--Script
NM(RF("软件设置","LUA脚本","脚本","Load"),"加载")
NM(RF("软件设置","LUA脚本","脚本","Unload"),"卸载")
NM(RF("软件设置","LUA脚本","脚本","Load With Configurations"),"跟随参数加载")
NM(RF("软件设置","LUA脚本","脚本","Edit"),"编辑")
NM(RF("软件设置","LUA脚本","脚本","Delete"),"删除")

NM(RF("软件设置","LUA脚本","Other"),"其它")--Other
NM(RF("软件设置","LUA脚本","其它","Set As Autorun"),"注入时自动加载")
NM(RF("软件设置","LUA脚本","其它","Reset Lua State"),"重置LUA状态")
NM(RF("软件设置","LUA脚本","其它","Refresh List"),"刷新列表")

--------------------------------------------------

NM(RF("软件设置","Theme"),"主题颜色")--Theme

NM(RF("软件设置","主题颜色","Window Header"),"窗口顶部")--Window Header
NM(RF("软件设置","主题颜色","窗口顶部","Background"),"底色")
NM(RF("软件设置","主题颜色","窗口顶部","Line"),"线")
NM(RF("软件设置","主题颜色","窗口顶部","Text"),"文本")

NM(RF("软件设置","主题颜色","Navigation"),"顶部导航栏")--Navigation
NM(RF("软件设置","主题颜色","顶部导航栏","Background"),"底色")
NM(RF("软件设置","主题颜色","顶部导航栏","Active"),"被选择的底色")
NM(RF("软件设置","主题颜色","顶部导航栏","Active Shadow"),"被选择发光")
NM(RF("软件设置","主题颜色","顶部导航栏","Text"),"文本")

NM(RF("软件设置","主题颜色","Window Footer"),"窗口底部")--Window Footer
NM(RF("软件设置","主题颜色","窗口底部","Background"),"底色")
NM(RF("软件设置","主题颜色","窗口底部","Text"),"文本")

NM(RF("软件设置","主题颜色","UI"),"AW菜单")--UI
NM(RF("软件设置","主题颜色","AW菜单","Background #1"),"底色1")
NM(RF("软件设置","主题颜色","AW菜单","Background #2"),"底色2")
NM(RF("软件设置","主题颜色","AW菜单","Border"),"边缘线")

NM(RF("软件设置","主题颜色","Tab List"),"选项卡")--Tab List
NM(RF("软件设置","主题颜色","选项卡","Text"),"文本")
NM(RF("软件设置","主题颜色","选项卡","Text Active"),"被选中的文本颜色")
NM(RF("软件设置","主题颜色","选项卡","Active Shadow"),"被选择发光")
NM(RF("软件设置","主题颜色","选项卡","Tab Active Decorator"),"被选中的头部颜色")
NM(RF("软件设置","主题颜色","选项卡","Tab Active Background"),"被选中的背景颜色")

------------------------------------------------------------

NM(RF("软件设置","Advanced"),"高级功能")--Advanced

NM(RF("软件设置","高级功能","General"),"一般的")--General
NM(RF("软件设置","高级功能","一般的","Open Menu Key"),"开启AW菜单按键")
NM(RF("软件设置","高级功能","一般的","Open Console Key"),"开启AW控制台按键")
NM(RF("软件设置","高级功能","一般的","Open Settings Folder"),"打开参数文件夹")

NM(RF("软件设置","高级功能","Lua Security"),"Lua安全")--Lua Security
NM(RF("软件设置","高级功能","Lua安全","Allow scripts editing lua files"),"允许脚本编辑Lua文件")
NM(RF("软件设置","高级功能","Lua安全","Allow scripts editing cfg files"),"允许脚本编辑cfg文件")
NM(RF("软件设置","高级功能","Lua安全","Allow internet connections from scripts"),"允许来自脚本的网络连接")
NM(RF("软件设置","高级功能","Lua安全","Allow game specific scripting (e.g. Panorama JS)"),"允许特定于游戏的脚本(例如Panorama JS)")
NM(RF("软件设置","高级功能","Lua安全","Allow insecure FFI library for extended API"),"允许不安全的FFI库扩展API")
NM(RF("软件设置","高级功能","Lua安全","Save Lua Permissions"),"保存Lua权限")


NM(RF("软件设置","高级功能","UI","Dpi Scale"),"菜单缩放")--UI
NM(RF("软件设置","高级功能","UI","DPI Scale Elements"),"视觉元素缩放")
NM(RF("软件设置","高级功能","UI","Show Binds"),"显示按键绑定")
RF("软件设置","高级功能","UI","显示按键绑定"): SetOptions("关闭","按键名称","路径名称","短的路径名称")
NM(RF("软件设置","高级功能","UI","Show Confirmations"),"文件误触保护")