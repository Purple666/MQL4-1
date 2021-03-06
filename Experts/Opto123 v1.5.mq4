#property copyright "Copyright © 2011, Opto123 Team"
#property link      "http://autoforex.ce.ms"

#import "kernel32.dll"
int     GetTimeZoneInformation(int &TimeZone[]);
   
extern string    Entry_and_exit_conditions        = "----------------------------------------------------------------------";
extern int       ZigZagType                       = 2;
extern bool      ClosedCandle                     = false;
extern double    Buffer                           = 0;
extern int       BufferType                       = 0;
extern double    Min12Distance                    = 0;
extern int       Min12DistanceType                = 0;
extern double    Max12Distance                    = 0;
extern int       Max12DistanceType                = 0;
extern double    Min23Distance                    = 0;
extern int       Min23DistanceType                = 0;
extern double    Max23Distance                    = 0;
extern int       Max23DistanceType                = 0;
extern bool      TrendlineExit                    = false;
extern bool      ExitOnOppositeSignal             = false;
extern bool      ReverseSignals                   = false;
extern string    Order_settings                   = "----------------------------------------------------------------------";
extern int       TradesPerDirection               = 1;
extern int       TradesPerSession                 = 0;
extern int       TradesPerPattern                 = 1;
extern int       MagicNumber                      = 804070;
extern string    TradeComment                     = "Opto123";
extern int       PointSL                          = 1;
extern bool      SwingSL                          = false;
extern double    MinimumSLPips                    = 1;
extern double    MaximumSLPips                    = 0;
extern double    StopLoss                         = 0;
extern int       StopLossType                     = 0;
extern double    VisibleSL                        = 0;
extern double    TakeProfit1                      = 0;
extern int       TakeProfit1Type                  = 0;
extern double    TakeProfit2                      = 0;
extern int       TakeProfit2Type                  = 0;
extern double    TakeProfit3                      = 0;
extern int       TakeProfit3Type                  = 0;
extern double    TakeProfit4                      = 0;
extern int       TakeProfit4Type                  = 0;
extern double    VisibleTP                        = 0;
extern double    BreakEven                        = 0;
extern int       BreakEvenType                    = 0;
extern double    LockProfit                       = 0;
extern int       LockProfitType                   = 0;
extern double    TrailingStop                     = 0;
extern int       TrailingStopType                 = 0;
extern double    TrailingStart                    = 0;
extern int       TrailingStartType                = 0;
extern double    TrailingStep                     = 0;
extern int       TrailingStepType                 = 0;
extern int       CloseProfitableAfterMinutes      = 0;
extern int       CloseLosingAfterMinutes          = 0;
extern double    Slippage                         = 3;
extern double    MaxSpread                        = 0;
extern bool      CloseOnProfit                    = false;
extern bool      Hedge                            = true;
extern double    MinOrdersDistance                = 0;
extern int       MinOrdersDistanceType            = 0;
extern int       NewHighLow                       = 0;
extern string    CandleTimeFrame                  = "0";
extern int       SendEmail                        = 0;
extern int       Alerts                           = 0;
extern string    AlertSound                       = "alert.wav";
extern int       ScreenShots                      = 0;
extern color     LongColour                       = 11193702;
extern color     ShortColour                      = 5275647;
extern string    Trading_hours_settings           = "----------------------------------------------------------------------";
extern bool      AutoGMTOffset                    = true;
extern int       ManualGMTOffset                  = 1;
extern bool      DSTOffset                        = true;
extern string    TradingSession1                  = "00002400";
extern string    TradingSession2                  = "00000000";
extern string    TradingSession3                  = "00000000";
extern string    MondayOpenHour                   = "";
extern string    FridayCloseHour                  = "";
extern int       FridayCloseTrades                = 3;
extern bool      NewsFilter                       = false;
extern int       MinutesBeforeNews                = 10;
extern int       MinutesAfterNews                 = 10;
extern string    Money_management_settings        = "----------------------------------------------------------------------";
extern double    Lots                             = 0.1;
extern double    PartialClose1                    = 100;
extern double    PartialClose2                    = 0;
extern double    PartialClose3                    = 0;
extern bool      MoneyManagement                  = false;
extern double    EquityPercent                    = 0;
extern double    StopLossRisk                     = 0;
extern double    LotPercent                       = 0;
extern int       StartProgression                 = 0;
extern int       MaxProgression                   = 0;
extern double    CloseAllProfit                   = 0;
extern double    CloseAllLoss                     = 0;
extern bool      CloseOneDirection                = true;
extern string    ATR_settings                     = "----------------------------------------------------------------------";
extern double    ATRPeriod                        = 14;
extern string    ZigZag_settings                  = "----------------------------------------------------------------------";
extern int       ExtDepth                         = 12;
extern int       ExtDeviation                     = 5;
extern int       ExtBackstep                      = 3;
extern int       MinSwingBars                     = 0; 
extern int       MaxSwingBars                     = 10;
extern string    MA_based_ZigZag_settings         = "----------------------------------------------------------------------";
extern int       MaSlow_Period                    =14;
extern int       MaSlow_Type                      =2;
extern int       MaSlow_Price                     =0;
extern int       MaSlow_Shift                     =0;
extern int       MaFast_Period                    =3;
extern int       MaFast_Type                      =2;
extern int       MaFast_Price                     =0;
extern int       MaFast_Shift                     =0;
extern string    FFCal_settings                   = "----------------------------------------------------------------------";
extern bool      IncludeHigh 	                    = true;
extern bool      IncludeMedium                    = true;
extern bool      IncludeLow                       = false;
extern bool      IncludeSpeaks                    = true;
extern bool		  ReportAllForUSD		              = false;

double Vd[50][50],Temp[50][50],Ind[1000][30][20],OProfit[200][9],PartialClose[19],Timi[9],d[200],mult;
double d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,g0,g1,g2,g3,g4,g5,g6,g7,g8,g9,f0,f1,f2,f3,f4,f5,f6,f7,f8,f9,w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,y0,m0,m1,m2,m3,m4,m5,m6,m7,m8,m9;
int Vi[50][450],In[40][200],Trade[19],Arrow[9],OTicket[200][9],l[200],h[200],MinutesUntilNextEvent,MinutesAfterPrevEvent,tf;
int i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,t0,t1,t2,t3,t4,t5,t6,t7,t8,t9,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,e1,e2,z0,z1,z2,z3,k0,k1;
int TF[]={0,1,5,15,30,60,240,1440,10080,43200};
bool EntrySignal[9][40][9],ExitSignal[9][40][9],Dot[9][40][10],TradingTime[19];
string Vs[50][450],Str[50][50],gv[200][100],s0,s1,s2,s3,s4,s5,s6,s7,s8,s9;
string TimeFrame[]={"0","M1","M5","M15","M30","H1","H4","D1","W1","MN"};
datetime OTime[50],ETime[50][9],Vt[50][50];

