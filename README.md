
//+------------------------------------------------------------------+
//|                                                    Π.EA 辅助面板.mq5 |
//|                                                             @老顽童 |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "@大树My05613828"
#property link      "https://www.eahub.cn/space-uid-8564.html"
#property version   "1.9"
#property  icon     "//Include//M5//ytkj.ico"
#property description "1.magic_number： 置1可以匹配手工单 置2可以手工与EA单"
#property description "2.修改止损：止损置1 修改止损价为空"
#property description "3.拆多：拆分手数下单 例: 1手可以拆成10*0.1手"
#property description "4.保本:盈利点值>设置点值有效 默认200 在正上方编辑框里 简版无此功能"
#property description "-----------------------------------------"
#property description "5.追踪:左多右空 单笔有效 例:设100 200点启动 盈利300 止损会设在200点位置"
#property description "6.多盈 盈利 净盈 支持点值模式和价格模式 例：点值模式为 均价+-设置点值 平仓"
#property description "7.多价 空价 净价 为触碰价格平仓 单次有效"
#property description "8.多追 空追 为点值有效 是整体均价移动追踪止损 效果与追踪一致"
#property description "-----------------------------------------"
#property description "9.温馨提示：使用请考虑交易环境延迟，请勿频繁点击"
enum xz
  {
   point,
   price
  };
input xz point_price_choose =  price;//价格点值选择
input color 背景色=clrBlack;
int font10 = 10;
int font12 = 12;
int font13 = 13;
int font15 = 15;
int font20 = 20;
input double font_percent=1;
//--- input parameters
#include  <M5/交易类.mqh>
交易类 交易;
#include  <M5/图形类.mqh>
图形类 图形;
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
   EventSetMillisecondTimer(10);
  /* if(交易.返回账户类型()!="模拟")
     {
      Alert("此版本仅用于模拟，请购买正版 Ytkj0622");
      ExpertRemove();
     }*/
   交易.交易量指令(Symbol());
   图形.画按钮("欢迎语",0,10,40,300,30,CORNER_LEFT_UPPER,"欢迎使用===Π.EA 辅助面板=== ",clrBlue,clrBlack,clrWhite,"Microsoft YaHei",(int)(font15*font_percent),true,false,false);
   图形.画矩形标签("矩形",0,10,75,300,360,BORDER_FLAT,背景色,STYLE_SOLID,clrBlack,1,CORNER_LEFT_UPPER,false,false,false);
   画面板();
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
   double open=iOpen(Symbol(),PERIOD_D1,0);
   double high=iHigh(Symbol(),PERIOD_D1,0);
   double low=iLow(Symbol(),PERIOD_D1,0);

   double ASK=SymbolInfoDouble(Symbol(),SYMBOL_ASK);
   double BID=SymbolInfoDouble(Symbol(),SYMBOL_BID);

