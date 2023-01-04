# mql5mql4
#M5M4 文件夹放MQL5/Include  || MQL4/Include 文件夹下 
#以下源码直接复制源码IDE打开
//+------------------------------------------------------------------+
//|                                                    Π.EA 辅助面板.mq5 |
//|                                                             @老顽童 |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "@大树My05613828"
#property link      "https://www.eahub.cn/space-uid-8564.html"
#property version   "1.00"
#property  icon     "//Include//logo.ico"
#property description "三种控单模式  （可分别控制  手工单  本EA单  他EA单"
#property description "--------------------------"
#property description "欢迎语：复位响应栏"
#property description "magic号码：仿EA, 置1可以控制手工单 置2可以控制手工与EA单"
#property description "修改止损：当前币种止损修改，止损置0视为空"
#property description "拆多：拆分手数下单 例: 1手可以拆成10*0.1手"
#property description "-----------------------"
#property description "空减仓：当前品种所有持仓按比例减仓<1"
#property description "止损点追踪止损:置0设为不启用"
#property description "sell_lit：距限价等距离下空挂单 挂单手数=手数+计数*系数 计数++"
#property description "---------------------"
#property description "保本:盈利点值>设置点值有用"
#property description "清仓：平所有品种，所有持单"
#property description "--------------------"
#property description "移除面板之下为   正相关双币种对冲使用"
#property description "------------------------"
#property description "例1 左框填GBPUSD 右框填EURUSD例2 左框填XBRUSD 右框填XTIUSD"
#property description "--------------------"
#property description "温馨提示：使用请考虑交易环境延迟，请勿频繁点击"
#property description "--------------------"
#property description "审美设计：韩琰"
input color 背景色=clrBlack;
input double  挂单手数系数=0.01;
input double  距现价点值=700;
MqlRates K值[];
//--- input parameters
#include  <M5/交易类.mqh>
交易类 交易;

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//----
   EventSetMillisecondTimer(100);
   //交易.授权(D'2022.12.31',"Π.EA 辅助面板",9338754,false,true,false,false,0,0,Π大吉大利今晚吃鸡,Π大吉大利今晚吃鸡,false,true);
   交易.允许算法检测(10,true,false);
   交易.交易量指令(Symbol());
   图形.画按钮("欢迎语",0,10,40,300,30,CORNER_LEFT_UPPER,"欢迎使用===Π.EA 辅助面板=== ",clrBlue,clrBlack,clrWhite,"楷体",15,true,false,false);
   图形.画矩形标签("矩形",0,10,75,300,380,BORDER_FLAT,背景色,STYLE_SOLID,clrBlack,1,CORNER_LEFT_UPPER,false,false,false);
   图形.画按钮("magic号码",0,10,75,100,25,CORNER_LEFT_UPPER,"magic号码",clrBlue,clrBlack,clrWhite,"楷体",15,false,false,false);
   图形.画编辑框("设置magic",0,110,75,100,25,false,CORNER_LEFT_UPPER,"1",clrAliceBlue,clrGreen,clrBlack,"楷体",12,ALIGN_CENTER,false,false,false);
   图形.画编辑框("设置magic2",0,210,75,100,25,false,CORNER_LEFT_UPPER,"521622",clrAliceBlue,clrGreen,clrBlack,"楷体",12,ALIGN_CENTER,false,false,false);
//---
   图形.画按钮("卖",0,110,100,100,60,CORNER_LEFT_UPPER,"卖出/SELL",clrGreen,clrBlack,clrWhite,"楷体",15,false,false,false);
   图形.画按钮("买",0,210,100,100,60,CORNER_LEFT_UPPER,"买入/BUY",clrRed,clrBlack,clrWhite,"楷体",15,false,false,false);
   图形.画按钮("修改止损",0,110,160,100,20,CORNER_LEFT_UPPER,"修改止损",clrGreen,clrBlack,clrWhite,"楷体",15,false,false,false);
   图形.画按钮("修改止盈",0,210,160,100,20,CORNER_LEFT_UPPER,"修改止盈",clrRed,clrBlack,clrWhite,"楷体",15,false,false,false);