int init()
{Vi[0][7]=(MarketInfo(Symbol(),MODE_PROFITCALCMODE)==0)*MarketInfo(Symbol(),MODE_LOTSIZE)+(MarketInfo(Symbol(),MODE_PROFITCALCMODE)>=1)*100000; 
mult=MathPow(10,(MathRound(Digits*0.5)!=Digits*0.5)); Slippage=NormalizeDouble(mult*Slippage,0); TF[0]=Period(); HideTestIndicators(true); 
tf=(Period()==1)+(Period()==5)*2+(Period()==15)*3+(Period()==30)*4+(Period()==60)*5+(Period()==240)*6+(Period()==1440)*7+(Period()==10080)*8+(Period()==43200)*9;

Vi[0][3]=(TakeProfit1>0)+(TakeProfit2>0)+(TakeProfit3>0)+(TakeProfit4>0);
Timi[3]=NormalizeDouble(Point*mult,Digits); Timi[4]=NormalizeDouble(MaxSpread*Point*mult,Digits);
PartialClose[1]=PartialClose1; PartialClose[2]=PartialClose2; PartialClose[3]=PartialClose3;
if (PartialClose[1]>=100) {PartialClose[1]=100; PartialClose[2]=0; PartialClose[3]=0;}
if (PartialClose[2]>=100) {PartialClose[2]=100; PartialClose[3]=0;}
if (PartialClose[3]>=100) {PartialClose[3]=100;} PartialClose[4]=100;
if (PartialClose[1]+PartialClose[2]>100) {PartialClose[2]=100-PartialClose[1]; PartialClose[3]=0;}
if (PartialClose[2]+PartialClose[3]>100) {PartialClose[3]=100-PartialClose[2];}
if (PartialClose[1]+PartialClose[3]>100) {PartialClose[3]=100-PartialClose[1]-PartialClose[2]; PartialClose[3]*=(PartialClose[3]>0);}
g2=PartialClose[2]; if (PartialClose[2]>0) {PartialClose[2]/=(100-PartialClose[1])*0.01;}
if (PartialClose[3]>0) {PartialClose[3]/=(100-PartialClose[1]-g2)*0.01;}

Arrow[1]=LongColour; Arrow[2]=ShortColour; Arrow[3]=16777215; Arrow[4]=16436871; 
TradesPerDirection=MathMax(TradesPerDirection,(TradesPerDirection==0 || TradesPerDirection>99)*99);
TradesPerSession=MathMax(TradesPerSession,(TradesPerSession==0 || TradesPerSession>99)*99);
TradesPerPattern=MathMax(TradesPerPattern,(TradesPerPattern==0 || TradesPerPattern>99)*99);
Lots=LotDecimals(Lots); Vs[30][1]=StringSubstr(Symbol(),0,6); TradeComment=StringConcatenate(TradeComment," ",Vs[30][1]," ",TimeFrame[tf]);

e1=1; e2=e1+1; i1=1; while(i1<=e1) {Str[i1][1]="0000"; i1++;}
Str[1][1]=StringConcatenate(2-ClosedCandle,"010");
i1=1; while(i1<=e1) {i2=1; while(i2<=3) {Vi[i1][i2]=StrToInteger(StringSubstr(Str[i1][1],i2-1,1)); Vi[i1][i2]*=(Vi[i1][i2]<=2); i2++;} i1++;}
i1=1; while(i1<=e1) {i2=1; while(i2<=4) {i3=1; while(i3<=2)
{i4=(i2<=2)*i3+(i2==4)*2; i5=(i2<=3)*i2+(i2==4)*3; Dot[2-i3][i1][i2]=(Vi[i1][i5]==i4 && !(i2>=3 && !Dot[2-i3][i1][1])); i3++;} i2++;} i1++;}
i1=1; while(i1<=e1) {Str[0][0]=StringSubstr(Str[i1][1],3,3); Vi[i1][5]=0;
i2=0; while(i2<=9 && Vi[i1][5]==0) {Vi[i1][5]=(Str[0][0]==TimeFrame[i2] && (Vi[i1][1]>0 || Vi[i1][2]>0))*TF[i2]; i2++;} 
Vi[i1][5]+=(Vi[i1][5]==0)*Period(); i1++;}
Vi[0][5]=Period(); i1=1; while(i1<=e1) {Vi[0][5]=MathMin(Vi[0][5],Vi[i1][5]); i1++;}
Vi[0][6]=0; i1=0; while(i1<=9 && Vi[0][6]==0) {Vi[0][6]=(CandleTimeFrame==TimeFrame[i1])*TF[i1]; i1++;} Vi[0][6]+=(Vi[0][6]==0)*Period(); 
Vi[0][1]=0; i1=1; while(i1<=e1) {Vi[0][1]+=(Dot[0][i1][1] || Dot[1][i1][1]); i1++;}
i1=1; while(i1<=2) {i2=3; while(i2<=4) {i3=1; while(i3<=e1+1)
{Dot[i1-1][0][i2]=(Dot[i1-1][0][i2] || Dot[i1-1][i3][i2]); Dot[i1-1][0][i2-2]=(Dot[i1-1][0][i2-2] || Dot[i1-1][i3][i2-2]); i3++;} i2++;} i1++;}
i1=1; while(i1<=2) {i2=1; while(i2<=e1+1) {Dot[i1-1][i2][7]=(Dot[i1-1][i2][1] || Dot[i1-1][i2][2]); i2++;} i1++;}
i1=1; while(i1<=e1) {Dot[0][i1][8]=Dot[0][i1][7]; Dot[1][i1][8]=(Dot[0][i1][7] || Dot[1][i1][7]); i1++;}
Dot[0][1][8]=0; Dot[1][1][8]=(ZigZagType>=1 && ZigZagType<=3); Dot[0][e2][8]=true; Dot[0][e2][2]=ExitOnOppositeSignal; i1=1; while(i1<=e1) {Dot[0][i1][9]=true; i1++;}
i1=1; while(i1<=e1) {Vi[i1][6]=Vi[i1][5]; if (i1==6) {Vi[i1][6]=Period();} 
Vi[i1][7]=3; i1++;}  Vi[1][7]=1;
Vs[33][1]=TradingSession1; Vs[33][2]=TradingSession2; Vs[33][3]=TradingSession3;
i1=1; while(i1<=3) {if (Vs[33][i1]=="00002400") {i2=1; while(i2<=3) {Vs[33][i2]="00002400"; i2++;}}
if (StringSubstr(Vs[33][i1],0,2)=="24") {Vs[33][i1]="00000000";}
if (StrToInteger(StringSubstr(Vs[33][i1],0,2))>24 || StrToInteger(StringSubstr(Vs[33][i1],4,2))>24) {Vs[33][i1]="00000000";} 
if (StringSubstr(Vs[33][i1],0,4)==StringSubstr(Vs[33][i1],4,4)) {Vs[33][i1]="00000000";} i1++;} TradingTime[9]=(Vs[33][1]!="00002400"); 
i1=0; while(i1<=200) {i2=0; while(i2<=99) 
{gv[i1][i2]=StringConcatenate(Vs[30][1],MagicNumber," ",i1," ",i2); i2++;} i1++;}
if (IsTesting()) {SendEmail=0; ScreenShots=0; Alerts=0; NewsFilter=false; GlobalVariablesDeleteAll();}
i1=0; while(i1<=420) {Vi[32][i1]=Arrow[3]; Vs[41][i1]=StringConcatenate("Comment",i1); ObjectCreate(Vs[41][i1],23,0,0,0); 
ObjectSetText(Vs[41][i1],"",8,"Verdana",Vi[32][i1]); ObjectSet(Vs[41][i1],OBJPROP_CORNER,0); ObjectSet(Vs[41][i1],OBJPROP_XDISTANCE,2); i1++;}
Vs[0][1]="2100"; k1=StringLen(Vs[0][1])-1;
Vs[31][e2]="Opposite signal"; Vs[31][31]="Take profit"; Vs[31][32]="Stop loss"; Vs[31][33]="Friday close"; Vs[31][34]="Timeout close"; Vs[31][35]="Timeout close";
Vs[31][37]="Trendline break"; Vs[31][40]="Close all"; 
Vs[32][1]=" profit is "; Vs[32][2]=" loss is "; Vs[32][3]="Long order"; Vs[32][4]="Short order";
Vs[32][7]=" has been opened"; Vs[32][8]=" has been closed"; Vs[32][9]="Open.gif"; Vs[32][10]="Close.gif"; Vs[32][11]="Long entry at "; Vs[32][12]="Short entry at ";
TradingTime[1]=true; i1=0; while(i1<=50) {OTime[i1]=0; i1++;} StartProgression=MathMax(StartProgression,2); Vi[0][0]=(!IsTesting() || IsVisualMode());
MaxProgression+=(MaxProgression==0)*99; MaxProgression=MathMax(MaxProgression,2); MaxProgression=MathMin(MaxProgression,99); PointSL*=(PointSL>=1 && PointSL<=k1);
SwingSL*=(PointSL==0 && MinimumSLPips>0); StopLossRisk*=(StopLoss>0 || SwingSL || PointSL>0); EquityPercent*=(StopLossRisk==0); MoneyManagement*=(EquityPercent>0 || StopLossRisk>0);
MaxSwingBars+=(MaxSwingBars==0)*200; Vi[0][12]=MaxSwingBars*StringLen(Vs[0][1])+30;

Vt[30][22]=StrToTime("2020.03.29"); Vt[31][22]=StrToTime("2020.10.25"); Vt[30][21]=StrToTime("2019.03.31"); Vt[31][21]=StrToTime("2019.10.27");
Vt[30][20]=StrToTime("2018.03.25"); Vt[31][20]=StrToTime("2018.10.28"); Vt[30][19]=StrToTime("2017.03.26"); Vt[31][19]=StrToTime("2017.10.29");
Vt[30][18]=StrToTime("2016.03.27"); Vt[31][18]=StrToTime("2016.10.30"); Vt[30][17]=StrToTime("2015.03.29"); Vt[31][17]=StrToTime("2015.10.25");
Vt[30][16]=StrToTime("2014.03.30"); Vt[31][16]=StrToTime("2014.10.26"); Vt[30][15]=StrToTime("2013.03.31"); Vt[31][15]=StrToTime("2013.10.27");
Vt[30][14]=StrToTime("2012.03.25"); Vt[31][14]=StrToTime("2012.10.28"); Vt[30][13]=StrToTime("2011.03.27"); Vt[31][13]=StrToTime("2011.10.30");
Vt[30][12]=StrToTime("2010.03.28"); Vt[31][12]=StrToTime("2010.10.31"); Vt[30][11]=StrToTime("2009.03.29"); Vt[31][11]=StrToTime("2009.10.25");
Vt[30][10]=StrToTime("2008.03.30"); Vt[31][10]=StrToTime("2008.10.26"); Vt[30][9]=StrToTime("2007.03.25"); Vt[31][9]=StrToTime("2007.10.28");
Vt[30][8]=StrToTime("2006.03.26"); Vt[31][8]=StrToTime("2006.10.29"); Vt[30][7]=StrToTime("2005.03.27"); Vt[31][7]=StrToTime("2005.10.30");
Vt[30][6]=StrToTime("2004.03.28"); Vt[31][6]=StrToTime("2004.10.31"); Vt[30][5]=StrToTime("2003.03.30"); Vt[31][5]=StrToTime("2003.10.26");
Vt[30][4]=StrToTime("2002.03.31"); Vt[31][4]=StrToTime("2002.10.27"); Vt[30][3]=StrToTime("2001.03.25"); Vt[31][3]=StrToTime("2001.10.28");
Vt[30][2]=StrToTime("2000.03.26"); Vt[31][2]=StrToTime("2000.10.29"); Vt[30][1]=StrToTime("1999.03.28"); Vt[31][1]=StrToTime("1999.10.31");
return(0);}

