local f=string.byte;local t=string.char;local c=string.sub;local h=table.concat;local E=math.ldexp;local I=getfenv or function()return _ENV end;local l=setmetatable;local i=select;local r=unpack;local K=tonumber;local function s(f)local e,o,n="","",{}local a=256;local d={}for l=0,a-1 do d[l]=t(l)end;local l=1;local function r()local e=K(c(f,l,l),36)l=l+1;local o=K(c(f,l,l+e-1),36)l=l+e;return o end;e=t(r())n[1]=e;while l<#f do local l=r()if d[l]then o=d[l]else o=e..c(e,1,1)end;d[a]=e..c(o,1,1)n[#n+1],e,a=o,o,a+1 end;return table.concat(n)end;local a=s('24L24K27527427527824K25927924J27825Y25D25X25T25D25Z25S24K24O27825O25S25S25W26Z27F27H27J27L24N27825Z26525M24K24G27O27Q25W24K27Y27526P25Y25K24K25528527R24E23V23V24524624323U24428O23U24524E24224024224723V25Y25W25J24B25U24924524K24I27826H25D25S25O25N25C28327826S26J26V26O24K27D27526K25D25H25C25D25Y25Z27M27826F25N25M25S25D29Z23T26O26525W25D24K25027825H25W25W25K25P25J25H25S25P29Y23V25Q25Z29Y29627826J25Y25P25F25P28225328G25W25Z28I23V25C25P25Z25J25N25Y25C23U2B625L29F27526E29D2652BD24K25F25H25L2A724U27826B29A26V29S25U2AF2A724V27826K2862BS25Y2BU25J2BN27826M26V26J26I26925M2B629R28827825J25L29E24Q27826L26I26Q26L26O26926Z26E26U26J26R26V26926U2BI25H25Y25F29U2842752CD2C527526I27026925C25Y25L26926N25C2CZ24H27825M29Y2C429V2752BQ25M29S2AH25D26B26P26L26824K24027826024S22C22J23P24S2752622E82E02E82102632782572752EE2182E525721824K2102602502E523P2A924K2EA2752402ED2EF2752EH2EO26325O2EL25O2EO2602582ES2582E923W2EX2FE2EE23O2EL23O2F82FA2E62FC24K2612A824K2432782EW2EC2F32EG2EI26323W2EL2FG2602FI2E62FK2EV24S2A924Z2EZ2FY2F32E422J2572ED2G42ES2G72FQ2A92FT2752BH27529527525T24K26C24K2FO24K25T23W25G24K24D2FE2GZ24C2102H324C27525X24K2FK24D27825X26S1K2H326S2HB25G2382H32H22GZ26K2442H326K27525W2642E524D2642HB2FC24L24D2FO25O2EK22J24D2EN24K25X2582HE2FO2ID23O2I42FO25P24K2HT2HF27525P21O26C2I421O2752A72A92IO24K25D1K25W2I42HJ24K25P1C2H224D1C27525C2HY2I92I12IZ2HT2I42HT24K26W2I82IA2IV2IE2H32FO25D24421G2JI27526X2782IY25D2JP2I52IP22S2J822S2I22IF2GT25W2IN28724K2652502IX2EU2612EB24D2EB2772752DK2HW2AG25K28D2D524K2E32ES2EB2I12E52542782612KF24K24Y2KH2EB2492EB2AX2782KT25S25H25Z25R2BI25V25H25P27L2KT2BK2BM24K2EB24K26L25Z26G25N29Q25D29E2BO27525K2LV25C27K2AS25M25F29L2BY2862BQ27L26L2AY2B028J25Y25H25V23U2AU29B25T25I25T25Z29S2B629Z2A125S2BA25N25L23V26U25T25M26826O26H23V27225D29S25N26426K2MN23V25L2LJ25M2NE29D25T25K27J23V2AV25S25Y25N23U25K25T25H24K2KO24K25Z25W2MI2822LZ24K2MB2C12C32BW2M927R2O62BV24K2O32C72C926825D2D724K26D2ME2B12MH2MJ2ML25O2MN2MP2MR29Y2A029Z2MW2MY2N02N22N42N62N82NQ2NB2ND2NF2AV23V2AE27K23U2AM2AO2NX2O025P29T2LP27825S25N2M42AV2M729M24K26S25K25H2C426L29E2972DQ2BL25D2PX2GV2OM2MG2MI2MK2LK2OR2MO2MQ25Y2MS2OW2MV2BB2MZ2N12N32N52N72N92P625I2NE2NG23V2B52AS25W25S25Z23V2BI2NS2NU24K26H2Q528Y2Q72OQ2OS2QC2QE2MU2OY2QI2P12QL2P42NA2NC2QP2P82NH2QT25P2QV2QX26P25M25P25U29S25Z25H25K2R02NV26E2E22GF2E72752FQ2FK2512L12G92H32EB2F92HZ2FO2FQ2GW2IY2L22HE2EU26222S24R2H322S22J2632631S22J2GG2ST2632602G12E62H52642FM2592FO26524S2J82EB25W24C2HZ2HA2KD2FO2K22FP2HD2H32S82IX2SB26C2HZ2GW24K2KY22J2L02S42L323Q2EU2SC2I92SE24K21G2TJ27525S26S2HZ2HL2FP2K12T524K2HJ2IY25W2FM2TG2ID2J82I625G2HZ2HQ2ID2752TG2BH2FK2462PL2F52E62F72IC2EB2452EB25T2502GW23U2EU2SS2EL1S2EO25G25W2ES2KC26W2FM23P2FO26X2TN2FS2TP25H2502FK2V527525Q24S28724E2GC2F12FZ2SZ2572FG2VB2VD2752VF2FB2JW2GW24L2432VM2VO24K2VQ24K25Q2702VU2702F32U62GG2HL21025G2SZ23P2H52W522J23W2VI26C2J82TP26O2JM2IB26T2JJ24D2JJ26G21G2HZ2U224K26P26S2K624D2U826X2TF2FO2NV2HE2AA2S92KK2S42KJ2V12TI2G724K2G02SU2W02SQ25S2WQ2H52UF2E523Z2IG2582UJ27525O21O2HZ2IU2IC2XI2GT2TI2IY25T2XN2EB2KI2UP2EB');local n=bit and bit.bxor or function(l,e)local o,n=1,0 while l>0 and e>0 do local a,c=l%2,e%2 if a~=c then n=n+o end l,e,o=(l-a)/2,(e-c)/2,o*2 end if l<e then l=e end while l>0 do local e=l%2 if e>0 then n=n+o end l,o=(l-e)/2,o*2 end return n end local function e(e,l,o)if o then local l=(e/2^(l-1))%2^((o-1)-(l-1)+1);return l-l%1;else local l=2^(l-1);return(e%(l+l)>=l)and 1 or 0;end;end;local l=1;local function o()local a,e,o,c=f(a,l,l+3);a=n(a,164)e=n(e,164)o=n(o,164)c=n(c,164)l=l+4;return(c*16777216)+(o*65536)+(e*256)+a;end;local function d()local e=n(f(a,l,l),164);l=l+1;return e;end;local function K()local n=o();local l=o();local c=1;local n=(e(l,1,20)*(2^32))+n;local o=e(l,21,31);local l=((-1)^e(l,32));if(o==0)then if(n==0)then return l*0;else o=1;c=0;end;elseif(o==2047)then return(n==0)and(l*(1/0))or(l*(0/0));end;return E(l,o-1023)*(c+(n/(2^52)));end;local E=o;local function s(e)local o;if(not e)then e=E();if(e==0)then return'';end;end;o=c(a,l,l+e-1);l=l+e;local e={}for l=1,#o do e[l]=t(n(f(c(o,l,l)),164))end return h(e);end;local l=o;local function t(...)return{...},i('#',...)end local function S()local f={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};local l={0};local c={};local a={f,nil,l,nil,c};for e=1,o()do l[e-1]=S();end;local l=o()local c={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};for o=1,l do local e=d();local l;if(e==2)then l=(d()~=0);elseif(e==1)then l=K();elseif(e==0)then l=s();end;c[o]=l;end;a[2]=c a[4]=d();for a=1,o()do local c=n(o(),125);local o=n(o(),57);local n=e(c,1,2);local l=e(o,1,11);local l={l,e(c,3,11),nil,nil,o};if(n==0)then l[3]=e(c,12,20);l[5]=e(c,21,29);elseif(n==1)then l[3]=e(o,12,33);elseif(n==2)then l[3]=e(o,12,32)-1048575;elseif(n==3)then l[3]=e(o,12,32)-1048575;l[5]=e(c,21,29);end;f[a]=l;end;return a;end;local function F(l,e,K)local n=l[1];local o=l[2];local e=l[3];local l=l[4];return function(...)local n=n;local c=o;local S=e;local a=l;local s=t local e=1;local f=-1;local E={};local t={...};local d=i('#',...)-1;local l={};local o={};for l=0,d do if(l>=a)then E[l-a]=t[l+1];else o[l]=t[l+1];end;end;local l=d-a+1 local l;local a;while true do l=n[e];a=l[1];if a<=24 then if a<=11 then if a<=5 then if a<=2 then if a<=0 then local n=l[2];local c={};local e=0;local l=n+l[3]-1;for l=n+1,l do e=e+1;c[e]=o[l];end;local c,l=s(o[n](r(c,1,l-n)));l=l+n-1;e=0;for l=n,l do e=e+1;o[l]=c[e];end;f=l;elseif a==1 then local n=l[2];local c={};local e=0;local a=f;for l=n+1,a do e=e+1;c[e]=o[l];end;local c={o[n](r(c,1,a-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=c[e];end;f=l;else o[l[2]]=K[c[l[3]]];end;elseif a<=3 then if(o[l[2]]==o[l[5]])then e=e+1;else e=e+l[3];end;elseif a==4 then do return end;else o[l[2]][c[l[3]]]=o[l[5]];end;elseif a<=8 then if a<=6 then e=e+l[3];elseif a>7 then o[l[2]]=o[l[3]];else local n=l[2];local e=o[l[3]];o[n+1]=e;o[n]=e[c[l[5]]];end;elseif a<=9 then o[l[2]]();f=A;elseif a==10 then local e=l[2];local c={};local n=0;local l=e+l[3]-1;for l=e+1,l do n=n+1;c[n]=o[l];end;o[e](r(c,1,l-e));f=e;else local n=l[2];local a={};local e=0;local c=f;for l=n+1,c do e=e+1;a[e]=o[l];end;local c={o[n](r(a,1,c-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=c[e];end;f=l;end;elseif a<=17 then if a<=14 then if a<=12 then if not o[l[2]]then e=e+1;else e=e+l[3];end;elseif a==13 then if o[l[2]]then e=e+1;else e=e+l[3];end;else o[l[2]]=o[l[3]][c[l[5]]];end;elseif a<=15 then o[l[2]][c[l[3]]]=c[l[5]];elseif a>16 then local a;local H,a;local t;local d;local E;local h;local i;local a;o[l[2]]=K[c[l[3]]];e=e+1;l=n[e];a=l[2];i=o[l[3]];o[a+1]=i;o[a]=i[c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];i=l[3];h=o[i]for l=i+1,l[5]do h=h..o[l];end;o[l[2]]=h;e=e+1;l=n[e];a=l[2];E={};d=0;t=a+l[3]-1;for l=a+1,t do d=d+1;E[d]=o[l];end;H,t=s(o[a](r(E,1,t-a)));t=t+a-1;d=0;for l=a,t do d=d+1;o[l]=H[d];end;f=t;e=e+1;l=n[e];a=l[2];E={};d=0;t=f;for l=a+1,t do d=d+1;E[d]=o[l];end;H={o[a](r(E,1,t-a))};t=a+l[5]-2;d=0;for l=a,t do d=d+1;o[l]=H[d];end;f=t;e=e+1;l=n[e];o[l[2]]();f=a;e=e+1;l=n[e];do return end;else o[l[2]]={};end;elseif a<=20 then if a<=18 then local a;local E,a;local t;local d;local i;local h;local a;o[l[2]]=K[c[l[3]]];e=e+1;l=n[e];a=l[2];h=o[l[3]];o[a+1]=h;o[a]=h[c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];i={};d=0;t=a+l[3]-1;for l=a+1,t do d=d+1;i[d]=o[l];end;E,t=s(o[a](r(i,1,t-a)));t=t+a-1;d=0;for l=a,t do d=d+1;o[l]=E[d];end;f=t;e=e+1;l=n[e];a=l[2];i={};d=0;t=f;for l=a+1,t do d=d+1;i[d]=o[l];end;E={o[a](r(i,1,t-a))};t=a+l[5]-2;d=0;for l=a,t do d=d+1;o[l]=E[d];end;f=t;e=e+1;l=n[e];o[l[2]]();f=a;e=e+1;l=n[e];do return end;elseif a>19 then local e=l[2];local n=o[l[3]];o[e+1]=n;o[e]=n[c[l[5]]];else o[l[2]]=(l[3]~=0);end;elseif a<=22 then if a==21 then o[l[2]]=F(S[l[3]],nil,K);else local n=l[3];local e=o[n]for l=n+1,l[5]do e=e..o[l];end;o[l[2]]=e;end;elseif a==23 then local n=l[2];local a={};local e=0;local c=n+l[3]-1;for l=n+1,c do e=e+1;a[e]=o[l];end;local c={o[n](r(a,1,c-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=c[e];end;f=l;else o[l[2]]=K[c[l[3]]];end;elseif a<=36 then if a<=30 then if a<=27 then if a<=25 then local n=l[2];local a=l[5];local l=n+2;local c={o[n](o[n+1],o[l])};for e=1,a do o[l+e]=c[e];end;local n=o[n+3];if n then o[l]=n else e=e+1;end;elseif a==26 then o[l[2]]=o[l[3]];else local a,a;local h;local i;local t;local d;local E;local a;a=l[2];E={};d=0;t=a+l[3]-1;for l=a+1,t do d=d+1;E[d]=o[l];end;o[a](r(E,1,t-a));f=a;e=e+1;l=n[e];o[l[2]]=K[c[l[3]]];e=e+1;l=n[e];a=l[2];i=o[l[3]];o[a+1]=i;o[a]=i[c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];E={};d=0;t=a+l[3]-1;for l=a+1,t do d=d+1;E[d]=o[l];end;h={o[a](r(E,1,t-a))};t=a+l[5]-2;d=0;for l=a,t do d=d+1;o[l]=h[d];end;f=t;e=e+1;l=n[e];a=l[2];i=o[l[3]];o[a+1]=i;o[a]=i[c[l[5]]];e=e+1;l=n[e];o[l[2]]=K[c[l[3]]];e=e+1;l=n[e];a=l[2];i=o[l[3]];o[a+1]=i;o[a]=i[c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];E={};d=0;t=a+l[3]-1;for l=a+1,t do d=d+1;E[d]=o[l];end;h,t=s(o[a](r(E,1,t-a)));t=t+a-1;d=0;for l=a,t do d=d+1;o[l]=h[d];end;f=t;end;elseif a<=28 then o[l[2]][c[l[3]]]=o[l[5]];elseif a==29 then o[l[2]][c[l[3]]]=c[l[5]];else o[l[2]]=o[l[3]][c[l[5]]];end;elseif a<=33 then if a<=31 then if o[l[2]]then e=e+1;else e=e+l[3];end;elseif a==32 then local a;local E,a;local t;local d;local i;local h;local a;o[l[2]]=K[c[l[3]]];e=e+1;l=n[e];a=l[2];h=o[l[3]];o[a+1]=h;o[a]=h[c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];i={};d=0;t=a+l[3]-1;for l=a+1,t do d=d+1;i[d]=o[l];end;E,t=s(o[a](r(i,1,t-a)));t=t+a-1;d=0;for l=a,t do d=d+1;o[l]=E[d];end;f=t;e=e+1;l=n[e];a=l[2];i={};d=0;t=f;for l=a+1,t do d=d+1;i[d]=o[l];end;E={o[a](r(i,1,t-a))};t=a+l[5]-2;d=0;for l=a,t do d=d+1;o[l]=E[d];end;f=t;e=e+1;l=n[e];o[l[2]]();f=a;e=e+1;l=n[e];o[l[2]]=K[c[l[3]]];else local h;local t;local d;local i;local E;local a;o[l[2]]={};e=e+1;l=n[e];o[l[2]][c[l[3]]]=c[l[5]];e=e+1;l=n[e];o[l[2]][c[l[3]]]=c[l[5]];e=e+1;l=n[e];o[l[2]]={};e=e+1;l=n[e];o[l[2]][c[l[3]]]=c[l[5]];e=e+1;l=n[e];o[l[2]][c[l[3]]]=c[l[5]];e=e+1;l=n[e];o[l[2]][c[l[3]]]=o[l[5]];e=e+1;l=n[e];o[l[2]]=K[c[l[3]]];e=e+1;l=n[e];a=l[2];E=o[l[3]];o[a+1]=E;o[a]=E[c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];i={};d=0;t=a+l[3]-1;for l=a+1,t do d=d+1;i[d]=o[l];end;h={o[a](r(i,1,t-a))};t=a+l[5]-2;d=0;for l=a,t do d=d+1;o[l]=h[d];end;f=t;e=e+1;l=n[e];a=l[2];E=o[l[3]];o[a+1]=E;o[a]=E[c[l[5]]];e=e+1;l=n[e];o[l[2]]={};e=e+1;l=n[e];o[l[2]][c[l[3]]]=c[l[5]];e=e+1;l=n[e];o[l[2]]={};e=e+1;l=n[e];o[l[2]][c[l[3]]]=c[l[5]];e=e+1;l=n[e];o[l[2]][c[l[3]]]=o[l[5]];e=e+1;l=n[e];o[l[2]]=K[c[l[3]]];e=e+1;l=n[e];a=l[2];E=o[l[3]];o[a+1]=E;o[a]=E[c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];i={};d=0;t=a+l[3]-1;for l=a+1,t do d=d+1;i[d]=o[l];end;h={o[a](r(i,1,t-a))};t=a+l[5]-2;d=0;for l=a,t do d=d+1;o[l]=h[d];end;f=t;e=e+1;l=n[e];a=l[2];E=o[l[3]];o[a+1]=E;o[a]=E[c[l[5]]];e=e+1;l=n[e];o[l[2]]=(l[3]~=0);e=e+1;l=n[e];a=l[2];i={};d=0;t=a+l[3]-1;for l=a+1,t do d=d+1;i[d]=o[l];end;h={o[a](r(i,1,t-a))};t=a+l[5]-2;d=0;for l=a,t do d=d+1;o[l]=h[d];end;f=t;e=e+1;l=n[e];o[l[2]][c[l[3]]]=o[l[5]];e=e+1;l=n[e];a=l[2];i={};d=0;t=a+l[3]-1;for l=a+1,t do d=d+1;i[d]=o[l];end;h={o[a](r(i,1,t-a))};t=a+l[5]-2;d=0;for l=a,t do d=d+1;o[l]=h[d];end;f=t;e=e+1;l=n[e];o[l[2]][c[l[3]]]=o[l[5]];e=e+1;l=n[e];a=l[2];i={};d=0;t=a+l[3]-1;for l=a+1,t do d=d+1;i[d]=o[l];end;o[a](r(i,1,t-a));f=a;e=e+1;l=n[e];do return end;end;elseif a<=34 then o[l[2]]=c[l[3]];elseif a>35 then o[l[2]]=(l[3]~=0);else local n=l[2];local c={};local e=0;local l=n+l[3]-1;for l=n+1,l do e=e+1;c[e]=o[l];end;local c,l=s(o[n](r(c,1,l-n)));l=l+n-1;e=0;for l=n,l do e=e+1;o[l]=c[e];end;f=l;end;elseif a<=42 then if a<=39 then if a<=37 then o[l[2]]=F(S[l[3]],nil,K);elseif a>38 then local n=l[3];local e=o[n]for l=n+1,l[5]do e=e..o[l];end;o[l[2]]=e;else e=e+l[3];end;elseif a<=40 then local h;local t;local d;local i;local E;local a;o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]();f=a;e=e+1;l=n[e];o[l[2]]=K[c[l[3]]];e=e+1;l=n[e];a=l[2];E=o[l[3]];o[a+1]=E;o[a]=E[c[l[5]]];e=e+1;l=n[e];a=l[2];i={};d=0;t=a+l[3]-1;for l=a+1,t do d=d+1;i[d]=o[l];end;h={o[a](r(i,1,t-a))};t=a+l[5]-2;d=0;for l=a,t do d=d+1;o[l]=h[d];end;f=t;e=e+1;l=n[e];if o[l[2]]then e=e+1;else e=e+l[3];end;elseif a==41 then local n=l[2];local a={};local e=0;local c=n+l[3]-1;for l=n+1,c do e=e+1;a[e]=o[l];end;local c={o[n](r(a,1,c-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=c[e];end;f=l;else do return end;end;elseif a<=45 then if a<=43 then o[l[2]]={};elseif a>44 then o[l[2]]=c[l[3]];else o[l[2]]();f=A;end;elseif a<=47 then if a==46 then if not o[l[2]]then e=e+1;else e=e+l[3];end;else local e=l[2];local c={};local n=0;local l=e+l[3]-1;for l=e+1,l do n=n+1;c[n]=o[l];end;o[e](r(c,1,l-e));f=e;end;elseif a>48 then if(o[l[2]]==o[l[5]])then e=e+1;else e=e+l[3];end;else local n=l[2];local a=l[5];local l=n+2;local c={o[n](o[n+1],o[l])};for e=1,a do o[l+e]=c[e];end;local n=o[n+3];if n then o[l]=n else e=e+1;end;end;e=e+1;end;end;end;return F(S(),{},I())();