//---手数  止损  止盈
   图形.画文本标签("单信",0,10,200,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"手数:     "+"止损:     "+"止盈:","楷体",15,clrYellow,false,false);
   图形.画编辑框("手数",0,60,198,45,25,false,CORNER_LEFT_UPPER,"0.01",clrYellow,clrYellow,clrBlack,"楷体",10,ALIGN_CENTER,false,false,false);
   图形.画编辑框("止损",0,160,198,45,25,false,CORNER_LEFT_UPPER,"0",clrYellow,clrYellow,clrBlack,"楷体",10,ALIGN_CENTER,false,false,false);
   图形.画编辑框("止盈",0,260,198,45,25,false,CORNER_LEFT_UPPER,"0",clrYellow,clrYellow,clrBlack,"楷体",10,ALIGN_CENTER,false,false,false);
//---拆分手数  止损点追踪止损
   图形.画文本标签("止损点追踪止损",0,10,230,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"                "+"追踪止损:     ","楷体",15,clrYellow,false,false);
   图形.画按钮("拆多",0,10,230,45,25,CORNER_LEFT_UPPER,"拆多",clrYellow,clrYellow,clrRed,"楷体",13,false,false,false);
   图形.画按钮("拆空",0,110,230,55,25,CORNER_LEFT_UPPER,"拆空",clrYellow,clrYellow,clrBlue,"楷体",13,false,false,false);
   图形.画编辑框("拆分",0,60,230,45,25,false,CORNER_LEFT_UPPER,"0.02",clrYellow,clrWhite,clrBlack,"楷体",10,ALIGN_CENTER,false,false,false);
   图形.画编辑框("追损",0,260,230,45,25,false,CORNER_LEFT_UPPER,"0",clrYellow,clrWhite,clrBlack,"楷体",10,ALIGN_CENTER,false,false,false);
//---减仓  删挂
   图形.画按钮("空减仓",0,10,260,101,20,CORNER_LEFT_UPPER,"空减仓",clrGreen,clrBlack,clrWhite,"楷体",13,false,false,false);
   图形.画按钮("多减仓",0,10,280,101,20,CORNER_LEFT_UPPER,"多减仓",clrGreen,clrBlack,clrRed,"楷体",13,false,false,false);
   图形.画编辑框("减仓",0,112,260,35,40,false,CORNER_LEFT_UPPER,"0.5",clrAliceBlue,clrYellow,clrBlack,"楷体",10,ALIGN_CENTER,false,false,false);
//---
   图形.画编辑框("数量",0,149,260,60,20,false,CORNER_LEFT_UPPER,"5",clrAliceBlue,clrGreen,clrBlack,"楷体",12,ALIGN_CENTER,false,false,false);
   图形.画编辑框("间距",0,149,280,60,20,false,CORNER_LEFT_UPPER,"200",clrAliceBlue,clrGreen,clrBlack,"楷体",12,ALIGN_CENTER,false,false,false);
   图形.画按钮("buylit",0,210,280,100,20,CORNER_LEFT_UPPER,"buy_lit",clrGreen,clrBlack,clrRed,"楷体",15,false,false,false);
   图形.画按钮("selllit",0,210,260,100,20,CORNER_LEFT_UPPER,"sell_lit",clrGreen,clrBlack,clrWhite,"楷体",15,false,false,false);
   图形.画按钮("锁仓",0,10,301,99,28,CORNER_LEFT_UPPER,"锁仓",clrWhite,clrBlack,clrBlack,"楷体",15,false,false,false);
   图形.画按钮("保本",0,110,301,99,28,CORNER_LEFT_UPPER,"保本",clrWhite,clrBlack,clrBlack,"楷体",15,false,false,false);
   图形.画按钮("删挂",0,210,301,99,28,CORNER_LEFT_UPPER,"删除挂单",clrWhite,clrBlack,clrBlack,"楷体",15,false,false,false);
//---
   图形.画按钮("平空",0,10,345,80,35,CORNER_LEFT_UPPER,"平空",clrRed,clrBlack,clrWhite,"楷体",15,false,false,false);
   图形.画按钮("平多",0,80,345,80,35,CORNER_LEFT_UPPER,"平多",clrGreen,clrBlack,clrWhite,"楷体",15,false,false,false);
   图形.画按钮("全平",0,150,345,80,35,CORNER_LEFT_UPPER,"全平",clrBlue,clrBlack,clrWhite,"楷体",15,false,false,false);
   图形.画按钮("清仓",0,230,345,80,35,CORNER_LEFT_UPPER,"清仓",clrYellow,clrBlack,clrBlack,"楷体",15,false,false,false);
   图形.画按钮("移除",0,49,420,220,25,CORNER_LEFT_UPPER,"移除面板",clrRed,clrBlack,clrWhite,"楷体",15,false,false,false);
   图形.画编辑框("多价差减仓",0,10,420,35,25,false,CORNER_LEFT_UPPER,"0.5",clrYellow,clrYellow,clrBlack,"楷体",10,ALIGN_CENTER,false,false,false);
   图形.画编辑框("空价差减仓",0,272,420,35,25,false,CORNER_LEFT_UPPER,"0.5",clrYellow,clrYellow,clrBlack,"楷体",10,ALIGN_CENTER,false,false,false);