int deinit() {return(0);}

int start()
{// Entry and exit signals **************************************************************************************
TradingHours(); Timi[1]=NormalizeDouble(Bid,Digits); Timi[2]=NormalizeDouble(Ask,Digits); 
i5=1; while(i5<=e2) {i1=0; while(i1<=Vi[i5][7] && (ETime[i5][3]!=iTime(Symbol(),Vi[i5][5],0) || i1==0)) {i4=(i1>0); i2=0; while(i2<=7 && Dot[i4][i5][8])
{CalcInd(i1,i2,i5); i2++;} i1++;} ETime[i5][3]=iTime(Symbol(),Vi[i5][5],0); i5++;}

i5=1; while(i5<=e1) {i2=(Dot[1][i5][1] && !Dot[0][i5][2]); while(i2<=2 && (ETime[i5][1]!=iTime(Symbol(),Vi[i5][6],0) || i2==0)) {i1=1; while(i1<=2) {z0=3-2*i1; z1=0-z0;

if (i5==1 && i2==ClosedCandle) {if (ClosedCandle) {i6=(i1-1)*20+71+k1; g1=GlobalVariableGet(gv[0][i6]); 
EntrySignal[1][i5][i1]=(g1>0 && z0*(Close[1]-g1)>=0 && z0*(g1-Open[1])>0);}
EntrySignal[0][i5][i1]=false; if (Vi[37-i1][1]>0 && !ClosedCandle) {g1=Vd[37-i1][k1+1]; EntrySignal[0][i5][i1]=(z0*(Bid-g1)>=0 && z0*(g1-Open[0])>0);}}
i1++;} i2++;} ETime[i5][1]=iTime(Symbol(),Vi[i5][6],0); i5++;}

i1=1; while (i1<=2) {i3=1; while (i3<=2) 
{EntrySignal[i1][0][i3+2]=(Dot[i1-1][0][1] && (Dot[i1-1][0][3] || Dot[i1-1][0][4])); 
EntrySignal[i1][0][i3]=true; In[i1][i3]=0; In[i1][i3+2]=0; i2=1; while (i2<=e1)
{EntrySignal[i1][i2][i3+2]=(EntrySignal[i1][i2][i3] || !Dot[i1-1][i2][1] || (!Dot[i1-1][i2][3] && !Dot[i1-1][i2][4]));
In[i1][i3]+=((!EntrySignal[i1][i2][i3] && Dot[i1-1][i2][1] && Dot[i1-1][i2][3]) || !Dot[i1-1][0][3]);
In[i1][i3+2]+=(EntrySignal[i1][i2][i3] && Dot[i1-1][i2][1] && Dot[i1-1][i2][4] && Dot[i1-1][0][4]);
EntrySignal[i1][0][i3]*=(EntrySignal[i1][i2][i3] || !Dot[1][i2][1]); EntrySignal[i1][0][i3+2]*=EntrySignal[i1][i2][i3+2]; i2++;} 
EntrySignal[i1][0][i3+2]=(EntrySignal[i1][0][i3+2] || In[i1][i3]==0 || In[i1][i3+2]>0); i3++;} i1++;}

i1=1; while (i1<=2) {EntrySignal[0][0][i1]=true; i2=1; while (i2<=e1) {EntrySignal[0][0][i1]*=(EntrySignal[0][i2][i1] || !Dot[0][i2][1]); i2++;} 
EntrySignal[3][0][i1]=(EntrySignal[0][0][i1] && EntrySignal[1][0][i1] && !EntrySignal[1][0][i1+2] && !EntrySignal[2][0][i1+2]); i1++;}

i5=1; while(i5<=e2) {i2=Dot[1][i5][2]; while(i2<=1 && (ETime[i5][2]!=iTime(Symbol(),Vi[i5][6],0) || i2==0)) {i1=1; while(i1<=2) {z0=3-2*i1; z1=0-z0;
if (i5==e2 && i2==0) {ExitSignal[i2][e2][i1]=EntrySignal[3][0][3-i1];}
i1++;} i2++;} ETime[i5][2]=iTime(Symbol(),Vi[i5][6],0); i5++;} 

i1=1; while (i1<=2) {i2=1; while (i2<=e2)
{ExitSignal[3][i2][i1]=((ExitSignal[1][i2][i1] && Dot[1][i2][2]) || (ExitSignal[0][i2][i1] && Dot[0][i2][2])); i2++;} i1++;}
 
// Order management ************************************************************************************************                                              
i1=0; while (i1<=8) {Trade[i1]=0; i1++;} i1=1; while (i1<=Vi[0][2]) {OTicket[i1][0]=0; i1++;}
OProfit[0][1]=0; OProfit[0][2]=0; Vi[0][11]=TradingTime[9]*OTime[9]+(!TradingTime[9])*StrToTime("00:00");
i9=OrdersTotal()-1; while(i9>=0)
{if (OrderSelect(i9,SELECT_BY_POS,MODE_TRADES) && OrderSymbol()==Symbol() && OrderMagicNumber()==MagicNumber)
{i0=OrderType()+1; z0=3-i0*2; z1=i0+z0*ReverseSignals; FindSeat(OrderTicket(),1);  
Trade[i0]++; Trade[i0+2]+=(OrderOpenTime()>=iTime(Symbol(),Vi[0][6],0)); Trade[i0+4]+=(OrderOpenTime()>=Vi[0][11]); 
Trade[i0+6]+=(OrderOpenTime()>=Vi[37-z1][k1]+Period()*60);
OTicket[k0][0]=OrderTicket(); OProfit[k0][0]=OrderProfit()+OrderSwap()+OrderCommission(); OProfit[0][i0]+=OProfit[k0][0];

// Stop loss calculation ***********************************************************************************************
if (GlobalVariableGet(gv[k0][0])==0 && (StopLoss>0 || SwingSL || PointSL>0)) {GlobalVariableSet(gv[k0][0],NormalizeDouble(CalcStopLoss(k0),Digits));}

// Take profit calculation ***********************************************************************************************
if (Vi[0][3]>0) {if (GlobalVariableGet(gv[k0][15])==0) {d[1]=CalcValue(TakeProfit1Type,TakeProfit1,k0); d[2]=CalcValue(TakeProfit2Type,TakeProfit2,k0); 
d[3]=CalcValue(TakeProfit3Type,TakeProfit3,k0); d[4]=CalcValue(TakeProfit4Type,TakeProfit4,k0); 
i6=0; i1=1; while (i1<=4) {i5=ArrayMaximum(d,4,1); if (d[i5]>0) {i6++; Temp[0][i6]=d[i5]; d[i5]=0;} i1++;}
i1=1; while (i1<=i6) {GlobalVariableSet(gv[k0][i1+10],NormalizeDouble(OrderOpenPrice()+z0*Temp[0][i6-i1+1],Digits)); i1++;} GlobalVariableSet(gv[k0][15],1);}
if (GlobalVariableGet(gv[k0][10])==0 && GlobalVariableGet(gv[k0][33])<Vi[0][3]) {i7=GlobalVariableGet(gv[k0][33])+1;
GlobalVariableSet(gv[k0][10],GlobalVariableGet(gv[k0][i7+10]));}}

// Break even ***********************************************************************************************************                                                 
if (BreakEven>0)
{g1=CalcValue(BreakEvenType,BreakEven,k0); g2=CalcValue(LockProfitType,LockProfit,k0);
if (z0*(Timi[i0]-OrderOpenPrice())-g1>=0 && (z0*(OrderOpenPrice()-GlobalVariableGet(gv[k0][0]))+g2>0 || GlobalVariableGet(gv[k0][0])==0))      
{GlobalVariableSet(gv[k0][0],NormalizeDouble(OrderOpenPrice()+z0*g2,Digits));}}

// Trailing stop ******************************************************************************************************** 
if (TrailingStop>0) {g1=CalcValue(TrailingStopType,TrailingStop,k0); g2=CalcValue(TrailingStartType,TrailingStart,k0); g3=CalcValue(TrailingStepType,TrailingStep,k0);
if (z0*(Timi[i0]-OrderOpenPrice())-g1>=0 && z0*(Timi[i0]-OrderOpenPrice())-g2>=0 && (z0*(Timi[i0]-GlobalVariableGet(gv[k0][0]))-g1-g3>=0 || GlobalVariableGet(gv[k0][0])==0))
{GlobalVariableSet(gv[k0][0],NormalizeDouble(Timi[i0]-z0*g1,Digits));}}

// Order close at signal ***************************************************************************************
if (GlobalVariableGet(gv[k0][38])==OrderTicket() && !IsTradeContextBusy()) 
{g1=GlobalVariableGet(gv[k0][37]); if (OrderClose(OrderTicket(),g1,Timi[i0],Slippage,Arrow[i0])) {CloseEvent(GlobalVariableGet(gv[k0][49]),(g1!=OrderLots()),k0);}}

z3=0; if (OTime[13]>0) {if (!TradingTime[4] && GlobalVariableGet(gv[k0][23])==0) 
{z3+=(z3==0 && ((OProfit[k0][0]>=0 && FridayCloseTrades==1) || (OProfit[k0][0]<0 && FridayCloseTrades==2) || FridayCloseTrades==3))*33;} 
GlobalVariableSet(gv[k0][23],(!TradingTime[4]));}
z3+=(z3==0 && ExitSignal[3][e2][z1] && iTime(Symbol(),0,0)>OrderOpenTime() && (OProfit[k0][0]>=0 || !CloseOnProfit))*e2;
z3+=(z3==0 && GlobalVariableGet(gv[k0][10])>0 && z0*(Timi[i0]-GlobalVariableGet(gv[k0][10]))>=0)*31;
z3+=(z3==0 && GlobalVariableGet(gv[k0][0])>0 && z0*(GlobalVariableGet(gv[k0][0])-Timi[i0])>=0)*32;
z3+=(z3==0 && OProfit[k0][0]>=0 && TimeCurrent()-OrderOpenTime()-CloseProfitableAfterMinutes*60>=0 && CloseProfitableAfterMinutes>0 && GlobalVariableGet(gv[k0][24])==0)*34;
z3+=(z3==0 && OProfit[k0][0]<0 && TimeCurrent()-OrderOpenTime()-CloseLosingAfterMinutes*60>=0 && CloseLosingAfterMinutes>0 && GlobalVariableGet(gv[k0][25])==0)*35;
if (TimeCurrent()-OrderOpenTime()-CloseProfitableAfterMinutes*60>=0 && CloseProfitableAfterMinutes>0) {GlobalVariableSet(gv[k0][24],1);}
if (TimeCurrent()-OrderOpenTime()-CloseLosingAfterMinutes*60>=0 && CloseLosingAfterMinutes>0) {GlobalVariableSet(gv[k0][25],1);}
if (OTime[50+k0]!=Time[0]) {OTime[50+k0]=Time[0]; if (TrendlineExit) {s2=CharToStr(k1+97); if (ObjectFind(s2)==-1) {ObjectCreate(s2,2,0,0,0,0,0);
ObjectSet(s2,OBJPROP_TIMEFRAMES,-1);}  i1=GlobalVariableGet(gv[k0][61]); ObjectSet(s2,OBJPROP_TIME1,i1); ObjectSet(s2,OBJPROP_PRICE1,GlobalVariableGet(gv[k0][71]));
i2=GlobalVariableGet(gv[k0][63]); ObjectSet(s2,OBJPROP_TIME2,i2); ObjectSet(s2,OBJPROP_PRICE2,GlobalVariableGet(gv[k0][73]));
g0=ObjectGetValueByShift(s2,0); g1=ObjectGetValueByShift(s2,1); s1=StringConcatenate(s2,z1," ",DoubleToStr(GlobalVariableGet(gv[k0][63]),0));
DrawLine(i1,GlobalVariableGet(gv[k0][71]),Time[0],g0,Arrow[4],0,1,s1);
z3+=(z3==0 && z0*(g1-Close[1])>0 && Time[0]>OrderOpenTime() && (OProfit[k0][0]>=0 || !CloseOnProfit))*37;}}
if (GlobalVariableGet(gv[k0][34])==0 && iTime(Symbol(),0,0)>OrderOpenTime() && (OProfit[k0][0]>=0 || !CloseOnProfit))
{i1=1; while(i1<=e1) {z3+=(z3==0 && ExitSignal[3][i1][z1])*i1; i1++;}}

if (z3>0 && GlobalVariableGet(gv[k0][38])!=OrderTicket())
{z2=GlobalVariableGet(gv[k0][31])+1; GlobalVariableSet(gv[k0][31],z2); GlobalVariableSet(gv[k0][z2+40],z3);
if (Dot[0][z3][9]) {GlobalVariableSet(gv[k0][34],1);}
if (z3==31) {i5=GlobalVariableGet(gv[k0][33])+1; GlobalVariableSet(gv[k0][33],i5); GlobalVariableSet(gv[k0][10],0);}
g1=0; if (PartialClose[z2]>0) {g1=MarketInfo(Symbol(),MODE_LOTSTEP)*MathRound(OrderLots()*PartialClose[z2]*0.01/MarketInfo(Symbol(),MODE_LOTSTEP)); 
g1=MathMin(MathMax(g1,MarketInfo(Symbol(),MODE_MINLOT)),OrderLots());}
if (z3==e2 || z3==32 || z3==33 || z3==34 || z3==35 || z3==37) {g1=OrderLots();}
if (g1>0) {if (OrderClose(OrderTicket(),g1,Timi[i0],Slippage,Arrow[i0])) {CloseEvent(z3,(g1!=OrderLots()),k0);}
GlobalVariableSet(gv[k0][38],OrderTicket()); GlobalVariableSet(gv[k0][37],g1); GlobalVariableSet(gv[k0][49],z3);}}

VisibleTPSL(k0);} i9--;} Trade[0]=Trade[1]+Trade[2]; 

// Order opening at signal ****************************************************************************************
if (TradingTime[0] && Vi[0][1]>0) {i1=1; while(i1<=2) {z1=i1+(3-i1*2)*ReverseSignals; 
if (EntrySignal[3][0][z1] && (Trade[3-i1]==0 || Hedge) && Trade[i1]<TradesPerDirection && Trade[i1+2]==0 && Timi[4]>=(Timi[4]>0)*(Ask-Bid))
{if (SessionOrders(i1) && OrderDistance(i1)) {RefreshRates(); Timi[1]=NormalizeDouble(Bid,Digits); Timi[2]=NormalizeDouble(Ask,Digits); 
i5=OrderSend(Symbol(),i1-1,CalcLots(i1),Timi[3-i1],Slippage,0,0,TradeComment,MagicNumber,0,Arrow[i1]);
if (i5>0) {Trade[i1]++; FindSeat(i5,1); DrawObjects(z1,k0,StringConcatenate(" ",DoubleToStr(GlobalVariableGet(gv[k0][63]),0)));}}} i1++;}}

// Close all trades ****************************************************************************************
i1=1; while(i1<=2) {i7=CloseOneDirection*i1; g1=OProfit[0][i1]+(!CloseOneDirection)*OProfit[0][3-i1];
i6=((CloseAllLoss<=MathAbs(g1*100/AccountBalance()) && g1<0 && CloseAllLoss>0) || (CloseAllProfit<=g1*100/AccountBalance() && CloseAllProfit>0)); 
if (i6>0) {CloseAll(40,i7,3);} i1++;} ScreenInfo(); ScreenAlerts(); return(0);}