//---左上角
   图形.画文本标签("币种",0,10,100,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,Symbol(),"Microsoft YaHei",(int)(font20*font_percent),clrAqua,false,false);
   图形.画文本标签("ASK",0,10,130,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"ASK:"+DoubleToString(ASK,Digits()),"Microsoft YaHei",(int)(font12*font_percent),clrRed,false,false);
   图形.画文本标签("BID",0,10,160,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"BID:"+DoubleToString(BID,Digits()),"Microsoft YaHei",(int)(font12*font_percent),clrAqua,false,false);
   图形.画文本标签("K值",0,10,182,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"开盘:"+DoubleToString(open,Digits())+"   "+"最高:"+DoubleToString(high,Digits())+"   "+"最低:"+DoubleToString(low,Digits()),"Microsoft YaHei",(int)(font10*font_percent),clrWhite,false,false);

   int  magic_number=(int)StringToInteger(ObjectGetString(0,"magic",OBJPROP_TEXT));
   double  long_boll_point=StringToDouble(ObjectGetString(0,"多追损",OBJPROP_TEXT));
   double  short_boll_point=StringToDouble(ObjectGetString(0,"空追损",OBJPROP_TEXT));
   交易.后步距点值追踪止损(Symbol(),magic_number,long_boll_point,1);
   交易.后步距点值追踪止损(Symbol(),magic_number,short_boll_point,2);




   double  long_profit_point=StringToDouble(ObjectGetString(0,"盈多",OBJPROP_TEXT));
   double  short_profit_point=StringToDouble(ObjectGetString(0,"盈空",OBJPROP_TEXT));
   double  profit_point=StringToDouble(ObjectGetString(0,"净盈",OBJPROP_TEXT));

   if(point_price_choose ==  price)
     {
      交易.总盈利平多(Symbol(),magic_number,long_profit_point);
      交易.总盈利平空(Symbol(),magic_number,short_profit_point);
      交易.总盈利平单(Symbol(),magic_number,profit_point);
     }
   else
     {
      交易.持仓均价平单(Symbol(),magic_number,POSITION_TYPE_BUY,long_profit_point);
      交易.持仓均价平单(Symbol(),magic_number,POSITION_TYPE_SELL,short_profit_point);
      交易.净持仓均价平单(Symbol(),magic_number,profit_point);
     }
   double long_peice_mean=交易.持仓均价(Symbol(),magic_number,POSITION_TYPE_BUY);
   double short_peice_mean=交易.持仓均价(Symbol(),magic_number,POSITION_TYPE_SELL);
   string long_lots = DoubleToString(交易.持仓仓位统计(Symbol(),magic_number,POSITION_TYPE_BUY),2);
   string short_lots = DoubleToString(交易.持仓仓位统计(Symbol(),magic_number,POSITION_TYPE_SELL),2);
   string long_profit = DoubleToString(交易.持仓盈亏统计(Symbol(),magic_number,POSITION_TYPE_BUY),2);
   string short_profit = DoubleToString(交易.持仓盈亏统计(Symbol(),magic_number,POSITION_TYPE_SELL),2);

   string profit = DoubleToString(交易.持仓盈亏统计(Symbol(),magic_number),2);


   double  long_price=StringToDouble(ObjectGetString(0,"触多",OBJPROP_TEXT));
   double  short_price=StringToDouble(ObjectGetString(0,"触空",OBJPROP_TEXT));
   double  price_mean=StringToDouble(ObjectGetString(0,"触总",OBJPROP_TEXT));

   double  long_point=StringToDouble(ObjectGetString(0,"均多",OBJPROP_TEXT));
   double  short_point=StringToDouble(ObjectGetString(0,"均空",OBJPROP_TEXT));
   int long_orders = 交易.持仓单数统计(Symbol(),magic_number,POSITION_TYPE_BUY);
   int short_orders = 交易.持仓单数统计(Symbol(),magic_number,POSITION_TYPE_SELL);
   交易.步距点值持仓均价追多止损(Symbol(),magic_number,long_point,long_orders,long_peice_mean);
   交易.步距点值持仓均价追空止损(Symbol(),magic_number,short_point,short_orders,short_peice_mean);


   if(long_price>0)
     {
      bool chk = 交易.K线穿越某值(Symbol(),PERIOD_M1,UP,CLOSE,0,long_price,long_price)||交易.K线穿越某值(Symbol(),PERIOD_M1,DN,CLOSE,0,long_price,long_price);
      if(chk)
        {
         交易.平多(Symbol(),magic_number,false);
         ObjectSetString(0,"触多",OBJPROP_TEXT,"0");
        }
     }
   if(short_price>0)
     {
      bool chk = 交易.K线穿越某值(Symbol(),PERIOD_M1,UP,CLOSE,0,short_price,short_price)||交易.K线穿越某值(Symbol(),PERIOD_M1,DN,CLOSE,0,short_price,short_price);
      if(chk)
        {
         交易.平空(Symbol(),magic_number,false);
         ObjectSetString(0,"触空",OBJPROP_TEXT,"0");
        }
     }
   if(price_mean>0)
     {
      bool chk = 交易.K线穿越某值(Symbol(),PERIOD_M1,UP,CLOSE,0,price_mean,price_mean)||交易.K线穿越某值(Symbol(),PERIOD_M1,DN,CLOSE,0,price_mean,price_mean);
      if(chk)
        {
         交易.平单(Symbol(),magic_number,false);
         ObjectSetString(0,"触总",OBJPROP_TEXT,"0");
        }
     }



   图形.画文本标签("price_lots",0,10,15+242,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"多均价:"+DoubleToString(long_peice_mean,Digits())+"  "+long_lots+" "+"空均价:"+DoubleToString(short_peice_mean,Digits())+"  "+short_lots,"Microsoft YaHei",(int)(font10*font_percent),clrWhite,false,false);
   图形.画文本标签("profit",0,10,65+240,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"多盈亏:"+long_profit+" "+" 空盈亏:"+short_profit+" 总盈亏:"+profit,"Microsoft YaHei",(int)(font10*font_percent),clrWhite,false,false);

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
   double order_lot=StringToDouble(ObjectGetString(0,"手数",OBJPROP_TEXT));
   double sl_point=StringToDouble(ObjectGetString(0,"止损",OBJPROP_TEXT));
   double tp_point=StringToDouble(ObjectGetString(0,"止盈",OBJPROP_TEXT));
   int  magic_number=(int)(ObjectGetString(0,"magic",OBJPROP_TEXT));
   double  gd_point=(double)(ObjectGetString(0,"gd_point",OBJPROP_TEXT));
   double  gd_order_precent=(double)(ObjectGetString(0,"lot_precent",OBJPROP_TEXT));//挂单手数系数
   double jc_precent=StringToDouble(ObjectGetString(0,"减仓",OBJPROP_TEXT));
   double cd_lot=StringToDouble(ObjectGetString(0,"拆分",OBJPROP_TEXT));
   double point=StringToDouble(ObjectGetString(0,"间距",OBJPROP_TEXT));
   int gd_orders_lit=(int)(ObjectGetString(0,"数量",OBJPROP_TEXT));
   double d_profit=StringToDouble(ObjectGetString(0,"盈亏",OBJPROP_TEXT));