//---
   图形.画按钮("平指定盈利",0,55,383,80,17,CORNER_LEFT_UPPER,"指定盈利",clrGreen,clrBlack,clrWhite,"楷体",12,false,false,false);
   图形.画编辑框("盈亏",0,126,383,50,17,false,CORNER_LEFT_UPPER,"100",clrYellow,clrBlack,clrBlack,"楷体",12,ALIGN_CENTER,false,false,false);
   图形.画按钮("平指定亏损",0,176,383,80,17,CORNER_LEFT_UPPER,"平指定亏损",clrGreen,clrBlack,clrWhite,"楷体",12,false,false,false);
   图形.画按钮("平多尾",0,10,383,55,17,CORNER_LEFT_UPPER,"平多尾",clrBlue,clrBlack,clrWhite,"楷体",12,false,false,false);
   图形.画按钮("平空尾",0,255,383,55,17,CORNER_LEFT_UPPER,"平空尾",clrBlue,clrBlack,clrWhite,"楷体",12,false,false,false);
//------对冲

   图形.画编辑框("币种x",0,90,447,68,23,false,CORNER_LEFT_UPPER,"XBRUSD",clrYellow,clrBlack,clrBlack,"楷体",12,ALIGN_CENTER,false,false,false);
   图形.画编辑框("币种y",0,155,447,68,23,false,CORNER_LEFT_UPPER,"XTIUSD",clrYellow,clrBlack,clrBlack,"楷体",12,ALIGN_CENTER,false,false,false);
   图形.画按钮("多价差折仓",0,10,447,80,23,CORNER_LEFT_UPPER,"多价差折仓",clrGreen,clrBlack,clrRed,"楷体",12,false,false,false);
   图形.画按钮("空价差折仓",0,220,447,88,23,CORNER_LEFT_UPPER,"空价差折仓",clrGreen,clrBlack,clrWhite,"楷体",12,false,false,false);

//----
   图形.画按钮("开多价差",0,90,470,68,25,CORNER_LEFT_UPPER,"开多价差",clrGreen,clrBlack,clrRed,"楷体",12,false,false,false);
   图形.画按钮("开空价差",0,155,470,68,25,CORNER_LEFT_UPPER,"开空价差",clrGreen,clrBlack,clrWhite,"楷体",12,false,false,false);
   图形.画按钮("平多价差尾",0,10,470,80,25,CORNER_LEFT_UPPER,"平多价差尾",clrBlue,clrBlack,clrWhite,"楷体",12,false,false,false);
   图形.画按钮("平空价差尾",0,220,470,88,25,CORNER_LEFT_UPPER,"平空价差尾",clrBlue,clrBlack,clrWhite,"楷体",12,false,false,false);
//---响应栏
   图形.画编辑框("响应栏",0,10,401,298,18,false,CORNER_LEFT_UPPER,"财货浑浑如泉源，汸汸如河海",clrAliceBlue,clrYellow,clrBlack,"楷体",12,ALIGN_CENTER,false,false,false);
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   交易.删除物件();
   EventKillTimer();
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
   数据.K线信息(Symbol(),PERIOD_D1,0,2,K值);
   double ASK=SymbolInfoDouble(Symbol(),SYMBOL_ASK);
   double BID=SymbolInfoDouble(Symbol(),SYMBOL_BID);