//Functions *********************************************************************************************************************
double CalcInd(int t6,int t7,int t8)
{d9=0; if (t8==1 && t7==0 && t6==1) {if (ClosedCandle && GlobalVariableGet(gv[0][59])!=Time[0]) {GlobalVariableSet(gv[0][59],Time[0]); 
t1=1; while(t1<=2) {t2=0; while(t2<=k1+4) {t3=(t1-1)*20+t2+60; GlobalVariableSet(gv[0][t3],Vi[37-t1][t2]); GlobalVariableSet(gv[0][t3+10],Vd[37-t1][t2]); t2++;} t1++;}}

if (ZigZagType==1) 
{t1=1; while(t1<=2) {CalcSwings(1,t1,Vs[0][1]); t1++;} t5=(In[1][1]>0)+(In[2][1]>0)*2; if (t5==3) {t5=(In[1][1]<=In[2][1])+(In[2][1]<In[1][1])*2;}
t1=1; while(t1<=2) {t2=1; while(t2<=k1) {t4=(t1==t5); Vi[t1+34][t2]=(t5>0)*Time[In[t5][t2+t4]]; t2++;} t1++;}
if (t5==0) {t1=(In[1][2]>0)+(In[2][2]>0)*2; if (t1==3) {t1=(In[1][2]<In[2][2])+(In[2][2]<=In[1][2])*2;}
t2=1; while(t2<=k1) {Vi[t1+34][t2]=(t1>0)*Time[In[t1][t2+1]]; t2++;}}}

if (ZigZagType==2) {t1=1; while(t1<=2) {t4=1; t2=k1; while(t2>=1) {t3=t1+(3-t1*2)*(MathRound((k1-t2+1)*0.5)==(k1-t2+1)*0.5); Vi[t1+34][t2]=0; while(Vi[t1+34][t2]==0)
{Vi[t1+34][t2]=(iCustom(Symbol(),0,"ZigZag",ExtDepth,ExtDeviation,ExtBackstep,0,t4)>0 && iCustom(Symbol(),0,"ZigZag",ExtDepth,ExtDeviation,ExtBackstep,t3,t4)>0)*Time[t4]; 
t4++;} t2--;} t1++;}}

if (ZigZagType==3) {t1=1; while(t1<=2) {t4=1; t2=k1; while(t2>=1) {t3=t1+(3-t1*2)*(MathRound((k1-t2+1)*0.5)==(k1-t2+1)*0.5); Vi[t1+34][t2]=0; while(Vi[t1+34][t2]==0)
{d1=iCustom(Symbol(),0,"MA based ZigZag",MaSlow.Period,MaSlow.Type,MaSlow.Price,MaSlow.Shift,MaFast.Period,MaFast.Type,MaFast.Price,MaFast.Shift,0,t4);
Vi[t1+34][t2]=(d1==(t3==1)*High[t4]+(t3==2)*Low[t4])*Time[t4]; t4++;} t2--;} t1++;}}

t1=1; while(t1<=2) {t2=1; while(t2<=k1) {Vi[t1+34][t2]*=(Vi[t1+34][k1]>0); t3=t1+(3-t1*2)*(MathRound((k1-t2+1)*0.5)==(k1-t2+1)*0.5); t5=TimeToCandle(Vi[t1+34][t2]); 
Vd[t1+34][t2]=(Vi[t1+34][t2]>0)*((t3==1)*High[t5]+(t3==2)*Low[t5]); t2++;} 
t5=3-t1*2; t4=t1-3+t5*ReverseSignals; Vd[t1+34][k1+2]=t5*(Vd[t1+34][1]-Vd[t1+34][2]); Vd[t1+34][k1+3]=t5*(Vd[t1+34][3]-Vd[t1+34][2]); Vd[t1+34][k1+4]=t5*(Vd[t1+34][1]-Vd[t1+34][3]);
Vi[t1+34][1]*=(Vd[t1+34][k1+4]>0 && Vd[t1+34][5]>=CalcValue(Min12DistanceType,Min12Distance,t4) && CalcValue(Max12DistanceType,Max12Distance,t4)>=(Max12Distance>0)*Vd[t1+34][5] && Vd[t1+34][6]>=CalcValue(Min23DistanceType,Min23Distance,t4) && CalcValue(Max23DistanceType,Max23Distance,t4)>=(Max23Distance>0)*Vd[t1+34][6]);
Vd[t1+34][k1+1]=Vd[t1+34][2]-t5*CalcValue(BufferType,Buffer,t4); 

t5=(Vi[t1+34][1]>0); t2=1; while(t2<=k1+4) {Vi[t1+34][t2]*=t5; Vd[t1+34][t2]*=t5; t2++;}
if (Vi[t1+34][1]>0) {DrawObjects(3-t1,0,"");} t1++;}}

if (t8==e2 && t7==0 && t6==0) {d9=iATR(Symbol(),Vi[t8][5],ATRPeriod,t6);}
if (t8!=1) {Ind[t6][t7][t8]=d9;} return(d9);}