//----
//---多空下单
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="卖")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"做空 "+(string)order_lot);
      if(point_price_choose ==  price)
         交易.价格做空(Symbol(),order_lot,sl_point,tp_point,magic_number,Symbol()+" 面板sell "+(string)order_lot);
      else
         交易.做空(Symbol(),order_lot,sl_point,tp_point,magic_number,Symbol()+" 面板sell "+(string)order_lot);
     }
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="买")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"做多 "+(string)order_lot);
      if(point_price_choose ==  price)
         交易.价格做多(Symbol(),order_lot,sl_point,tp_point,magic_number,Symbol()+" 面板buy "+(string)order_lot);
      else
         交易.做多(Symbol(),order_lot,sl_point,tp_point,magic_number,Symbol()+" 面板buy "+(string)order_lot);
     }
//--止盈止损
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="修改止损")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"修改止损 "+(string)sl_point);
      if(point_price_choose ==  price)
         交易.价格修改止损(Symbol(),magic_number,sl_point);
      else
         交易.修改止损(Symbol(),magic_number,sl_point);

     }
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="修改止盈")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"修改止盈 "+(string)sl_point);
      if(point_price_choose ==  price)
         交易.价格修改止盈(Symbol(),magic_number,tp_point);
      else
         交易.修改止盈(Symbol(),magic_number,tp_point);
     }
//---拆多  拆空
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="拆多")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"拆多 "+(string)order_lot+"  "+(string)cd_lot);
      交易.拆多(Symbol(),order_lot,cd_lot,sl_point,tp_point,magic_number,"面板拆多 "+string(cd_lot));
     }
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="拆空")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"拆空 "+(string)order_lot+"  "+(string)cd_lot);
      交易.拆空(Symbol(),order_lot,cd_lot,sl_point,tp_point,magic_number,"面板拆空 "+string(cd_lot));
     }