//---左上角
   图形.画文本标签("币种",0,10,100,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,Symbol(),"楷体",20,clrYellow,false,false);
   图形.画文本标签("BID",0,10,130,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"BID:"+DoubleToString(BID,Digits()),"楷体",12,clrGreen,false,false);
   图形.画文本标签("ASK",0,10,160,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"ASK:"+DoubleToString(ASK,Digits()),"楷体",12,clrRed,false,false);
   图形.画文本标签("K值",0,10,182,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"开盘:"+(string)K值[0].open+"   "+"最高:"+(string)K值[0].high+"   "+"最低:"+(string)K值[0].low,"楷体",10,clrWhite,false,false);

   int  magic号码=(int)StringToInteger(ObjectGetString(0,"设置magic",OBJPROP_TEXT));
   double  追踪点值=StringToDouble(ObjectGetString(0,"追损",OBJPROP_TEXT));
   交易.后止损点追踪止损(Symbol(),magic号码,追踪点值);
   double 多开盘均价=交易.持仓均价(Symbol(),magic号码,POSITION_TYPE_BUY);
   double 空开盘均价=交易.持仓均价(Symbol(),magic号码,POSITION_TYPE_SELL);
   图形.画文本标签("持开",0,10,330,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"多持仓均价:"+DoubleToString(多开盘均价,Digits())+"    "+"空持仓均价:"+DoubleToString(空开盘均价,Digits()),"楷体",10,clrWhite,false,false);

  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//| ChartEvent function                                              |
//+------------------------------------------------------------------+
void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam)
  {
//---
   double 做单手数=StringToDouble(ObjectGetString(0,"手数",OBJPROP_TEXT));
   double 止损点值=StringToDouble(ObjectGetString(0,"止损",OBJPROP_TEXT));
   double 止盈点值=StringToDouble(ObjectGetString(0,"止盈",OBJPROP_TEXT));
   int  magic号码=(int)(ObjectGetString(0,"设置magic",OBJPROP_TEXT));
   int  magic号码2=(int)(ObjectGetString(0,"设置magic2",OBJPROP_TEXT));
   double 减仓比值=StringToDouble(ObjectGetString(0,"减仓",OBJPROP_TEXT));
   double 拆单手数=StringToDouble(ObjectGetString(0,"拆分",OBJPROP_TEXT));
   double 间距点值=StringToDouble(ObjectGetString(0,"间距",OBJPROP_TEXT));
   int 挂单量=(int)(ObjectGetString(0,"数量",OBJPROP_TEXT));
   double 单笔盈亏=StringToDouble(ObjectGetString(0,"盈亏",OBJPROP_TEXT));
//----
   string 币种x=ObjectGetString(0,"币种x",OBJPROP_TEXT);
   string 币种y=ObjectGetString(0,"币种y",OBJPROP_TEXT);
   double 多价差减仓比值=StringToDouble(ObjectGetString(0,"多价差减仓",OBJPROP_TEXT));
   double 空价差减仓比值=StringToDouble(ObjectGetString(0,"空价差减仓",OBJPROP_TEXT));

//---多空下单
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="卖")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"做空 "+(string)做单手数);
      交易.做空(Symbol(),做单手数,止损点值,止盈点值,magic号码,"面板sell");
     }
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="买")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"做多 "+(string)做单手数);
      交易.做多(Symbol(),做单手数,止损点值,止盈点值,magic号码,"面板buy");
     }
//--止盈止损
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="修改止损")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"修改止损 "+(string)止损点值);
      交易.修改止损(Symbol(),magic号码,止损点值);
     }
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="修改止盈")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"修改止盈 "+(string)止损点值);
      交易.修改止盈(Symbol(),magic号码,止盈点值);
     }
//---拆多  拆空
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="拆多")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"拆多 "+(string)做单手数+"  "+(string)拆单手数);
      交易.拆多(Symbol(),做单手数,拆单手数,止损点值,止盈点值,magic号码,"面板拆多 "+string(拆单手数));
     }
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="拆空")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"拆空 "+(string)做单手数+"  "+(string)拆单手数);
      交易.拆空(Symbol(),做单手数,拆单手数,止损点值,止盈点值,magic号码,"面板拆空 "+string(拆单手数));
     }
//---减仓
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="多减仓")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"多减仓 "+(string)减仓比值);
      交易.折多仓(Symbol(),magic号码,0,减仓比值,"面板多减仓"+(string)减仓比值);
     }
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="空减仓")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"空减仓 "+(string)减仓比值);
      交易.折空仓(Symbol(),magic号码,0,减仓比值,"面板空减仓"+(string)减仓比值);
     }
//---下挂单
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="buylit")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"buy_lit "+(string)间距点值+"  "+(string)挂单量);
      交易.限价挂多(Symbol(),做单手数,挂单手数系数,距现价点值,间距点值,止损点值,止盈点值,挂单量,magic号码,"面板buy_lit");
     }
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="selllit")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"sell_lit "+(string)间距点值+"  "+(string)挂单量);
      交易.限价挂空(Symbol(),做单手数,挂单手数系数,距现价点值,间距点值,止损点值,止盈点值,挂单量,magic号码,"面板sell_lit");
     }