int TimeToCandle(int v8)
{v1=0; while(Time[v1]>v8 && v8>0) {v1++;} return(v1);}

int CalcSwings(int x7,int x8,string s6)
{x6=x7-1; x9=StringLen(s6); x1=1; while(x1<=x9+2) {In[x8][x1]=0; In[x8+2][x1]=0; x1++;} x1=1; while(x1<=x9+2) {l[x1]=StrToInteger(StringSubstr(s6,x1-1,1)); x1++;}

x1=x7; x3=x9; while(x3>=1 && x1<=Vi[0][12]+x7) {x4=x9-x3+1; x0=x8+(3-x8*2)*(MathRound(x4*0.5)==x4*0.5); 
if (Swing(x0,x1)>0) 
{x2=(x3<x9-1)*(In[x8][x3+1]+1)+(x3>=x9-1)*(x7-x6); x4=In[x8][x3+1]+1; x5=In[x8][x3+2]+EqualHL(x0,In[x8][x3+2]); 
if (PointsDist(x1,x3,x8,x0) && x1>In[x8][x3+2] && ((x1-In[x8][x3+1]>=MinSwingBars && x1-In[x8][x3+1]<=MaxSwingBars) || x3==x9)
&& ((x0==1 && ((High[x1]>High[iHighest(Symbol(),0,2,x1-x2,x2)] || x1-x2<=0) 
&& (Low[In[x8][x3+1]]<=Low[iLowest(Symbol(),0,1,x1-x4,x4)] || x1-x4<=0 || x3==x9)) 
&& ((3-2*x8)*(3-l[x3]*2)*(High[x1]-High[In[x8][x3+2]])>0 || x3>=x9-1 || l[x3]==0) 
&& (MathMax(High[x1],High[In[x8][x3+2]])>High[In[x8][x3+1]] || x1-In[x8][x3+1]<=0 || In[x8][x3+1]-x5<=0) || x3>=x9-1)
|| (x0==2 && ((Low[x1]<Low[iLowest(Symbol(),0,1,x1-x2,x2)] || x1-x2<=0) 
&& (High[In[x8][x3+1]]>=High[iHighest(Symbol(),0,2,x1-x4,x4)] || x1-x4<=0 || x3==x9)) 
&& ((3-2*x8)*(3-l[x3]*2)*(Low[x1]-Low[In[x8][x3+2]])>0 || x3>=x9-1 || l[x3]==0)
&& (MathMin(Low[x1],Low[In[x8][x3+2]])<Low[In[x8][x3+1]] || x1-In[x8][x3+1]<=0 || In[x8][x3+1]-x5<=0) || x3>=x9-1))) {In[x8][x3]=x1;}} 

x1+=(In[x8][x3]==0); if (x1>=Vi[0][12]+x7 && In[x8][x3]==0 && x3<x9) {
if (In[x8+2][x3]==0) {x2=x9; while(x2>x3) {In[x8+2][x2]=In[x8][x2]; x2--;}}
x1=In[x8][x3+1]+1; In[x8][x3+1]=0; x3++;} 
x3-=(In[x8][x3]>0);}
x1=1; if (In[x8][1]==0) {x1=0; x2=2; while(x2<=x9) {x1+=(x1==0 && In[x8+2][x2]>0)*x2; In[x8][x2]=In[x8+2][x2]; x2++;}}

return(x1);}

bool PointsDist(int q6,int q7,int q8,int q9)
{m6=(q9==1)*High[q6]+(q9==2)*Low[q6]; m7=(q9==2)*High[In[q8][q7+1]]+(q9==1)*Low[In[q8][q7+1]]; 
m8=(q9==1)*High[In[q8][q7+2]]+(q9==2)*Low[In[q8][q7+2]]; m3=MathAbs(m6-m7); m4=MathAbs(m7-m8);

q3=(In[q8][q7+2]==0 || (m3>=Min12Distance*((Min12DistanceType==0)*Point*mult+(Min12DistanceType==1)*Ind[0][0][e2]+(Min12DistanceType==2)*m3+(Min12DistanceType==3)*m4)
&& Max12Distance*((Max12DistanceType==0)*Point*mult+(Max12DistanceType==1)*Ind[0][0][e2]+(Max12DistanceType==2)*m3+(Max12DistanceType==3)*m4)>=(Max12Distance>0)*m3));
 
q3*=(In[q8][q7+2]==0 || (m4>=Min23Distance*((Min23DistanceType==0)*Point*mult+(Min23DistanceType==1)*Ind[0][0][e2]+(Min23DistanceType==2)*m3+(Min23DistanceType==3)*m4) 
&& Max23Distance*((Max23DistanceType==0)*Point*mult+(Max23DistanceType==1)*Ind[0][0][e2]+(Max23DistanceType==2)*m3+(Max23DistanceType==3)*m4)>=(Max23Distance>0)*m4));

return(q3);}

