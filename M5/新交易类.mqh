//+------------------------------------------------------------------+
//|                                                         新交易类.mqh |
//|                                                            @冻龄男孩 |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "@Π.EA 大树My05613828"
#property link      "https://www.eahub.cn/space-uid-8564.html"
#property version   "1.0"
#property  icon     "//include//M5//logo.ico"
#import "kernel32.dll"
int CopyFileW(string a0,string a1,int a2);
bool CreateDirectoryW(string a0,int a1);
#import
#include <M5/交易类.mqh>
交易类 交易;
class 新交易类
  {
public:
                     新交易类();
                    ~新交易类();
   //+------------------------------------------------------------------+
   ulong             订单号返回持仓属性值(string symbol,ulong ticket,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long start_tim,long end_tim);
   double            订单号返回持仓属性值(string symbol,ulong ticket,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long start_tim,long end_tim);
   string            订单号返回持仓属性值(string symbol,ulong ticket,ENUM_POSITION_PROPERTY_STRING string属性值,long start_tim,long end_tim);
   //+------------------------------------------------------------------+
   ulong             魔术号返回持仓属性值(string symbol,long magic,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long start_tim,long end_tim);
   double            魔术号返回持仓属性值(string symbol,long magic,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long start_tim,long end_tim);
   string            魔术号返回持仓属性值(string symbol,long magic,ENUM_POSITION_PROPERTY_STRING string属性值,long start_tim,long end_tim);
   //+------------------------------------------------------------------+
   ulong             注释返回持仓属性值(string symbol,string comment,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long start_tim,long end_tim);
   double            注释返回持仓属性值(string symbol,string comment,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long start_tim,long end_tim);
   string            注释返回持仓属性值(string symbol,string comment,ENUM_POSITION_PROPERTY_STRING string属性值,long start_tim,long end_tim);

   //+------------------------------------------------------------------+
   ulong             订单号返回历史属性值(string symbol,ulong ticket,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out);
   double            订单号返回历史属性值(string symbol,ulong ticket,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out);
   string            订单号返回历史属性值(string symbol,ulong ticket,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out);
   //+------------------------------------------------------------------+
   ulong             魔术号返回历史属性值(string symbol,long magic,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out);
   double            魔术号返回历史属性值(string symbol,long magic,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out);
   string            魔术号返回历史属性值(string symbol,long magic,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out);
   //+------------------------------------------------------------------+
   ulong             注释返回历史属性值(string symbol,string comment,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out);
   double            注释返回历史属性值(string symbol,string comment,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out);
   string            注释返回历史属性值(string symbol,string comment,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out);
   //+------------------------------------------------------------------+
   ulong             订单号返回持仓属性值(string symbol,ulong ticket,ENUM_POSITION_TYPE order_type,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long start_tim,long end_tim);
   double            订单号返回持仓属性值(string symbol,ulong ticket,ENUM_POSITION_TYPE order_type,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long start_tim,long end_tim);
   string            订单号返回持仓属性值(string symbol,ulong ticket,ENUM_POSITION_TYPE order_type,ENUM_POSITION_PROPERTY_STRING string属性值,long start_tim,long end_tim);
   //+------------------------------------------------------------------+
   ulong             魔术号返回持仓属性值(string symbol,long magic,ENUM_POSITION_TYPE order_type,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long start_tim,long end_tim);
   double            魔术号返回持仓属性值(string symbol,long magic,ENUM_POSITION_TYPE order_type,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long start_tim,long end_tim);
   string            魔术号返回持仓属性值(string symbol,long magic,ENUM_POSITION_TYPE order_type,ENUM_POSITION_PROPERTY_STRING string属性值,long start_tim,long end_tim);
   //+------------------------------------------------------------------+
   ulong             注释返回持仓属性值(string symbol,string comment,ENUM_POSITION_TYPE order_type,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long start_tim,long end_tim);
   double            注释返回持仓属性值(string symbol,string comment,ENUM_POSITION_TYPE order_type,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long start_tim,long end_tim);
   string            注释返回持仓属性值(string symbol,string comment,ENUM_POSITION_TYPE order_type,ENUM_POSITION_PROPERTY_STRING string属性值,long start_tim,long end_tim);

   //+------------------------------------------------------------------+
   ulong             订单号返回历史属性值(string symbol,ulong ticket,ENUM_DEAL_TYPE order_type,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out);
   double            订单号返回历史属性值(string symbol,ulong ticket,ENUM_DEAL_TYPE order_type,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out);
   string            订单号返回历史属性值(string symbol,ulong ticket,ENUM_DEAL_TYPE order_type,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out);
   //+------------------------------------------------------------------+
   ulong             魔术号返回历史属性值(string symbol,long magic,ENUM_DEAL_TYPE order_type,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out);
   double            魔术号返回历史属性值(string symbol,long magic,ENUM_DEAL_TYPE order_type,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out);
   string            魔术号返回历史属性值(string symbol,long magic,ENUM_DEAL_TYPE order_type,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out);
   //+------------------------------------------------------------------+
   ulong             注释返回历史属性值(string symbol,string comment,ENUM_DEAL_TYPE order_type,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out);
   double            注释返回历史属性值(string symbol,string comment,ENUM_DEAL_TYPE order_type,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out);
   string            注释返回历史属性值(string symbol,string comment,ENUM_DEAL_TYPE order_type,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out);
   //+------------------------------------------------------------------+
   //---上是含币种    下是 不含币种
   //+------------------------------------------------------------------+
   ulong             订单号返回持仓属性值(ulong ticket,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long start_tim,long end_tim);
   double            订单号返回持仓属性值(ulong ticket,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long start_tim,long end_tim);
   string            订单号返回持仓属性值(ulong ticket,ENUM_POSITION_PROPERTY_STRING string属性值,long start_tim,long end_tim);
   //+------------------------------------------------------------------+
   ulong             魔术号返回持仓属性值(long magic,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long start_tim,long end_tim);
   double            魔术号返回持仓属性值(long magic,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long start_tim,long end_tim);
   string            魔术号返回持仓属性值(long magic,ENUM_POSITION_PROPERTY_STRING string属性值,long start_tim,long end_tim);
   //+------------------------------------------------------------------+
   ulong             注释返回持仓属性值(string comment,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long start_tim,long end_tim);
   double            注释返回持仓属性值(string comment,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long start_tim,long end_tim);
   string            注释返回持仓属性值(string comment,ENUM_POSITION_PROPERTY_STRING string属性值,long start_tim,long end_tim);

   //+------------------------------------------------------------------+
   ulong             订单号返回历史属性值(ulong ticket,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out);
   double            订单号返回历史属性值(ulong ticket,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out);
   string            订单号返回历史属性值(ulong ticket,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out);
   //+------------------------------------------------------------------+
   ulong             魔术号返回历史属性值(long magic,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out);
   double            魔术号返回历史属性值(long magic,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out);
   string            魔术号返回历史属性值(long magic,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out);
   //+------------------------------------------------------------------+
   ulong             注释返回历史属性值(string comment,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out);
   double            注释返回历史属性值(string comment,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out);
   string            注释返回历史属性值(string comment,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out);


   void              盈利带亏损带方向(string symbol,long magic,string comment,ENUM_POSITION_TYPE type,double profit_lit);
   void              盈利带亏损带方向(string symbol,long magic,ENUM_POSITION_TYPE type,double profit_lit);
   void              盈利带亏损带方向(string symbol,ENUM_POSITION_TYPE type,double profit_lit);
   void              盈利带亏损带方向(long magic,ENUM_POSITION_TYPE type,double profit_lit);
   //---
   void              盈利带亏损(string symbol,long magic,string comment,double profit_lit);
   void              盈利带亏损(string symbol,long magic,double profit_lit);
   void              盈利带亏损(string symbol,double profit_lit);
   void              盈利带亏损(long magic,double profit_lit);
   //------------------------------------------------------
   void              平单(string symbol,long magic,string comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平多(string symbol,long magic,string comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平空(string symbol,long magic,string comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);

   void              平单(string symbol,string comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平多(string symbol,string comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平空(string symbol,string comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平单(long magic,string comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平多(long magic,string comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平空(long magic,string comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);

   void              价格修改止损(string symbol,string comment,double sl_price,int 零壹多贰空=0);
   void              移动价格修改止损(string symbol,string comment,double sl_price,int 零壹多贰空=0);

   int               持仓单数统计(string symbol,string comment,ENUM_POSITION_TYPE 持仓方向);
   int               持仓单数统计(string symbol,string comment);

   void              币种手动平单(string symbol,string comment);
   void              币种手动平多(string symbol,string comment);
   void              币种手动平空(string symbol,string comment);

   void              币种手动平单(string symbol,long magic);
   void              币种手动平多(string symbol,long magic);
   void              币种手动平空(string symbol,long magic);

   void              手动平单(string comment);
   void              手动平多(string comment);
   void              手动平空(string comment);

   void              手动平单(long magic);
   void              手动平多(long magic);
   void              手动平空(long magic);
   int               Highest(const double &array[],const int depth,const int start);
   int               Lowest(const double &array[],const int depth,const int start);
   int               价格限价挂多(string symbol,double lot,double 挂单价格,double sl_price,double tp_price,long magic,string comment);
   int               价格限价挂空(string symbol,double lot,double 挂单价格,double sl_price,double tp_price,long magic,string comment);
   int               价格突破挂多(string symbol,double lot,double 挂单价格,double sl_price,double tp_price,long magic,string comment);
   int               价格突破挂空(string symbol,double lot,double 挂单价格,double sl_price,double tp_price,long magic,string comment);

   void              修改止损止盈(double sl_point,double tp_point,int 零壹多贰空=0);
   void              修改止损(double sl_point,int 零壹多贰空=0);
   void              修改止盈(double tp_point,int 零壹多贰空=0);

   bool              在价格区间(double 参考价,double 价格上限,double 价格下限);

   int               周期持仓单数统计(string symbol,long magic,string comment,ENUM_POSITION_TYPE 持仓方向,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1);
   int               周期持仓单数统计(string symbol,long magic,ENUM_POSITION_TYPE 持仓方向,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1);
   int               周期持仓单数统计(long magic,ENUM_POSITION_TYPE 持仓方向,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1);
   int               周期持仓单数统计(string symbol,long magic,string comment,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1);
   int               周期持仓单数统计(string symbol,long magic,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1);
   int               周期持仓单数统计(long magic,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1);

   bool              预付款维持率检测(double 可用预付款百分比限制);
   bool              结余盈利回撤百分比检测(string symbol,double 盈利百分比=0,double 回撤百分比=0);
   bool              周期时间更新检测(string symbol,ENUM_TIMEFRAMES chart_period,bool &检测);
   ulong             提前K秒数(ulong int_tim,ENUM_TIMEFRAMES chart_period,long 提前秒数,int 几根=1);
   bool              提前K秒数检测(ulong int_tim,ENUM_TIMEFRAMES chart_period,long 提前秒数,int 几根=1);
   void              模板(string 模板名);

   double            昨日结余(datetime start_tim);
   bool              昨日结余盈利回撤百分比检测(double 昨日结余,double 盈利百分比=0,double 回撤百分比=0);
   //+------------------------------------------------------------------+
   bool              单位毫秒do1(double 间隔毫秒);
   bool              单位毫秒do2(double 间隔毫秒);
   bool              单位毫秒do3(double 间隔毫秒);
   bool              单位毫秒do4(double 间隔毫秒);
   bool              单位毫秒1(double 间隔毫秒);
   bool              单位毫秒2(double 间隔毫秒);
   bool              单位毫秒3(double 间隔毫秒);
   bool              单位毫秒4(double 间隔毫秒);
   //+------------------------------------------------------------------

   bool              单位微秒do1(double 间隔微秒);
   bool              单位微秒do2(double 间隔微秒);
   bool              单位微秒do3(double 间隔微秒);
   bool              单位微秒do4(double 间隔微秒);
   bool              单位微秒1(double 间隔微秒);
   bool              单位微秒2(double 间隔微秒);
   bool              单位微秒3(double 间隔微秒);
   bool              单位微秒4(double 间隔微秒);
   void              注释包含盈利点数折仓(string symbol,long magic,string comment,double 折仓手数,double 减仓比例,string 折仓注释,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0,bool 开启只折一次=false);
   void              方向带单(string symbol,long magic,string comment,ENUM_POSITION_TYPE 方向1,ENUM_POSITION_TYPE 方向2,double 盈利启动金额,double 带单后盈利金额=0);
   void              方向带单(string symbol,long magic,ENUM_POSITION_TYPE 方向1,ENUM_POSITION_TYPE 方向2,double 盈利启动金额,double 带单后盈利金额=0);
   void              方向带单(string symbol,ENUM_POSITION_TYPE 方向1,ENUM_POSITION_TYPE 方向2,double 盈利启动金额,double 带单后盈利金额=0);
   void              方向带单(long magic,ENUM_POSITION_TYPE 方向1,ENUM_POSITION_TYPE 方向2,double 盈利启动金额,double 带单后盈利金额=0);
   bool              在时间区间(string start_tim,string 结束时间,datetime time,int 壹服贰电=1);
   void              QQ微信消息推送(string 信息1="",string 信息2="",string 信息3="",string 信息4="",string 信息5="",string 信息6="",string 信息7="",string 信息8="",string 信息9="");
   bool              保本(string symbol,long magic,string comment,double 启动点数,double 保本点数,int 零壹多贰空=0);
   bool              保本(string symbol,long magic,double 启动点数,double 保本点数,int 零壹多贰空=0);

   bool              亏损持仓均价平单(string symbol,long magic,ENUM_POSITION_TYPE 持仓方向,double 设置平单点数);
   ulong             CtoL(ulong 传入服务器时间,int 壹服贰电=0);
   ulong             LtoC(ulong 传入电脑时间,int 壹服贰电=0);
   ulong             StoCL(string 传入转换时间,int 壹服贰电=0);
   int               偏移小时();
   double            NormalizeVolume(string symbol,double lot);
   bool              净值浮盈检测(double 账户盈亏金额比例,double 初账户净值);
   bool              净值浮亏检测(double 账户盈亏金额比例,double 初账户净值);
   bool              净值回调检测(double 账户盈利金额,double 保护利润,double 初账户净值);
   bool              净值回调比例检测(double 账户盈利金额比例,double 回调利润比例,double 初账户净值);
   bool              净值浮盈金额检测(double 账户盈亏金额,double 初账户净值);
   bool              净值浮亏金额检测(double 账户盈亏金额,double 初账户净值);
   template<typename x>
   x                 bufsort(x &arr[],int 升降);
   void              模拟授权();
   bool              上下限检测(double 价格,double 传入上限,double 传入下限);
   int               手数返回持仓单数(string symbol,long magic,string comment,ENUM_POSITION_TYPE order_type,double lot,long 进单时间=0);
   int               手数返回持仓单数(string symbol,long magic,ENUM_POSITION_TYPE order_type,double lot,long 进单时间=0);
   int               手数返回持仓单数(string symbol,long magic,string comment,double lot,long 进单时间=0);
   int               手数返回持仓单数(string symbol,long magic,double lot,long 进单时间=0);
   int               手数返回持仓单数(long magic,double lot,long 进单时间=0);
   bool              净值结余百分比(double percentage,int 壹上贰下=2);
   bool              str_check(string in_str1,string in_str2,int index=3);
   bool              价格百分比(double in_price,double real_price,double percent,int omax_tmin=1);
   bool              价格点价(double in_price,double real_price,double price,int omax_tmin=1);
   bool              最高价区间回调(int buy_orders,double open_price,double bid,double callback_percent);//vr9
   bool              最低价区间反弹(int sell_orders,double open_price,double ask,double callback_percent);//vr0
   bool              最高价回调9(int buy_orders,double bid,double callback_percent);//vr9
   bool              最低价反弹0(int sell_orders,double ask,double callback_percent);//vr0
   bool              最高价回调点价(int buy_orders,double bid,double price);
   bool              最低价反弹点价(int short_orders,double bid,double price);
   //+------------------------------------------------------------------+
   //+------------------------------------------------------------------+
public:
   string            prefix;
private:
  };
//+------------------------------------------------------------------+
新交易类::新交易类()
  {
   交易.prefix="Π.EA ";
   prefix="Π.EA ";
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
新交易类::~新交易类()
  {
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::订单号返回持仓属性值(string symbol,ulong ticket,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long start_tim,long end_tim)
  {
   ulong value=0;if(integer属性值==POSITION_TYPE)value=-1;
   if(ticket>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_TICKET)==ticket&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim)
           {
            value=PositionGetInteger(integer属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   新交易类::订单号返回持仓属性值(string symbol,ulong ticket,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long start_tim,long end_tim)
  {
   double value=0;
   if(ticket>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_TICKET)==ticket&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim)
           {
            value=PositionGetDouble(double属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string   新交易类::订单号返回持仓属性值(string symbol,ulong ticket,ENUM_POSITION_PROPERTY_STRING string属性值,long start_tim,long end_tim)
  {
   string value="-1";
   if(ticket>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_TICKET)==ticket&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim)
           {
            value=PositionGetString(string属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::魔术号返回持仓属性值(string symbol,long magic,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long start_tim,long end_tim)
  {
   ulong value=0;if(integer属性值==POSITION_TYPE)value=-1;
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim)
           {
            value=PositionGetInteger(integer属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   新交易类::魔术号返回持仓属性值(string symbol,long magic,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long start_tim,long end_tim)
  {
   double value=0;
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim)
           {
            value=PositionGetDouble(double属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string   新交易类::魔术号返回持仓属性值(string symbol,long magic,ENUM_POSITION_PROPERTY_STRING string属性值,long start_tim,long end_tim)
  {
   string value="-1";
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim)
           {
            value=PositionGetString(string属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::注释返回持仓属性值(string symbol,string comment,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long start_tim,long end_tim)
  {
   ulong value=0;if(integer属性值==POSITION_TYPE)value=-1;
   if(comment!="")
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetString(POSITION_COMMENT)==prefix+comment&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim)
           {
            value=PositionGetInteger(integer属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   新交易类::注释返回持仓属性值(string symbol,string comment,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long start_tim,long end_tim)
  {
   double value=0;
   if(comment!="")
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetString(POSITION_COMMENT)==prefix+comment&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim)
           {
            value=PositionGetDouble(double属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string   新交易类::注释返回持仓属性值(string symbol,string comment,ENUM_POSITION_PROPERTY_STRING string属性值,long start_tim,long end_tim)
  {
   string value="-1";
   if(comment!="")
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetString(POSITION_COMMENT)==prefix+comment&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim)
           {
            value=PositionGetString(string属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::订单号返回历史属性值(string symbol,ulong ticket,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out)
  {
   ulong value=0;if(integer属性值==DEAL_TYPE)value=-1;
   if(ticket>0)
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID)==ticket)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetInteger(deal_ticket,integer属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetInteger(deal_ticket,integer属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 新交易类::订单号返回历史属性值(string symbol,ulong ticket,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out)
  {
   double value=0;
   if(ticket>0)
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID)==ticket)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetDouble(deal_ticket,double属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetDouble(deal_ticket,double属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string 新交易类::订单号返回历史属性值(string symbol,ulong ticket,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out)
  {
   string value="-1";
   if(ticket>0)
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID)==ticket)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetString(deal_ticket,string属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetString(deal_ticket,string属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::魔术号返回历史属性值(string symbol,long magic,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out)
  {
   ulong value=0;if(integer属性值==DEAL_TYPE)value=-1;
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0)
        {
         magic=交易.魔术幻数(magic);
         if(HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&HistoryDealGetInteger(deal_ticket,DEAL_MAGIC)==magic)
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetInteger(deal_ticket,integer属性值);
               break;
              }
         if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
           {
            value=HistoryDealGetInteger(deal_ticket,integer属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 新交易类::魔术号返回历史属性值(string symbol,long magic,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out)
  {
   double value=0;
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0)
        {
         magic=交易.魔术幻数(magic);
         if(HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&HistoryDealGetInteger(deal_ticket,DEAL_MAGIC)==magic)
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetDouble(deal_ticket,double属性值);
               break;
              }
         if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
           {
            value=HistoryDealGetDouble(deal_ticket,double属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string 新交易类::魔术号返回历史属性值(string symbol,long magic,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out)
  {
   string value="-1";
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0)
        {
         magic=交易.魔术幻数(magic);
         if(HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&HistoryDealGetInteger(deal_ticket,DEAL_MAGIC)==magic)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetString(deal_ticket,string属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetString(deal_ticket,string属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::注释返回历史属性值(string symbol,string comment,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out)
  {
   ulong value=0;if(integer属性值==DEAL_TYPE)value=-1;
   if(comment!="")
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&HistoryDealGetString(deal_ticket,DEAL_COMMENT)==prefix+comment)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetInteger(deal_ticket,integer属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetInteger(deal_ticket,integer属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 新交易类::注释返回历史属性值(string symbol,string comment,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out)
  {
   double value=0;
   if(comment!="")
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&HistoryDealGetString(deal_ticket,DEAL_COMMENT)==prefix+comment)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetDouble(deal_ticket,double属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetDouble(deal_ticket,double属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string 新交易类::注释返回历史属性值(string symbol,string comment,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out)
  {
   string value="-1";
   if(comment!="")
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&HistoryDealGetString(deal_ticket,DEAL_COMMENT)==prefix+comment)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetString(deal_ticket,string属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetString(deal_ticket,string属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::订单号返回持仓属性值(ulong ticket,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long start_tim,long end_tim)
  {
   ulong value=0;if(integer属性值==POSITION_TYPE)value=-1;
   if(ticket>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetInteger(POSITION_TICKET)==ticket&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim)
           {
            value=PositionGetInteger(integer属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   新交易类::订单号返回持仓属性值(ulong ticket,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long start_tim,long end_tim)
  {
   double value=0;
   if(ticket>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetInteger(POSITION_TICKET)==ticket&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim)
           {
            value=PositionGetDouble(double属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string   新交易类::订单号返回持仓属性值(ulong ticket,ENUM_POSITION_PROPERTY_STRING string属性值,long start_tim,long end_tim)
  {
   string value="-1";
   if(ticket>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetInteger(POSITION_TICKET)==ticket&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim)
           {
            value=PositionGetString(string属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::魔术号返回持仓属性值(long magic,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long start_tim,long end_tim)
  {
   ulong value=0;if(integer属性值==POSITION_TYPE)value=-1;
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim)
           {
            value=PositionGetInteger(integer属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   新交易类::魔术号返回持仓属性值(long magic,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long start_tim,long end_tim)
  {
   double value=0;
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim)
           {
            value=PositionGetDouble(double属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string   新交易类::魔术号返回持仓属性值(long magic,ENUM_POSITION_PROPERTY_STRING string属性值,long start_tim,long end_tim)
  {
   string value="-1";
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim)
           {
            value=PositionGetString(string属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::注释返回持仓属性值(string comment,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long start_tim,long end_tim)
  {
   ulong value=0;if(integer属性值==POSITION_TYPE)value=-1;
   if(comment!="")
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_COMMENT)==prefix+comment&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim)
           {
            value=PositionGetInteger(integer属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   新交易类::注释返回持仓属性值(string comment,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long start_tim,long end_tim)
  {
   double value=0;
   if(comment!="")
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_COMMENT)==prefix+comment&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim)
           {
            value=PositionGetDouble(double属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string   新交易类::注释返回持仓属性值(string comment,ENUM_POSITION_PROPERTY_STRING string属性值,long start_tim,long end_tim)
  {
   string value="-1";
   if(comment!="")
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_COMMENT)==prefix+comment&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim)
           {
            value=PositionGetString(string属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::订单号返回历史属性值(ulong ticket,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out)
  {
   ulong value=0;if(integer属性值==DEAL_TYPE)value=-1;
   if(ticket>0)
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID)==ticket)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetInteger(deal_ticket,integer属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetInteger(deal_ticket,integer属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 新交易类::订单号返回历史属性值(ulong ticket,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out)
  {
   double value=0;
   if(ticket>0)
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID)==ticket)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetDouble(deal_ticket,double属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetDouble(deal_ticket,double属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string 新交易类::订单号返回历史属性值(ulong ticket,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out)
  {
   string value="-1";
   if(ticket>0)
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID)==ticket)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetString(deal_ticket,string属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetString(deal_ticket,string属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::魔术号返回历史属性值(long magic,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out)
  {
   ulong value=0;if(integer属性值==DEAL_TYPE)value=-1;
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0)
        {
         magic=交易.魔术幻数(magic);
         if(HistoryDealGetInteger(deal_ticket,DEAL_MAGIC)==magic)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetInteger(deal_ticket,integer属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetInteger(deal_ticket,integer属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 新交易类::魔术号返回历史属性值(long magic,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out)
  {
   double value=0;
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0)
        {
         magic=交易.魔术幻数(magic);
         if(HistoryDealGetInteger(deal_ticket,DEAL_MAGIC)==magic)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetDouble(deal_ticket,double属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetDouble(deal_ticket,double属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string 新交易类::魔术号返回历史属性值(long magic,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out)
  {
   string value="-1";
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0)
        {
         magic=交易.魔术幻数(magic);
         if(HistoryDealGetInteger(deal_ticket,DEAL_MAGIC)==magic)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetString(deal_ticket,string属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetString(deal_ticket,string属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::注释返回历史属性值(string comment,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out)
  {
   ulong value=0;if(integer属性值==DEAL_TYPE)value=-1;
   if(comment!="")
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_COMMENT)==prefix+comment)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetInteger(deal_ticket,integer属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetInteger(deal_ticket,integer属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 新交易类::注释返回历史属性值(string comment,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out)
  {
   double value=0;
   if(comment!="")
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_COMMENT)==prefix+comment)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetDouble(deal_ticket,double属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetDouble(deal_ticket,double属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string 新交易类::注释返回历史属性值(string comment,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out)
  {
   string value="-1";
   if(comment!="")
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_COMMENT)==prefix+comment)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetString(deal_ticket,string属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetString(deal_ticket,string属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损带方向(string symbol,long magic,string comment,ENUM_POSITION_TYPE type,double profit_lit)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol &&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+comment&&PositionGetInteger(POSITION_TYPE)==type)
           {
            a[i][0]=PositionGetDouble(POSITION_PROFIT);
            a[i][1]=(double)PositionGetTicket(i);
           }
        }
     }
   ArraySort(a);
   int s=ArraySize(a);
   double 金额累计=0;
   for(int i=s-1; i>=0; i--)
     {
      金额累计+=a[i][0];
      if(金额累计>profit_lit)
        {
         交易.订单号平单((ulong)a[i][1]);
         Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损带方向(string symbol,long magic,ENUM_POSITION_TYPE type,double profit_lit)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol &&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TYPE)==type)
           {
            a[i][0]=PositionGetDouble(POSITION_PROFIT);
            a[i][1]=(double)PositionGetTicket(i);
           }
        }
     }
   ArraySort(a);
   int s=ArraySize(a);
   double 金额累计=0;
   for(int i=s-1; i>=0; i--)
     {
      金额累计+=a[i][0];
      if(金额累计>profit_lit)
        {
         交易.订单号平单((ulong)a[i][1]);
         Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损带方向(string symbol,ENUM_POSITION_TYPE type,double profit_lit)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         if(PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_TYPE)==type)
           {
            a[i][0]=PositionGetDouble(POSITION_PROFIT);
            a[i][1]=(double)PositionGetTicket(i);
           }
        }
     }
   ArraySort(a);
   int s=ArraySize(a);
   double 金额累计=0;
   for(int i=s-1; i>=0; i--)
     {
      金额累计+=a[i][0];
      if(金额累计>profit_lit)
        {
         交易.订单号平单((ulong)a[i][1]);
         Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损带方向(long magic,ENUM_POSITION_TYPE type,double profit_lit)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TYPE)==type)
           {
            a[i][0]=PositionGetDouble(POSITION_PROFIT);
            a[i][1]=(double)PositionGetTicket(i);
           }
        }
     }
   ArraySort(a);
   int s=ArraySize(a);
   double 金额累计=0;
   for(int i=s-1; i>=0; i--)
     {
      金额累计+=a[i][0];
      if(金额累计>profit_lit)
        {
         交易.订单号平单((ulong)a[i][1]);
         Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损(string symbol,long magic,string comment,double profit_lit)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol &&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+comment)
           {
            a[i][0]=PositionGetDouble(POSITION_PROFIT);
            a[i][1]=(double)PositionGetTicket(i);
           }
        }
     }
   ArraySort(a);
   int s=ArraySize(a);
   double 金额累计=0;
   for(int i=s-1; i>=0; i--)
     {
      金额累计+=a[i][0];
      if(金额累计>profit_lit)
        {
         交易.订单号平单((ulong)a[i][1]);
         Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损(string symbol,long magic,double profit_lit)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol &&PositionGetInteger(POSITION_MAGIC)==magic)
           {
            a[i][0]=PositionGetDouble(POSITION_PROFIT);
            a[i][1]=(double)PositionGetTicket(i);
           }
        }
     }
   ArraySort(a);
   int s=ArraySize(a);
   double 金额累计=0;
   for(int i=s-1; i>=0; i--)
     {
      金额累计+=a[i][0];
      if(金额累计>profit_lit)
        {
         交易.订单号平单((ulong)a[i][1]);
         Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损(string symbol,double profit_lit)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         if(PositionGetString(POSITION_SYMBOL)==symbol)
           {
            a[i][0]=PositionGetDouble(POSITION_PROFIT);
            a[i][1]=(double)PositionGetTicket(i);
           }
        }
     }
   ArraySort(a);
   int s=ArraySize(a);
   double 金额累计=0;
   for(int i=s-1; i>=0; i--)
     {
      金额累计+=a[i][0];
      if(金额累计>profit_lit)
        {
         交易.订单号平单((ulong)a[i][1]);
         Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损(long magic,double profit_lit)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetInteger(POSITION_MAGIC)==magic)
           {
            a[i][0]=PositionGetDouble(POSITION_PROFIT);
            a[i][1]=(double)PositionGetTicket(i);
           }
        }
     }
   ArraySort(a);
   int s=ArraySize(a);
   double 金额累计=0;
   for(int i=s-1; i>=0; i--)
     {
      金额累计+=a[i][0];
      if(金额累计>profit_lit)
        {
         交易.订单号平单((ulong)a[i][1]);
         Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//------------------------------------------------------
void              新交易类::平单(string symbol,long magic,string comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+comment)
           {
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY)
              {
               MqlTradeRequest request= {};
               MqlTradeResult  result= {};
               request.action=TRADE_ACTION_DEAL;
               request.magic=PositionGetInteger(POSITION_MAGIC);
               request.position=PositionGetInteger(POSITION_TICKET);
               request.volume=PositionGetDouble(POSITION_VOLUME);
               request.symbol=PositionGetString(POSITION_SYMBOL);
               request.type_filling=交易.返回交易量指令(request.symbol);
               request.price=SymbolInfoDouble(request.symbol,SYMBOL_BID);
               request.deviation=交易.deviation(交易.slippage,request.symbol);
               request.type=ORDER_TYPE_SELL;
               request.comment=PositionGetString(POSITION_COMMENT);
               string  反手币种=PositionGetString(POSITION_SYMBOL);
               double  反手手数=PositionGetDouble(POSITION_VOLUME);
               double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
               double 反手止损价格=PositionGetDouble(POSITION_SL);
               double 反手止盈价格=PositionGetDouble(POSITION_TP);
               double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
               long 反手Magic=PositionGetInteger(POSITION_MAGIC);
               string 反手注释=PositionGetString(POSITION_COMMENT);
               long ticket=PositionGetInteger(POSITION_TICKET);
               if(!OrderSend(request,result))
                 {
                  Print("订单发送失败代码："+IntegerToString(GetLastError()));
                  Print("交易返回代码："+IntegerToString(result.retcode));
                 }
               if(是否立即反手)
                  交易.做空(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
              }
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL)
              {
               MqlTradeRequest request= {};
               MqlTradeResult  result= {};
               request.action=TRADE_ACTION_DEAL;
               request.magic=PositionGetInteger(POSITION_MAGIC);
               request.position=PositionGetInteger(POSITION_TICKET);
               request.volume=PositionGetDouble(POSITION_VOLUME);
               request.symbol=PositionGetString(POSITION_SYMBOL);
               request.type_filling=交易.返回交易量指令(request.symbol);
               request.price=SymbolInfoDouble(request.symbol,SYMBOL_ASK);
               request.deviation=交易.deviation(交易.slippage,request.symbol);
               request.type=ORDER_TYPE_BUY;
               request.comment=PositionGetString(POSITION_COMMENT);
               string  反手币种=PositionGetString(POSITION_SYMBOL);
               double  反手手数=PositionGetDouble(POSITION_VOLUME);
               double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
               double 反手止损价格=PositionGetDouble(POSITION_SL);
               double 反手止盈价格=PositionGetDouble(POSITION_TP);
               double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
               long 反手Magic=PositionGetInteger(POSITION_MAGIC);
               string 反手注释=PositionGetString(POSITION_COMMENT);
               long ticket=PositionGetInteger(POSITION_TICKET);
               if(!OrderSend(request,result))
                 {
                  Print("订单发送失败代码："+IntegerToString(GetLastError()));
                  Print("交易返回代码："+IntegerToString(result.retcode));
                 }
               if(是否立即反手)
                  交易.做多(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//------------------------------------------------------
void              新交易类::平多(string symbol,long magic,string comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+comment)
           {
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY)
              {
               MqlTradeRequest request= {};
               MqlTradeResult  result= {};
               request.action=TRADE_ACTION_DEAL;
               request.magic=PositionGetInteger(POSITION_MAGIC);
               request.position=PositionGetInteger(POSITION_TICKET);
               request.volume=PositionGetDouble(POSITION_VOLUME);
               request.symbol=PositionGetString(POSITION_SYMBOL);
               request.type_filling=交易.返回交易量指令(request.symbol);
               request.price=SymbolInfoDouble(request.symbol,SYMBOL_BID);
               request.deviation=交易.deviation(交易.slippage,request.symbol);
               request.type=ORDER_TYPE_SELL;
               request.comment=PositionGetString(POSITION_COMMENT);
               string  反手币种=PositionGetString(POSITION_SYMBOL);
               double  反手手数=PositionGetDouble(POSITION_VOLUME);
               double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
               double 反手止损价格=PositionGetDouble(POSITION_SL);
               double 反手止盈价格=PositionGetDouble(POSITION_TP);
               double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
               long 反手Magic=PositionGetInteger(POSITION_MAGIC);
               string 反手注释=PositionGetString(POSITION_COMMENT);
               long ticket=PositionGetInteger(POSITION_TICKET);
               if(!OrderSend(request,result))
                 {
                  Print("订单发送失败代码："+IntegerToString(GetLastError()));
                  Print("交易返回代码："+IntegerToString(result.retcode));
                 }
               if(是否立即反手)
                  交易.做空(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//------------------------------------------------------
void              新交易类::平空(string symbol,long magic,string comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+comment)
           {
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL)
              {
               MqlTradeRequest request= {};
               MqlTradeResult  result= {};
               request.action=TRADE_ACTION_DEAL;
               request.magic=PositionGetInteger(POSITION_MAGIC);
               request.position=PositionGetInteger(POSITION_TICKET);
               request.volume=PositionGetDouble(POSITION_VOLUME);
               request.symbol=PositionGetString(POSITION_SYMBOL);
               request.type_filling=交易.返回交易量指令(request.symbol);
               request.price=SymbolInfoDouble(request.symbol,SYMBOL_ASK);
               request.deviation=交易.deviation(交易.slippage,request.symbol);
               request.type=ORDER_TYPE_BUY;
               request.comment=PositionGetString(POSITION_COMMENT);
               string  反手币种=PositionGetString(POSITION_SYMBOL);
               double  反手手数=PositionGetDouble(POSITION_VOLUME);
               double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
               double 反手止损价格=PositionGetDouble(POSITION_SL);
               double 反手止盈价格=PositionGetDouble(POSITION_TP);
               double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
               long 反手Magic=PositionGetInteger(POSITION_MAGIC);
               string 反手注释=PositionGetString(POSITION_COMMENT);
               long ticket=PositionGetInteger(POSITION_TICKET);
               if(!OrderSend(request,result))
                 {
                  Print("订单发送失败代码："+IntegerToString(GetLastError()));
                  Print("交易返回代码："+IntegerToString(result.retcode));
                 }
               if(是否立即反手)
                  交易.做多(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+

//------------------------------------------------------
void              新交易类::平单(string symbol,string comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetString(POSITION_COMMENT)==prefix+comment)
        {
         if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY)
           {
            MqlTradeRequest request= {};
            MqlTradeResult  result= {};
            request.action=TRADE_ACTION_DEAL;
            request.magic=PositionGetInteger(POSITION_MAGIC);
            request.position=PositionGetInteger(POSITION_TICKET);
            request.volume=PositionGetDouble(POSITION_VOLUME);
            request.symbol=PositionGetString(POSITION_SYMBOL);
            request.type_filling=交易.返回交易量指令(request.symbol);
            request.price=SymbolInfoDouble(request.symbol,SYMBOL_BID);
            request.deviation=交易.deviation(交易.slippage,request.symbol);
            request.type=ORDER_TYPE_SELL;
            request.comment=PositionGetString(POSITION_COMMENT);
            string  反手币种=PositionGetString(POSITION_SYMBOL);
            double  反手手数=PositionGetDouble(POSITION_VOLUME);
            double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
            double 反手止损价格=PositionGetDouble(POSITION_SL);
            double 反手止盈价格=PositionGetDouble(POSITION_TP);
            double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
            double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
            long 反手Magic=PositionGetInteger(POSITION_MAGIC);
            string 反手注释=PositionGetString(POSITION_COMMENT);
            long ticket=PositionGetInteger(POSITION_TICKET);
            if(!OrderSend(request,result))
              {
               Print("订单发送失败代码："+IntegerToString(GetLastError()));
               Print("交易返回代码："+IntegerToString(result.retcode));
              }
            if(是否立即反手)
               交易.做空(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
           }
         if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL)
           {
            MqlTradeRequest request= {};
            MqlTradeResult  result= {};
            request.action=TRADE_ACTION_DEAL;
            request.magic=PositionGetInteger(POSITION_MAGIC);
            request.position=PositionGetInteger(POSITION_TICKET);
            request.volume=PositionGetDouble(POSITION_VOLUME);
            request.symbol=PositionGetString(POSITION_SYMBOL);
            request.type_filling=交易.返回交易量指令(request.symbol);
            request.price=SymbolInfoDouble(request.symbol,SYMBOL_ASK);
            request.deviation=交易.deviation(交易.slippage,request.symbol);
            request.type=ORDER_TYPE_BUY;
            request.comment=PositionGetString(POSITION_COMMENT);
            string  反手币种=PositionGetString(POSITION_SYMBOL);
            double  反手手数=PositionGetDouble(POSITION_VOLUME);
            double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
            double 反手止损价格=PositionGetDouble(POSITION_SL);
            double 反手止盈价格=PositionGetDouble(POSITION_TP);
            double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
            double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
            long 反手Magic=PositionGetInteger(POSITION_MAGIC);
            string 反手注释=PositionGetString(POSITION_COMMENT);
            long ticket=PositionGetInteger(POSITION_TICKET);
            if(!OrderSend(request,result))
              {
               Print("订单发送失败代码："+IntegerToString(GetLastError()));
               Print("交易返回代码："+IntegerToString(result.retcode));
              }
            if(是否立即反手)
               交易.做多(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
           }
        }
     }
  };
//+------------------------------------------------------------------+
//------------------------------------------------------
void              新交易类::平多(string symbol,string comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetString(POSITION_COMMENT)==prefix+comment)
        {
         if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY)
           {
            MqlTradeRequest request= {};
            MqlTradeResult  result= {};
            request.action=TRADE_ACTION_DEAL;
            request.magic=PositionGetInteger(POSITION_MAGIC);
            request.position=PositionGetInteger(POSITION_TICKET);
            request.volume=PositionGetDouble(POSITION_VOLUME);
            request.symbol=PositionGetString(POSITION_SYMBOL);
            request.type_filling=交易.返回交易量指令(request.symbol);
            request.price=SymbolInfoDouble(request.symbol,SYMBOL_BID);
            request.deviation=交易.deviation(交易.slippage,request.symbol);
            request.type=ORDER_TYPE_SELL;
            request.comment=PositionGetString(POSITION_COMMENT);
            string  反手币种=PositionGetString(POSITION_SYMBOL);
            double  反手手数=PositionGetDouble(POSITION_VOLUME);
            double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
            double 反手止损价格=PositionGetDouble(POSITION_SL);
            double 反手止盈价格=PositionGetDouble(POSITION_TP);
            double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
            double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
            long 反手Magic=PositionGetInteger(POSITION_MAGIC);
            string 反手注释=PositionGetString(POSITION_COMMENT);
            long ticket=PositionGetInteger(POSITION_TICKET);
            if(!OrderSend(request,result))
              {
               Print("订单发送失败代码："+IntegerToString(GetLastError()));
               Print("交易返回代码："+IntegerToString(result.retcode));
              }
            if(是否立即反手)
               交易.做空(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
           }
        }
     }
  };
//+------------------------------------------------------------------+
//------------------------------------------------------
void              新交易类::平空(string symbol,string comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetString(POSITION_COMMENT)==prefix+comment)
        {
         if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL)
           {
            MqlTradeRequest request= {};
            MqlTradeResult  result= {};
            request.action=TRADE_ACTION_DEAL;
            request.magic=PositionGetInteger(POSITION_MAGIC);
            request.position=PositionGetInteger(POSITION_TICKET);
            request.volume=PositionGetDouble(POSITION_VOLUME);
            request.symbol=PositionGetString(POSITION_SYMBOL);
            request.type_filling=交易.返回交易量指令(request.symbol);
            request.price=SymbolInfoDouble(request.symbol,SYMBOL_ASK);
            request.deviation=交易.deviation(交易.slippage,request.symbol);
            request.type=ORDER_TYPE_BUY;
            request.comment=PositionGetString(POSITION_COMMENT);
            string  反手币种=PositionGetString(POSITION_SYMBOL);
            double  反手手数=PositionGetDouble(POSITION_VOLUME);
            double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
            double 反手止损价格=PositionGetDouble(POSITION_SL);
            double 反手止盈价格=PositionGetDouble(POSITION_TP);
            double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
            double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
            long 反手Magic=PositionGetInteger(POSITION_MAGIC);
            string 反手注释=PositionGetString(POSITION_COMMENT);
            long ticket=PositionGetInteger(POSITION_TICKET);
            if(!OrderSend(request,result))
              {
               Print("订单发送失败代码："+IntegerToString(GetLastError()));
               Print("交易返回代码："+IntegerToString(result.retcode));
              }
            if(是否立即反手)
               交易.做多(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
           }
        }
     }
  };
//+------------------------------------------------------------------+
//------------------------------------------------------
void              新交易类::平单(long magic,string comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+comment)
           {
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY)
              {
               MqlTradeRequest request= {};
               MqlTradeResult  result= {};
               request.action=TRADE_ACTION_DEAL;
               request.magic=PositionGetInteger(POSITION_MAGIC);
               request.position=PositionGetInteger(POSITION_TICKET);
               request.volume=PositionGetDouble(POSITION_VOLUME);
               request.symbol=PositionGetString(POSITION_SYMBOL);
               request.type_filling=交易.返回交易量指令(request.symbol);
               request.price=SymbolInfoDouble(request.symbol,SYMBOL_BID);
               request.deviation=交易.deviation(交易.slippage,request.symbol);
               request.type=ORDER_TYPE_SELL;
               request.comment=PositionGetString(POSITION_COMMENT);
               string  反手币种=PositionGetString(POSITION_SYMBOL);
               double  反手手数=PositionGetDouble(POSITION_VOLUME);
               double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
               double 反手止损价格=PositionGetDouble(POSITION_SL);
               double 反手止盈价格=PositionGetDouble(POSITION_TP);
               double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
               long 反手Magic=PositionGetInteger(POSITION_MAGIC);
               string 反手注释=PositionGetString(POSITION_COMMENT);
               long ticket=PositionGetInteger(POSITION_TICKET);
               if(!OrderSend(request,result))
                 {
                  Print("订单发送失败代码："+IntegerToString(GetLastError()));
                  Print("交易返回代码："+IntegerToString(result.retcode));
                 }
               if(是否立即反手)
                  交易.做空(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
              }
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL)
              {
               MqlTradeRequest request= {};
               MqlTradeResult  result= {};
               request.action=TRADE_ACTION_DEAL;
               request.magic=PositionGetInteger(POSITION_MAGIC);
               request.position=PositionGetInteger(POSITION_TICKET);
               request.volume=PositionGetDouble(POSITION_VOLUME);
               request.symbol=PositionGetString(POSITION_SYMBOL);
               request.type_filling=交易.返回交易量指令(request.symbol);
               request.price=SymbolInfoDouble(request.symbol,SYMBOL_ASK);
               request.deviation=交易.deviation(交易.slippage,request.symbol);
               request.type=ORDER_TYPE_BUY;
               request.comment=PositionGetString(POSITION_COMMENT);
               string  反手币种=PositionGetString(POSITION_SYMBOL);
               double  反手手数=PositionGetDouble(POSITION_VOLUME);
               double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
               double 反手止损价格=PositionGetDouble(POSITION_SL);
               double 反手止盈价格=PositionGetDouble(POSITION_TP);
               double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
               long 反手Magic=PositionGetInteger(POSITION_MAGIC);
               string 反手注释=PositionGetString(POSITION_COMMENT);
               long ticket=PositionGetInteger(POSITION_TICKET);
               if(!OrderSend(request,result))
                 {
                  Print("订单发送失败代码："+IntegerToString(GetLastError()));
                  Print("交易返回代码："+IntegerToString(result.retcode));
                 }
               if(是否立即反手)
                  交易.做多(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//------------------------------------------------------
void              新交易类::平多(long magic,string comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+comment)
           {
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY)
              {
               MqlTradeRequest request= {};
               MqlTradeResult  result= {};
               request.action=TRADE_ACTION_DEAL;
               request.magic=PositionGetInteger(POSITION_MAGIC);
               request.position=PositionGetInteger(POSITION_TICKET);
               request.volume=PositionGetDouble(POSITION_VOLUME);
               request.symbol=PositionGetString(POSITION_SYMBOL);
               request.type_filling=交易.返回交易量指令(request.symbol);
               request.price=SymbolInfoDouble(request.symbol,SYMBOL_BID);
               request.deviation=交易.deviation(交易.slippage,request.symbol);
               request.type=ORDER_TYPE_SELL;
               request.comment=PositionGetString(POSITION_COMMENT);
               string  反手币种=PositionGetString(POSITION_SYMBOL);
               double  反手手数=PositionGetDouble(POSITION_VOLUME);
               double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
               double 反手止损价格=PositionGetDouble(POSITION_SL);
               double 反手止盈价格=PositionGetDouble(POSITION_TP);
               double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
               long 反手Magic=PositionGetInteger(POSITION_MAGIC);
               string 反手注释=PositionGetString(POSITION_COMMENT);
               long ticket=PositionGetInteger(POSITION_TICKET);
               if(!OrderSend(request,result))
                 {
                  Print("订单发送失败代码："+IntegerToString(GetLastError()));
                  Print("交易返回代码："+IntegerToString(result.retcode));
                 }
               if(是否立即反手)
                  交易.做空(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//------------------------------------------------------
void              新交易类::平空(long magic,string comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+comment)
           {
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL)
              {
               MqlTradeRequest request= {};
               MqlTradeResult  result= {};
               request.action=TRADE_ACTION_DEAL;
               request.magic=PositionGetInteger(POSITION_MAGIC);
               request.position=PositionGetInteger(POSITION_TICKET);
               request.volume=PositionGetDouble(POSITION_VOLUME);
               request.symbol=PositionGetString(POSITION_SYMBOL);
               request.type_filling=交易.返回交易量指令(request.symbol);
               request.price=SymbolInfoDouble(request.symbol,SYMBOL_ASK);
               request.deviation=交易.deviation(交易.slippage,request.symbol);
               request.type=ORDER_TYPE_BUY;
               request.comment=PositionGetString(POSITION_COMMENT);
               string  反手币种=PositionGetString(POSITION_SYMBOL);
               double  反手手数=PositionGetDouble(POSITION_VOLUME);
               double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
               double 反手止损价格=PositionGetDouble(POSITION_SL);
               double 反手止盈价格=PositionGetDouble(POSITION_TP);
               double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
               long 反手Magic=PositionGetInteger(POSITION_MAGIC);
               string 反手注释=PositionGetString(POSITION_COMMENT);
               long ticket=PositionGetInteger(POSITION_TICKET);
               if(!OrderSend(request,result))
                 {
                  Print("订单发送失败代码："+IntegerToString(GetLastError()));
                  Print("交易返回代码："+IntegerToString(result.retcode));
                 }
               if(是否立即反手)
                  交易.做多(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              新交易类::价格修改止损(string symbol,string comment,double sl_price,int 零壹多贰空=0)
  {
   if(sl_price>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetString(POSITION_COMMENT)==prefix+comment)
           {
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY&&(零壹多贰空==0||零壹多贰空==1))
              {
               if(PositionGetDouble(POSITION_SL)!=sl_price)
                 {
                  MqlTradeRequest request= {};
                  MqlTradeResult  result= {};
                  request.action=TRADE_ACTION_SLTP;
                  request.magic=PositionGetInteger(POSITION_MAGIC);
                  request.position=PositionGetInteger(POSITION_TICKET);
                  request.volume=PositionGetDouble(POSITION_VOLUME);
                  request.symbol=PositionGetString(POSITION_SYMBOL);
                  //=========止损止盈参考价格==========================
                  request.price=PositionGetDouble(POSITION_PRICE_OPEN);
                  if(sl_price&&PositionGetDouble(POSITION_SL)!=sl_price)
                     request.sl=sl_price;
                  if(sl_price==1)
                     request.sl=NULL;
                  if(sl_price==2)
                     request.sl=PositionGetDouble(POSITION_SL);
                  request.tp=PositionGetDouble(POSITION_TP);
                  request.deviation=交易.deviation(交易.slippage,request.symbol);
                  bool X=OrderSend(request,result);
                  if(X==false)
                    {
                     Print("订单发送失败代码："+IntegerToString(GetLastError()));
                     Print("交易返回代码："+IntegerToString(result.retcode));
                    }
                 }
              }
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL&&(零壹多贰空==0||零壹多贰空==2))
              {
               if(PositionGetDouble(POSITION_SL)!=sl_price)
                 {
                  MqlTradeRequest request= {};
                  MqlTradeResult  result= {};
                  request.action=TRADE_ACTION_SLTP;
                  request.magic=PositionGetInteger(POSITION_MAGIC);
                  request.position=PositionGetInteger(POSITION_TICKET);
                  request.volume=PositionGetDouble(POSITION_VOLUME);
                  request.symbol=PositionGetString(POSITION_SYMBOL);
                  //=========止损止盈参考价格==========================
                  request.price=PositionGetDouble(POSITION_PRICE_OPEN);
                  if(sl_price&&PositionGetDouble(POSITION_SL)!=sl_price)
                     request.sl=sl_price;
                  if(sl_price==1)
                     request.sl=NULL;
                  if(sl_price==2)
                     request.sl=PositionGetDouble(POSITION_SL);
                  request.tp=PositionGetDouble(POSITION_TP);
                  request.deviation=交易.deviation(交易.slippage,request.symbol);
                  bool X=OrderSend(request,result);
                  if(X==false)
                    {
                     Print("订单发送失败代码："+IntegerToString(GetLastError()));
                     Print("交易返回代码："+IntegerToString(result.retcode));
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              新交易类::移动价格修改止损(string symbol,string comment,double sl_price,int 零壹多贰空=0)
  {
   if(sl_price>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetString(POSITION_COMMENT)==prefix+comment)
           {
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY&&(零壹多贰空==0||零壹多贰空==1))
              {
               if(PositionGetDouble(POSITION_SL)!=sl_price&&(PositionGetDouble(POSITION_SL)<sl_price||交易.空值检测(PositionGetDouble(POSITION_SL))))
                 {
                  MqlTradeRequest request= {};
                  MqlTradeResult  result= {};
                  request.action=TRADE_ACTION_SLTP;
                  request.magic=PositionGetInteger(POSITION_MAGIC);
                  request.position=PositionGetInteger(POSITION_TICKET);
                  request.volume=PositionGetDouble(POSITION_VOLUME);
                  request.symbol=PositionGetString(POSITION_SYMBOL);
                  //=========止损止盈参考价格==========================
                  request.price=PositionGetDouble(POSITION_PRICE_OPEN);
                  if(sl_price&&PositionGetDouble(POSITION_SL)!=sl_price)
                     request.sl=sl_price;
                  if(sl_price==1)
                     request.sl=NULL;
                  if(sl_price==2)
                     request.sl=PositionGetDouble(POSITION_SL);
                  request.tp=PositionGetDouble(POSITION_TP);
                  request.deviation=交易.deviation(交易.slippage,request.symbol);
                  bool X=OrderSend(request,result);
                  if(X==false)
                    {
                     Print("订单发送失败代码："+IntegerToString(GetLastError()));
                     Print("交易返回代码："+IntegerToString(result.retcode));
                    }
                 }
              }
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL&&(零壹多贰空==0||零壹多贰空==2))
              {
               if(PositionGetDouble(POSITION_SL)!=sl_price&&(PositionGetDouble(POSITION_SL)>sl_price||交易.空值检测(PositionGetDouble(POSITION_SL))))
                 {
                  MqlTradeRequest request= {};
                  MqlTradeResult  result= {};
                  request.action=TRADE_ACTION_SLTP;
                  request.magic=PositionGetInteger(POSITION_MAGIC);
                  request.position=PositionGetInteger(POSITION_TICKET);
                  request.volume=PositionGetDouble(POSITION_VOLUME);
                  request.symbol=PositionGetString(POSITION_SYMBOL);
                  //=========止损止盈参考价格==========================
                  request.price=PositionGetDouble(POSITION_PRICE_OPEN);
                  if(sl_price&&PositionGetDouble(POSITION_SL)!=sl_price)
                     request.sl=sl_price;
                  if(sl_price==1)
                     request.sl=NULL;
                  if(sl_price==2)
                     request.sl=PositionGetDouble(POSITION_SL);
                  request.tp=PositionGetDouble(POSITION_TP);
                  request.deviation=交易.deviation(交易.slippage,request.symbol);
                  bool X=OrderSend(request,result);
                  if(X==false)
                    {
                     Print("订单发送失败代码："+IntegerToString(GetLastError()));
                     Print("交易返回代码："+IntegerToString(result.retcode));
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 新交易类::持仓单数统计(string symbol,string comment,ENUM_POSITION_TYPE 持仓方向)
  {
   int 总单量=PositionsTotal();
   int 指定单量=0;
   for(int i=总单量-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetString(POSITION_COMMENT)==prefix+comment)
        {
         if(PositionGetInteger(POSITION_TYPE)==持仓方向)
            指定单量=指定单量+1;
        }
     }
   return(指定单量);
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 新交易类::持仓单数统计(string symbol,string comment)
  {
   int 总单量=PositionsTotal();
   int 指定单量=0;
   for(int i=总单量-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetString(POSITION_COMMENT)==prefix+comment)
         指定单量=指定单量+1;
     }
   return(指定单量);
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::币种手动平单(string symbol,string comment)
  {
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      static long  更新时间1=TimeCurrent();
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY)&&HistoryDealGetInteger(deal_ticket,DEAL_TIME)>更新时间1)
        {
         if(HistoryDealGetInteger(deal_ticket,DEAL_TIME)<TimeCurrent()-120)
            break;
         ulong deal_position_id=HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID);
         string 进单注释=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(进单注释!=prefix+comment)
            continue;
         ulong magic=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(magic>0)
           {
            StringReplace(进单注释,prefix,"");
            平单(symbol,magic,进单注释);
            更新时间1=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::币种手动平多(string symbol,string comment)
  {
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      static long  更新时间2=TimeCurrent();
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY)&&HistoryDealGetInteger(deal_ticket,DEAL_TIME)>更新时间2
         &&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==DEAL_TYPE_SELL)
        {
         if(HistoryDealGetInteger(deal_ticket,DEAL_TIME)<TimeCurrent()-120)
            break;
         ulong deal_position_id=HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID);
         string 进单注释=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(进单注释!=prefix+comment)
            continue;
         ulong magic=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(magic>0)
           {
            StringReplace(进单注释,prefix,"");
            平多(symbol,magic,进单注释);
            更新时间2=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::币种手动平空(string symbol,string comment)
  {
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      static long  更新时间3=TimeCurrent();
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY)&&HistoryDealGetInteger(deal_ticket,DEAL_TIME)>更新时间3
         &&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==DEAL_TYPE_BUY)
        {
         if(HistoryDealGetInteger(deal_ticket,DEAL_TIME)<TimeCurrent()-120)
            break;
         ulong deal_position_id=HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID);
         string 进单注释=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(进单注释!=prefix+comment)
            continue;
         ulong magic=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(magic>0)
           {
            StringReplace(进单注释,prefix,"");
            平空(symbol,magic,进单注释);
            更新时间3=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::币种手动平单(string symbol,long magic)
  {
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      static long  更新时间4=TimeCurrent();
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY)&&HistoryDealGetInteger(deal_ticket,DEAL_TIME)>更新时间4)
        {
         if(HistoryDealGetInteger(deal_ticket,DEAL_TIME)<TimeCurrent()-120)
            break;
         ulong deal_position_id=HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID);
         ulong 进单幻数=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(进单幻数!=magic)
            continue;
         string comment=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(comment!="")
           {
            StringReplace(comment,prefix,"");
            平单(symbol,magic,comment);
            更新时间4=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::币种手动平多(string symbol,long magic)
  {
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      static long  更新时间5=TimeCurrent();
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY)&&HistoryDealGetInteger(deal_ticket,DEAL_TIME)>更新时间5
         &&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==DEAL_TYPE_SELL)
        {
         if(HistoryDealGetInteger(deal_ticket,DEAL_TIME)<TimeCurrent()-120)
            break;
         ulong deal_position_id=HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID);
         ulong 进单幻数=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(进单幻数!=magic)
            continue;
         string comment=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(comment!="")
           {
            StringReplace(comment,prefix,"");
            平多(symbol,magic,comment);
            更新时间5=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::币种手动平空(string symbol,long magic)
  {
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      static long  更新时间6=TimeCurrent();
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY)&&HistoryDealGetInteger(deal_ticket,DEAL_TIME)>更新时间6
         &&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==DEAL_TYPE_BUY)
        {
         if(HistoryDealGetInteger(deal_ticket,DEAL_TIME)<TimeCurrent()-120)
            break;
         ulong deal_position_id=HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID);
         ulong 进单幻数=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(进单幻数!=magic)
            continue;
         string comment=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(comment!="")
           {
            StringReplace(comment,prefix,"");
            平空(symbol,magic,comment);
            更新时间6=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::手动平单(string comment)
  {
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      static long  更新时间7=TimeCurrent();
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY)&&HistoryDealGetInteger(deal_ticket,DEAL_TIME)>更新时间7)
        {
         if(HistoryDealGetInteger(deal_ticket,DEAL_TIME)<TimeCurrent()-120)
            break;
         ulong deal_position_id=HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID);
         string 进单注释=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(进单注释!=prefix+comment)
            continue;
         ulong magic=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(magic>0)
           {
            StringReplace(进单注释,prefix,"");
            平单(magic,进单注释);
            更新时间7=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::手动平多(string comment)
  {
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      static long  更新时间8=TimeCurrent();
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY)&&HistoryDealGetInteger(deal_ticket,DEAL_TIME)>更新时间8
         &&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==DEAL_TYPE_SELL)
        {
         if(HistoryDealGetInteger(deal_ticket,DEAL_TIME)<TimeCurrent()-120)
            break;
         ulong deal_position_id=HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID);
         string 进单注释=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(进单注释!=prefix+comment)
            continue;
         ulong magic=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(magic>0)
           {
            StringReplace(进单注释,prefix,"");
            平多(magic,进单注释);
            更新时间8=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::手动平空(string comment)
  {
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      static long  更新时间9=TimeCurrent();
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY)&&HistoryDealGetInteger(deal_ticket,DEAL_TIME)>更新时间9
         &&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==DEAL_TYPE_BUY)
        {
         if(HistoryDealGetInteger(deal_ticket,DEAL_TIME)<TimeCurrent()-120)
            break;
         ulong deal_position_id=HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID);
         string 进单注释=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(进单注释!=prefix+comment)
            continue;
         ulong magic=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(magic>0)
           {
            StringReplace(进单注释,prefix,"");
            平空(magic,进单注释);
            更新时间9=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::手动平单(long magic)
  {
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      static long  更新时间10=TimeCurrent();
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY)&&HistoryDealGetInteger(deal_ticket,DEAL_TIME)>更新时间10)
        {
         if(HistoryDealGetInteger(deal_ticket,DEAL_TIME)<TimeCurrent()-120)
            break;
         ulong deal_position_id=HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID);
         ulong 进单幻数=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(进单幻数!=magic)
            continue;
         string comment=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(comment!="")
           {
            StringReplace(comment,prefix,"");
            平单(magic,comment);
            更新时间10=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::手动平多(long magic)
  {
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      static long  更新时间11=TimeCurrent();
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY)&&HistoryDealGetInteger(deal_ticket,DEAL_TIME)>更新时间11
         &&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==DEAL_TYPE_SELL)
        {
         if(HistoryDealGetInteger(deal_ticket,DEAL_TIME)<TimeCurrent()-120)
            break;
         ulong deal_position_id=HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID);
         ulong 进单幻数=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(进单幻数!=magic)
            continue;
         string comment=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(comment!="")
           {
            StringReplace(comment,prefix,"");
            平多(magic,comment);
            更新时间11=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::手动平空(long magic)
  {
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      static long  更新时间12=TimeCurrent();
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY)&&HistoryDealGetInteger(deal_ticket,DEAL_TIME)>更新时间12
         &&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==DEAL_TYPE_BUY)
        {
         if(HistoryDealGetInteger(deal_ticket,DEAL_TIME)<TimeCurrent()-120)
            break;
         ulong deal_position_id=HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID);
         ulong 进单幻数=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(进单幻数!=magic)
            continue;
         string comment=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(comment!="")
           {
            StringReplace(comment,prefix,"");
            平空(magic,comment);
            更新时间12=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+
int 新交易类::Highest(const double &array[],const int depth,const int start)
  {
   if(start<0)
      return(0);

   double max=array[start];
   int    index=start;
//--- start searching
   for(int i=start-1; i>start-depth && i>=0; i--)
     {
      if(array[i]>max)
        {
         index=i;
         max=array[i];
        }
     }
//--- return index of the highest bar
   return(index);
  }
//+------------------------------------------------------------------+
//|  Search for the index of the lowest bar                          |
//+------------------------------------------------------------------+
int 新交易类::Lowest(const double &array[],const int depth,const int start)
  {
   if(start<0)
      return(0);

   double min=array[start];
   int    index=start;
//--- start searching
   for(int i=start-1; i>start-depth && i>=0; i--)
     {
      if(array[i]<min)
        {
         index=i;
         min=array[i];
        }
     }
//--- return index of the lowest bar
   return(index);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int    新交易类::价格限价挂多(string symbol,double lot,double 挂单价格,double sl_price,double tp_price,long magic,string comment)
  {
   if(挂单价格>0)
     {
      magic=交易.魔术幻数(magic);
      sl_price=交易.多最小止损价格(symbol,sl_price);
      tp_price=交易.多最小止盈价格(symbol,tp_price);
      MqlTradeRequest request= {};
      MqlTradeResult  result= {};
      request.action=TRADE_ACTION_PENDING;
      request.volume=lot;
      request.price=挂单价格;
      if(sl_price==0||sl_price==1||sl_price==2)
         request.sl=NULL;
      else
         request.sl=sl_price;
      if(tp_price==0||tp_price==1||tp_price==2)
         request.tp=NULL;
      else
         request.tp=tp_price;
      request.deviation=交易.deviation(交易.slippage,request.symbol);
      request.type=ORDER_TYPE_BUY_LIMIT;      //挂单类型
      request.symbol=symbol;
      request.type_filling=交易.返回交易量指令(request.symbol);//订单执行类型
      request.type_time=ORDER_TIME_GTC;
      request.expiration=0;
      request.comment=prefix+comment;
      request.magic=magic;
      if(!OrderSend(request,result))
        {
         PrintFormat("订单失败代码:",GetLastError());
         PrintFormat("交易返回代码：",result.retcode);
         return GetLastError();
        }
      return 1;
     }
   return -1;
  }
//+------------------------------------------------------------------+
int  新交易类:: 价格限价挂空(string symbol,double lot,double 挂单价格,double sl_price,double tp_price,long magic,string comment)
  {
   if(挂单价格>0)
     {
      magic=交易.魔术幻数(magic);
      sl_price=交易.空最小止损价格(symbol,sl_price);
      tp_price=交易.空最小止盈价格(symbol,tp_price);
      MqlTradeRequest request= {};
      MqlTradeResult  result= {};
      request.action=TRADE_ACTION_PENDING;
      request.volume=lot;
      request.price=挂单价格;
      if(sl_price==0||sl_price==1||sl_price==2)
         request.sl=NULL;
      else
         request.sl=sl_price;
      if(tp_price==0||tp_price==1||tp_price==2)
         request.tp=NULL;
      else
         request.tp=tp_price;
      request.deviation=交易.deviation(交易.slippage,request.symbol);
      request.type=ORDER_TYPE_SELL_LIMIT;      //挂单类型
      request.symbol=symbol;
      request.type_filling=交易.返回交易量指令(request.symbol);//订单执行类型
      request.type_time=ORDER_TIME_GTC;
      request.expiration=0;
      request.comment=prefix+comment;
      request.magic=magic;
      if(!OrderSend(request,result))
        {
         PrintFormat("订单失败代码:",GetLastError());
         PrintFormat("交易返回代码：",result.retcode);
         return GetLastError();
        }
      return 1;
     }
   return -1;
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int   新交易类::价格突破挂多(string symbol,double lot,double 挂单价格,double sl_price,double tp_price,long magic,string comment)
  {
   if(挂单价格>0)
     {
      magic=交易.魔术幻数(magic);
      sl_price=交易.多最小止损价格(symbol,sl_price);
      tp_price=交易.多最小止盈价格(symbol,tp_price);
      MqlTradeRequest request= {};
      MqlTradeResult  result= {};
      request.action=TRADE_ACTION_PENDING;
      request.volume=lot;
      request.price=挂单价格;
      if(sl_price==0||sl_price==1||sl_price==2)
         request.sl=NULL;
      else
         request.sl=sl_price;
      if(tp_price==0||tp_price==1||tp_price==2)
         request.tp=NULL;
      else
         request.tp=tp_price;
      request.deviation=交易.deviation(交易.slippage,request.symbol);
      request.type=ORDER_TYPE_BUY_STOP;      //挂单类型
      request.symbol=symbol;
      request.type_filling=交易.返回交易量指令(request.symbol);//订单执行类型
      request.type_time=ORDER_TIME_GTC;
      request.expiration=0;
      request.comment=prefix+comment;
      request.magic=magic;
      if(!OrderSend(request,result))
        {
         PrintFormat("订单失败代码:",GetLastError());
         PrintFormat("交易返回代码：",result.retcode);
         return GetLastError();
        }
      return 1;
     }
   return -1;
  }
//+------------------------------------------------------------------+
int  新交易类::价格突破挂空(string symbol,double lot,double 挂单价格,double sl_price,double tp_price,long magic,string comment)
  {
   if(挂单价格>0)
     {
      magic=交易.魔术幻数(magic);
      sl_price=交易.空最小止损价格(symbol,sl_price);
      tp_price=交易.空最小止盈价格(symbol,tp_price);
      MqlTradeRequest request= {};
      MqlTradeResult  result= {};
      request.action=TRADE_ACTION_PENDING;
      request.volume=lot;
      request.price=挂单价格;
      if(sl_price==0||sl_price==1||sl_price==2)
         request.sl=NULL;
      else
         request.sl=sl_price;
      if(tp_price==0||tp_price==1||tp_price==2)
         request.tp=NULL;
      else
         request.tp=tp_price;
      request.deviation=交易.deviation(交易.slippage,request.symbol);
      request.type=ORDER_TYPE_SELL_STOP;      //挂单类型
      request.symbol=symbol;
      request.type_filling=交易.返回交易量指令(request.symbol);//订单执行类型
      request.type_time=ORDER_TIME_GTC;
      request.expiration=0;
      request.comment=prefix+comment;
      request.magic=magic;
      if(!OrderSend(request,result))
        {
         PrintFormat("订单失败代码:",GetLastError());
         PrintFormat("交易返回代码：",result.retcode);
         return GetLastError();
        }
      return 1;
     }
   return -1;
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              新交易类::修改止损止盈(double sl_point,double tp_point,int 零壹多贰空=0)
  {
   if(sl_point>0||tp_point>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            string symbol=PositionGetString(POSITION_SYMBOL);
            sl_point=交易.停损(symbol,sl_point);
            tp_point=交易.停损(symbol,tp_point);
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY&&(零壹多贰空==0||零壹多贰空==1))
              {
               if((PositionGetDouble(POSITION_SL)!=PositionGetDouble(POSITION_PRICE_OPEN)-sl_point*交易.点值(PositionGetString(POSITION_SYMBOL)))
                  ||(PositionGetDouble(POSITION_TP)!=PositionGetDouble(POSITION_PRICE_OPEN)+tp_point*交易.点值(PositionGetString(POSITION_SYMBOL))))
                 {
                  MqlTradeRequest request= {};
                  MqlTradeResult  result= {};
                  request.action=TRADE_ACTION_SLTP;
                  request.magic=PositionGetInteger(POSITION_MAGIC);
                  request.position=PositionGetInteger(POSITION_TICKET);
                  request.volume=PositionGetDouble(POSITION_VOLUME);
                  request.symbol=PositionGetString(POSITION_SYMBOL);
                  //=========止损止盈参考价格==========================
                  request.price=PositionGetDouble(POSITION_PRICE_OPEN);
                  if(sl_point&&PositionGetDouble(POSITION_SL)!=PositionGetDouble(POSITION_PRICE_OPEN)-sl_point*交易.点值(PositionGetString(POSITION_SYMBOL)))
                     request.sl=request.price-sl_point*交易.点值(request.symbol);
                  if(sl_point==1)
                     request.sl=NULL;
                  if(sl_point==2||sl_point==0)
                     request.sl=PositionGetDouble(POSITION_SL);
                  if(tp_point&&PositionGetDouble(POSITION_TP)!=PositionGetDouble(POSITION_PRICE_OPEN)+tp_point*交易.点值(PositionGetString(POSITION_SYMBOL)))
                     request.tp=request.price+tp_point*交易.点值(request.symbol);
                  if(tp_point==1)
                     request.tp=NULL;
                  if(tp_point==2||tp_point==0)
                     request.tp=PositionGetDouble(POSITION_TP);
                  request.deviation=交易.deviation(交易.slippage,request.symbol);
                  bool X=OrderSend(request,result);
                  if(X==false)
                    {
                     Print("订单发送失败代码："+IntegerToString(GetLastError()));
                     Print("交易返回代码："+IntegerToString(result.retcode));
                    }
                 }
              }
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL&&(零壹多贰空==0||零壹多贰空==2))
              {
               if((PositionGetDouble(POSITION_SL)!=PositionGetDouble(POSITION_PRICE_OPEN)+sl_point*交易.点值(PositionGetString(POSITION_SYMBOL)))
                  ||(PositionGetDouble(POSITION_TP)!=PositionGetDouble(POSITION_PRICE_OPEN)-tp_point*交易.点值(PositionGetString(POSITION_SYMBOL))))
                 {
                  MqlTradeRequest request= {};
                  MqlTradeResult  result= {};
                  request.action=TRADE_ACTION_SLTP;
                  request.magic=PositionGetInteger(POSITION_MAGIC);
                  request.position=PositionGetInteger(POSITION_TICKET);
                  request.volume=PositionGetDouble(POSITION_VOLUME);
                  request.symbol=PositionGetString(POSITION_SYMBOL);
                  //=========止损止盈参考价格==========================
                  request.price=PositionGetDouble(POSITION_PRICE_OPEN);
                  if(sl_point&&PositionGetDouble(POSITION_SL)!=PositionGetDouble(POSITION_PRICE_OPEN)+sl_point*交易.点值(PositionGetString(POSITION_SYMBOL)))
                     request.sl=request.price+sl_point*交易.点值(request.symbol);
                  if(sl_point==1)
                     request.sl=NULL;
                  if(sl_point==2||sl_point==0)
                     request.sl=PositionGetDouble(POSITION_SL);
                  if(tp_point&&PositionGetDouble(POSITION_TP)!=PositionGetDouble(POSITION_PRICE_OPEN)-tp_point*交易.点值(PositionGetString(POSITION_SYMBOL)))
                     request.tp=request.price-tp_point*交易.点值(request.symbol);
                  if(tp_point==1)
                     request.tp=NULL;
                  if(tp_point==2||tp_point==0)
                     request.tp=PositionGetDouble(POSITION_TP);
                  request.deviation=交易.deviation(交易.slippage,request.symbol);
                  bool X=OrderSend(request,result);
                  if(X==false)
                    {
                     Print("订单发送失败代码："+IntegerToString(GetLastError()));
                     Print("交易返回代码："+IntegerToString(result.retcode));
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              新交易类::修改止损(double sl_point,int 零壹多贰空=0)
  {
   if(sl_point>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            string symbol=PositionGetString(POSITION_SYMBOL);
            sl_point=交易.停损(symbol,sl_point);
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY&&(零壹多贰空==0||零壹多贰空==1))
              {
               if(PositionGetDouble(POSITION_SL)!=PositionGetDouble(POSITION_PRICE_OPEN)-sl_point*交易.点值(PositionGetString(POSITION_SYMBOL)))
                 {
                  MqlTradeRequest request= {};
                  MqlTradeResult  result= {};
                  request.action=TRADE_ACTION_SLTP;
                  request.magic=PositionGetInteger(POSITION_MAGIC);
                  request.position=PositionGetInteger(POSITION_TICKET);
                  request.volume=PositionGetDouble(POSITION_VOLUME);
                  request.symbol=PositionGetString(POSITION_SYMBOL);
                  //=========止损止盈参考价格==========================
                  request.price=PositionGetDouble(POSITION_PRICE_OPEN);
                  if(sl_point&&PositionGetDouble(POSITION_SL)!=PositionGetDouble(POSITION_PRICE_OPEN)-sl_point*交易.点值(PositionGetString(POSITION_SYMBOL)))
                     request.sl=request.price-sl_point*交易.点值(request.symbol);
                  if(sl_point==1)
                     request.sl=NULL;
                  if(sl_point==2)
                     request.sl=PositionGetDouble(POSITION_SL);
                  request.tp=PositionGetDouble(POSITION_TP);
                  request.deviation=交易.deviation(交易.slippage,request.symbol);
                  bool X=OrderSend(request,result);
                  if(X==false)
                    {
                     Print("订单发送失败代码："+IntegerToString(GetLastError()));
                     Print("交易返回代码："+IntegerToString(result.retcode));
                    }
                 }
              }
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL&&(零壹多贰空==0||零壹多贰空==2))
              {
               if(PositionGetDouble(POSITION_SL)!=PositionGetDouble(POSITION_PRICE_OPEN)+sl_point*交易.点值(PositionGetString(POSITION_SYMBOL)))
                 {
                  MqlTradeRequest request= {};
                  MqlTradeResult  result= {};
                  request.action=TRADE_ACTION_SLTP;
                  request.magic=PositionGetInteger(POSITION_MAGIC);
                  request.position=PositionGetInteger(POSITION_TICKET);
                  request.volume=PositionGetDouble(POSITION_VOLUME);
                  request.symbol=PositionGetString(POSITION_SYMBOL);
                  //=========止损止盈参考价格==========================
                  request.price=PositionGetDouble(POSITION_PRICE_OPEN);
                  if(sl_point&&PositionGetDouble(POSITION_SL)!=PositionGetDouble(POSITION_PRICE_OPEN)+sl_point*交易.点值(PositionGetString(POSITION_SYMBOL)))
                     request.sl=request.price+sl_point*交易.点值(request.symbol);
                  if(sl_point==1)
                     request.sl=NULL;
                  if(sl_point==2)
                     request.sl=PositionGetDouble(POSITION_SL);
                  request.tp=PositionGetDouble(POSITION_TP);
                  request.deviation=交易.deviation(交易.slippage,request.symbol);
                  bool X=OrderSend(request,result);
                  if(X==false)
                    {
                     Print("订单发送失败代码："+IntegerToString(GetLastError()));
                     Print("交易返回代码："+IntegerToString(result.retcode));
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              新交易类::修改止盈(double tp_point,int 零壹多贰空=0)
  {
   if(tp_point>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            string symbol=PositionGetString(POSITION_SYMBOL);
            tp_point=交易.停损(symbol,tp_point);
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY&&(零壹多贰空==0||零壹多贰空==1))
              {
               if(PositionGetDouble(POSITION_TP)!=PositionGetDouble(POSITION_PRICE_OPEN)+tp_point*交易.点值(PositionGetString(POSITION_SYMBOL)))
                 {
                  MqlTradeRequest request= {};
                  MqlTradeResult  result= {};
                  request.action=TRADE_ACTION_SLTP;
                  request.magic=PositionGetInteger(POSITION_MAGIC);
                  request.position=PositionGetInteger(POSITION_TICKET);
                  request.volume=PositionGetDouble(POSITION_VOLUME);
                  request.symbol=PositionGetString(POSITION_SYMBOL);
                  //=========止损止盈参考价格==========================
                  request.price=PositionGetDouble(POSITION_PRICE_OPEN);
                  request.sl=PositionGetDouble(POSITION_SL);
                  if(tp_point&&PositionGetDouble(POSITION_TP)!=PositionGetDouble(POSITION_PRICE_OPEN)+tp_point*交易.点值(PositionGetString(POSITION_SYMBOL)))
                     request.tp=request.price+tp_point*交易.点值(request.symbol);
                  if(tp_point==1)
                     request.tp=NULL;
                  if(tp_point==2)
                     request.tp=PositionGetDouble(POSITION_TP);
                  request.deviation=交易.deviation(交易.slippage,request.symbol);
                  bool X=OrderSend(request,result);
                  if(X==false)
                    {
                     Print("订单发送失败代码："+IntegerToString(GetLastError()));
                     Print("交易返回代码："+IntegerToString(result.retcode));
                    }
                 }
              }
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL&&(零壹多贰空==0||零壹多贰空==2))
              {
               if(PositionGetDouble(POSITION_TP)!=PositionGetDouble(POSITION_PRICE_OPEN)-tp_point*交易.点值(PositionGetString(POSITION_SYMBOL)))
                 {
                  MqlTradeRequest request= {};
                  MqlTradeResult  result= {};
                  request.action=TRADE_ACTION_SLTP;
                  request.magic=PositionGetInteger(POSITION_MAGIC);
                  request.position=PositionGetInteger(POSITION_TICKET);
                  request.volume=PositionGetDouble(POSITION_VOLUME);
                  request.symbol=PositionGetString(POSITION_SYMBOL);
                  //=========止损止盈参考价格==========================
                  request.price=PositionGetDouble(POSITION_PRICE_OPEN);
                  request.sl=PositionGetDouble(POSITION_SL);
                  if(tp_point&&PositionGetDouble(POSITION_TP)!=PositionGetDouble(POSITION_PRICE_OPEN)-tp_point*交易.点值(PositionGetString(POSITION_SYMBOL)))
                     request.tp=request.price-tp_point*交易.点值(request.symbol);
                  if(tp_point==1)
                     request.tp=NULL;
                  if(tp_point==2)
                     request.tp=PositionGetDouble(POSITION_TP);
                  request.deviation=交易.deviation(交易.slippage,request.symbol);
                  bool X=OrderSend(request,result);
                  if(X==false)
                    {
                     Print("订单发送失败代码："+IntegerToString(GetLastError()));
                     Print("交易返回代码："+IntegerToString(result.retcode));
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool  新交易类::在价格区间(double 参考价,double 价格上限,double 价格下限)
  {
   bool 价检=(参考价>价格下限&&参考价<价格上限)
               ||(价格下限==0&&价格上限==0)
               ||(参考价>价格下限&&价格上限==0);
   return 价检;
  }
//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(string symbol,long magic,string comment,ENUM_POSITION_TYPE 持仓方向,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1)
  {
   int 总单量=PositionsTotal();
   int 指定单量=0;
   for(int i=总单量-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+comment&&PositionGetInteger(POSITION_TIME)>iTime(symbol,时间图表周期,0))
           {
            if(PositionGetInteger(POSITION_TYPE)==持仓方向)
               指定单量=指定单量+1;
           }
        }
     }
   return(指定单量);
  };
//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(string symbol,long magic,ENUM_POSITION_TYPE 持仓方向,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1)
  {
   int 总单量=PositionsTotal();
   int 指定单量=0;
   for(int i=总单量-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>iTime(symbol,时间图表周期,0))
           {
            if(PositionGetInteger(POSITION_TYPE)==持仓方向)
               指定单量=指定单量+1;
           }
        }
     }
   return(指定单量);
  };
//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(long magic,ENUM_POSITION_TYPE 持仓方向,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1)
  {
   int 总单量=PositionsTotal();
   int 指定单量=0;
   for(int i=总单量-1; i>=0; i--)
      if(PositionGetTicket(i)>0)
        {
         string symbol=PositionGetString(POSITION_SYMBOL);
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>iTime(symbol,时间图表周期,0))
           {
            if(PositionGetInteger(POSITION_TYPE)==持仓方向)
               指定单量=指定单量+1;
           }
        }
   return(指定单量);
  };
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(string symbol,long magic,string comment,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1)
  {
   int 总单量=PositionsTotal();
   int 指定单量=0;
   for(int i=总单量-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+comment&&PositionGetInteger(POSITION_TIME)>iTime(symbol,时间图表周期,0))
            指定单量=指定单量+1;
        }
     }
   return(指定单量);
  };
//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(string symbol,long magic,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1)
  {
   int 总单量=PositionsTotal();
   int 指定单量=0;
   for(int i=总单量-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>iTime(symbol,时间图表周期,0))
            指定单量=指定单量+1;
        }
     }
   return(指定单量);
  };
//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(long magic,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1)
  {
   int 总单量=PositionsTotal();
   int 指定单量=0;
   for(int i=总单量-1; i>=0; i--)
      if(PositionGetTicket(i)>0)
        {
         string symbol=PositionGetString(POSITION_SYMBOL);
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>iTime(symbol,时间图表周期,0))
            指定单量=指定单量+1;
        }
   return(指定单量);
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::订单号返回持仓属性值(string symbol,ulong ticket,ENUM_POSITION_TYPE order_type,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long start_tim,long end_tim)
  {
   ulong value=0;if(integer属性值==POSITION_TYPE)value=-1;
   if(ticket>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_TICKET)==ticket&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim&&PositionGetInteger(POSITION_TYPE)==order_type)
           {
            value=PositionGetInteger(integer属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double   新交易类::订单号返回持仓属性值(string symbol,ulong ticket,ENUM_POSITION_TYPE order_type,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long start_tim,long end_tim)
  {
   double value=0;
   if(ticket>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_TICKET)==ticket&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim&&PositionGetInteger(POSITION_TYPE)==order_type)
           {
            value=PositionGetDouble(double属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string   新交易类::订单号返回持仓属性值(string symbol,ulong ticket,ENUM_POSITION_TYPE order_type,ENUM_POSITION_PROPERTY_STRING string属性值,long start_tim,long end_tim)
  {
   string value="-1";
   if(ticket>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_TICKET)==ticket&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim&&PositionGetInteger(POSITION_TYPE)==order_type)
           {
            value=PositionGetString(string属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::魔术号返回持仓属性值(string symbol,long magic,ENUM_POSITION_TYPE order_type,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long start_tim,long end_tim)
  {
   ulong value=0;if(integer属性值==POSITION_TYPE)value=-1;
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim&&PositionGetInteger(POSITION_TYPE)==order_type)
           {
            value=PositionGetInteger(integer属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   新交易类::魔术号返回持仓属性值(string symbol,long magic,ENUM_POSITION_TYPE order_type,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long start_tim,long end_tim)
  {
   double value=0;
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim&&PositionGetInteger(POSITION_TYPE)==order_type)
           {
            value=PositionGetDouble(double属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string   新交易类::魔术号返回持仓属性值(string symbol,long magic,ENUM_POSITION_TYPE order_type,ENUM_POSITION_PROPERTY_STRING string属性值,long start_tim,long end_tim)
  {
   string value="-1";
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim&&PositionGetInteger(POSITION_TYPE)==order_type)
           {
            value=PositionGetString(string属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::注释返回持仓属性值(string symbol,string comment,ENUM_POSITION_TYPE order_type,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long start_tim,long end_tim)
  {
   ulong value=0;if(integer属性值==POSITION_TYPE)value=-1;
   if(comment!="")
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetString(POSITION_COMMENT)==prefix+comment&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim&&PositionGetInteger(POSITION_TYPE)==order_type)
           {
            value=PositionGetInteger(integer属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   新交易类::注释返回持仓属性值(string symbol,string comment,ENUM_POSITION_TYPE order_type,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long start_tim,long end_tim)
  {
   double value=0;
   if(comment!="")
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetString(POSITION_COMMENT)==prefix+comment&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim&&PositionGetInteger(POSITION_TYPE)==order_type)
           {
            value=PositionGetDouble(double属性值);
            break;
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
string   新交易类::注释返回持仓属性值(string symbol,string comment,ENUM_POSITION_TYPE order_type,ENUM_POSITION_PROPERTY_STRING string属性值,long start_tim,long end_tim)
  {
   string value="-1";
   if(comment!="")
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetString(POSITION_COMMENT)==prefix+comment&&PositionGetInteger(POSITION_TIME)>start_tim&&PositionGetInteger(POSITION_TIME)<end_tim&&PositionGetInteger(POSITION_TYPE)==order_type)
           {
            value=PositionGetString(string属性值);
            break;
           }
        }
     }
   return value;
  }
//+-----------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::订单号返回历史属性值(string symbol,ulong ticket,ENUM_DEAL_TYPE order_type,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out)
  {
   ulong value=0;if(integer属性值==DEAL_TYPE)value=-1;
   if(ticket>0)
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID)==ticket&&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==order_type)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetInteger(deal_ticket,integer属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetInteger(deal_ticket,integer属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 新交易类::订单号返回历史属性值(string symbol,ulong ticket,ENUM_DEAL_TYPE order_type,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out)
  {
   double value=0;
   if(ticket>0)
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID)==ticket&&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==order_type)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetDouble(deal_ticket,double属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetDouble(deal_ticket,double属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string 新交易类::订单号返回历史属性值(string symbol,ulong ticket,ENUM_DEAL_TYPE order_type,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out)
  {
   string value="-1";
   if(ticket>0)
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID)==ticket&&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==order_type)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetString(deal_ticket,string属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetString(deal_ticket,string属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::魔术号返回历史属性值(string symbol,long magic,ENUM_DEAL_TYPE order_type,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out)
  {
   ulong value=0;if(integer属性值==DEAL_TYPE)value=-1;
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0)
        {
         magic=交易.魔术幻数(magic);
         if(HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&HistoryDealGetInteger(deal_ticket,DEAL_MAGIC)==magic&&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==order_type)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetInteger(deal_ticket,integer属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetInteger(deal_ticket,integer属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 新交易类::魔术号返回历史属性值(string symbol,long magic,ENUM_DEAL_TYPE order_type,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out)
  {
   double value=0;
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0)
        {
         magic=交易.魔术幻数(magic);
         if(HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&HistoryDealGetInteger(deal_ticket,DEAL_MAGIC)==magic&&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==order_type)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetDouble(deal_ticket,double属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetDouble(deal_ticket,double属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string 新交易类::魔术号返回历史属性值(string symbol,long magic,ENUM_DEAL_TYPE order_type,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out)
  {
   string value="-1";
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0)
        {
         magic=交易.魔术幻数(magic);
         if(HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&HistoryDealGetInteger(deal_ticket,DEAL_MAGIC)==magic&&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==order_type)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetString(deal_ticket,string属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetString(deal_ticket,string属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::注释返回历史属性值(string symbol,string comment,ENUM_DEAL_TYPE order_type,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out)
  {
   ulong value=0;if(integer属性值==DEAL_TYPE)value=-1;
   if(comment!="")
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&HistoryDealGetString(deal_ticket,DEAL_COMMENT)==prefix+comment&&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==order_type)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetInteger(deal_ticket,integer属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetInteger(deal_ticket,integer属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 新交易类::注释返回历史属性值(string symbol,string comment,ENUM_DEAL_TYPE order_type,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out)
  {
   double value=0;
   if(comment!="")
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&HistoryDealGetString(deal_ticket,DEAL_COMMENT)==prefix+comment&&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==order_type)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetDouble(deal_ticket,double属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetDouble(deal_ticket,double属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string 新交易类::注释返回历史属性值(string symbol,string comment,ENUM_DEAL_TYPE order_type,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out)
  {
   string value="-1";
   if(comment!="")
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==symbol&&HistoryDealGetString(deal_ticket,DEAL_COMMENT)==prefix+comment&&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==order_type)
           {
            if(one_int_two_out==2&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY))
              {
               value=HistoryDealGetString(deal_ticket,string属性值);
               break;
              }
            if(one_int_two_out==1&&HistoryDealGetTicket(i)>0&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_IN))
              {
               value=HistoryDealGetString(deal_ticket,string属性值);
               break;
              }
           }
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
bool 新交易类::预付款维持率检测(double 可用预付款百分比限制)
  {
   bool 检测=AccountInfoDouble(ACCOUNT_MARGIN_LEVEL)>0&&AccountInfoDouble(ACCOUNT_MARGIN_LEVEL)>可用预付款百分比限制;
   if(可用预付款百分比限制==0||交易.空值检测(AccountInfoDouble(ACCOUNT_MARGIN_LEVEL)))
      检测=true;
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::结余盈利回撤百分比检测(string symbol,double 盈利百分比=0,double 回撤百分比=0)
  {
   if(盈利百分比>0&&回撤百分比>0)
     {
      static double  当日结余=AccountInfoDouble(ACCOUNT_BALANCE);
      static double  最大结余=AccountInfoDouble(ACCOUNT_BALANCE);
      static  bool  检测=false;
      long 实时时间=iTime(symbol,PERIOD_D1,0);
      static long 初始时间=0;
      if(初始时间!=实时时间)
        {
         当日结余=AccountInfoDouble(ACCOUNT_BALANCE);
         最大结余=AccountInfoDouble(ACCOUNT_BALANCE);
         检测=false;
         初始时间=实时时间;
        }
      //---
      if(AccountInfoDouble(ACCOUNT_BALANCE)>最大结余)
         最大结余=AccountInfoDouble(ACCOUNT_BALANCE);
      if(最大结余>当日结余*(1+盈利百分比))
         检测=true;
      if(检测)
         if(AccountInfoDouble(ACCOUNT_BALANCE)<最大结余-(最大结余-当日结余)*回撤百分比)
            return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::周期时间更新检测(string symbol,ENUM_TIMEFRAMES chart_period,bool &检测)
  {
   static long 初始时间1=0;
   long 实时时间1=iTime(symbol,PERIOD_D1,0);
   if(初始时间1!=实时时间1)
     {
      检测=true;
      初始时间1=实时时间1;
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong 新交易类::提前K秒数(ulong int_tim,ENUM_TIMEFRAMES chart_period,long 提前秒数,int 几根=1)
  {
   long 秒数=提前秒数;
   if(秒数<=0)
      秒数=PeriodSeconds(chart_period);
   if(秒数>PeriodSeconds(chart_period))
      秒数=PeriodSeconds(chart_period);
   ulong 返回时间=int_tim+几根*PeriodSeconds(chart_period)-秒数;
   return 返回时间;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::提前K秒数检测(ulong int_tim,ENUM_TIMEFRAMES chart_period,long 提前秒数,int 几根=1)
  {
   long 秒数=提前秒数;
   if(秒数<=0)
      秒数=PeriodSeconds(chart_period);
   if(秒数>PeriodSeconds(chart_period))
      秒数=PeriodSeconds(chart_period);
   ulong 返回时间=int_tim+几根*PeriodSeconds(chart_period)-秒数;
   return (ulong)TimeCurrent()>=返回时间;
  }
//+------------------------------------------------------------------
void 新交易类::模板(string 模板名)
  {
   ChartSaveTemplate(0,模板名);
   ChartApplyTemplate(0,模板名);
  }
//+------------------------------------------------------------------
//+------------------------------------------------------------------+
double  新交易类::昨日结余(datetime start_tim)
  {
   HistorySelect(start_tim,TimeCurrent());
   double 昨利=0;
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
      昨利=昨利+HistoryDealGetDouble(HistoryDealGetTicket(i),DEAL_PROFIT)+HistoryDealGetDouble(HistoryDealGetTicket(i),DEAL_SWAP)+HistoryDealGetDouble(HistoryDealGetTicket(i),DEAL_COMMISSION);
   double 昨结=AccountInfoDouble(ACCOUNT_BALANCE)-昨利;
   return 昨结;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::昨日结余盈利回撤百分比检测(double 昨日结余,double 盈利百分比=0,double 回撤百分比=0)
  {
   if(盈利百分比>0&&回撤百分比>0)
     {
      static double  最大结余=AccountInfoDouble(ACCOUNT_BALANCE);
      static  bool  检测=false;
      long 实时时间=iTime(Symbol(),PERIOD_D1,0);
      static long 初始时间=0;
      if(初始时间!=实时时间)
        {
         最大结余=AccountInfoDouble(ACCOUNT_BALANCE);
         检测=false;
         初始时间=实时时间;
        }
      //---
      if(AccountInfoDouble(ACCOUNT_BALANCE)>最大结余)
         最大结余=AccountInfoDouble(ACCOUNT_BALANCE);
      if(最大结余>昨日结余*(1+盈利百分比))
         检测=true;
      if(检测)
         if(AccountInfoDouble(ACCOUNT_BALANCE)<最大结余-(最大结余-昨日结余)*回撤百分比)
            return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool    新交易类::单位毫秒do1(double 间隔毫秒)
  {
   bool 检测=false;
   static ulong  初时间1=0;
   ulong 时时间=(ulong) GetTickCount64();
   if(时时间>初时间1)
     {
      检测=true;
      初时间1=(ulong)(时时间+间隔毫秒);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool    新交易类::单位毫秒do2(double 间隔毫秒)
  {
   bool 检测=false;
   static ulong  初时间2=0;
   ulong 时时间=(ulong) GetTickCount64();
   if(时时间>初时间2)
     {
      检测=true;
      初时间2=(ulong)(时时间+间隔毫秒);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool    新交易类::单位毫秒do3(double 间隔毫秒)
  {
   bool 检测=false;
   static ulong  初时间3=0;
   ulong 时时间=(ulong) GetTickCount64();
   if(时时间>初时间3)
     {
      检测=true;
      初时间3=(ulong)(时时间+间隔毫秒);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool    新交易类::单位毫秒do4(double 间隔毫秒)
  {
   bool 检测=false;
   static ulong  初时间4=0;
   ulong 时时间=(ulong) GetTickCount64();
   if(时时间>初时间4)
     {
      检测=true;
      初时间4=(ulong)(时时间+间隔毫秒);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool    新交易类::单位毫秒1(double 间隔毫秒)
  {
   bool 检测=false;
   static ulong  初时间5= GetTickCount64();
   ulong 时时间=(ulong) GetTickCount64();
   if(时时间>初时间5+间隔毫秒)
     {
      检测=true;
      初时间5=(ulong)(时时间);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool    新交易类::单位毫秒2(double 间隔毫秒)
  {
   bool 检测=false;
   static ulong  初时间6= GetTickCount64();
   ulong 时时间=(ulong) GetTickCount64();
   if(时时间>初时间6+间隔毫秒)
     {
      检测=true;
      初时间6=(ulong)(时时间);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool    新交易类::单位毫秒3(double 间隔毫秒)
  {
   bool 检测=false;
   static ulong  初时间7= GetTickCount64();
   ulong 时时间=(ulong) GetTickCount64();
   if(时时间>初时间7+间隔毫秒)
     {
      检测=true;
      初时间7=(ulong)(时时间);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool    新交易类::单位毫秒4(double 间隔毫秒)
  {
   bool 检测=false;
   static ulong  初时间8= GetTickCount64();
   ulong 时时间=(ulong) GetTickCount64();
   if(时时间>初时间8+间隔毫秒)
     {
      检测=true;
      初时间8=(ulong)(时时间);
     }
   return 检测;
  }
//+------------------------------------------------------------------
//+------------------------------------------------------------------+
bool    新交易类::单位微秒do1(double 间隔微秒)
  {
   bool 检测=false;
   static ulong  初时间1=0;
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间1)
     {
      检测=true;
      初时间1=(ulong)(时时间+间隔微秒);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool    新交易类::单位微秒do2(double 间隔微秒)
  {
   bool 检测=false;
   static ulong  初时间2=0;
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间2)
     {
      检测=true;
      初时间2=(ulong)(时时间+间隔微秒);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool    新交易类::单位微秒do3(double 间隔微秒)
  {
   bool 检测=false;
   static ulong  初时间3=0;
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间3)
     {
      检测=true;
      初时间3=(ulong)(时时间+间隔微秒);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool    新交易类::单位微秒do4(double 间隔微秒)
  {
   bool 检测=false;
   static ulong  初时间4=0;
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间4)
     {
      检测=true;
      初时间4=(ulong)(时时间+间隔微秒);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool    新交易类::单位微秒1(double 间隔微秒)
  {
   bool 检测=false;
   static ulong  初时间5= GetMicrosecondCount();
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间5+间隔微秒)
     {
      检测=true;
      初时间5=(ulong)(时时间);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool    新交易类::单位微秒2(double 间隔微秒)
  {
   bool 检测=false;
   static ulong  初时间6= GetMicrosecondCount();
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间6+间隔微秒)
     {
      检测=true;
      初时间6=(ulong)(时时间);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool    新交易类::单位微秒3(double 间隔微秒)
  {
   bool 检测=false;
   static ulong  初时间7= GetMicrosecondCount();
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间7+间隔微秒)
     {
      检测=true;
      初时间7=(ulong)(时时间);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool    新交易类::单位微秒4(double 间隔微秒)
  {
   bool 检测=false;
   static ulong  初时间8=GetMicrosecondCount();
   ulong 时时间=(ulong)GetMicrosecondCount();
   if(时时间>初时间8+间隔微秒)
     {
      检测=true;
      初时间8=(ulong)(时时间);
     }
   return 检测;
  }
//+------------------------------------
//+------------------------------------------------------------------+
void              新交易类::注释包含盈利点数折仓(string symbol,long magic,string comment,double 折仓手数,double 减仓比例,string 折仓注释,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0,bool 开启只折一次=false)
  {
   if(减仓比例>0&&减仓比例<=1&&启动点数>0&&(盈利多少点数折仓>0||盈利点数大于几倍止损>0))
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            magic=交易.魔术幻数(magic);
            if(PositionGetSymbol(i)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&StringFind(PositionGetString(POSITION_COMMENT),comment)!=-1)
              {
               if(开启只折一次&&交易.历史订单ID含订单号检测(PositionGetTicket(i)))
                  continue;
               double 盈利点数=(PositionGetDouble(POSITION_PRICE_CURRENT)-PositionGetDouble(POSITION_PRICE_OPEN))/交易.点值(symbol);
               double sl_point=MathAbs(PositionGetDouble(POSITION_PRICE_OPEN)-PositionGetDouble(POSITION_SL))/交易.点值(symbol);
               double 大于几倍值=盈利点数大于几倍止损*sl_point;
               if(交易.空值检测(PositionGetDouble(POSITION_SL))&&盈利多少点数折仓==0)
                  大于几倍值=盈利点数大于几倍止损*启动点数;
               if(盈利多少点数折仓)
                  大于几倍值=0;
               if(盈利多少点数折仓==0&&盈利点数大于几倍止损==0)
                  break;
               if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY&&盈利点数>启动点数&&盈利点数>大于几倍值+盈利多少点数折仓)
                 {
                  MqlTradeRequest request= {};
                  MqlTradeResult  result= {};
                  request.action=TRADE_ACTION_DEAL;
                  request.magic=PositionGetInteger(POSITION_MAGIC);
                  request.position=PositionGetInteger(POSITION_TICKET);
                  request.symbol=PositionGetString(POSITION_SYMBOL);
                  request.type_filling=交易.返回交易量指令(request.symbol);
                  if(折仓手数==0)
                     折仓手数=PositionGetDouble(POSITION_VOLUME);
                  request.volume=交易.手数自适应(request.symbol,折仓手数*减仓比例);
                  if(request.volume>PositionGetDouble(POSITION_VOLUME))
                     request.volume=PositionGetDouble(POSITION_VOLUME);
                  request.price=SymbolInfoDouble(request.symbol,SYMBOL_BID);
                  request.deviation=交易.deviation(交易.slippage,request.symbol);
                  request.type=ORDER_TYPE_SELL;
                  request.comment=prefix+折仓注释;
                  if(折仓注释=="")
                     request.comment=PositionGetString(POSITION_COMMENT);
                  bool X=OrderSend(request,result);
                  if(X==false)
                    {
                     Print("订单发送失败代码："+IntegerToString(GetLastError()));
                     Print("交易返回代码："+IntegerToString(result.retcode));
                    }
                 }
               if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL&&-盈利点数>启动点数&&-盈利点数>大于几倍值+盈利多少点数折仓)
                 {
                  MqlTradeRequest request= {};
                  MqlTradeResult  result= {};
                  request.action=TRADE_ACTION_DEAL;
                  request.magic=PositionGetInteger(POSITION_MAGIC);
                  request.position=PositionGetInteger(POSITION_TICKET);
                  request.symbol=PositionGetString(POSITION_SYMBOL);
                  request.type_filling=交易.返回交易量指令(request.symbol);
                  if(折仓手数==0)
                     折仓手数=PositionGetDouble(POSITION_VOLUME);
                  request.volume=交易.手数自适应(request.symbol,折仓手数*减仓比例);
                  if(request.volume>PositionGetDouble(POSITION_VOLUME))
                     request.volume=PositionGetDouble(POSITION_VOLUME);
                  request.price=SymbolInfoDouble(request.symbol,SYMBOL_ASK);
                  request.deviation=交易.deviation(交易.slippage,request.symbol);
                  request.type=ORDER_TYPE_BUY;
                  request.comment=prefix+折仓注释;
                  if(折仓注释=="")
                     request.comment=PositionGetString(POSITION_COMMENT);
                  bool X=OrderSend(request,result);
                  if(X==false)
                    {
                     Print("订单发送失败代码："+IntegerToString(GetLastError()));
                     Print("交易返回代码："+IntegerToString(result.retcode));
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::方向带单(string symbol,long magic,string comment,ENUM_POSITION_TYPE 方向1,ENUM_POSITION_TYPE 方向2,double 盈利启动金额,double 带单后盈利金额=0)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol &&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+comment&&PositionGetInteger(POSITION_TYPE)==方向1)
           {
            a[i][0]=PositionGetDouble(POSITION_PROFIT);
            a[i][1]=(double)PositionGetTicket(i);
           }
        }
     }
   ArraySort(a);
//---
   double b[][2];
   t=PositionsTotal();
   ArrayResize(b,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol &&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+comment&&PositionGetInteger(POSITION_TYPE)==方向2)
           {
            b[i][0]=PositionGetDouble(POSITION_PROFIT);
            b[i][1]=(double)PositionGetTicket(i);
           }
        }
     }
   ArraySort(b);
//--
   int s=ArraySize(a);
   double 金额累计=0;
   for(int i=s-1; i>=0; i--)
     {
      if(a[i][0]>0)
         金额累计+=a[i][0];
     }
   if(金额累计>盈利启动金额)
      for(int i=s-1; i>=0; i--)
         if(a[i][0]>0)
           {
            交易.订单号平单((int)a[i][1]);
            Print((string)i+"带单订单号"+(string)(ulong)a[i][1]);
           }
//---
   int ss=ArraySize(b);
   for(int i=ss-1; i>=0; i--)
     {
      金额累计+=b[i][0];
      if(金额累计>带单后盈利金额)
        {
         交易.订单号平单((int)b[i][1]);
         Print((string)i+"被带单订单号"+(string)(ulong)b[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::方向带单(string symbol,long magic,ENUM_POSITION_TYPE 方向1,ENUM_POSITION_TYPE 方向2,double 盈利启动金额,double 带单后盈利金额=0)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol &&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TYPE)==方向1)
           {
            a[i][0]=PositionGetDouble(POSITION_PROFIT);
            a[i][1]=(double)PositionGetTicket(i);
           }
        }
     }
   ArraySort(a);
//---
   double b[][2];
   t=PositionsTotal();
   ArrayResize(b,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetString(POSITION_SYMBOL)==symbol &&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TYPE)==方向2)
           {
            b[i][0]=PositionGetDouble(POSITION_PROFIT);
            b[i][1]=(double)PositionGetTicket(i);
           }
        }
     }
   ArraySort(b);
//--
   int s=ArraySize(a);
   double 金额累计=0;
   for(int i=s-1; i>=0; i--)
     {
      if(a[i][0]>0)
         金额累计+=a[i][0];
     }
   if(金额累计>盈利启动金额)
      for(int i=s-1; i>=0; i--)
         if(a[i][0]>0)
           {
            交易.订单号平单((int)a[i][1]);
            Print((string)i+"带单订单号"+(string)(ulong)a[i][1]);
           }
//---
   int ss=ArraySize(b);
   for(int i=ss-1; i>=0; i--)
     {
      金额累计+=b[i][0];
      if(金额累计>带单后盈利金额)
        {
         交易.订单号平单((int)b[i][1]);
         Print((string)i+"被带单订单号"+(string)(ulong)b[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::方向带单(string symbol,ENUM_POSITION_TYPE 方向1,ENUM_POSITION_TYPE 方向2,double 盈利启动金额,double 带单后盈利金额=0)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_TYPE)==方向1)
        {
         a[i][0]=PositionGetDouble(POSITION_PROFIT);
         a[i][1]=(double)PositionGetTicket(i);
        }
     }
   ArraySort(a);
//---
   double b[][2];
   t=PositionsTotal();
   ArrayResize(b,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_TYPE)==方向2)
        {
         b[i][0]=PositionGetDouble(POSITION_PROFIT);
         b[i][1]=(double)PositionGetTicket(i);
        }
     }
   ArraySort(b);
//--
   int s=ArraySize(a);
   double 金额累计=0;
   for(int i=s-1; i>=0; i--)
     {
      if(a[i][0]>0)
         金额累计+=a[i][0];
     }
   if(金额累计>盈利启动金额)
      for(int i=s-1; i>=0; i--)
         if(a[i][0]>0)
           {
            交易.订单号平单((int)a[i][1]);
            Print((string)i+"带单订单号"+(string)(ulong)a[i][1]);
           }
//---
   int ss=ArraySize(b);
   for(int i=ss-1; i>=0; i--)
     {
      金额累计+=b[i][0];
      if(金额累计>带单后盈利金额)
        {
         交易.订单号平单((int)b[i][1]);
         Print((string)i+"被带单订单号"+(string)(ulong)b[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::方向带单(long magic,ENUM_POSITION_TYPE 方向1,ENUM_POSITION_TYPE 方向2,double 盈利启动金额,double 带单后盈利金额=0)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TYPE)==方向1)
           {
            a[i][0]=PositionGetDouble(POSITION_PROFIT);
            a[i][1]=(double)PositionGetTicket(i);
           }
        }
     }
   ArraySort(a);
//---
   double b[][2];
   t=PositionsTotal();
   ArrayResize(b,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         magic=交易.魔术幻数(magic);
         if(PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TYPE)==方向2)
           {
            b[i][0]=PositionGetDouble(POSITION_PROFIT);
            b[i][1]=(double)PositionGetTicket(i);
           }
        }
     }
   ArraySort(b);
//--
   int s=ArraySize(a);
   double 金额累计=0;
   for(int i=s-1; i>=0; i--)
     {
      if(a[i][0]>0)
         金额累计+=a[i][0];
     }
   if(金额累计>盈利启动金额)
      for(int i=s-1; i>=0; i--)
         if(a[i][0]>0)
           {
            交易.订单号平单((int)a[i][1]);
            Print((string)i+"带单订单号"+(string)(ulong)a[i][1]);
           }
//---
   int ss=ArraySize(b);
   for(int i=ss-1; i>=0; i--)
     {
      金额累计+=b[i][0];
      if(金额累计>带单后盈利金额)
        {
         交易.订单号平单((int)b[i][1]);
         Print((string)i+"被带单订单号"+(string)(ulong)b[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::在时间区间(string start_tim,string 结束时间,datetime time,int 壹服贰电=1)
  {
   string tmd= TimeToString(time,TIME_SECONDS);
   bool 区间检测=StoCL(tmd,壹服贰电)>StoCL(start_tim,壹服贰电)&&StoCL(tmd,壹服贰电)<StoCL(结束时间,壹服贰电);
   return 区间检测;
  }
//+------------------------------------------------------------------+
void 新交易类::QQ微信消息推送(string 信息1="",string 信息2="",string 信息3="",string 信息4="",string 信息5="",string 信息6="",string 信息7="",string 信息8="",string 信息9="")
  {
   信息9=TimeToString(TimeLocal(),TIME_DATE|TIME_MINUTES|TIME_SECONDS);
   string 文件名=string((ulong)TimeLocal());
   int filehandle=FileOpen(文件名+".txt",FILE_WRITE|FILE_CSV|FILE_ANSI);
   FileWrite(filehandle,信息1,信息2,信息3,信息4,信息5,信息6,信息7,信息8,信息9);
   FileClose(filehandle);
   交易.信息写入文件夹("QQ微信消息推送副本",1,",",文件名+"副本  "+信息1,信息2,信息3,信息4,信息5,信息6,信息7,信息8,信息9);
   CreateDirectoryW("C:\\SendFile",0);
   string   paxth=TerminalInfoString(TERMINAL_DATA_PATH)+"\\MQL5\\Files\\";
   int t=CopyFileW(paxth+文件名+".txt","C:\\SendFile\\"+文件名+".txt",0);
   FileDelete(文件名+".txt");
  }
//+------------------------------------------------------------------+
bool             新交易类::保本(string symbol,long magic,string comment,double 启动点数,double 保本点数,int 零壹多贰空=0)
  {
   bool 检测=false;
   if(启动点数>0&&保本点数>0&&保本点数<启动点数)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            magic=交易.魔术幻数(magic);
            if(PositionGetSymbol(i)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==交易.prefix+comment)
              {
               double 多盈利点值=(交易.卖价(symbol)-PositionGetDouble(POSITION_PRICE_OPEN))/交易.点值(symbol);
               double 空盈利点值=(PositionGetDouble(POSITION_PRICE_OPEN)-交易.买价(symbol))/交易.点值(symbol);
               if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY&&(零壹多贰空==0||零壹多贰空==1))
                 {
                  if(多盈利点值>启动点数&&PositionGetDouble(POSITION_SL)<PositionGetDouble(POSITION_PRICE_OPEN)+保本点数*交易.点值(symbol))
                    {
                     MqlTradeRequest request= {};
                     MqlTradeResult  result= {};
                     request.action=TRADE_ACTION_SLTP;
                     request.magic=PositionGetInteger(POSITION_MAGIC);
                     request.position=PositionGetInteger(POSITION_TICKET);
                     request.volume=PositionGetDouble(POSITION_VOLUME);
                     request.symbol=PositionGetString(POSITION_SYMBOL);
                     request.price=PositionGetDouble(POSITION_PRICE_OPEN);
                     request.sl=request.price+保本点数*交易.点值(symbol);
                     request.tp=PositionGetDouble(POSITION_TP);
                     request.deviation=交易.deviation(交易.slippage,request.symbol);
                     bool X=OrderSend(request,result);
                     if(X==false)
                       {
                        Print("订单发送失败代码："+IntegerToString(GetLastError()));
                        Print("交易返回代码："+IntegerToString(result.retcode));
                       }
                     检测=true;
                    }
                 }
               if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL&&(零壹多贰空==0||零壹多贰空==2))
                 {
                  if(空盈利点值>启动点数&&(PositionGetDouble(POSITION_SL)>PositionGetDouble(POSITION_PRICE_OPEN)-保本点数*交易.点值(symbol)||PositionGetDouble(POSITION_SL)==0))
                    {
                     MqlTradeRequest request= {};
                     MqlTradeResult  result= {};
                     request.action=TRADE_ACTION_SLTP;
                     request.magic=PositionGetInteger(POSITION_MAGIC);
                     request.position=PositionGetInteger(POSITION_TICKET);
                     request.volume=PositionGetDouble(POSITION_VOLUME);
                     request.symbol=PositionGetString(POSITION_SYMBOL);
                     request.price=PositionGetDouble(POSITION_PRICE_OPEN);
                     request.sl=request.price-保本点数*交易.点值(symbol);
                     request.tp=PositionGetDouble(POSITION_TP);
                     request.deviation=交易.deviation(交易.slippage,request.symbol);
                     bool X=OrderSend(request,result);
                     if(X==false)
                       {
                        Print("订单发送失败代码："+IntegerToString(GetLastError()));
                        Print("交易返回代码："+IntegerToString(result.retcode));
                       }
                     检测=true;
                    }
                 }
              }
           }
        }
     }
   return 检测;
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool             新交易类::保本(string symbol,long magic,double 启动点数,double 保本点数,int 零壹多贰空=0)
  {
   bool 检测=false;
   if(启动点数>0&&保本点数>0&&保本点数<启动点数)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            magic=交易.魔术幻数(magic);
            if(PositionGetSymbol(i)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic)
              {
               double 多盈利点值=(交易.卖价(symbol)-PositionGetDouble(POSITION_PRICE_OPEN))/交易.点值(symbol);
               double 空盈利点值=(PositionGetDouble(POSITION_PRICE_OPEN)-交易.买价(symbol))/交易.点值(symbol);
               if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY&&(零壹多贰空==0||零壹多贰空==1))
                 {
                  if(多盈利点值>启动点数&&PositionGetDouble(POSITION_SL)<PositionGetDouble(POSITION_PRICE_OPEN)+保本点数*交易.点值(symbol))
                    {
                     MqlTradeRequest request= {};
                     MqlTradeResult  result= {};
                     request.action=TRADE_ACTION_SLTP;
                     request.magic=PositionGetInteger(POSITION_MAGIC);
                     request.position=PositionGetInteger(POSITION_TICKET);
                     request.volume=PositionGetDouble(POSITION_VOLUME);
                     request.symbol=PositionGetString(POSITION_SYMBOL);
                     request.price=PositionGetDouble(POSITION_PRICE_OPEN);
                     request.sl=request.price+保本点数*交易.点值(symbol);
                     request.tp=PositionGetDouble(POSITION_TP);
                     request.deviation=交易.deviation(交易.slippage,request.symbol);
                     bool X=OrderSend(request,result);
                     if(X==false)
                       {
                        Print("订单发送失败代码："+IntegerToString(GetLastError()));
                        Print("交易返回代码："+IntegerToString(result.retcode));
                       }
                     检测=true;
                    }
                 }
               if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL&&(零壹多贰空==0||零壹多贰空==2))
                 {
                  if(空盈利点值>启动点数&&(PositionGetDouble(POSITION_SL)>PositionGetDouble(POSITION_PRICE_OPEN)-保本点数*交易.点值(symbol)||PositionGetDouble(POSITION_SL)==0))
                    {
                     MqlTradeRequest request= {};
                     MqlTradeResult  result= {};
                     request.action=TRADE_ACTION_SLTP;
                     request.magic=PositionGetInteger(POSITION_MAGIC);
                     request.position=PositionGetInteger(POSITION_TICKET);
                     request.volume=PositionGetDouble(POSITION_VOLUME);
                     request.symbol=PositionGetString(POSITION_SYMBOL);
                     request.price=PositionGetDouble(POSITION_PRICE_OPEN);
                     request.sl=request.price-保本点数*交易.点值(symbol);
                     request.tp=PositionGetDouble(POSITION_TP);
                     request.deviation=交易.deviation(交易.slippage,request.symbol);
                     bool X=OrderSend(request,result);
                     if(X==false)
                       {
                        Print("订单发送失败代码："+IntegerToString(GetLastError()));
                        Print("交易返回代码："+IntegerToString(result.retcode));
                       }
                     检测=true;
                    }
                 }
              }
           }
        }
     }
   return 检测;
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::亏损持仓均价平单(string symbol,long magic,ENUM_POSITION_TYPE 持仓方向,double 设置平单点数)
  {
   bool 检测=false;
   if(设置平单点数>0)
     {
      double 浮亏均价=交易.持仓均价(symbol,magic,持仓方向);
      if(浮亏均价>0&&持仓方向==POSITION_TYPE_BUY&&交易.卖价(symbol)<浮亏均价-设置平单点数*交易.点值(symbol))
        {
         交易.平多(symbol,magic);
         检测=true;
        }
      if(浮亏均价>0&&持仓方向==POSITION_TYPE_SELL&&交易.买价(symbol)>浮亏均价+设置平单点数*交易.点值(symbol))
        {
         交易.平空(symbol,magic);
         检测=true;
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong 新交易类::CtoL(ulong 传入服务器时间,int 壹服贰电=0)
  {
   ulong 输出时间=传入服务器时间;
   if(壹服贰电==1)
      输出时间=传入服务器时间;
   if(壹服贰电==2)
      输出时间=传入服务器时间+(TimeLocal()-TimeCurrent());
   return 输出时间;
  }
//+------------------------------------------------------------------+
ulong 新交易类::LtoC(ulong 传入电脑时间,int 壹服贰电=0)
  {
   ulong 输出时间=传入电脑时间;
   if(壹服贰电==1)
      输出时间=传入电脑时间;
   if(壹服贰电==2)
      输出时间=传入电脑时间+(TimeCurrent()-TimeLocal());
   return 输出时间;
  }
//+------------------------------------------------------------------+
ulong 新交易类::StoCL(string 传入转换时间,int 壹服贰电=0)
  {
   ulong 输出时间=StringToTime(传入转换时间);
   if(壹服贰电==1)
      if(TimeLocal()>StringToTime("00:00:00")&&TimeLocal()<StringToTime("00:00:00")+(TimeLocal()-TimeCurrent()))
         输出时间=(ulong)StringToTime(传入转换时间)-24*60*60;
   if(壹服贰电==2)
      输出时间=StringToTime(传入转换时间);
   return 输出时间;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 新交易类::偏移小时()
  {
   MqlDateTime 电脑小时;
   MqlDateTime 服务小时;
   TimeToStruct(TimeLocal(),电脑小时);
   TimeToStruct(TimeCurrent(),服务小时);
   int 差=0;
   if(TimeLocal()>TimeCurrent())
      差=MathAbs(24+电脑小时.hour-服务小时.hour);
   else
      差=MathAbs(24+服务小时.hour-电脑小时.hour);
   if(差>=24)
      差=差-24;
   return 差;
  }
//+------------------------------------------------------------------+
double 新交易类::NormalizeVolume(string symbol,double lot)
  {
   lot=MathAbs(lot);
   if(symbol=="")
      symbol=Symbol();
   if(lot<0.1)
      return(MathCeil(lot/SymbolInfoDouble(symbol,SYMBOL_VOLUME_MIN))*SymbolInfoDouble(symbol,SYMBOL_VOLUME_MIN));
   if(lot>=0.1)
     {
      int j=0;
      if(SymbolInfoDouble(symbol,SYMBOL_VOLUME_STEP)<10)
         j=0;
      if(SymbolInfoDouble(symbol,SYMBOL_VOLUME_STEP)<1)
         j=1;
      if(SymbolInfoDouble(symbol,SYMBOL_VOLUME_STEP)<0.1)
         j=2;
      return(NormalizeDouble(lot,j));
     }
   return(0);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::净值浮盈检测(double 账户盈亏金额比例,double 初账户净值)
  {
   bool 净检=false;
   if(账户盈亏金额比例>0)
     {
      if(AccountInfoDouble(ACCOUNT_EQUITY)>初账户净值+初账户净值*账户盈亏金额比例)
         净检=true;
     }
   return 净检;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::净值浮亏检测(double 账户盈亏金额比例,double 初账户净值)
  {
   bool 净检=false;
   if(账户盈亏金额比例<0)
     {
      if(AccountInfoDouble(ACCOUNT_EQUITY)<初账户净值+初账户净值*账户盈亏金额比例)
         净检=true;
     }
   return 净检;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::净值回调检测(double 账户盈利金额,double 保护利润,double 初账户净值)
  {
   bool 净值保护=false;
   if(账户盈利金额>0&&保护利润>0&&保护利润<账户盈利金额)
     {
      static bool 净检=false;
      if(AccountInfoDouble(ACCOUNT_EQUITY)>初账户净值+账户盈利金额)
         净检=true;
      净值保护=净检&&AccountInfoDouble(ACCOUNT_EQUITY)<初账户净值+保护利润;
     }
   return 净值保护;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::净值回调比例检测(double 账户盈利金额比例,double 回调利润比例,double 初账户净值)
  {
   bool 净值保护=false;
   if(账户盈利金额比例>0&&回调利润比例>0)
     {
      static bool 净检=false;
      static double 最大账户净值=初账户净值;
      //---
      if(AccountInfoDouble(ACCOUNT_EQUITY)>最大账户净值)
         最大账户净值=AccountInfoDouble(ACCOUNT_EQUITY);
      if(最大账户净值>初账户净值+初账户净值*账户盈利金额比例)
         净检=true;
      净值保护=净检&&AccountInfoDouble(ACCOUNT_EQUITY)<最大账户净值-最大账户净值*回调利润比例;
     }
   return 净值保护;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::净值浮盈金额检测(double 账户盈亏金额,double 初账户净值)
  {
   bool 净检=false;
   if(账户盈亏金额>0)
     {
      if(AccountInfoDouble(ACCOUNT_EQUITY)>初账户净值+账户盈亏金额)
         净检=true;
     }
   return 净检;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::净值浮亏金额检测(double 账户盈亏金额,double 初账户净值)
  {
   bool 净检=false;
   if(账户盈亏金额<0)
     {
      if(AccountInfoDouble(ACCOUNT_EQUITY)<初账户净值+账户盈亏金额)
         净检=true;
     }
   return 净检;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
template<typename x>
x 新交易类::bufsort(x &arr[],int 升降)
  {
   int n = ArraySize(arr);
   if(n&&升降==1)
      for(int i=0; i<n; i++)
         for(int j=0; j< n - i - 1; j++)
            if(arr[j] > arr[j + 1])
              {
               int temp = arr[j];
               arr[j] = arr[j + 1];
               arr[j + 1] = temp;
              }
   if(n&&升降==2)
      for(int i=0; i<n; i++)
         for(int j=0; j< n - i - 1; j++)
            if(arr[j] < arr[j + 1])
              {
               int temp = arr[j];
               arr[j] = arr[j + 1];
               arr[j + 1] = temp;
              }

   if(n)
      return arr[0];
   else
      return NULL;
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
void 新交易类::模拟授权()
  {
   if(交易.返回账户类型()!="模拟")
     {
      Alert("跟单账号非法： 此版本仅可用于模拟账号！！！");
      ExpertRemove();
     }
  }
//+------------------------------------------------------------------+
bool 新交易类::上下限检测(double 价格,double 传入上限,double 传入下限)
  {
   bool 检测 = false;
   bool t1 = 价格 && 价格 < 传入上限 && 价格 > 传入下限;
   bool t2 = 价格 && 价格 < 传入上限 && 传入下限 == 0.0;
   bool t3 = 价格 && 传入上限 == 0.0 && 价格 > 传入下限;
   bool t4 = 价格 && 传入上限 == 0.0 && 传入下限 == 0.0;
   bool tz = t1 + t2 + t3 + t4;
   if(tz)
      检测 = true;
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int   新交易类::手数返回持仓单数(string symbol,long magic,string comment,ENUM_POSITION_TYPE order_type,double lot,long 进单时间=0)
  {
   int value=0;
   if(lot>0)
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            magic=交易.魔术幻数(magic);
            if(PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+comment
               &&PositionGetInteger(POSITION_TYPE)==order_type&&PositionGetDouble(POSITION_VOLUME)==lot&&PositionGetInteger(POSITION_TIME)>进单时间)
               value++;
           }
        }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int   新交易类::手数返回持仓单数(string symbol,long magic,ENUM_POSITION_TYPE order_type,double lot,long 进单时间=0)
  {
   int value=0;
   if(lot>0)
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            magic=交易.魔术幻数(magic);
            if(PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic
               &&PositionGetInteger(POSITION_TYPE)==order_type&&PositionGetDouble(POSITION_VOLUME)==lot&&PositionGetInteger(POSITION_TIME)>进单时间)
               value++;
           }
        }
   return value;
  }
//+------------------------------------------------------------------+
int   新交易类::手数返回持仓单数(string symbol,long magic,string comment,double lot,long 进单时间=0)
  {
   int value=0;
   if(lot>0)
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            magic=交易.魔术幻数(magic);
            if(PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+comment
               &&PositionGetDouble(POSITION_VOLUME)==lot&&PositionGetInteger(POSITION_TIME)>进单时间)
               value++;
           }
        }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int   新交易类::手数返回持仓单数(string symbol,long magic,double lot,long 进单时间=0)
  {
   int value=0;
   if(lot>0)
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            magic=交易.魔术幻数(magic);
            if(PositionGetString(POSITION_SYMBOL)==symbol&&PositionGetInteger(POSITION_MAGIC)==magic
               &&PositionGetDouble(POSITION_VOLUME)==lot&&PositionGetInteger(POSITION_TIME)>进单时间)
               value++;
           }
        }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int   新交易类::手数返回持仓单数(long magic,double lot,long 进单时间=0)
  {
   int value=0;
   if(lot>0)
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            magic=交易.魔术幻数(magic);
            if(PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetDouble(POSITION_VOLUME)==lot&&PositionGetInteger(POSITION_TIME)>进单时间)
               value++;
           }
        }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::净值结余百分比(double percentage,int 壹上贰下=2)
  {
   bool check=false;
   if(壹上贰下==1)
      check = percentage&&AccountInfoDouble(ACCOUNT_EQUITY)<AccountInfoDouble(ACCOUNT_BALANCE)*(1+percentage);
   if(壹上贰下==2)
      check = percentage&&AccountInfoDouble(ACCOUNT_EQUITY)<AccountInfoDouble(ACCOUNT_BALANCE)*(1-percentage);
   if(percentage ==0)
      check=false;
   return check;
  }
//+------------------------------------------------------------------+
bool 新交易类::str_check(string in_str1,string in_str2,int index=3)
  {
   if(in_str1!=""&&in_str2!="")
      if(StringSubstr(in_str1,0,index)==StringSubstr(in_str2,0,index))
         return false;
   return true;
  }
//-------
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
bool 新交易类::价格百分比(double in_price,double real_price,double percent,int omax_tmin=1)
  {
   if(percent&&in_price && real_price)
     {
      if(omax_tmin == 1 &&real_price > in_price*(1+percent))
         return true;
      if(omax_tmin == 2 &&real_price < in_price*(1-percent))
         return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::价格点价(double in_price,double real_price,double price,int omax_tmin=1)
  {
   if(price&&in_price && real_price)
     {
      if(omax_tmin == 1 &&real_price > in_price + price)
         return true;
      if(omax_tmin == 2 &&real_price < in_price - price)
         return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::最高价区间回调(int buy_orders,double open_price,double bid,double callback_percent)//vr9
  {
   bool check = false;
   static  double vr9 =0;
   if(callback_percent>0)
     {
      if(buy_orders == 0)
         vr9 = bid;
      if(buy_orders && bid > vr9)
         vr9 = bid;
      if(open_price>0 && vr9 > open_price && bid < vr9-(vr9-open_price)*callback_percent)
         check = true;
     }
   return check;
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 新交易类::最低价区间反弹(int sell_orders,double open_price,double ask,double callback_percent)//vr0
  {
   bool check = false;
   static  double vr0 =0;
   if(callback_percent>0)
     {
      if(sell_orders == 0)
         vr0=ask;
      if(sell_orders && ask < vr0)
         vr0=ask;
      if(open_price>0 && open_price > vr0 && ask > vr0 + (open_price-vr0)*callback_percent)
         check = true;
     }
   return check;
  }
//+------------------------------------------------------------------+
bool 新交易类::最高价回调9(int buy_orders,double bid,double callback_percent)//vr9
  {
   bool check = false;
   static  double vr9 =0;
   if(callback_percent>0)
     {
      if(buy_orders == 0)
         vr9 = bid;
      if(buy_orders && bid > vr9)
         vr9 = bid;
      if(bid < vr9*(1-callback_percent))
         check = true;
     }
   return check;
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 新交易类::最低价反弹0(int sell_orders,double ask,double callback_percent)//vr0
  {
   bool check = false;
   static  double vr0 =0;
   if(callback_percent>0)
     {
      if(sell_orders == 0)
         vr0=ask;
      if(sell_orders && ask < vr0)
         vr0=ask;
      if(ask > vr0*(1+callback_percent))
         check = true;
     }
   return check;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::最高价回调点价(int buy_orders,double bid,double price)//vr9
  {
   bool check = false;
   static  double vr9 =0;
   if(price>0)
     {
      if(buy_orders == 0)
         vr9 = bid;
      if(buy_orders && bid > vr9)
         vr9 = bid;
      if(bid < vr9-price)
         check = true;
     }
   return check;
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 新交易类::最低价反弹点价(int sell_orders,double ask,double price)//vr0
  {
   bool check = false;
   static  double vr0 =0;
   if(price>0)
     {
      if(sell_orders == 0)
         vr0=ask;
      if(sell_orders && ask < vr0)
         vr0=ask;
      if(ask > vr0+price)
         check = true;
     }
   return check;
  }
//+------------------------------------------------------------------+