//---锁仓-  -保本 删除挂单
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="锁仓")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"锁仓 ");
      交易.锁全仓(Symbol(),magic号码,0,0,magic号码,"面板锁仓");
     }
//---
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="保本")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"保本 "+(string)间距点值);
      交易.保本(Symbol(),magic号码,间距点值,间距点值);
     }
//--
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="删挂")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"删除挂单 ");
      交易.删除挂单(Symbol(),magic号码);
     }
//平空  平多 全平 清仓
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平空")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"平空 "+Symbol());
      交易.平空(Symbol(),magic号码,false);
     }
//---
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平多")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"平多 "+Symbol());
      交易.平多(Symbol(),magic号码,false);
     }
//---
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="全平")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"全平 "+Symbol());
      交易.平单(Symbol(),magic号码,false);
     }
//---
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="清仓")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"清仓 ");
      交易.平单();
     }
//---平指定盈利  指定亏损
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平指定盈利")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"平指定盈利 "+(string)单笔盈亏);
      交易.指定盈利平单(Symbol(),magic号码,单笔盈亏);
     }
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平指定亏损")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"平指定亏损 "+(string)单笔盈亏);
      if(单笔盈亏>0)
         ObjectSetString(0,"响应栏",OBJPROP_TEXT,"平指定亏损须输入负数 "+(string)单笔盈亏);
      交易.指定亏损平单(Symbol(),magic号码,单笔盈亏);
     }
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平多尾")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"平多尾");
      交易.平多尾单(Symbol(),magic号码);
     }

   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平空尾")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"平空尾");
      交易.平空尾单(Symbol(),magic号码);
     }

//---移除面板
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="移除")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"移除面板? ");
      int zhi= MessageBox("是否移除 Π.EA 辅助面板?","Π.EA 辅助面板",0x00000004);
      if(zhi==6)
         ExpertRemove();
     }