double CalcValue(int v7,double w8,int v8)
{v1=0-v8; v0=(v8>0)*(OrderType()+1)+(v8<0)*(v1+(3-v1*2)*ReverseSignals); w1=(v8<0)*Vd[37-v0][k1+v7]+(v8>0)*GlobalVariableGet(gv[v8][k1+v7+70]);
return(NormalizeDouble(w8*((v7==0)*Point*mult+(v7==1)*Ind[0][0][e2]+(v7>=2)*w1),Digits));}

double Swing(int q7,int q8)
{q5=0; q1=q8+1; while(q5==0 && ((q7==1 && High[q8]>High[q8-1]) || (q7==2 && Low[q8]<Low[q8-1]) || q8<=1)) 
{q5=((q7==1 && High[q8]>High[q1]) || (q7==2 && Low[q8]<Low[q1]))-((q7==1 && High[q8]<High[q1]) || (q7==2 && Low[q8]>Low[q1])); q1++;} 
m5=(q5>0)*((q7==1)*High[q8]+(q7==2)*Low[q8]); return(m5);}

int EqualHL(int q7,int q8)
{q1=q8+1; while((q7==1 && High[q8]==High[q1]) || (q7==2 && Low[q8]==Low[q1])) {q1++;} return(q1-q8-1);}

void DrawObjects(int q7,int q8,string s7)
{q3=(q8>0)*q7+(q8==0)*3; q1=1; while (q1<=k1+1) {In[0][q1]=(q8>0)*GlobalVariableGet(gv[q8][q1+60])+(q8==0)*Vi[37-q7][q1];
Temp[0][q1]=(q8>0)*GlobalVariableGet(gv[q8][q1+70])+(q8==0)*Vd[37-q7][q1]; q1++;}
q1=1; while (q1<=k1-1) {s1=StringConcatenate(CharToStr(q1+96),q7,s7); DrawLine(In[0][q1],Temp[0][q1],In[0][q1+1],Temp[0][q1+1],Arrow[q3],0,1,s1); q1++;}
s1=StringConcatenate(CharToStr(k1+96),q7,s7); DrawLine(In[0][2],Temp[0][k1+1],Time[0],Temp[0][k1+1],Arrow[q7],0,1,s1);
q1=1; while (q1<=k1 && q8>0) {s1=StringConcatenate(CharToStr(q1+96),q7); ObjectSet(s1,OBJPROP_TIMEFRAMES,-1); q1++;}}

void DrawLine(int v5,double w5,int v6,double w6,int v7,int v8,int v9,string s8)
{if (ObjectFind(s8)==-1 && (v5!=v6 || w5!=w6)) {ObjectCreate(s8,2,0,v5,w5,v6,w6);}
{ObjectSet(s8,OBJPROP_TIME1,v5); ObjectSet(s8,OBJPROP_PRICE1,w5); ObjectSet(s8,OBJPROP_TIME2,v6);ObjectSet(s8,OBJPROP_PRICE2,w6);
ObjectSet(s8,OBJPROP_RAY,0); ObjectSet(s8,OBJPROP_COLOR,v7); ObjectSet(s8,OBJPROP_STYLE,v8); ObjectSet(s8,OBJPROP_WIDTH,v9); ObjectSet(s8,OBJPROP_TIMEFRAMES,0);}}

void TradingHours()
{if (OTime[22]!=iTime(Symbol(),1,0)) {OTime[22]=iTime(Symbol(),1,0);
if (OTime[21]!=iTime(Symbol(),10080,0)) {OTime[21]=iTime(Symbol(),10080,0);  Vi[0][10]=OTime[21]+(OTime[22]-OTime[21]>=604800)*604800;
t2=0; t1=1; while(t1<=22 && t2==0 && DSTOffset) {t2=(Vi[0][10]>=Vt[30][t1] && Vi[0][10]<Vt[31][t1]); t1++;}
Vi[0][9]=ManualGMTOffset+t2; if (AutoGMTOffset && !IsTesting()) {t1=GetTimeZoneInformation(h); if (t1>=0 && t1<=2) 
{d1=(TimeCurrent()-TimeLocal()-(h[0]+(t1==2)*h[42])*60); Vi[0][9]=MathRound(d1/3600);}}
t1=1; while(t1<=3 && TradingTime[9]) {t2=1; while(t2<=2) {Vs[t1][t2]="00:00"; if (Vs[33][t1]!="00000000")
{t5=StrToInteger(StringSubstr(Vs[33][t1],(t2-1)*4,4))+Vi[0][9]*100; t5+=2400*((t2==1)*((t5<0)-(t5>=2400))+(t2==2)*((t5<=0)-(t5>2400))); 
Str[0][0]=DoubleToStr(t5,0); i3=1; while(StringLen(Str[0][0])<4) {Str[0][0]=StringConcatenate("0",Str[0][0]); i3++;}
Vs[t1][t2]=StringConcatenate(StringSubstr(Str[0][0],0,2),":",StringSubstr(Str[0][0],2,2));} t2++;} t1++;}
if (TradingTime[9]) {Vs[32][5]="Trading hours "; t1=1; while(t1<=3)
{if (Vs[33][t1]!="00000000") {Vs[32][5]=StringConcatenate(Vs[32][5],Vs[t1][1]," to ",Vs[t1][2],", ");}
t1++;}} Vs[32][5]=StringSubstr(Vs[32][5],0,StringLen(Vs[32][5])-2);
if (StringLen(MondayOpenHour)==4) {t1=StrToInteger(MondayOpenHour); 
t5=MathFloor(t1/100)*3600+(t1-MathFloor(t1/100)*100)*60+Vi[0][9]*3600; OTime[12]=Vi[0][10]+86400+t5+(t5<0)*86400-(t5>=86400)*86400;}
if (StringLen(FridayCloseHour)==4) {t1=StrToInteger(FridayCloseHour); 
t5=MathFloor(t1/100)*3600+(t1-MathFloor(t1/100)*100)*60+Vi[0][9]*3600; OTime[13]=Vi[0][10]+432000+t5+(t5<0)*86400-(t5>86400)*86400;}}
if (OTime[22]>=MathMax(OTime[2],OTime[4]) && NewsFilter) {t1=1; while(t1<=4) {OTime[t1]=0; t1++;}
MinutesUntilNextEvent=iCustom(Symbol(),0,"FFCal",IncludeHigh,IncludeMedium,IncludeLow,IncludeSpeaks,true,0,true,-1,-1,ReportAllForUSD,1,1);
MinutesAfterPrevEvent=iCustom(Symbol(),0,"FFCal",IncludeHigh,IncludeMedium,IncludeLow,IncludeSpeaks,true,0,true,-1,-1,ReportAllForUSD,1,0);
if (MinutesAfterPrevEvent!=99999) {OTime[1]=OTime[22]-(MinutesAfterPrevEvent+MinutesBeforeNews)*60;
OTime[2]=OTime[22]-(MinutesAfterPrevEvent-MinutesAfterNews)*60;}
if (MinutesUntilNextEvent!=99999) {OTime[3]=OTime[22]+(MinutesUntilNextEvent-MinutesBeforeNews)*60; 
OTime[4]=OTime[22]+(MinutesUntilNextEvent+MinutesAfterNews)*60;}}
TradingTime[2]=(OTime[22]>=OTime[2] && (OTime[22]<OTime[3] || OTime[22]>=OTime[4]));
if (TradingTime[9] && OTime[22]>=OTime[10]) {TradingTime[1]=false; t1=1; while(t1<=3 && !TradingTime[1])
{In[t1][1]=StrToTime(Vs[t1][1]); In[t1][2]=StrToTime(Vs[t1][2]);
In[t1][1]-=(In[t1][2]<In[t1][1] && OTime[22]<In[t1][2])*86400; In[t1][2]+=(In[t1][2]<In[t1][1] && OTime[22]>=In[t1][2])*86400;
TradingTime[1]=(OTime[22]>=In[t1][1] && OTime[22]<In[t1][2]); OTime[9]=In[t1][1]; OTime[10]=In[t1][2]; t1++;}
if (!TradingTime[1]) {OTime[10]=StrToTime("24:00"); t1=1; while(t1<=3)
{t5=In[t1][1]; if (t5>OTime[22] && t5<OTime[10]) {OTime[9]=t5; OTime[10]=t5;} t1++;}}}
TradingTime[3]=(OTime[22]>=OTime[12]); TradingTime[4]=(OTime[13]==0 || OTime[22]<OTime[13]);
TradingTime[0]=(TradingTime[1] && TradingTime[2] && TradingTime[3] && TradingTime[4]);}}