//---减仓
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="多减仓")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"多减仓 "+(string)jc_precent);
      交易.折多仓(Symbol(),magic_number,0,jc_precent,"面板多减仓"+(string)jc_precent);
     }
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="空减仓")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"空减仓 "+(string)jc_precent);
      交易.折空仓(Symbol(),magic_number,0,jc_precent,"面板空减仓"+(string)jc_precent);
     }
//---下挂单
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="buylit")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"buy_lit "+(string)point+"  "+(string)gd_orders_lit);
      交易.限价挂多(Symbol(),order_lot,gd_order_precent,gd_point,point,sl_point,tp_point,gd_orders_lit,magic_number,"面板buy_lit");
     }
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="selllit")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"sell_lit "+(string)point+"  "+(string)gd_orders_lit);
      交易.限价挂空(Symbol(),order_lot,gd_order_precent,gd_point,point,sl_point,tp_point,gd_orders_lit,magic_number,"面板sell_lit");
     }
//---锁仓-  -保本 删除挂单
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="锁仓")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"锁仓 ");
      交易.锁全仓(Symbol(),magic_number,0,0,magic_number,"面板锁仓");
     }
//---
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="保本")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"保本 "+(string)point);
      交易.保本(Symbol(),magic_number,point,point);
     }
//--
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="删挂")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"删除挂单 ");
      交易.删除挂单(Symbol(),magic_number);
     }
//平空  平多 全平 清仓
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平空")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"平空 "+Symbol());
      交易.平空(Symbol(),magic_number,false);
     }
//---
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平多")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"平多 "+Symbol());
      交易.平多(Symbol(),magic_number,false);
     }
//---
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="全平")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"全平 "+Symbol());
      交易.平单(Symbol(),magic_number,false);
     }
//---
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="清仓")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"清仓 ");
      交易.平单();
     }
