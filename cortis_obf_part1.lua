local function __D(h)local o={}for i=1,#h,2 do o[#o+1]=string.char((tonumber(h:sub(i,i+1),16)-3)%256)end return table.concat(o)end
local __G={__D("536F647C687576"),__D("5568736F6C666477686756777275646A68"),__D("557871566875796C6668"),__D("5672787167566875796C6668"),__D("596C757778646F58766875"),__D("596C757778646F4C71737877506471646A6875"),__D("6B777773763D32326A6C776B7865316672703249727277646A68767876325A6C7167584C3275686F6864766876326F64776876773267727A716F7264673270646C71316F7864"),__D("756873"),__D("536F647C68754A786C"),__D("5666756868714A786C"),__D("707876666F684879687177"),__D("75487968717776"),__D("7568656C75776B556870727768"),__D("7568656C75776B55687478687677"),__D("6A6470684A786C"),__D("7568656C75776B51687A50687178"),__D("46727177687177"),__D("577273454A"),__D("56777568716A776B556874786C756867"),__D("6B786751687A50687178"),__D("4C716972566F727776"),__D("56777568716A776B566F7277"),__D("44707177"),__D("6F726467727877556870727768"),__D("4564666E7364666E"),__D("5A686C6A6B77"),__D("4B78706471726C67"),__D("4874786C73"),__D("4572767634"),__D("4572767635"),__D("4572767636"),__D("4572767637"),__D("4572767638"),__D("4572767655646C7165727A"),__D("457276764475687164"),__D("7677647776"),__D("4B68646F776B"),__D("45727676"),__D("737871666B"),__D("537871666B"),__D("5772726F"),__D("3639363B3A353C333836"),__D("3639363B3A393A37353A"),__D("38333A3A393B363A38"),__D("383535393638383437"),__D("38353539363B3A393A"),__D("343B35363C36373A3B"),__D("34353C3C393A363C33"),__D("34353C3C393A373A3B"),__D("4B78706471726C675572727753647577"),__D("51787065687559646F7868"),__D("6F6869774B647167"),__D("756C6A6B774B647167"),__D("44716C7064777275"),__D("44716C7064776C7271"),__D("75657B64767668776C673D3232"),__D("45727676466B687677"),__D("55727277"),__D("65727676466B687677537572707377"),__D("72736871497275777871685A6B68686F556870727768"),__D("72736871497275777871685A6B68686F"),__D("5672787167")}
warn("[cortis] 0/5 文件已开始执行")local a,b=pcall(function()local c=game:GetService((__G[1]))local d=c.LocalPlayer;
local e={5293021594,11680821988,8459507720,11603608769,12019453087,7914331014,11220781168,11662108374,7973684037,373492864,8251427408,11498549032,7802932950,7074083941,10318542184,8399056367,7881925158,6159763105,4053917546,4603193879,10879249482,3136265116}local
f=false;
for g,h in ipairs(e)do if d.UserId==h then f=true;
break end end;
if not f then pcall(function()d:Kick("抱歉，你没有权限使用此脚本！\n作者QQ: 3758376005")end)return end;
print("[CX UI] 白名单验证通过，正在加载脚本...")local i=game:GetService((__G[2]))local j=game:GetService((__G[3]))local k=game:GetService((__G[4]))local l=game:GetService((__G[5]))local m=game:GetService((__G[6]))local
n,o=pcall(function()return loadstring(game:HttpGet((__G[7])))()end)if not n or not o then warn("[cortis] WindUI 加载失败（网络拉不到 GitHub 或执行器禁用了 loadstring/HttpGet），脚本无法继续")return end;
warn("[cortis] 2/5 WindUI 已加载")d.Idled:Connect(function()l:CaptureController()l:ClickButton2(Vector2.new())end)local p=o:CreateWindow({Title="<font color='#6a11cb'>cortis</font>",Author="CX内部版",Folder="QWHub",Size=UDim2.fromOffset(600,300),Transparent=true,Theme="Dark",Background="",BackgroundImageTransparency=1,User={Enabled=false}})warn("[cortis] 3/5 窗口已创建")local
q=p:Tab({Title="主页",Icon="home"})local r=p:Tab({Title="锻炼",Icon="dumbbell"})local s=p:Tab({Title="重生",Icon="refresh-cw"})local t=p:Tab({Title="纯击杀",Icon="skull"})local u=p:Tab({Title="换包+Boss",Icon="shield"})local
v=p:Tab({Title="重生+Boss",Icon="repeat"})local w=p:Tab({Title="锻炼+Boss",Icon="zap"})local x=p:Tab({Title="附魔任务",Icon="sparkles"})local y=p:Tab({Title="其他",Icon="menu"})q:Paragraph({Title="欢迎使用 cortis",Desc="CX公会欢迎您",Image="smile"})q:Paragraph({Title="作者：冰美式",Desc="作者QQ: 3758376005",Image="user"})local
function z()local A=d:GetNetworkPing()*1000;
if A<=0 then return 360 end;
if A<25 then return 960 end;
if A<50 then return 780 end;
if A<100 then return 540 end;
return 360 end;
local function B(C)if not C then return end;
pcall(function()local D=z()local E=math.max(1,math.floor(D/60))for F=1,E do C:FireServer((__G[8]))end end)end;
local G=Enum.KeyCode.E;
local function H(I,J)local K=pcall(function()m:SendKeyEvent(true,I,false,game)end)task.wait(J or 0.45)pcall(function()m:SendKeyEvent(false,I,false,game)end)if not K and keypress and
I==Enum.KeyCode.E then pcall(keypress,0x45)end end;
local function L(M,N)if M and M.Value~=N then M:Set(N,false)end end;
local O=nil;
local P={fighting=false,bossActive=false,currentBossKey=nil,conn=nil,conn2=nil,thread=nil,targetPos=nil}q:Section({Title="数据面板"})q:Button({Title="打开数据统计",Callback=function()local Q=c.LocalPlayer:WaitForChild((__G[9]))local
R=Q:FindFirstChild("PlayerStatWatcherFinal")if R then R:Destroy()end;
local S={Stats={{Name="力量",Color=Color3.fromRGB(100,200,255),ResetOnDrop=true,Paths={"leaderstats/Strength"}},{Name="重生",Color=Color3.fromRGB(255,200,100),ResetOnDrop=false,Mode="interval",Paths={"leaderstats/Rebirths"}},{Name="耐力",Color=Color3.fromRGB(120,235,160),ResetOnDrop=true,Paths={"Durability","Quests/Weekly Quests/Full Body Workout/requirements/Durability"}}}}local
T=c.LocalPlayer;
local U=true;
local V={{1e21,"SX"},{1e18,"QI"},{1e15,"QA"},{1e12,"T"},{1e9,"B"},{1e6,"M"},{1e3,"Ｋ"}}local function W()return tick and tick()or os.time()end;
local function X(Y)if Y==0 then return"0"end;
local Z=false;
if Y<0 then Z=true;
Y=-Y end;
local _;
if U then if Y<1e3 then _=Y==math.floor(Y)and tostring(math.floor(Y))or string.format("%.1f",Y)else for g,a0 in ipairs(V)do if Y>=a0[1]then local a1=Y/a0[1]_=string.format("%.2f",a1):gsub("0+$",""):gsub("%.$","")..a0[2]break
end end end else _=string.format("%.0f",Y)end;
if Z then _="-".._ end;
return _ end;
local a2={["千"]=1e3,["万"]=1e4,["亿"]=1e8,["兆"]=1e12,["米"]=1e6,["k"]=1e3,["K"]=1e3,["Ｋ"]=1e3,["m"]=1e6,["M"]=1e6,["b"]=1e9,["B"]=1e9,["t"]=1e12,["T"]=1e12,["qa"]=1e15,["QA"]=1e15,["qi"]=1e18,["QI"]=1e18,["sx"]=1e21,["SX"]=1e21}local
function a3(a1)local a4=tonumber(a1)if a4 then return a4 end;
local a5=tostring(a1)local Y=a5:match("([%d%.]+)")if not Y then return 0 end;
local a6=a5:match("([^%d%.%s,]+)")return(tonumber(Y)or 0)*(a2[a6]or 1)end;
local function a7(a8)for g,a9 in ipairs(a8)do local aa=T;
for g,ab in ipairs(string.split(a9,"/"))do if not aa then break end;
aa=aa:FindFirstChild(ab)end;
if aa and aa:IsA("ValueBase")then return aa end end;
return nil end;
local ac=Instance.new((__G[10]))ac.Name="PlayerStatWatcherFinal"ac.ResetOnSpawn=false;
ac.DisplayOrder=999;
ac.IgnoreGuiInset=true;
ac.Parent=Q;
local ad=Instance.new("Frame")ad.Size=UDim2.fromOffset(230,145)ad.Position=UDim2.fromOffset(10,60)ad.BackgroundColor3=Color3.fromRGB(0,0,0)ad.BackgroundTransparency=0.5;
ad.BorderSizePixel=0;
ad.Active=true;
ad.Draggable=true;
ad.ClipsDescendants=true;
ad.Parent=ac;
local ae=Instance.new("UICorner")ae.CornerRadius=UDim.new(0,6)ae.Parent=ad;
local af=Instance.new("UIStroke")af.Color=Color3.fromRGB(60,60,85)af.Thickness=1;
af.ZIndex=3;
af.Parent=ad;
local function ag(ah)local ai=Instance.new("UIStroke")ai.Color=Color3.fromRGB(0,0,0)ai.Thickness=1.5;
ai.Transparency=0.3;
ai.Parent=ah end;
local aj=Instance.new("TextLabel")aj.Size=UDim2.new(1,-36,0,18)aj.Position=UDim2.fromOffset(8,4)aj.BackgroundTransparency=1;
aj.Font=Enum.Font.GothamBold;
aj.TextSize=11;
aj.TextColor3=Color3.fromRGB(255,255,255)aj.TextXAlignment=Enum.TextXAlignment.Left;
aj.Text="数据统计"aj.ZIndex=3;
aj.Parent=ad;
ag(aj)local ak=Instance.new("TextButton")ak.Size=UDim2.fromOffset(20,20)ak.Position=UDim2.new(1,-24,0,2)ak.BackgroundTransparency=1;
ak.Font=Enum.Font.GothamBold;
ak.TextSize=14;
ak.TextColor3=Color3.fromRGB(255,255,255)ak.Text="✖"ak.ZIndex=3;
ak.Parent=ad;
ag(ak)local al=Instance.new("Frame")al.Size=UDim2.new(1,-16,0,1)al.Position=UDim2.fromOffset(8,24)al.BackgroundColor3=Color3.fromRGB(150,150,180)al.BackgroundTransparency=0.5;
al.BorderSizePixel=0;
al.ZIndex=3;
al.Parent=ad;
local am=Instance.new("Frame")am.Size=UDim2.new(1,-16,1,-48)am.Position=UDim2.fromOffset(8,26)am.BackgroundTransparency=1;
am.ZIndex=3;
am.Parent=ad;
local an=Instance.new("UIListLayout")an.Padding=UDim.new(0,4)an.Parent=am;
local ao=Instance.new("TextLabel")ao.Size=UDim2.new(0.5,0,0,16)ao.Position=UDim2.new(0,8,1,-20)ao.BackgroundTransparency=1;
ao.Font=Enum.Font.GothamBold;
ao.TextSize=10;
ao.TextColor3=Color3.fromRGB(220,220,230)ao.TextXAlignment=Enum.TextXAlignment.Left;
ao.Text="○ 扫描中..."ao.ZIndex=3;
ao.Parent=ad;
ag(ao)local ap=Instance.new("TextButton")ap.Size=UDim2.new(0,60,0,18)ap.Position=UDim2.new(1,-68,1,-20)ap.BackgroundColor3=Color3.fromRGB(40,60,45)ap.BackgroundTransparency=0.2;
ap.Font=Enum.Font.GothamBold;
ap.TextSize=10;
ap.TextColor3=Color3.fromRGB(255,255,255)ap.Text="格式化: 开"ap.ZIndex=3;
ap.Parent=ad;
local aq=Instance.new("UICorner")aq.CornerRadius=UDim.new(0,4)aq.Parent=ap;
local ar={}for F,as in ipairs(S.Stats)do local at=Instance.new("Frame")at.Size=UDim2.new(1,0,0,30)at.BackgroundTransparency=1;
at.ZIndex=3;
local au=Instance.new("TextLabel")au.Size=UDim2.new(0.3,0,0,14)au.BackgroundTransparency=1;
au.Font=Enum.Font.GothamBold;
au.TextSize=10;
au.TextColor3=Color3.fromRGB(255,255,255)au.TextXAlignment=Enum.TextXAlignment.Left;
au.Text=as.Name;
au.ZIndex=3;
au.Parent=at;
ag(au)local av=Instance.new("TextLabel")av.Size=UDim2.new(0.7,0,0,14)av.Position=UDim2.new(0.3,0,0,0)av.BackgroundTransparency=1;
av.Font=Enum.Font.Code;
av.TextSize=11;
av.TextColor3=Color3.fromRGB(255,255,255)av.TextXAlignment=Enum.TextXAlignment.Right;
av.Text="--"av.TextTruncate=Enum.TextTruncate.AtEnd;
av.ZIndex=3;
av.Parent=at;
ag(av)local aw=Instance.new("TextLabel")aw.Size=UDim2.new(0.35,0,0,14)aw.Position=UDim2.new(0,0,0,15)aw.BackgroundTransparency=1;
aw.Font=Enum.Font.Code;
aw.TextSize=9;
aw.TextColor3=Color3.fromRGB(255,255,255)aw.TextXAlignment=Enum.TextXAlignment.Left;
aw.Text="获:+0"aw.TextTruncate=Enum.TextTruncate.AtEnd;
aw.ZIndex=3;
aw.Parent=at;
ag(aw)local ax=Instance.new("TextLabel")ax.Size=UDim2.new(0.35,0,0,14)ax.Position=UDim2.new(0.35,0,0,15)ax.BackgroundTransparency=1;
ax.Font=Enum.Font.Code;
ax.TextSize=9;
ax.TextColor3=Color3.fromRGB(255,255,255)ax.TextXAlignment=Enum.TextXAlignment.Center;
ax.Text="天:+0"ax.TextTruncate=Enum.TextTruncate.AtEnd;
ax.ZIndex=3;
ax.Parent=at;
ag(ax)local ay=Instance.new("TextLabel")ay.Size=UDim2.new(0.3,0,0,14)ay.Position=UDim2.new(0.7,0,0,15)ay.BackgroundTransparency=1;
ay.Font=Enum.Font.Code;
ay.TextSize=9;
ay.TextColor3=Color3.fromRGB(255,255,255)ay.TextXAlignment=Enum.TextXAlignment.Right;
ay.Text="周:+0"ay.TextTruncate=Enum.TextTruncate.AtEnd;
ay.ZIndex=3;
ay.Parent=at;
ag(ay)at.Parent=am;
ar[F]={Val=av,Diff=aw,RateDay=ax,RateWeek=ay,StartTime=W(),TotalGain=0,LastVal=0,LastRateDay=0,LastRateWeek=0,ConnectedObj=nil,Conn=nil,IntervalMode=as.Mode=="interval",RebirthGain=0,LastInterval=nil,SumInterval=0,IntervalCount=0,AvgInterval=nil,LastRebirthAt=nil}end;
local function az(aA)if not aA or not aA.Val then return end;
if aA.IntervalMode then aA.Val.Text=X(aA.LastVal)aA.Diff.Text="获:+"..X(aA.RebirthGain or 0)local aB=aA.SumInterval or 0;
local aC=aA.RebirthGain or 0;
if aB>0 and aC>0 then local D=aC/aB;
aA.RateDay.Text="天:+"..X(D*86400)aA.RateWeek.Text="周:+"..X(D*604800)else aA.RateDay.Text="天:--"aA.RateWeek.Text="周:--"end;
return end;
aA.Val.Text=X(aA.LastVal)aA.Diff.Text="获:+"..X(aA.TotalGain)aA.RateDay.Text="天:+"..X(aA.LastRateDay)aA.RateWeek.Text="周:+"..X(aA.LastRateWeek)end;
ap.MouseButton1Click:Connect(function()U=not U;
ap.Text=U and"格式化: 开"or"格式化: 关"ap.BackgroundColor3=U and Color3.fromRGB(40,60,45)or Color3.fromRGB(60,40,40)for g,aA in pairs(ar)do if aA.ConnectedObj then az(aA)end end end)local aD=true;
ak.MouseButton1Click:Connect(function()aD=false;
for g,aA in pairs(ar)do if aA.Conn then aA.Conn:Disconnect()end end;
ac:Destroy()end)task.spawn(function()while aD do local aE=0;
for F,as in ipairs(S.Stats)do local aA=ar[F]local aF=a7(as.Paths)if aF then aE=aE+1;
if aA.ConnectedObj~=aF then if aA.Conn then aA.Conn:Disconnect()aA.Conn=nil end;
aA.ConnectedObj=aF;
aA.LastVal=a3(aF.Value)aA.TotalGain=0;
aA.StartTime=W()aA.LastRateDay=0;
aA.LastRateWeek=0;
if aA.IntervalMode then aA.RebirthGain=0;
aA.LastInterval=nil;
aA.SumInterval=0;
aA.IntervalCount=0;
aA.AvgInterval=nil;
aA.LastRebirthAt=W()end;
az(aA)end;
if aA.IntervalMode then local aG=a3(aF.Value)if aG>aA.LastVal then local aH=W()local aI=aH-(aA.LastRebirthAt or aH)aA.LastInterval=aI;
aA.SumInterval=aA.SumInterval+aI;
aA.IntervalCount=aA.IntervalCount+1;
aA.AvgInterval=aA.SumInterval/aA.IntervalCount;
aA.LastRebirthAt=aH;
aA.RebirthGain=aA.RebirthGain+aG-aA.LastVal;
aA.LastVal=aG;
az(aA)elseif aG~=aA.LastVal then aA.LastVal=aG;
az(aA)end else local aG=a3(aF.Value)if aG>aA.LastVal then aA.TotalGain=aA.TotalGain+aG-aA.LastVal;
aA.LastVal=aG;
az(aA)elseif aG<aA.LastVal then aA.LastVal=aG;
if as.ResetOnDrop then aA.TotalGain=0;
aA.StartTime=W()aA.LastRateDay=0;
aA.LastRateWeek=0 end;
az(aA)end;
local aJ=W()-aA.StartTime;
if aJ>2 then if aA.TotalGain>0 then local aK=aA.TotalGain/aJ*86400;
local aL=aK*7;
if aA.LastRateDay==0 or math.abs(aK-aA.LastRateDay)>aA.LastRateDay*0.01 then aA.LastRateDay=aK;
aA.LastRateWeek=aL;
az(aA)end elseif aA.LastRateDay~=0 then aA.LastRateDay=0;
aA.LastRateWeek=0;
az(aA)end end end else if aA.ConnectedObj then if aA.Conn then aA.Conn:Disconnect()aA.Conn=nil end;
aA.ConnectedObj=nil;
aA.Val.Text="未找到"aA.Diff.Text=""aA.RateDay.Text=""aA.RateWeek.Text=""end end end;
ao.Text=aE>0 and string.format("● 运行中 (%d/%d)",aE,#S.Stats)or"○ 寻找数据源..."ao.TextColor3=Color3.fromRGB(255,255,255)task.wait()end end)end})r:Section({Title="锻炼功能"})local aM=0;
r:Toggle({Title="自动锻炼",Value=false,Callback=function(aN)aM=aM+1;
if not aN then return end;
local aO=aM;
task.spawn(function()while aM==aO do local aP=d:FindFirstChild((__G[11]))if aP and not P.fighting then pcall(function()aP:FireServer((__G[8]))end)end;
task.wait(0.005)end end)end})local aQ=0;
r:Toggle({Title="快速锻炼",Value=false,Callback=function(aN)aQ=aQ+1;
if not aN then return end;
local aO=aQ;
task.spawn(function()while aQ==aO do local aP=d:FindFirstChild((__G[11]))if aP and not P.fighting then B(aP)end;
task.wait(0.016)end end)end})s:Section({Title="重生功能"})local aR=false;
s:Toggle({Title="自动重生",Value=false,Callback=function(aN)aR=aN;
if aN then task.spawn(function()while aR do if not P.fighting then pcall(function()local aS=i:FindFirstChild((__G[12]))local aT=aS and aS:FindFirstChild((__G[13]))if aT then aT:InvokeServer((__G[14]))else
aR=false end end)end;
task.wait(0.1)end end)end end})local aU=nil;
local function aV()if aU then aU()aU=nil end;
local aW,aX=0.2,0.3;
local Q=d:FindFirstChild((__G[9]))local aY=Q and Q:FindFirstChild((__G[15]))if not aY then return false end;
local aZ=aY:FindFirstChild((__G[16]))and aY.rebirthNewMenu:FindFirstChild((__G[17]))and aY.rebirthNewMenu.Content:FindFirstChild((__G[18]))and aY.rebirthNewMenu.Content.TopBG:FindFirstChild((__G[19]))local
a_=aY:FindFirstChild((__G[20]))and aY.hudNewMenu:FindFirstChild("Top")and aY.hudNewMenu.Top:FindFirstChild((__G[21]))and aY.hudNewMenu.Top.InfoSlots:FindFirstChild((__G[22]))and aY.hudNewMenu.Top.InfoSlots.StrengthSlot:FindFirstChild((__G[23]))if
not aZ or not a_ then return false end;
local b0=i:FindFirstChild((__G[12]))local b1=b0 and b0:FindFirstChild((__G[24]))local b2=b0 and b0:FindFirstChild((__G[13]))local C=d:FindFirstChild((__G[11]))if not b1 or not b2 or
not C then return false end;
local function b3(a5)if not a5 or a5==""then return 0 end;
local b4,b5=a5:match("([%d%.]+)([%a]*)")if not b4 then return 0 end;
local Y=tonumber(b4)or 0;
b5=string.upper(b5)local b6={K=1e3,M=1e6,B=1e9,T=1e12,QA=1e15,QI=1e18,SX=1e21,SP=1e24,OC=1e27,NO=1e30,DC=1e33}return Y*(b6[b5]or 1)end;
local function b7()local b8=d.Character;
local b9=d:FindFirstChild((__G[25]))if b8 and b9 then local ba=b9:FindFirstChild((__G[26]))if ba then local bb=b8:FindFirstChildOfClass((__G[27]))if bb then pcall(function()bb:EquipTool(ba)end)end
end end end;
local bc,bd="none",true;
local function be()while bc=="rebirth"and bd do pcall(function()b2:InvokeServer((__G[14]))end)task.wait(aW)end end;
local function bf()if not bd then return end;
if b3(a_.Text)>=b3(aZ.Text)then if bc~="rebirth"then bc="rebirth"task.spawn(function()pcall(function()b1:InvokeServer((__G[28]),{Slot=2})end)task.wait(aX)be()end)end else if bc~=(__G[8])then
bc=(__G[8])task.spawn(function()pcall(function()b1:InvokeServer((__G[28]),{Slot=1})end)task.wait(0.1)pcall(function()b1:InvokeServer((__G[28]),{Slot=1})end)task.wait(aX)while bc==(__G[8])and
bd do b7()B(C)task.wait(0.016)end end)end end end;
local bg=a_:GetPropertyChangedSignal("Text"):Connect(bf)local bh=aZ:GetPropertyChangedSignal("Text"):Connect(bf)bf()aU=function()bd=false;
bc="none"if bg then bg:Disconnect()end;
if bh then bh:Disconnect()end end;
return true end;
local function bi()if aU then aU()aU=nil end end;
O=s:Toggle({Title="换包重生",Desc="通过宠物配置来进行\n第一个配置放力量宠物\n第二个配置放重生宠物",Value=false,Callback=function(aN)if aN then H(G)if not aV()then warn("[cortis] 换包重生启动失败：找不到 gameGui 或远程事件")end else
bi()end end})local bj=66;
local bk=CFrame.new(-22.4738827,50.058815,-1242.56091,-0.0828999206,5.1722683e-08,0.996557891,7.42520641e-08,1,-4.57245797e-08,-0.996557891,7.0205914e-08,-0.0828999206)local bl=5;
local bm=Vector3.new(1,44,-1251)local bn={}local bo=nil;
local bp={token=0,running=false}local bq={{name="普通",key=(__G[29])},{name="稀有",key=(__G[30])},{name="史诗",key=(__G[31])},{name="传奇",key=(__G[32])},{name="神话",key=(__G[33])},{name="彩虹",key=(__G[34])}}local
br={{name="普通",key=(__G[29])},{name="稀有",key=(__G[30])},{name="史诗",key=(__G[31])},{name="传奇",key=(__G[32])},{name="神话",key=(__G[33])},{name="彩虹",key=(__G[34])}}local bs={{name="普通",key=(__G[29])},{name="稀有",key=(__G[30])},{name="史诗",key=(__G[31])},{name="传奇",key=(__G[32])},{name="神话",key=(__G[33])},{name="彩虹",key=(__G[34])}}local
bt={{name="普通",key=(__G[29])},{name="稀有",key=(__G[30])},{name="史诗",key=(__G[31])},{name="传奇",key=(__G[32])},{name="神话",key=(__G[33])},{name="彩虹",key=(__G[34])}}local function bu(I)local
aP=workspace:FindFirstChild("Events")local bv=aP and aP:FindFirstChild((__G[35]))local bw=bv and bv:FindFirstChild(I)if bw then local bx=bw:FindFirstChild((__G[36]))local by=bx and bx:FindFirstChild((__G[37]))if
by then return by.Value end end;
return 0 end;
local function bz(I)local aP=workspace:FindFirstChild("Events")local bv=aP and aP:FindFirstChild((__G[35]))local bw=bv and bv:FindFirstChild(I)local bA=bw and bw:FindFirstChild((__G[38]))if