double CalcStopLoss(int x8)
{x0=(x8>0)*(OrderType()+1)-(x8<0)*x8; x5=3-x0*2; f4=(x8>0)*OrderOpenPrice()+(x8<0)*Timi[3-x0]; 
f1=CalcValue(StopLossType,StopLoss,x8); f5=(x0==2)*(Ask-Bid); f3=0; x1=2; while(x1<=30 && f3==0) {f3=Swing(3-x0,x1); x1++;} 
f7=(x8>0)*GlobalVariableGet(gv[x8][PointSL+70])+(x8<0)*Vd[37-x0-(3-x0*2)*ReverseSignals][PointSL];
f2=(!SwingSL && PointSL==0)*f4+SwingSL*(f3+f5)+(PointSL>0)*(f7+f5); 
if (SwingSL) {f9=x5*(f4-f2)+f1; if (f9<CalcValue(0,MinimumSLPips,x8)) {f2=f4; f1=CalcValue(0,MinimumSLPips,x8);} 
if (f9>CalcValue(0,MaximumSLPips,x8) && MaximumSLPips>0) {f2=f4; f1=CalcValue(0,MaximumSLPips,x8);}} f6=f2-x5*f1; return(f6);}

bool SessionOrders(int t8)
{t1=t8+(3-t8*2)*ReverseSignals; t2=Trade[t8+6]; t3=Trade[5]+Trade[6]; t4=0; t7=(!ClosedCandle)*Vi[37-t1][k1]+ClosedCandle*GlobalVariableGet(gv[0][(t1-1)*20+60+k1])+Period()*60;
if (t3<TradesPerSession && t2<TradesPerPattern) {t9=OrdersHistoryTotal()-1; while(t9>=0)
{if (OrderSelect(t9,SELECT_BY_POS,MODE_HISTORY) && OrderSymbol()==Symbol() && OrderMagicNumber()==MagicNumber && (StringFind(OrderComment(),"from #",0)>=0 || StringFind(OrderComment(),TradeComment,0)>=0))
{t2+=(OrderType()==t8-1 && OrderOpenTime()>=t7); t3+=(OrderOpenTime()>=Vi[0][11]); t4+=(OrderType()==t8-1 && OrderOpenTime()>=iTime(Symbol(),Vi[0][6],0));} t9--;}} 
return(t2<TradesPerPattern && t3<TradesPerSession && t4==0);}

double LotDecimals(double f8)
{return(MarketInfo(Symbol(),MODE_LOTSTEP)*MathRound(MathMin(MathMax(f8,MarketInfo(Symbol(),MODE_MINLOT)),MarketInfo(Symbol(),MODE_MAXLOT))/MarketInfo(Symbol(),MODE_LOTSTEP)));}

double CalcLots(int t8)
{d1=Lots; if (MoneyManagement) {if (EquityPercent>0) {d1=AccountEquity()*EquityPercent/Vi[0][7];}
if (StopLossRisk>0) {d2=(3-t8*2)*(Timi[3-t8]-CalcStopLoss(0-t8)); d1=AccountBalance()*StopLossRisk*0.01/(d2*(MarketInfo(Symbol(),MODE_TICKVALUE)/MarketInfo(Symbol(),MODE_TICKSIZE)));}}
if (Trade[t8]==0) {GlobalVariableSet(gv[0][t8+50],0);} if (LotPercent!=0) {t7=GlobalVariableGet(gv[0][t8+50]);  
if (t7>0) {t3=(t7-StartProgression+2); t3=(t3>0)*MathMin(t3,MaxProgression-StartProgression+1); d2=GlobalVariableGet(gv[0][t8+52]); d1=d2*(1+t3*LotPercent*0.01);}}
d1=LotDecimals(d1); if (Trade[t8]==0) {GlobalVariableSet(gv[0][t8+52],d1);} return(d1);}

bool OrderDistance(int t8)
{d5=CalcValue(MinOrdersDistanceType,MinOrdersDistance,0-t8); t2=1; if (d5>0 || NewHighLow>0) {d1=0; t3=0; t4=0; t5=0; t9=OrdersTotal()-1; while(t9>=0)
{if (OrderSelect(t9,SELECT_BY_POS,MODE_TRADES) && OrderSymbol()==Symbol() && OrderMagicNumber()==MagicNumber && OrderType()+1==t8 && OrderOpenTime()>t3)
{t3=OrderOpenTime(); d1=OrderOpenPrice();} t9--;} if (d1>0)
{t5=(3-2*t8)*(2*NewHighLow-3); t2=((MathAbs(d1-Timi[3-t8])>=d5 || d5==0) && (t5*(d1-Timi[3-t8])>0 || NewHighLow==0));}} return(t2);}

void FindSeat(int t7,int t8)
{if (t8==1) {k0=0; t1=1; while (t1<=200 && k0==0) {k0=(t7==GlobalVariableGet(gv[t1][50]))*t1; t1++;}

if (k0==0) {t3=0; t9=OrdersTotal()-1; while(t9>=0)
{if (OrderSelect(t9,SELECT_BY_POS,MODE_TRADES) && OrderSymbol()==Symbol() && OrderMagicNumber()==MagicNumber) {t3++; In[0][t3]=OrderTicket();} t9--;} 
t1=1; while (t1<=200 && k0==0) {t4=0; t2=1; while (t2<=t3 && t4==0) {t4=(In[0][t2]==GlobalVariableGet(gv[t1][50])); t2++;} k0=(t4==0)*t1; t1++;} 
if (k0>0) {OrderSelect(t7,SELECT_BY_TICKET); t5=OrderType()+1; ResetVariables(t5,k0); GlobalVariableSet(gv[k0][50],t7); Vi[0][2]=MathMax(k0,Vi[0][2]);}}}

if (t8==2) {t3=0; Str[0][0]=StringConcatenate("#",t7); t9=OrdersTotal()-1; while(t9>=0 && t3==0)
{if (OrderSelect(t9,SELECT_BY_POS,MODE_TRADES) && OrderSymbol()==Symbol() && OrderMagicNumber()==MagicNumber && OrderComment()!=TradeComment)
{t3=(StringFind(OrderComment(),Str[0][0],0)>=0)*OrderTicket();} t9--;} GlobalVariableSet(gv[k0][50],t3);} OrderSelect(t7,SELECT_BY_TICKET);}

void ResetVariables(int x7,int x8)
{x6=x7+(3-x7*2)*ReverseSignals; x1=0; while (x1<=100) {GlobalVariableSet(gv[x8][x1],0); x1++;}

x1=0; while (x1<=k1+4) {x5=(x6-1)*20+x1+60; f1=(!ClosedCandle)*Vi[37-x6][x1]+(ClosedCandle)*GlobalVariableGet(gv[0][x5]); GlobalVariableSet(gv[x8][x1+60],f1); 
f1=(!ClosedCandle)*Vd[37-x6][x1]+(ClosedCandle)*GlobalVariableGet(gv[0][x5+10]); GlobalVariableSet(gv[x8][x1+70],f1); x1++;} OTime[50+x8]=0;
if (LotPercent!=0) {x1=GlobalVariableGet(gv[0][x7+50]); GlobalVariableSet(gv[0][x7+50],x1+1);}}

void VisibleTPSL(int t8)
{if (OTicket[t8][1]!=OrderTicket()) {OTicket[t8][1]=OrderTicket(); t0=OrderType()+1; t5=3-t0*2; d5=Timi[3]+MarketInfo(Symbol(),MODE_STOPLEVEL)*Point;
d1=0; t1=4; while (t1>=1 && d1==0) {d1=GlobalVariableGet(gv[t8][t1+10]); t1--;} d1=(d1>0)*t5*(d1-OrderOpenPrice()); d1*=VisibleTP;
d2=(GlobalVariableGet(gv[t8][0])>0)*t5*(OrderOpenPrice()-GlobalVariableGet(gv[t8][0]))*VisibleSL;
d7=0; if (OrderTakeProfit()==0 && d1>0) {d3=OrderOpenPrice()+t5*d1; d4=Timi[t0]+t5*d5; d7=NormalizeDouble((t0==1)*MathMax(d3,d4)+(t0==2)*MathMin(d3,d4),Digits);}
d8=0; if (OrderStopLoss()==0 && d2>0) {d3=OrderOpenPrice()-t5*d2; d4=Timi[t0]-t5*d5; d8=NormalizeDouble((t0==1)*MathMin(d3,d4)+(t0==2)*MathMax(d3,d4),Digits);}
if (d7>0 || d8>0) {OTicket[t8][1]*=(OrderModify(OrderTicket(),OrderOpenPrice(),d8,d7,0,Arrow[t0]));}}}