//---平指定盈利  指定亏损
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平多指定盈利")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"平多指定盈利 "+(string)d_profit);
      if(point_price_choose ==  price)
         交易.指定盈利平多(Symbol(),magic_number,d_profit);
      else
         交易.指定盈利点值平多(Symbol(),magic_number,d_profit);
     }
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平空指定盈利")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"平空指定盈利 "+(string)d_profit);
      if(point_price_choose ==  price)
         交易.指定盈利平空(Symbol(),magic_number,d_profit);
      else
         交易.指定盈利点值平空(Symbol(),magic_number,d_profit);
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
         图形.画按钮("欢迎语",0,10,40,300,30,CORNER_LEFT_UPPER,"欢迎使用===Π.EA 辅助面板=== ",clrBlue,clrBlack,clrWhite,"Microsoft YaHei",(int)(font15*font_percent),true,false,true);
         图形.画矩形标签("矩形",0,10,75,300,380,BORDER_FLAT,背景色,STYLE_SOLID,clrBlack,1,CORNER_LEFT_UPPER,true,false,false);
        }
      else
        {
         图形.画按钮("欢迎语",0,10,40,300,30,CORNER_LEFT_UPPER,"欢迎使用===Π.EA 辅助面板=== ",clrBlue,clrBlack,clrWhite,"Microsoft YaHei",(int)(font15*font_percent),true,false,false);
         图形.画矩形标签("矩形",0,10,75,300,380,BORDER_FLAT,背景色,STYLE_SOLID,clrBlack,1,CORNER_LEFT_UPPER,false,false,false);
         画面板();
        }

     }


  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void OnTimer()
  {
//---
   OnTick();
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 画面板()
  {

   图形.画按钮("magic_number",0,10,75,145,25,CORNER_LEFT_UPPER," magic_number：",clrBlue,clrBlack,clrWhite,"Microsoft YaHei",(int)(font15*font_percent),false,false,false);
   图形.画编辑框("magic",0,158,75,150,25,false,CORNER_LEFT_UPPER,"1",clrAliceBlue,clrGreen,clrBlack,"Microsoft YaHei",(int)(font12*font_percent),ALIGN_CENTER,false,false,false);
   /*
     图形.画编辑框("lot_precent",0,210,75,50,25,false,CORNER_LEFT_UPPER,"0.01",clrAliceBlue,clrGreen,clrBlack,"Microsoft YaHei",(int)(font12*font_percent),ALIGN_CENTER,false,false,false);
     图形.画编辑框("gd_point",0,260,75,50,25,false,CORNER_LEFT_UPPER,"700",clrAliceBlue,clrGreen,clrBlack,"Microsoft YaHei",(int)(font12*font_percent),ALIGN_CENTER,false,false,false);
   */
//---
   图形.画按钮("卖",0,110,100,100,55,CORNER_LEFT_UPPER,"卖出/SELL",clrDarkTurquoise,clrBlack,clrBlack,"Microsoft YaHei",(int)(font15*font_percent),false,false,false);
   图形.画按钮("买",0,210,100,100,55,CORNER_LEFT_UPPER,"买入/BUY",clrRed,clrBlack,clrBlack,"Microsoft YaHei",(int)(font15*font_percent),false,false,false);
   图形.画按钮("修改止损",0,110,160,100,20,CORNER_LEFT_UPPER,"修改止损",clrDarkTurquoise,clrBlack,clrBlack,"Microsoft YaHei",(int)(font15*font_percent),false,false,false);
   图形.画按钮("修改止盈",0,210,160,100,20,CORNER_LEFT_UPPER,"修改止盈",clrRed,clrBlack,clrBlack,"Microsoft YaHei",(int)(font15*font_percent),false,false,false);
//---手数  止损  止盈
   图形.画文本标签("单信",0,5,200,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"手数          "+"止损         "+" 止盈 ","Microsoft YaHei",(int)(font15*font_percent),clrGainsboro,false,false);
   图形.画编辑框("手数",0,50,198,53,25,false,CORNER_LEFT_UPPER,"0.01",clrGainsboro,clrGainsboro,clrBlack,"Microsoft YaHei",(int)(font10*font_percent),ALIGN_CENTER,false,false,false);
   图形.画编辑框("止损",0,150,198,57,25,false,CORNER_LEFT_UPPER,"0.0",clrGainsboro,clrGainsboro,clrBlack,"Microsoft YaHei",(int)(font10*font_percent),ALIGN_CENTER,false,false,false);
   图形.画编辑框("止盈",0,250,198,57,25,false,CORNER_LEFT_UPPER,"0.0",clrGainsboro,clrGainsboro,clrBlack,"Microsoft YaHei",(int)(font10*font_percent),ALIGN_CENTER,false,false,false);
//---拆分手数  追踪止损
   图形.画文本标签("止损点追踪止损",0,10,233,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"                                "+"追踪     ","Microsoft YaHei",(int)(font13*font_percent),clrGainsboro,false,false);
   图形.画按钮("拆多",0,10,230,45,25,CORNER_LEFT_UPPER,"拆多",clrGainsboro,clrGainsboro,clrRed,"Microsoft YaHei",(int)(font13*font_percent),false,false,false);
   图形.画按钮("拆空",0,110,230,55,25,CORNER_LEFT_UPPER,"拆空",clrGainsboro,clrGainsboro,clrBlue,"Microsoft YaHei",(int)(font13*font_percent),false,false,false);
   图形.画编辑框("拆分",0,60,230,45,25,false,CORNER_LEFT_UPPER,"0.02",clrGainsboro,clrWhite,clrBlack,"Microsoft YaHei",(int)(font10*font_percent),ALIGN_CENTER,false,false,false);
   图形.画编辑框("多追损",0,210,230,45,25,false,CORNER_LEFT_UPPER,"0",clrGainsboro,clrWhite,clrBlack,"Microsoft YaHei",(int)(font10*font_percent),ALIGN_CENTER,false,false,false);
   图形.画编辑框("空追损",0,260,230,45,25,false,CORNER_LEFT_UPPER,"0",clrGainsboro,clrWhite,clrBlack,"Microsoft YaHei",(int)(font10*font_percent),ALIGN_CENTER,false,false,false);
//---减仓  删挂
   /*
    图形.画按钮("多减仓",0,(int)(font10*font_percent),260,101,25,CORNER_LEFT_UPPER,"多减仓",clrGreen,clrBlack,clrRed,"Microsoft YaHei",(int)(font13*font_percent),false,false,false);
    图形.画按钮("空减仓",0,(int)(font10*font_percent),10+280,101,25,CORNER_LEFT_UPPER,"空减仓",clrGreen,clrBlack,clrWhite,"Microsoft YaHei",(int)(font13*font_percent),false,false,false);
    图形.画编辑框("减仓",0,112,260,35,55,false,CORNER_LEFT_UPPER,"0.5",clrAliceBlue,clrGainsboro,clrBlack,"Microsoft YaHei",(int)(font10*font_percent),ALIGN_CENTER,false,false,false);
   */
//---
   /*
      图形.画编辑框("数量",0,149,260,60,25,false,CORNER_LEFT_UPPER,"5",clrAliceBlue,clrGreen,clrBlack,"Microsoft YaHei",(int)(font12*font_percent),ALIGN_CENTER,false,false,false);
      图形.画编辑框("间距",0,149,10+280,60,25,false,CORNER_LEFT_UPPER,"200",clrAliceBlue,clrGreen,clrBlack,"Microsoft YaHei",(int)(font12*font_percent),ALIGN_CENTER,false,false,false);
      图形.画按钮("selllit",0,210,10+280,100,25,CORNER_LEFT_UPPER,"sell_lit",clrGreen,clrBlack,clrWhite,"Microsoft YaHei",(int)(font15*font_percent),false,false,false);
      图形.画按钮("buylit",0,210,260,100,25,CORNER_LEFT_UPPER,"buy_lit",clrGreen,clrBlack,clrRed,"Microsoft YaHei",(int)(font15*font_percent),false,false,false);
      图形.画按钮("锁仓",0,(int)(font10*font_percent),20+301,99,(int)(font20*font_percent),CORNER_LEFT_UPPER,"锁仓",clrWhite,clrBlack,clrBlack,"Microsoft YaHei",(int)(font15*font_percent),false,false,false);
      图形.画按钮("保本",0,110,20+301,99,(int)(font20*font_percent),CORNER_LEFT_UPPER,"保本",clrWhite,clrBlack,clrBlack,"Microsoft YaHei",(int)(font15*font_percent),false,false,false);
      图形.画按钮("删挂",0,210,20+301,99,(int)(font20*font_percent),CORNER_LEFT_UPPER,"删除挂单",clrWhite,clrBlack,clrBlack,"Microsoft YaHei",(int)(font15*font_percent),false,false,false);
   */
//---
   图形.画按钮("平多",0,10,22+250,80,30,CORNER_LEFT_UPPER,"平多",clrRed,clrBlack,clrBlack,"Microsoft YaHei",(int)(font15*font_percent),false,false,false);
   图形.画按钮("平空",0,80,22+250,80,30,CORNER_LEFT_UPPER,"平空",clrGreen,clrBlack,clrBlack,"Microsoft YaHei",(int)(font15*font_percent),false,false,false);
   图形.画按钮("全平",0,150,22+250,80,30,CORNER_LEFT_UPPER,"全平",clrBlue,clrBlack,clrWhite,"Microsoft YaHei",(int)(font15*font_percent),false,false,false);
   图形.画按钮("清仓",0,230,22+250,80,30,CORNER_LEFT_UPPER,"清仓",clrGainsboro,clrBlack,clrBlack,"Microsoft YaHei",(int)(font15*font_percent),false,false,false);


//---
   /*
      图形.画按钮("平多指定盈利",0,(int)(font10*font_percent),20+413,100,30,CORNER_LEFT_UPPER,"平多指定盈利",clrGreen,clrBlack,clrRed,"Microsoft YaHei",(int)(font12*font_percent),false,false,false);
      图形.画编辑框("盈亏",0,111,20+413,98,30,false,CORNER_LEFT_UPPER,"100",clrGainsboro,clrWhite,clrBlack,"Microsoft YaHei",(int)(font12*font_percent),ALIGN_CENTER,false,false,false);
      图形.画按钮("平空指定盈利",0,210,20+413,100,30,CORNER_LEFT_UPPER,"平空指定盈利",clrGreen,clrBlack,clrWhite,"Microsoft YaHei",(int)(font12*font_percent),false,false,false);
   */
   图形.画文本标签("盈",0,10,60+288,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"多盈             "+"空盈              "+"净盈 ","Microsoft YaHei",(int)(font13*font_percent),clrGainsboro,false,false);
   图形.画文本标签("触",0,10,60+288+30,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"多价             "+"空价              "+"净价 ","Microsoft YaHei",(int)(font13*font_percent),clrGainsboro,false,false);
   图形.画文本标签("追",0,10,60+288+30+30,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,"多追             "+"空追             ","Microsoft YaHei",(int)(font13*font_percent),clrGainsboro,false,false);

   图形.画编辑框("盈多",0,50,60+285,58,25,false,CORNER_LEFT_UPPER,"0",clrGainsboro,clrWhite,clrBlack,"Microsoft YaHei",(int)(font12*font_percent),ALIGN_CENTER,false,false,false);
   图形.画编辑框("盈空",0,151,60+285,58,25,false,CORNER_LEFT_UPPER,"0",clrGainsboro,clrWhite,clrBlack,"Microsoft YaHei",(int)(font12*font_percent),ALIGN_CENTER,false,false,false);
   图形.画编辑框("净盈",0,251,60+285,58,25,false,CORNER_LEFT_UPPER,"0",clrGainsboro,clrWhite,clrBlack,"Microsoft YaHei",(int)(font12*font_percent),ALIGN_CENTER,false,false,false);

   图形.画编辑框("触多",0,50,60+285+30,58,25,false,CORNER_LEFT_UPPER,"0",clrGainsboro,clrWhite,clrBlack,"Microsoft YaHei",(int)(font12*font_percent),ALIGN_CENTER,false,false,false);
   图形.画编辑框("触空",0,151,60+285+30,58,25,false,CORNER_LEFT_UPPER,"0",clrGainsboro,clrWhite,clrBlack,"Microsoft YaHei",(int)(font12*font_percent),ALIGN_CENTER,false,false,false);
   图形.画编辑框("触总",0,251,60+285+30,58,25,false,CORNER_LEFT_UPPER,"0",clrGainsboro,clrWhite,clrBlack,"Microsoft YaHei",(int)(font12*font_percent),ALIGN_CENTER,false,false,false);
   图形.画编辑框("均多",0,50,60+285+30+30,58,25,false,CORNER_LEFT_UPPER,"0",clrGainsboro,clrWhite,clrBlack,"Microsoft YaHei",(int)(font12*font_percent),ALIGN_CENTER,false,false,false);
   图形.画编辑框("均空",0,151,60+285+30+30,58,25,false,CORNER_LEFT_UPPER,"0",clrGainsboro,clrWhite,clrBlack,"Microsoft YaHei",(int)(font12*font_percent),ALIGN_CENTER,false,false,false);


   图形.画按钮("移除",0,10,50+325+60,300,25,CORNER_LEFT_UPPER,"移除面板",clrRed,clrBlack,clrBlack,"Microsoft YaHei",(int)(font15*font_percent),false,false,false);

//---响应栏
   图形.画编辑框("响应栏",0,10,20+300,298,18,false,CORNER_LEFT_UPPER,"财货浑浑如泉源，汸汸如河海",clrAliceBlue,clrGainsboro,clrBlack,"Microsoft YaHei",(int)(font12*font_percent),ALIGN_CENTER,false,false,false);

  }
//+------------------------------------------------------------------+