//---
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="欢迎语")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"财货浑浑如泉源，汸汸如河海");
      if(ObjectGetInteger(0,"欢迎语",OBJPROP_STATE)==1)
        {
         交易.删除物件();
         图形.画按钮("欢迎语",0,10,40,300,30,CORNER_LEFT_UPPER,"欢迎使用===Π.EA 辅助面板=== ",clrBlue,clrBlack,clrWhite,"楷体",15,true,false,true);
         图形.画矩形标签("矩形",0,10,75,300,380,BORDER_FLAT,背景色,STYLE_SOLID,clrBlack,1,CORNER_LEFT_UPPER,true,false,false);
        }
      else
        {
         图形.画按钮("欢迎语",0,10,40,300,30,CORNER_LEFT_UPPER,"欢迎使用===Π.EA 辅助面板=== ",clrBlue,clrBlack,clrWhite,"楷体",15,true,false,false);
         图形.画矩形标签("矩形",0,10,75,300,380,BORDER_FLAT,背景色,STYLE_SOLID,clrBlack,1,CORNER_LEFT_UPPER,false,false,false);
         图形.画按钮("magic号码",0,10,75,100,25,CORNER_LEFT_UPPER,"magic号码",clrBlue,clrBlack,clrWhite,"楷体",15,false,false,false);
         图形.画编辑框("设置magic",0,110,75,100,25,false,CORNER_LEFT_UPPER,"1",clrAliceBlue,clrGreen,clrBlack,"楷体",12,ALIGN_CENTER,false,false,false);
         图形.画编辑框("设置magic2",0,210,75,100,25,false,CORNER_LEFT_UPPER,"521622",clrAliceBlue,clrGreen,clrBlack,"楷体",12,ALIGN_CENTER,false,false,false);
         //---
         图形.画按钮("卖",0,110,100,100,60,CORNER_LEFT_UPPER,"卖出/SELL",clrGreen,clrBlack,clrWhite,"楷体",15,false,false,false);
         图形.画按钮("买",0,210,100,100,60,CORNER_LEFT_UPPER,"买入/BUY",clrRed,clrBlack,clrWhite,"楷体",15,false,false,false);
         图形.画按钮("修改止损",0,110,160,100,20,CORNER_LEFT_UPPER,"修改止损",clrGreen,clrBlack,clrWhite,"楷体",15,false,false,false);
         图形.画按钮("修改止盈",0,210,160,100,20,CORNER_LEFT_UPPER,"修改止盈",clrRed,clrBlack,clrWhite,"楷体",15,false,false,false);
         //---手数  止损  止盈
         图形.画文本标签("单信",0,10,200,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"手数:     "+"止损:     "+"止盈:","楷体",15,clrYellow,false,false);
         图形.画编辑框("手数",0,60,198,45,25,false,CORNER_LEFT_UPPER,"0.01",clrYellow,clrYellow,clrBlack,"楷体",10,ALIGN_CENTER,false,false,false);
         图形.画编辑框("止损",0,160,198,45,25,false,CORNER_LEFT_UPPER,"0",clrYellow,clrYellow,clrBlack,"楷体",10,ALIGN_CENTER,false,false,false);
         图形.画编辑框("止盈",0,260,198,45,25,false,CORNER_LEFT_UPPER,"0",clrYellow,clrYellow,clrBlack,"楷体",10,ALIGN_CENTER,false,false,false);
         //---拆分手数  止损点追踪止损
         图形.画文本标签("止损点追踪止损",0,10,230,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"                "+"追踪止损:     ","楷体",15,clrYellow,false,false);
         图形.画按钮("拆多",0,10,230,45,25,CORNER_LEFT_UPPER,"拆多",clrYellow,clrYellow,clrRed,"楷体",13,false,false,false);
         图形.画按钮("拆空",0,110,230,55,25,CORNER_LEFT_UPPER,"拆空",clrYellow,clrYellow,clrBlue,"楷体",13,false,false,false);
         图形.画编辑框("拆分",0,60,230,45,25,false,CORNER_LEFT_UPPER,"0.02",clrYellow,clrWhite,clrBlack,"楷体",10,ALIGN_CENTER,false,false,false);
         图形.画编辑框("追损",0,260,230,45,25,false,CORNER_LEFT_UPPER,"0",clrYellow,clrWhite,clrBlack,"楷体",10,ALIGN_CENTER,false,false,false);
         //---减仓  删挂
         图形.画按钮("空减仓",0,10,260,101,20,CORNER_LEFT_UPPER,"空减仓",clrGreen,clrBlack,clrWhite,"楷体",13,false,false,false);
         图形.画按钮("多减仓",0,10,280,101,20,CORNER_LEFT_UPPER,"多减仓",clrGreen,clrBlack,clrRed,"楷体",13,false,false,false);
         图形.画编辑框("减仓",0,112,260,35,40,false,CORNER_LEFT_UPPER,"0.5",clrAliceBlue,clrYellow,clrBlack,"楷体",10,ALIGN_CENTER,false,false,false);
         //---
         图形.画编辑框("数量",0,149,260,60,20,false,CORNER_LEFT_UPPER,"5",clrAliceBlue,clrGreen,clrBlack,"楷体",12,ALIGN_CENTER,false,false,false);
         图形.画编辑框("间距",0,149,280,60,20,false,CORNER_LEFT_UPPER,"200",clrAliceBlue,clrGreen,clrBlack,"楷体",12,ALIGN_CENTER,false,false,false);
         图形.画按钮("buylit",0,210,280,100,20,CORNER_LEFT_UPPER,"buy_lit",clrGreen,clrBlack,clrRed,"楷体",15,false,false,false);
         图形.画按钮("selllit",0,210,260,100,20,CORNER_LEFT_UPPER,"sell_lit",clrGreen,clrBlack,clrWhite,"楷体",15,false,false,false);
         图形.画按钮("锁仓",0,10,301,99,28,CORNER_LEFT_UPPER,"锁仓",clrWhite,clrBlack,clrBlack,"楷体",15,false,false,false);
         图形.画按钮("保本",0,110,301,99,28,CORNER_LEFT_UPPER,"保本",clrWhite,clrBlack,clrBlack,"楷体",15,false,false,false);
         图形.画按钮("删挂",0,210,301,99,28,CORNER_LEFT_UPPER,"删除挂单",clrWhite,clrBlack,clrBlack,"楷体",15,false,false,false);
         //---
         图形.画按钮("平空",0,10,345,80,35,CORNER_LEFT_UPPER,"平空",clrRed,clrBlack,clrWhite,"楷体",15,false,false,false);
         图形.画按钮("平多",0,80,345,80,35,CORNER_LEFT_UPPER,"平多",clrGreen,clrBlack,clrWhite,"楷体",15,false,false,false);
         图形.画按钮("全平",0,150,345,80,35,CORNER_LEFT_UPPER,"全平",clrBlue,clrBlack,clrWhite,"楷体",15,false,false,false);
         图形.画按钮("清仓",0,230,345,80,35,CORNER_LEFT_UPPER,"清仓",clrYellow,clrBlack,clrBlack,"楷体",15,false,false,false);
         图形.画按钮("移除",0,49,420,220,25,CORNER_LEFT_UPPER,"移除面板",clrRed,clrBlack,clrWhite,"楷体",15,false,false,false);
         图形.画编辑框("多价差减仓",0,10,420,35,25,false,CORNER_LEFT_UPPER,"0.5",clrYellow,clrYellow,clrBlack,"楷体",10,ALIGN_CENTER,false,false,false);
         图形.画编辑框("空价差减仓",0,272,420,35,25,false,CORNER_LEFT_UPPER,"0.5",clrYellow,clrYellow,clrBlack,"楷体",10,ALIGN_CENTER,false,false,false);
         //---
         图形.画按钮("平指定盈利",0,55,383,80,17,CORNER_LEFT_UPPER,"指定盈利",clrGreen,clrBlack,clrWhite,"楷体",12,false,false,false);
         图形.画编辑框("盈亏",0,126,383,50,17,false,CORNER_LEFT_UPPER,"100",clrYellow,clrBlack,clrBlack,"楷体",12,ALIGN_CENTER,false,false,false);
         图形.画按钮("平指定亏损",0,176,383,80,17,CORNER_LEFT_UPPER,"平指定亏损",clrGreen,clrBlack,clrWhite,"楷体",12,false,false,false);
         图形.画按钮("平多尾",0,10,383,55,17,CORNER_LEFT_UPPER,"平多尾",clrBlue,clrBlack,clrWhite,"楷体",12,false,false,false);
         图形.画按钮("平空尾",0,255,383,55,17,CORNER_LEFT_UPPER,"平空尾",clrBlue,clrBlack,clrWhite,"楷体",12,false,false,false);
         //------对冲

         图形.画编辑框("币种x",0,90,447,68,23,false,CORNER_LEFT_UPPER,"XBRUSD",clrYellow,clrBlack,clrBlack,"楷体",12,ALIGN_CENTER,false,false,false);
         图形.画编辑框("币种y",0,155,447,68,23,false,CORNER_LEFT_UPPER,"XTIUSD",clrYellow,clrBlack,clrBlack,"楷体",12,ALIGN_CENTER,false,false,false);
         图形.画按钮("多价差折仓",0,10,447,80,23,CORNER_LEFT_UPPER,"多价差折仓",clrGreen,clrBlack,clrRed,"楷体",12,false,false,false);
         图形.画按钮("空价差折仓",0,220,447,88,23,CORNER_LEFT_UPPER,"空价差折仓",clrGreen,clrBlack,clrWhite,"楷体",12,false,false,false);

         //----
         图形.画按钮("开多价差",0,90,470,68,25,CORNER_LEFT_UPPER,"开多价差",clrGreen,clrBlack,clrRed,"楷体",12,false,false,false);
         图形.画按钮("开空价差",0,155,470,68,25,CORNER_LEFT_UPPER,"开空价差",clrGreen,clrBlack,clrWhite,"楷体",12,false,false,false);
         图形.画按钮("平多价差尾",0,10,470,80,25,CORNER_LEFT_UPPER,"平多价差尾",clrBlue,clrBlack,clrWhite,"楷体",12,false,false,false);
         图形.画按钮("平空价差尾",0,220,470,88,25,CORNER_LEFT_UPPER,"平空价差尾",clrBlue,clrBlack,clrWhite,"楷体",12,false,false,false);
         //---响应栏
         图形.画编辑框("响应栏",0,10,401,298,18,false,CORNER_LEFT_UPPER,"财货浑浑如泉源，汸汸如河海",clrAliceBlue,clrYellow,clrBlack,"楷体",12,ALIGN_CENTER,false,false,false);
        }

     }
