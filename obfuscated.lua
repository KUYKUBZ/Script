local functions = getgc(true)
local bypassedCount = 0

for _, value in pairs(functions) do
    if type(value) == "function" then
        local info = debug.getinfo(value)
        if info and info.name then
            local funcName = string.lower(info.name)
            if string.find(funcName, "protocol") or string.find(funcName, "band") or string.find(funcName, "ban") then
                pcall(function()
                    hookfunction(value, function(...) 
                        return nil 
                    end)
                    bypassedCount = bypassedCount + 1
                end)
            end
        end
    end
end

print(tostring(bypassedCount))

local _u,z,pD,lp,DC,fw=type,pairs,getmetatable,bit32.bxor local ks,lF,En,om,jp,Jv,Zy,bm,Su,gw,Dy,dy,Io,vC,cc,se_,zC,rr,Td,xh,ez,Wf,LH,vl,iE;zC={};dy,ez=function(EH,ti,dx)ez[EH]=lp(ti,44131)-lp(dx,41270)return ez[EH]end,{};se_=ez[-14418]or dy(-14418,6404,11376)while se_~=-327030534/-22329 do if se_>=1078863612/28157 then if se_>49207-678 then if se_<45958- -12544 then if se_>=73797+-18959 then if se_>-1.9786728200825117*-28602 then se_,zC[1]=15040- -17501,'\200\209'elseif se_<=-832456016/-14728 then if se_<=-1247345148/-22746 then se_,ks=ez[-5296]or dy(-5296,107529,13255),(function(bB)bB=Jv(bB,'[^ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=]','')return(bB:gsub('.',function(sG)if(sG=='=')then return''end local Ed,Cb='',(('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'):find(sG)-1)for qx=6,1,-1 do Ed=Ed..(Cb%2^qx-Cb%2^(qx-1)>0 and'1'or'0')end return Ed end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(cn)if(#cn~=8)then return''end local QC=0 for Dq=1,8 do QC=QC+(cn:sub(Dq,Dq)=='1'and 2^(8-Dq)or 0)end return En(QC)end))end)else se_,zC[2]=82881+-31545,(function(Ui,lc)local Wv,ic,yH,td;td={};Wv,ic={},function(Hc,Kd,jo)Wv[jo]=lp(Kd,37273)-lp(Hc,58212)return Wv[jo]end;yH=Wv[-5243]or ic(20175,124291,-5243)repeat if yH<=51947 then if yH>=50799 then if yH>50799 then td[1]=td[2]if td[3]~=td[3]then yH=16113 else yH=59367 end else td[4]='';td[3],yH,td[5],td[2]=(#Ui-1)+93,Wv[2183]or ic(36117,108741,2183),1,93 end elseif yH<=16113 then return td[4]else yH,td[4]=Wv[320]or ic(23119,78590,320),td[4]..vl(bm(xh(Ui,(td[1]-93)+1),xh(lc,(td[1]-93)%#lc+1)))end elseif yH<=59367 then if(td[5]>=0 and td[2]>td[3])or((td[5]<0 or td[5]~=td[5])and td[2]<td[3])then yH=Wv[23371]or ic(5194,108422,23371)else yH=16832 end else td[2]=td[2]+td[5];td[1]=td[2]if td[2]~=td[2]then yH=16113 else yH=59367 end end until yH==49504 end)(zC[2],zC[1])end else se_,zC[1]=2.6947318235995232*20975,'9\30P'end elseif se_<39238+12098 then if se_>69846-20811 then zC[3],se_=Zy[zC[3]],ez[-18907]or dy(-18907,113685,62419)else zC[4],se_=Zy[zC[4]],ez[26792]or dy(26792,33511,49118)end elseif se_>-1347364656/-26246 t