void CloseAll(int q6,int q7,int q8) 
{q9=OrdersTotal()-1; while(q9>=0 && q8>0)
{if (OrderSelect(q9,SELECT_BY_POS,MODE_TRADES) && OrderSymbol()==Symbol() && OrderMagicNumber()==MagicNumber && (OrderType()+1==q7 || q7==0))
{q0=OrderType()+1; d5=OrderProfit()+OrderSwap()+OrderCommission(); if ((d5>=0 && q8==1) || (d5<0 && q8==2) || q8==3)  
{FindSeat(OrderTicket(),1); if (GlobalVariableGet(gv[k0][38])!=OrderTicket()) {GlobalVariableSet(gv[k0][38],OrderTicket()); GlobalVariableSet(gv[k0][37],OrderLots());
q4=GlobalVariableGet(gv[k0][31])+1; GlobalVariableSet(gv[k0][31],q4); GlobalVariableSet(gv[k0][q4+40],40);}}} q9--;}
q9=OrdersTotal()-1; while(q9>=0 && q8>0)
{if (OrderSelect(q9,SELECT_BY_POS,MODE_TRADES) && OrderSymbol()==Symbol() && OrderMagicNumber()==MagicNumber && (OrderType()+1==q7 || q7==0))
{q0=OrderType()+1; d5=OrderProfit()+OrderSwap()+OrderCommission(); if ((d5>=0 && q8==1) || (d5<0 && q8==2) || q8==3)  
{FindSeat(OrderTicket(),1); RefreshRates(); Timi[1]=NormalizeDouble(Bid,Digits); Timi[2]=NormalizeDouble(Ask,Digits); 
if (OrderClose(OrderTicket(),OrderLots(),Timi[q0],Slippage,Arrow[q0])) {CloseEvent(q6,0,k0);}}} q9--;}}

void ScreenAlerts()
{if (ScreenShots>0 || Alerts>0 || SendEmail>0) {t9=OrdersTotal()-1; while(t9>=0)
{if (OrderSelect(t9,SELECT_BY_POS,MODE_TRADES) && OrderSymbol()==Symbol() && OrderMagicNumber()==MagicNumber && OrderComment()==TradeComment && OrderOpenTime()+3600>=OTime[22])
{s2=StringConcatenate(OrderTicket(),"open"); if (GlobalVariableGet(s2)==0) {GlobalVariableSet(s2,1); OrderAlert(1,OrderType()+1,OrderTicket());}} t9--;}
t9=OrdersHistoryTotal()-1; while(t9>=0)
{if (OrderSelect(t9,SELECT_BY_POS,MODE_HISTORY) && OrderSymbol()==Symbol() && OrderMagicNumber()==MagicNumber && OrderCloseTime()+3600>=OTime[22])
{s2=StringConcatenate(OrderTicket(),"close"); if (GlobalVariableGet(s2)==0) {GlobalVariableSet(s2,1); OrderAlert(2,OrderType()+1,OrderTicket());}} t9--;}}}

void OrderAlert(int x6,int x7,int x8)
{if (SendEmail==x6 || SendEmail==3) {SendMail(TradeComment,StringConcatenate(Vs[32][x7+2]," #",x8,Vs[32][x6+6]));}
if (ScreenShots==x6 || ScreenShots==3) {WindowScreenShot(StringConcatenate(TimeFrame[tf],Vs[30][1],x8,Vs[32][x6+8]),1280,800,-1,-1,-1);}
if (Alerts==x6 || Alerts==3) {Alert(StringConcatenate(Vs[32][x7+2]," #",x8,Vs[32][x6+6],", ",TradeComment)); if (AlertSound!="") {PlaySound(AlertSound);}}}

void CloseEvent(int v6,int v7,int v8)
{if (v7==0) {OrderSelect(OrderTicket(),SELECT_BY_TICKET); Vs[42][v8]=OrderInfo(2,v8); Vs[43][v8]=OrderInfo(3,v8); Trade[OrderType()+1]--; 
OTicket[v8][2]=OrderCloseTime(); OTicket[v8][0]=0;}
if (v7==1) {FindSeat(OrderTicket(),2);}}

string OrderInfo(int x7,int x8)
{OrderSelect(OTicket[x8][0],SELECT_BY_TICKET); Str[0][0]=""; x5=OrderType()+1; if (x7==1) {x3=(GlobalVariableGet(gv[x8][10])>0); x4=(GlobalVariableGet(gv[x8][0])>0); 
Str[0][0]=StringConcatenate(Vs[32][2+x5]," #",OTicket[x8][0],", take profit ",DoubleToStr(GlobalVariableGet(gv[x8][10]),x3*Digits),", stop loss ",DoubleToStr(GlobalVariableGet(gv[x8][0]),x4*Digits));}
if (x7==2) {Str[0][0]=StringConcatenate(Vs[32][2+x5]," #",OTicket[x8][0]," has been closed");}
if (x7==3) {x2=1; while(x2<=4) {x6=GlobalVariableGet(gv[x8][x2+40]); if (x6>0) {Str[0][0]=StringConcatenate(Str[0][0],Vs[31][x6],", ");} x2++;}
if (Str[0][0]!="") {Str[0][0]=StringConcatenate("Exits: ",Str[0][0]); Str[0][0]=StringSubstr(Str[0][0],0,StringLen(Str[0][0])-2);}} return(Str[0][0]);} 

void ScreenInfo()
{if (Vi[0][0]>0) {t1=0; while(t1<=420) {Vs[40][t1]=""; t1++;}
Vs[40][2]=StringConcatenate("Server time ",TimeToStr(OTime[22],2),", GMTOffset ",Vi[0][9]); Vs[40][3]=Vs[32][5];
if (TradingTime[9]) {Vs[40][4]="We are outside trading hours"; if (TradingTime[1]) {Vs[40][4]="We are inside trading hours";}}
if (NewsFilter) {if (OTime[1]>0) {Vs[40][5]=StringConcatenate("News period ",TimeToStr(OTime[1],3)," to ",TimeToStr(OTime[2],3));}
if (OTime[3]>0 && OTime[1]!=OTime[3]) {Vs[40][6]=StringConcatenate(TimeToStr(OTime[3],3)," to ",TimeToStr(OTime[4],3));
if (OTime[1]>0) {Vs[40][5]=StringConcatenate(Vs[40][5],",");} if (OTime[1]==0) {Vs[40][6]=StringConcatenate("News period ",Vs[40][6]);}}
Vs[40][7]="We are outside news period"; if (!TradingTime[2]) {Vs[40][7]="We are inside news period";}
if (OTime[1]==0 && OTime[3]==0) {Vs[40][7]="No news data received from FFCal indicator";}}

if ((CloseAllProfit>0 || CloseAllLoss>0) && Trade[1]+Trade[2]>0)
{d1=(OProfit[0][1]+OProfit[0][2])*100/AccountBalance(); t1=(d1<0); Vs[40][8]=StringConcatenate("Total",Vs[32][t1+1],DoubleToStr(d1,2),"%");
if (CloseOneDirection) {Vs[40][8]=""; t1=1; while(t1<=2) {if (Trade[t1]>0) {d1=OProfit[0][t1]*100/AccountBalance();
Vs[40][8]=StringConcatenate(Vs[40][8],Vs[32][t1+2],"s",Vs[32][(d1<0)+1],DoubleToStr(d1,2),"% ,");} t1++;} Vs[40][8]=StringSubstr(Vs[40][8],0,StringLen(Vs[40][8])-2);}}
t1=1; while(t1<=2) {if (Vi[37-t1][1]>0) {Vs[40][8+t1]=StringConcatenate(Vs[32][t1+10],DoubleToStr(Vd[37-t1][4],Digits));} t1++;}

t8=20; t1=1; while(t1<=MathMax(Vi[0][2],Trade[0]) && Trade[0]>0) {if (OTicket[t1][0]>0) {Vs[40][t8]=OrderInfo(1,t1); Vs[40][t8+1]=OrderInfo(3,t1);
Vi[32][t8]=Arrow[3]; Vi[32][t8+1]=Arrow[3]; t5=t1; t8+=2;} t1++;}
t3=Vi[0][2]; t1=1; while(t1<=t3) {if (OTicket[t1][2]+8000>=TimeCurrent()) {Vs[40][t8]=Vs[42][t1]; Vs[40][t8+1]=Vs[43][t1]; 
Vi[32][t8]=Arrow[4]; Vi[32][t8+1]=Arrow[4]; Vi[0][2]=MathMax(t1,t5); t8+=2;} t1++;}

t2=12; t1=0; while(t1<=420) {ObjectSet(Vs[41][t1],OBJPROP_TIMEFRAMES,-1); if (Vs[40][t1]!="") {ObjectSetText(Vs[41][t1],Vs[40][t1],10,"Plantagenet Cherokee",Vi[32][t1]); 
ObjectSet(Vs[41][t1],OBJPROP_YDISTANCE,t2); ObjectSet(Vs[41][t1],OBJPROP_TIMEFRAMES,0); t2+=13;} t1++;}}}