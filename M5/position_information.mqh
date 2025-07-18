//+------------------------------------------------------------------+
//|                                      position_information.mqh |
//|                                  Copyright 2024, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2024, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"

#include <M5/图形类.mqh>
图形类 图形;
#include <M5/交易类.mqh>
交易类 交易;
//+------------------------------------------------------------------+
class position_information
  {

private:
   int               position_long_orders;
   int               position_short_orders;
   int               position_all_orders;
   int               right_move,down_move;
   int               button_width;
   int               text_width;
   void              多单信息();
   void              空单信息();
   void              all信息();
   string            symbols_list[];
   bool              币种存在检测(string symbol);
   void              币种列表();
   void              表头();
   void              设置宽度(int button_widths,int text_widths) {this.button_width= button_widths;this.text_width =text_widths;}
   void              设置平移(int right_moves,int  down_moves) {this.right_move=right_moves;this.down_move=down_moves;}
public:

   void              持仓信息() {币种列表();多单信息();空单信息();all信息();};
                     position_information();
                     position_information(int right_moves=0,int down_moves=100);
                    ~position_information();
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
position_information::position_information(int right_moves,int down_moves=100)
  {
   position_long_orders=0;
   position_short_orders=0;
   position_all_orders=0;
   设置宽度(80,12) ;
   设置平移(right_moves, down_moves) ;
   表头();
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
position_information::~position_information()
  {
   for(int i=0;i<100;i++)
     {
      ObjectDelete(0,"long1"+(string)i);
      ObjectDelete(0,"long2"+(string)i);
      ObjectDelete(0,"long3"+(string)i);
      ObjectDelete(0,"long4"+(string)i);
      ObjectDelete(0,"long5"+(string)i);

      ObjectDelete(0,"short1"+(string)i);
      ObjectDelete(0,"short2"+(string)i);
      ObjectDelete(0,"short3"+(string)i);
      ObjectDelete(0,"short4"+(string)i);
      ObjectDelete(0,"short5"+(string)i);

      ObjectDelete(0,"all1"+(string)i);
      ObjectDelete(0,"all2"+(string)i);
      ObjectDelete(0,"all3"+(string)i);
      ObjectDelete(0,"all4"+(string)i);
      ObjectDelete(0,"all5"+(string)i);

     }
   for(int i=0;i<=15;i++)
      ObjectDelete(0,"button"+(string)i);
  }
//+------------------------------------------------------------------+


//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void position_information::表头()
  {

   图形.画按钮("button1",0,5+right_move,30+down_move,button_width,30,
                    CORNER_LEFT_UPPER,"币种buy",clrRed,clrDarkRed,clrBlack,
                    "宋体",text_width,false,false,false);
   图形.画按钮("button2",0,button_width+5+right_move,30+down_move,button_width,30,
                    CORNER_LEFT_UPPER,"手数",clrAqua,clrDarkRed,clrBlack,
                    "宋体",text_width,false,false,false);
   图形.画按钮("button3",0,2*button_width+5+right_move,30+down_move,button_width,30,
                    CORNER_LEFT_UPPER,"持仓均价",clrAqua,clrDarkRed,clrBlack,
                    "宋体",text_width,false,false,false);
   图形.画按钮("button4",0,3*button_width+5+right_move,30+down_move,button_width,30,
                    CORNER_LEFT_UPPER,"单次",clrAqua,clrDarkRed,clrBlack,
                    "宋体",text_width,false,false,false);
   图形.画按钮("button5",0,4*button_width+5+right_move,30+down_move,button_width,30,
                    CORNER_LEFT_UPPER,"盈亏",clrAqua,clrDarkRed,clrBlack,
                    "宋体",text_width,false,false,false);


   图形.画按钮("button6",0,5*button_width+15+right_move,30+down_move,button_width,30,
                    CORNER_LEFT_UPPER,"币种sell",clrYellowGreen,clrDarkRed,clrBlack,
                    "宋体",text_width,false,false,false);
   图形.画按钮("button7",0,6*button_width+15+right_move,30+down_move,button_width,30,
                    CORNER_LEFT_UPPER,"手数",clrAqua,clrDarkRed,clrBlack,
                    "宋体",text_width,false,false,false);
   图形.画按钮("button8",0,7*button_width+15+right_move,30+down_move,button_width,30,
                    CORNER_LEFT_UPPER,"持仓均价",clrAqua,clrDarkRed,clrBlack,
                    "宋体",text_width,false,false,false);
   图形.画按钮("button9",0,8*button_width+15+right_move,30+down_move,button_width,30,
                    CORNER_LEFT_UPPER,"单次",clrAqua,clrDarkRed,clrBlack,
                    "宋体",text_width,false,false,false);
   图形.画按钮("button10",0,9*button_width+15+right_move,30+down_move,button_width,30,
                    CORNER_LEFT_UPPER,"盈亏",clrAqua,clrDarkRed,clrBlack,
                    "宋体",text_width,false,false,false);

   图形.画按钮("button11",0,10*button_width+25+right_move,30+down_move,button_width,30,
                    CORNER_LEFT_UPPER,"币种all",clrYellow,clrDarkRed,clrBlack,
                    "宋体",text_width,false,false,false);
   图形.画按钮("button12",0,11*button_width+25+right_move,30+down_move,button_width,30,
                    CORNER_LEFT_UPPER,"手数",clrAqua,clrDarkRed,clrBlack,
                    "宋体",text_width,false,false,false);
   图形.画按钮("button13",0,12*button_width+25+right_move,30+down_move,button_width,30,
                    CORNER_LEFT_UPPER,"持仓均价",clrAqua,clrDarkRed,clrBlack,
                    "宋体",text_width,false,false,false);
   图形.画按钮("button14",0,13*button_width+25+right_move,30+down_move,button_width,30,
                    CORNER_LEFT_UPPER,"单次",clrAqua,clrDarkRed,clrBlack,
                    "宋体",text_width,false,false,false);
   图形.画按钮("button15",0,14*button_width+25+right_move,30+down_move,button_width,30,
                    CORNER_LEFT_UPPER,"盈亏",clrAqua,clrDarkRed,clrBlack,
                    "宋体",text_width,false,false,false);
  }
//+------------------------------------------------------------------+
void        position_information::      币种列表()
  {
   int orders = PositionsTotal();

   ArrayResize(symbols_list,orders);
   for(int i=0;i<orders;i++)
      symbols_list[i]="";

   for(int i=0,f=0;i<orders;i++)
      if(PositionGetTicket(i)>0)
        {
         string symbol = PositionGetString(POSITION_SYMBOL);
         if(币种存在检测(symbol))
            continue;
         symbols_list[f]=symbol;
         f++;
        }
  }
//+------------------------------------------------------------------+
bool  position_information:: 币种存在检测(string symbol)
  {
   for(int i=0;i<ArraySize(symbols_list);i++)
      if(symbols_list[i] == symbol)
         return true;
   return false;
  }
//+------------------------------------------------------------------+
void   position_information::多单信息()
  {
   if(position_long_orders!=PositionsTotal())
     {
      for(int i=0;i<100;i++)
        {
         ObjectDelete(0,"long1"+(string)i);
         ObjectDelete(0,"long2"+(string)i);
         ObjectDelete(0,"long3"+(string)i);
         ObjectDelete(0,"long4"+(string)i);
         ObjectDelete(0,"long5"+(string)i);
        }
      position_long_orders=PositionsTotal();
     }
   for(int i=0;i<ArraySize(symbols_list);i++)
     {
      string symbol = symbols_list[i];
      if(symbol=="")
         break;

      double lots = 交易.持仓仓位统计(symbol,2,POSITION_TYPE_BUY);
      double mean_price = 交易.持仓均价(symbol,2,POSITION_TYPE_BUY);
      int orders = 交易.持仓单数统计(symbol,2,POSITION_TYPE_BUY);
      double profit = 交易.持仓盈亏统计(symbol,2,POSITION_TYPE_BUY);
      int digit = (int)SymbolInfoInteger(symbol,SYMBOL_DIGITS);

      lots = NormalizeDouble(lots,2);;
      mean_price = NormalizeDouble(mean_price,digit);
      profit =  NormalizeDouble(profit,2);

      图形.画按钮("long1"+(string)i,0,5+right_move,30+down_move+30*(i+1),button_width,30,
                       CORNER_LEFT_UPPER,symbol,clrAqua,clrDarkRed,clrBlack,
                       "宋体",text_width,false,false,false);
      图形.画按钮("long2"+(string)i,0,button_width+5+right_move,30+down_move+30*(i+1),button_width,30,
                       CORNER_LEFT_UPPER,(string)lots,clrWhite,clrDarkRed,clrBlack,
                       "宋体",text_width,false,false,false);
      图形.画按钮("long3"+(string)i,0,2*button_width+5+right_move,30+down_move+30*(i+1),button_width,30,
                       CORNER_LEFT_UPPER,(string)mean_price,clrWhite,clrDarkRed,clrBlack,
                       "宋体",text_width,false,false,false);
      图形.画按钮("long4"+(string)i,0,3*button_width+5+right_move,30+down_move+30*(i+1),button_width,30,
                       CORNER_LEFT_UPPER,(string)orders,clrWhite,clrDarkRed,clrBlack,
                       "宋体",text_width,false,false,false);
      图形.画按钮("long5"+(string)i,0,4*button_width+5+right_move,30+down_move+30*(i+1),button_width,30,
                       CORNER_LEFT_UPPER,(string)profit,clrWhite,clrDarkRed,clrBlack,
                       "宋体",text_width,false,false,false);


     }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void   position_information::空单信息()
  {
   if(position_short_orders!=PositionsTotal())
     {
      for(int i=0;i<100;i++)
        {
         ObjectDelete(0,"short1"+(string)i);
         ObjectDelete(0,"short2"+(string)i);
         ObjectDelete(0,"short3"+(string)i);
         ObjectDelete(0,"short4"+(string)i);
         ObjectDelete(0,"short5"+(string)i);
        }
      position_short_orders=PositionsTotal();
     }
   for(int i=0;i<ArraySize(symbols_list);i++)
     {
      string symbol = symbols_list[i];
      if(symbol=="")
         break;

      double lots = 交易.持仓仓位统计(symbol,2,POSITION_TYPE_SELL);
      double mean_price = 交易.持仓均价(symbol,2,POSITION_TYPE_SELL);
      int orders = 交易.持仓单数统计(symbol,2,POSITION_TYPE_SELL);
      double profit = 交易.持仓盈亏统计(symbol,2,POSITION_TYPE_SELL);
      int digit = (int)SymbolInfoInteger(symbol,SYMBOL_DIGITS);

      lots = NormalizeDouble(lots,2);;
      mean_price = NormalizeDouble(mean_price,digit);
      profit =  NormalizeDouble(profit,2);

      图形.画按钮("short1"+(string)i,0,5*button_width+15+right_move,30+down_move+30*(i+1),button_width,30,
                       CORNER_LEFT_UPPER,symbol,clrAqua,clrDarkRed,clrBlack,
                       "宋体",text_width,false,false,false);
      图形.画按钮("short2"+(string)i,0,6*button_width+15+right_move,30+down_move+30*(i+1),button_width,30,
                       CORNER_LEFT_UPPER,(string)lots,clrWhite,clrDarkRed,clrBlack,
                       "宋体",text_width,false,false,false);
      图形.画按钮("short3"+(string)i,0,7*button_width+15+right_move,30+down_move+30*(i+1),button_width,30,
                       CORNER_LEFT_UPPER,(string)mean_price,clrWhite,clrDarkRed,clrBlack,
                       "宋体",text_width,false,false,false);
      图形.画按钮("short4"+(string)i,0,8*button_width+15+right_move,30+down_move+30*(i+1),button_width,30,
                       CORNER_LEFT_UPPER,(string)orders,clrWhite,clrDarkRed,clrBlack,
                       "宋体",text_width,false,false,false);
      图形.画按钮("short5"+(string)i,0,9*button_width+15+right_move,30+down_move+30*(i+1),button_width,30,
                       CORNER_LEFT_UPPER,(string)profit,clrWhite,clrDarkRed,clrBlack,
                       "宋体",text_width,false,false,false);


     }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void  position_information:: all信息()
  {
   if(position_all_orders!=PositionsTotal())
     {
      for(int i=0;i<100;i++)
        {
         ObjectDelete(0,"all1"+(string)i);
         ObjectDelete(0,"all2"+(string)i);
         ObjectDelete(0,"all3"+(string)i);
         ObjectDelete(0,"all4"+(string)i);
         ObjectDelete(0,"all5"+(string)i);
        }
      position_all_orders=PositionsTotal();
     }
   for(int i=0;i<ArraySize(symbols_list);i++)
     {
      string symbol = symbols_list[i];
      if(symbol=="")
         break;

      double lots = 交易.持仓仓位统计(symbol,2);
      double mean_price = 交易.净持仓均价(symbol,2);
      int orders = 交易.持仓单数统计(symbol,2);
      double profit = 交易.持仓盈亏统计(symbol,2);
      int digit = (int)SymbolInfoInteger(symbol,SYMBOL_DIGITS);

      lots = NormalizeDouble(lots,2);;
      mean_price = NormalizeDouble(mean_price,digit);
      profit =  NormalizeDouble(profit,2);

      图形.画按钮("all1"+(string)i,0,10*button_width+25+right_move,30+down_move+30*(i+1),button_width,30,
                       CORNER_LEFT_UPPER,symbol,clrAqua,clrDarkRed,clrBlack,
                       "宋体",text_width,false,false,false);
      图形.画按钮("all2"+(string)i,0,11*button_width+25+right_move,30+down_move+30*(i+1),button_width,30,
                       CORNER_LEFT_UPPER,(string)lots,clrWhite,clrDarkRed,clrBlack,
                       "宋体",text_width,false,false,false);
      图形.画按钮("all3"+(string)i,0,12*button_width+25+right_move,30+down_move+30*(i+1),button_width,30,
                       CORNER_LEFT_UPPER,(string)mean_price,clrWhite,clrDarkRed,clrBlack,
                       "宋体",text_width,false,false,false);
      图形.画按钮("all4"+(string)i,0,13*button_width+25+right_move,30+down_move+30*(i+1),button_width,30,
                       CORNER_LEFT_UPPER,(string)orders,clrWhite,clrDarkRed,clrBlack,
                       "宋体",text_width,false,false,false);
      图形.画按钮("all5"+(string)i,0,14*button_width+25+right_move,30+down_move+30*(i+1),button_width,30,
                       CORNER_LEFT_UPPER,(string)profit,clrWhite,clrDarkRed,clrBlack,
                       "宋体",text_width,false,false,false);


     }
  }
//+------------------------------------------------------------------+