//-----------------------双币种对冲---
//-----------------------双币种对冲---
//-----------------------双币种对冲---
   bool 对冲操作=(id==CHARTEVENT_OBJECT_CLICK&&sparam=="开多价差")+(id==CHARTEVENT_OBJECT_CLICK&&sparam=="开空价差")+(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平多价差尾")
                     +(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平空价差尾")+(id==CHARTEVENT_OBJECT_CLICK&&sparam=="多价差折仓")+(id==CHARTEVENT_OBJECT_CLICK&&sparam=="空价差折仓");

   if(对冲操作)
     {
      bool 检测1=交易.币种标识符检测(币种x,false,5,false,false);//---Oninit 使用
      bool 检测2=交易.币种标识符检测(币种y,false,5,false,false);//---Oninit 使用
      对冲操作=对冲操作*检测1*检测2;
     }
   if(对冲操作)
     {
      if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="开多价差")
        {
         ObjectSetString(0,"响应栏",OBJPROP_TEXT,"开多价差"+(string)做单手数);
         交易.做多(币种x,做单手数,0,0,magic号码2,币种x+"面板做多价差buy");
         交易.做空(币种y,做单手数,0,0,magic号码2,币种y+"面板做多价差sell");
        }
      //---
      if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="开空价差")
        {
         ObjectSetString(0,"响应栏",OBJPROP_TEXT,"开空价差"+(string)做单手数);
         交易.做空(币种x,做单手数,0,0,magic号码2,币种x+"面板做空价差sell");
         交易.做多(币种y,做单手数,0,0,magic号码2,币种y+"面板做空价差buy");
        }
      //---
      if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平多价差尾")
        {
         ObjectSetString(0,"响应栏",OBJPROP_TEXT,"平多价差尾");
         交易.平多尾单(币种x,magic号码2);
         交易.平空尾单(币种y,magic号码2);
        }//---
      if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平空价差尾")
        {
         ObjectSetString(0,"响应栏",OBJPROP_TEXT,"平空价差尾");
         交易.平空尾单(币种x,magic号码2);
         交易.平多尾单(币种y,magic号码2);
        }
      //--
      if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="多价差折仓")
        {
         ObjectSetString(0,"响应栏",OBJPROP_TEXT,"多价差折仓"+(string)多价差减仓比值);
         交易.折多仓(币种x,magic号码2,0,多价差减仓比值,"面板多价差减仓"+(string)多价差减仓比值);
         交易.折空仓(币种y,magic号码2,0,多价差减仓比值,"面板多价差减仓"+(string)多价差减仓比值);
        }
      //---
      if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="空价差折仓")
        {
         ObjectSetString(0,"响应栏",OBJPROP_TEXT,"空价差折仓"+(string)空价差减仓比值);
         交易.折空仓(币种x,magic号码2,0,空价差减仓比值,"面板空价差减仓"+(string)空价差减仓比值);
         交易.折多仓(币种y,magic号码2,0,空价差减仓比值,"面板空价差减仓"+(string)空价差减仓比值);
        }
     }
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void OnTimer()
  {
//---
   数据.K线信息(Symbol(),PERIOD_D1,0,2,K值);
   double ASK=SymbolInfoDouble(Symbol(),SYMBOL_ASK);
   double BID=SymbolInfoDouble(Symbol(),SYMBOL_BID);

//---左上角
   图形.画文本标签("币种",0,10,100,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,Symbol(),"楷体",20,clrYellow,false,false);
   图形.画文本标签("BID",0,10,130,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"BID:"+DoubleToString(BID,Digits()),"楷体",12,clrGreen,false,false);
   图形.画文本标签("ASK",0,10,160,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"ASK:"+DoubleToString(ASK,Digits()),"楷体",12,clrRed,false,false);
   图形.画文本标签("K值",0,10,182,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"开盘:"+(string)K值[0].open+"   "+"最高:"+(string)K值[0].high+"   "+"最低:"+(string)K值[0].low,"楷体",10,clrWhite,false,false);

   int  magic号码=(int)StringToInteger(ObjectGetString(0,"设置magic",OBJPROP_TEXT));
   double  追踪点值=StringToDouble(ObjectGetString(0,"追损",OBJPROP_TEXT));
   交易.后止损点追踪止损(Symbol(),magic号码,追踪点值);
   double 多开盘均价=交易.持仓均价(Symbol(),magic号码,POSITION_TYPE_BUY);
   double 空开盘均价=交易.持仓均价(Symbol(),magic号码,POSITION_TYPE_SELL);
   图形.画文本标签("持开",0,10,330,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"多持仓均价:"+DoubleToString(多开盘均价,Digits())+"    "+"空持仓均价:"+DoubleToString(空开盘均价,Digits()),"楷体",10,clrWhite,false,false);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
