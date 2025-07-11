//+------------------------------------------------------------------+
//|                                                      ProjectName |
//|                                      Copyright 2020, CompanyName |
//|                                       http://www.companyname.net |
//+------------------------------------------------------------------+
#property copyright "@Π.EA 大树My05613828"
#property link      "https://www.eahub.cn/space-uid-8564.html"
//#property version   "1.0"
//#property  icon     "//include//M5//logo.ico"
#define  _新交易类
#ifdef _新交易类

/*#import "kernel32.dll"
int CopyFileW(string a0,string a1,int a2);
bool CreateDirectoryW(string a0,int a1);
#import*/
#include <M5/交易类.mqh>
class 新交易类 :public 交易类
  {
public:
   long              time_seconds0,time_seconds1,time_seconds2,time_seconds3,time_seconds4,time_seconds5,time_seconds6,time_seconds7,time_seconds8,time_seconds9;
   datetime          time_k0,time_k1,time_k2,time_k3,time_k4,time_k5,time_k6,time_k7,time_k8,time_k9;
   bool              close_order_chk0,close_order_chk1,close_order_chk2;
   long              time_0,time_1,time_2;
                     新交易类();
                    ~新交易类();
   //+------------------------------------------------------------------+
   ulong             订单号返回持仓属性值(string _symbol,ulong ticket,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long _start_tim,long _end_tim);
   double            订单号返回持仓属性值(string _symbol,ulong ticket,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long _start_tim,long _end_tim);
   string            订单号返回持仓属性值(string _symbol,ulong ticket,ENUM_POSITION_PROPERTY_STRING string属性值,long _start_tim,long _end_tim);
   //+------------------------------------------------------------------+
   ulong             魔术号返回持仓属性值(string _symbol,long _magic_number,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long _start_tim,long _end_tim);
   double            魔术号返回持仓属性值(string _symbol,long _magic_number,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long _start_tim,long _end_tim);
   string            魔术号返回持仓属性值(string _symbol,long _magic_number,ENUM_POSITION_PROPERTY_STRING string属性值,long _start_tim,long _end_tim);
   //+------------------------------------------------------------------+
   ulong             注释返回持仓属性值(string _symbol,string _comment,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long _start_tim,long _end_tim);
   double            注释返回持仓属性值(string _symbol,string _comment,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long _start_tim,long _end_tim);
   string            注释返回持仓属性值(string _symbol,string _comment,ENUM_POSITION_PROPERTY_STRING string属性值,long _start_tim,long _end_tim);

   //+------------------------------------------------------------------+
   ulong             订单号返回历史属性值(string _symbol,ulong ticket,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out);
   double            订单号返回历史属性值(string _symbol,ulong ticket,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out);
   string            订单号返回历史属性值(string _symbol,ulong ticket,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out);
   //+------------------------------------------------------------------+
   ulong             魔术号返回历史属性值(string _symbol,long _magic_number,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out);
   double            魔术号返回历史属性值(string _symbol,long _magic_number,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out);
   string            魔术号返回历史属性值(string _symbol,long _magic_number,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out);
   //+------------------------------------------------------------------+
   ulong             注释返回历史属性值(string _symbol,string _comment,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out);
   double            注释返回历史属性值(string _symbol,string _comment,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out);
   string            注释返回历史属性值(string _symbol,string _comment,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out);
   //+------------------------------------------------------------------+
   ulong             订单号返回持仓属性值(string _symbol,ulong ticket,ENUM_POSITION_TYPE _order_type,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long _start_tim,long _end_tim);
   double            订单号返回持仓属性值(string _symbol,ulong ticket,ENUM_POSITION_TYPE _order_type,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long _start_tim,long _end_tim);
   string            订单号返回持仓属性值(string _symbol,ulong ticket,ENUM_POSITION_TYPE _order_type,ENUM_POSITION_PROPERTY_STRING string属性值,long _start_tim,long _end_tim);
   //+------------------------------------------------------------------+
   ulong             魔术号返回持仓属性值(string _symbol,long _magic_number,ENUM_POSITION_TYPE _order_type,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long _start_tim,long _end_tim);
   double            魔术号返回持仓属性值(string _symbol,long _magic_number,ENUM_POSITION_TYPE _order_type,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long _start_tim,long _end_tim);
   string            魔术号返回持仓属性值(string _symbol,long _magic_number,ENUM_POSITION_TYPE _order_type,ENUM_POSITION_PROPERTY_STRING string属性值,long _start_tim,long _end_tim);
   //+------------------------------------------------------------------+
   ulong             注释返回持仓属性值(string _symbol,string _comment,ENUM_POSITION_TYPE _order_type,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long _start_tim,long _end_tim);
   double            注释返回持仓属性值(string _symbol,string _comment,ENUM_POSITION_TYPE _order_type,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long _start_tim,long _end_tim);
   string            注释返回持仓属性值(string _symbol,string _comment,ENUM_POSITION_TYPE _order_type,ENUM_POSITION_PROPERTY_STRING string属性值,long _start_tim,long _end_tim);

   //+------------------------------------------------------------------+
   ulong             订单号返回历史属性值(string _symbol,ulong ticket,ENUM_DEAL_TYPE _order_type,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out);
   double            订单号返回历史属性值(string _symbol,ulong ticket,ENUM_DEAL_TYPE _order_type,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out);
   string            订单号返回历史属性值(string _symbol,ulong ticket,ENUM_DEAL_TYPE _order_type,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out);
   //+------------------------------------------------------------------+
   ulong             魔术号返回历史属性值(string _symbol,long _magic_number,ENUM_DEAL_TYPE _order_type,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out);
   double            魔术号返回历史属性值(string _symbol,long _magic_number,ENUM_DEAL_TYPE _order_type,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out);
   string            魔术号返回历史属性值(string _symbol,long _magic_number,ENUM_DEAL_TYPE _order_type,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out);
   //+------------------------------------------------------------------+
   ulong             注释返回历史属性值(string _symbol,string _comment,ENUM_DEAL_TYPE _order_type,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out);
   double            注释返回历史属性值(string _symbol,string _comment,ENUM_DEAL_TYPE _order_type,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out);
   string            注释返回历史属性值(string _symbol,string _comment,ENUM_DEAL_TYPE _order_type,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out);
   //+------------------------------------------------------------------+
   //---上是含币种    下是 不含币种
   //+------------------------------------------------------------------+
   ulong             订单号返回持仓属性值(ulong ticket,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long _start_tim,long _end_tim);
   double            订单号返回持仓属性值(ulong ticket,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long _start_tim,long _end_tim);
   string            订单号返回持仓属性值(ulong ticket,ENUM_POSITION_PROPERTY_STRING string属性值,long _start_tim,long _end_tim);
   //+------------------------------------------------------------------+
   ulong             魔术号返回持仓属性值(long _magic_number,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long _start_tim,long _end_tim);
   double            魔术号返回持仓属性值(long _magic_number,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long _start_tim,long _end_tim);
   string            魔术号返回持仓属性值(long _magic_number,ENUM_POSITION_PROPERTY_STRING string属性值,long _start_tim,long _end_tim);
   //+------------------------------------------------------------------+
   ulong             注释返回持仓属性值(string _comment,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long _start_tim,long _end_tim);
   double            注释返回持仓属性值(string _comment,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long _start_tim,long _end_tim);
   string            注释返回持仓属性值(string _comment,ENUM_POSITION_PROPERTY_STRING string属性值,long _start_tim,long _end_tim);

   //+------------------------------------------------------------------+
   ulong             订单号返回历史属性值(ulong ticket,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out);
   double            订单号返回历史属性值(ulong ticket,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out);
   string            订单号返回历史属性值(ulong ticket,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out);
   //+------------------------------------------------------------------+
   ulong             魔术号返回历史属性值(long _magic_number,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out);
   double            魔术号返回历史属性值(long _magic_number,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out);
   string            魔术号返回历史属性值(long _magic_number,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out);
   //+------------------------------------------------------------------+
   ulong             注释返回历史属性值(string _comment,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out);
   double            注释返回历史属性值(string _comment,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out);
   string            注释返回历史属性值(string _comment,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out);


   void              盈利带亏损带方向(string _symbol,long _magic_number,string _comment,ENUM_POSITION_TYPE type,double profit_lit);
   void              盈利带亏损带方向(string _symbol,long _magic_number,ENUM_POSITION_TYPE type,double profit_lit);
   void              盈利带亏损带方向(string _symbol,ENUM_POSITION_TYPE type,double profit_lit);
   void              盈利带亏损带方向(long _magic_number,ENUM_POSITION_TYPE type,double profit_lit);
   //---
   void              盈利带亏损(string _symbol,long _magic_number,string _comment,double profit_lit);
   void              盈利带亏损(string _symbol,long _magic_number,double profit_lit);
   void              盈利带亏损(string _symbol,double profit_lit);
   void              盈利带亏损(long _magic_number,double profit_lit);
   //------------------------------------------------------
   void              新平单(string _symbol,long _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              新平多(string _symbol,long _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              新平空(string _symbol,long _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);

   void              新平单(string _symbol,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              新平多(string _symbol,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              新平空(string _symbol,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              新平单(long _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              新平多(long _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              新平空(long _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);

   void              价格修改止损(string _symbol,string _comment,double _sl_price,ENUM_LONG_SHORT_MODE long_or_short=0);
   void              移动价格修改止损(string _symbol,string _comment,double _sl_price,ENUM_LONG_SHORT_MODE long_or_short=0);

   int               持仓单数统计(string _symbol,string _comment,ENUM_POSITION_TYPE 持仓方向);
   int               持仓单数统计(string _symbol,string _comment);

   void              币种手动平单(string _symbol,string _comment);
   void              币种手动平多(string _symbol,string _comment);
   void              币种手动平空(string _symbol,string _comment);

   void              币种手动平单(string _symbol,long _magic_number);
   void              币种手动平多(string _symbol,long _magic_number);
   void              币种手动平空(string _symbol,long _magic_number);

   void              手动平单(string _comment);
   void              手动平多(string _comment);
   void              手动平空(string _comment);

   void              手动平单(long _magic_number);
   void              手动平多(long _magic_number);
   void              手动平空(long _magic_number);
   int               Highest(const double &array[],const int depth,const int start);
   int               Lowest(const double &array[],const int depth,const int start);
   int               价格限价挂多(string _symbol,double _lot,double 挂单价格,double _sl_price,double _tp_price,long _magic_number,string _comment);
   int               价格限价挂空(string _symbol,double _lot,double 挂单价格,double _sl_price,double _tp_price,long _magic_number,string _comment);
   int               价格突破挂多(string _symbol,double _lot,double 挂单价格,double _sl_price,double _tp_price,long _magic_number,string _comment);
   int               价格突破挂空(string _symbol,double _lot,double 挂单价格,double _sl_price,double _tp_price,long _magic_number,string _comment);

   void              修改止损止盈(double _sl_point,double _tp_point,ENUM_LONG_SHORT_MODE long_or_short=0);
   void              修改止损(double _sl_point,ENUM_LONG_SHORT_MODE long_or_short=0);
   void              修改止盈(double _tp_point,ENUM_LONG_SHORT_MODE long_or_short=0);

   bool              在价格区间(double 参考价,double 价格上限,double 价格下限);

   int               周期持仓单数统计(string _symbol,long _magic_number,string _comment,ENUM_POSITION_TYPE 持仓方向,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1);
   int               周期持仓单数统计(string _symbol,long _magic_number,ENUM_POSITION_TYPE 持仓方向,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1);
   int               周期持仓单数统计(long _magic_number,ENUM_POSITION_TYPE 持仓方向,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1);
   int               周期持仓单数统计(string _symbol,long _magic_number,string _comment,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1);
   int               周期持仓单数统计(string _symbol,long _magic_number,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1);
   int               周期持仓单数统计(long _magic_number,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1);

   bool              预付款维持率检测(double 可用预付款百分比限制);
   bool              结余盈利回撤百分比检测(string _symbol,double 盈利百分比=0,double 回撤百分比=0);
   bool              周期时间更新检测(string _symbol,ENUM_TIMEFRAMES _time_frame,bool &检测);
   ulong             提前K秒数(ulong int_tim,ENUM_TIMEFRAMES _time_frame,long 提前秒数,int 几根=1);
   bool              提前K秒数检测(ulong int_tim,ENUM_TIMEFRAMES _time_frame,long 提前秒数,int 几根=1);
   void              模板(string 模板名);

   double            昨日结余(datetime _start_tim);
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

   bool              单位微秒do1(double _millisecond);
   bool              单位微秒do2(double _millisecond);
   bool              单位微秒do3(double _millisecond);
   bool              单位微秒do4(double _millisecond);
   bool              单位微秒1(double _millisecond);
   bool              单位微秒2(double _millisecond);
   bool              单位微秒3(double _millisecond);
   bool              单位微秒4(double _millisecond);
   void              方向带单(string _symbol,long _magic_number,string _comment,ENUM_POSITION_TYPE 方向1,ENUM_POSITION_TYPE 方向2,double 盈利启动金额,double 带单后盈利金额=0);
   void              方向带单(string _symbol,long _magic_number,ENUM_POSITION_TYPE 方向1,ENUM_POSITION_TYPE 方向2,double 盈利启动金额,double 带单后盈利金额=0);
   void              方向带单(string _symbol,ENUM_POSITION_TYPE 方向1,ENUM_POSITION_TYPE 方向2,double 盈利启动金额,double 带单后盈利金额=0);
   void              方向带单(long _magic_number,ENUM_POSITION_TYPE 方向1,ENUM_POSITION_TYPE 方向2,double 盈利启动金额,double 带单后盈利金额=0);
   bool              在时间区间(datetime _time,string _start_tim,string _end_tim,ENUM_TIME_MODE timecurrent_or_timelocal);
   // void              QQ微信消息推送(string 信息1="",string 信息2="",string 信息3="",string 信息4="",string 信息5="",string 信息6="",string 信息7="",string 信息8="",string 信息9="");
   bool              保本(string _symbol,long _magic_number,string _comment,double 启动点数,double 保本点数,ENUM_LONG_SHORT_MODE long_or_short=0);
   bool              保本(string _symbol,long _magic_number,double 启动点数,double 保本点数,ENUM_LONG_SHORT_MODE long_or_short=0);

   bool              亏损持仓均价平单(string _symbol,long _magic_number,ENUM_POSITION_TYPE 持仓方向,double 设置平单点数);
   ulong             CtoL(ulong 传入服务器时间,ENUM_TIME_MODE timecurrent_or_time_local=TIME_CURRENT);
   ulong             LtoC(ulong 传入电脑时间,ENUM_TIME_MODE timecurrent_or_time_local=TIME_CURRENT);
   ulong             StoCL(string 传入转换时间,ENUM_TIME_MODE timecurrent_or_time_local=TIME_CURRENT);
   int               偏移小时();

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
   int               手数返回持仓单数(string _symbol,long _magic_number,string _comment,ENUM_POSITION_TYPE _order_type,double _lot,long 进单时间=0);
   int               手数返回持仓单数(string _symbol,long _magic_number,ENUM_POSITION_TYPE _order_type,double _lot,long 进单时间=0);
   int               手数返回持仓单数(string _symbol,long _magic_number,string _comment,double _lot,long 进单时间=0);
   int               手数返回持仓单数(string _symbol,long _magic_number,double _lot,long 进单时间=0);
   int               手数返回持仓单数(long _magic_number,double _lot,long 进单时间=0);
   bool              净值结余百分比(double percentage,ENUM_UPDOWN_MODE UP_OR_DN=DN);
   bool              str_check(string in_str1,string in_str2,int index=3);
   bool              价格百分比(double in_price,double real_price,double _percent,int omax_tmin=1);
   bool              价格点价(double in_price,double real_price,double price,int omax_tmin=1);
   bool              最高价区间回调(int buy_orders,double open_price,double bid,double callback_percent);//vr9
   bool              最低价区间反弹(int sell_orders,double open_price,double ask,double callback_percent);//vr0
   bool              最高价回调9(int buy_orders,double bid,double callback_percent);//vr9
   bool              最低价反弹0(int sell_orders,double ask,double callback_percent);//vr0
   bool              最高价回调点价(int buy_orders,double bid,double price);
   bool              最低价反弹点价(int short_orders,double bid,double price);
   //+------------------------------------------------------------------+
   //+------------------------------------------------------------------+
   bool              arr_jx_chk(int cnt,double& min_z[],double& max_z[]);
   bool              arr_sx_chk(int cnt,double& min_z[],double& max_z[]);
   bool              atr_chk(string _symbol,ENUM_TIMEFRAMES _time_frame=PERIOD_CURRENT,int cnt=5,double point=180);
   void              二K一单做多(string _symbol,double _lot,double _sl_point,double _tp_point,long _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index);
   void              二K一单做空(string _symbol,double _lot,double _sl_point,double _tp_point,long _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index);
   void              二K一单做多2(string _symbol,double _lot,double _sl_point,double _tp_point,long _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index);
   void              二K一单做空2(string _symbol,double _lot,double _sl_point,double _tp_point,long _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index);
   void              价格2K一单做多(string _symbol,double _lot,double _sl_price,double _tp_price,long _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index);
   void              价格2K一单做空(string _symbol,double _lot,double _sl_price,double _tp_price,long _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index);
   void              价格2K一单做多2(string _symbol,double _lot,double _sl_price,double _tp_price,long _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index);
   void              价格2K一单做空2(string _symbol,double _lot,double _sl_price,double _tp_price,long _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index);
   bool              k线触碰检测(string _symbol,ENUM_TIMEFRAMES _time_frame,string 回调或反抽,int index,double value1);
   //+------------------------------------------------------------------+
   bool              tim_second0_chk(long _second);
   bool              tim_second1_chk(long _second);
   bool              tim_second2_chk(long _second);
   bool              tim_second3_chk(long _second);
   bool              tim_second4_chk(long _second);
   bool              tim_second5_chk(long _second);
   bool              tim_second6_chk(long _second);
   bool              tim_second7_chk(long _second);
   bool              tim_second8_chk(long _second);
   bool              tim_second9_chk(long _second);

   bool              tim_k0_chk(datetime _time);
   bool              tim_k1_chk(datetime _time);
   bool              tim_k2_chk(datetime _time);
   bool              tim_k3_chk(datetime _time);
   bool              tim_k4_chk(datetime _time);
   bool              tim_k5_chk(datetime _time);
   bool              tim_k6_chk(datetime _time);
   bool              tim_k7_chk(datetime _time);
   bool              tim_k8_chk(datetime _time);
   bool              tim_k9_chk(datetime _time);

   template<typename Tx,typename T>
   bool              线内检测(Tx price,T up_prices,T down_prices);
   template<typename Tx,typename T>
   bool              线外检测(Tx price,T up_prices,T down_prices);

   bool              开单后平仓时间检测0(int orders,long& tim);
   bool              开单后平仓时间检测1(int orders,long& tim);
   bool              开单后平仓时间检测2(int orders,long& tim);

   bool              步距持仓盈利回撤金额检测(int orders,double position_profit,double start_profit,double mondy);
   bool              持仓盈利回撤百分比检测(int orders,double position_profit,double start_profit,double _percent);
   bool              每日净值回撤百分比检测(double equit_percents);
   bool              净值追踪(double equit_lit);
   bool              净值追踪(double equit,double equit_lit);
   bool              K线穿越某值(string _symbol,ENUM_TIMEFRAMES _time_frame,ENUM_UPDOWN_MODE up_or_down,ENUM_OHLC_MODE ohlc,int index,double 某值1,double 某值0,int k_shift = 2);//---1向上2 向下穿越
   void              订单号修改挂单止损止盈(long ticket,double _sl_point,double _tp_point);
   void              修改挂单止损止盈(string _symbol_s,long _magic_number,string _comment,ENUM_ORDER_TYPE _order_type,double _sl_point,double _tp_point);
   void              修改挂单止损止盈(string _symbol_s,long magic_numbe,ENUM_ORDER_TYPE _order_type,double _sl_point,double _tp_point);
   void              修改挂单止损止盈(string _symbol_s,long _magic_number,string _comment,double _sl_point,double _tp_point);
   void              修改挂单止损止盈(string _symbol_s,long magic_numbe,double _sl_point,double _tp_point);
   void              条件锁多(string _symbol,long _magic_number,double lots_percent=1.0,bool chk=true);
   void              条件锁空(string _symbol,long _magic_number,double lots_percent=1.0,bool chk=true);
public:
   bool              下单邮件提醒();
private:
  };
//+------------------------------------------------------------------+
新交易类::新交易类()
  {

  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
新交易类::~新交易类()
  {
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::订单号返回持仓属性值(string _symbol,ulong ticket,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long _start_tim,long _end_tim)
  {
   ulong value=0;
   if(integer属性值==POSITION_TYPE)
      value=-1;
   if(ticket>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_TICKET)==ticket&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim)
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
double   新交易类::订单号返回持仓属性值(string _symbol,ulong ticket,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long _start_tim,long _end_tim)
  {
   double value=0;
   if(ticket>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_TICKET)==ticket&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim)
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
string   新交易类::订单号返回持仓属性值(string _symbol,ulong ticket,ENUM_POSITION_PROPERTY_STRING string属性值,long _start_tim,long _end_tim)
  {
   string value="-1";
   if(ticket>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_TICKET)==ticket&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim)
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
ulong  新交易类::魔术号返回持仓属性值(string _symbol,long _magic_number,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long _start_tim,long _end_tim)
  {
   ulong value=0;
   if(integer属性值==POSITION_TYPE)
      value=-1;
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim)
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
double   新交易类::魔术号返回持仓属性值(string _symbol,long _magic_number,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long _start_tim,long _end_tim)
  {
   double value=0;
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim)
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
string   新交易类::魔术号返回持仓属性值(string _symbol,long _magic_number,ENUM_POSITION_PROPERTY_STRING string属性值,long _start_tim,long _end_tim)
  {
   string value="-1";
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim)
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
ulong  新交易类::注释返回持仓属性值(string _symbol,string _comment,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long _start_tim,long _end_tim)
  {
   ulong value=0;
   if(integer属性值==POSITION_TYPE)
      value=-1;
   if(_comment!="")
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetString(POSITION_COMMENT)==prefix+_comment&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim)
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
double   新交易类::注释返回持仓属性值(string _symbol,string _comment,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long _start_tim,long _end_tim)
  {
   double value=0;
   if(_comment!="")
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetString(POSITION_COMMENT)==prefix+_comment&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim)
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
string   新交易类::注释返回持仓属性值(string _symbol,string _comment,ENUM_POSITION_PROPERTY_STRING string属性值,long _start_tim,long _end_tim)
  {
   string value="-1";
   if(_comment!="")
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetString(POSITION_COMMENT)==prefix+_comment&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim)
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
ulong  新交易类::订单号返回历史属性值(string _symbol,ulong ticket,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out)
  {
   ulong value=0;
   if(integer属性值==DEAL_TYPE)
      value=-1;
   if(ticket>0)
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID)==ticket)
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
double 新交易类::订单号返回历史属性值(string _symbol,ulong ticket,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out)
  {
   double value=0;
   if(ticket>0)
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID)==ticket)
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
string 新交易类::订单号返回历史属性值(string _symbol,ulong ticket,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out)
  {
   string value="-1";
   if(ticket>0)
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID)==ticket)
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
ulong  新交易类::魔术号返回历史属性值(string _symbol,long _magic_number,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out)
  {
   ulong value=0;
   if(integer属性值==DEAL_TYPE)
      value=-1;
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0)
        {
         long magic=魔术幻数(_magic_number);
         if(HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&HistoryDealGetInteger(deal_ticket,DEAL_MAGIC)==magic)
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
double 新交易类::魔术号返回历史属性值(string _symbol,long _magic_number,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out)
  {
   double value=0;
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0)
        {
         long magic=魔术幻数(_magic_number);
         if(HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&HistoryDealGetInteger(deal_ticket,DEAL_MAGIC)==magic)
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
string 新交易类::魔术号返回历史属性值(string _symbol,long _magic_number,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out)
  {
   string value="-1";
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0)
        {
         long magic=魔术幻数(_magic_number);
         if(HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&HistoryDealGetInteger(deal_ticket,DEAL_MAGIC)==magic)
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
ulong  新交易类::注释返回历史属性值(string _symbol,string _comment,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out)
  {
   ulong value=0;
   if(integer属性值==DEAL_TYPE)
      value=-1;
   if(_comment!="")
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&HistoryDealGetString(deal_ticket,DEAL_COMMENT)==prefix+_comment)
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
double 新交易类::注释返回历史属性值(string _symbol,string _comment,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out)
  {
   double value=0;
   if(_comment!="")
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&HistoryDealGetString(deal_ticket,DEAL_COMMENT)==prefix+_comment)
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
string 新交易类::注释返回历史属性值(string _symbol,string _comment,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out)
  {
   string value="-1";
   if(_comment!="")
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&HistoryDealGetString(deal_ticket,DEAL_COMMENT)==prefix+_comment)
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
ulong  新交易类::订单号返回持仓属性值(ulong ticket,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long _start_tim,long _end_tim)
  {
   ulong value=0;
   if(integer属性值==POSITION_TYPE)
      value=-1;
   if(ticket>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetInteger(POSITION_TICKET)==ticket&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim)
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
double   新交易类::订单号返回持仓属性值(ulong ticket,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long _start_tim,long _end_tim)
  {
   double value=0;
   if(ticket>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetInteger(POSITION_TICKET)==ticket&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim)
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
string   新交易类::订单号返回持仓属性值(ulong ticket,ENUM_POSITION_PROPERTY_STRING string属性值,long _start_tim,long _end_tim)
  {
   string value="-1";
   if(ticket>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetInteger(POSITION_TICKET)==ticket&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim)
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
ulong  新交易类::魔术号返回持仓属性值(long _magic_number,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long _start_tim,long _end_tim)
  {
   ulong value=0;
   if(integer属性值==POSITION_TYPE)
      value=-1;
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim)
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
double   新交易类::魔术号返回持仓属性值(long _magic_number,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long _start_tim,long _end_tim)
  {
   double value=0;
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim)
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
string   新交易类::魔术号返回持仓属性值(long _magic_number,ENUM_POSITION_PROPERTY_STRING string属性值,long _start_tim,long _end_tim)
  {
   string value="-1";
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim)
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
ulong  新交易类::注释返回持仓属性值(string _comment,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long _start_tim,long _end_tim)
  {
   ulong value=0;
   if(integer属性值==POSITION_TYPE)
      value=-1;
   if(_comment!="")
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_COMMENT)==prefix+_comment&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim)
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
double   新交易类::注释返回持仓属性值(string _comment,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long _start_tim,long _end_tim)
  {
   double value=0;
   if(_comment!="")
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_COMMENT)==prefix+_comment&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim)
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
string   新交易类::注释返回持仓属性值(string _comment,ENUM_POSITION_PROPERTY_STRING string属性值,long _start_tim,long _end_tim)
  {
   string value="-1";
   if(_comment!="")
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_COMMENT)==prefix+_comment&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim)
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
   ulong value=0;
   if(integer属性值==DEAL_TYPE)
      value=-1;
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
ulong  新交易类::魔术号返回历史属性值(long _magic_number,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out)
  {
   ulong value=0;
   if(integer属性值==DEAL_TYPE)
      value=-1;
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0)
        {
         long magic=魔术幻数(_magic_number);
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
double 新交易类::魔术号返回历史属性值(long _magic_number,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out)
  {
   double value=0;
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0)
        {
         long magic=魔术幻数(_magic_number);
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
string 新交易类::魔术号返回历史属性值(long _magic_number,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out)
  {
   string value="-1";
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0)
        {
         long magic=魔术幻数(_magic_number);
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
ulong  新交易类::注释返回历史属性值(string _comment,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out)
  {
   ulong value=0;
   if(integer属性值==DEAL_TYPE)
      value=-1;
   if(_comment!="")
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_COMMENT)==prefix+_comment)
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
double 新交易类::注释返回历史属性值(string _comment,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out)
  {
   double value=0;
   if(_comment!="")
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_COMMENT)==prefix+_comment)
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
string 新交易类::注释返回历史属性值(string _comment,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out)
  {
   string value="-1";
   if(_comment!="")
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_COMMENT)==prefix+_comment)
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
void 新交易类::盈利带亏损带方向(string _symbol,long _magic_number,string _comment,ENUM_POSITION_TYPE type,double profit_lit)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol &&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+_comment&&PositionGetInteger(POSITION_TYPE)==type)
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
         订单号平单((ulong)a[i][1]);
         Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损带方向(string _symbol,long _magic_number,ENUM_POSITION_TYPE type,double profit_lit)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol &&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TYPE)==type)
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
         订单号平单((ulong)a[i][1]);
         Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损带方向(string _symbol,ENUM_POSITION_TYPE type,double profit_lit)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         if(PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_TYPE)==type)
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
         订单号平单((ulong)a[i][1]);
         Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损带方向(long _magic_number,ENUM_POSITION_TYPE type,double profit_lit)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
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
         订单号平单((ulong)a[i][1]);
         Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损(string _symbol,long _magic_number,string _comment,double profit_lit)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol &&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+_comment)
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
         订单号平单((ulong)a[i][1]);
         Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损(string _symbol,long _magic_number,double profit_lit)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol &&PositionGetInteger(POSITION_MAGIC)==magic)
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
         订单号平单((ulong)a[i][1]);
         Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损(string _symbol,double profit_lit)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         if(PositionGetString(POSITION_SYMBOL)==_symbol)
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
         订单号平单((ulong)a[i][1]);
         Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损(long _magic_number,double profit_lit)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
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
         订单号平单((ulong)a[i][1]);
         Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//------------------------------------------------------
void              新交易类::新平单(string _symbol,long _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+_comment)
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
               request.type_filling=返回交易量指令(request.symbol);
               request.price=SymbolInfoDouble(request.symbol,SYMBOL_BID);
               request.deviation=deviation(slippage,request.symbol);
               request.type=ORDER_TYPE_SELL;
               request.comment=PositionGetString(POSITION_COMMENT);
               string  反手币种=PositionGetString(POSITION_SYMBOL);
               double  反手手数=PositionGetDouble(POSITION_VOLUME);
               double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
               double 反手止损价格=PositionGetDouble(POSITION_SL);
               double 反手止盈价格=PositionGetDouble(POSITION_TP);
               double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
               long 反手Magic=PositionGetInteger(POSITION_MAGIC);
               string 反手注释=PositionGetString(POSITION_COMMENT);
               long ticket=PositionGetInteger(POSITION_TICKET);
               if(!OrderSend(request,result))
                 {
                  Print("订单发送失败代码："+IntegerToString(GetLastError()));
                  Print("交易返回代码："+IntegerToString(result.retcode));
                 }
               if(是否立即反手)
                  做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
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
               request.type_filling=返回交易量指令(request.symbol);
               request.price=SymbolInfoDouble(request.symbol,SYMBOL_ASK);
               request.deviation=deviation(slippage,request.symbol);
               request.type=ORDER_TYPE_BUY;
               request.comment=PositionGetString(POSITION_COMMENT);
               string  反手币种=PositionGetString(POSITION_SYMBOL);
               double  反手手数=PositionGetDouble(POSITION_VOLUME);
               double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
               double 反手止损价格=PositionGetDouble(POSITION_SL);
               double 反手止盈价格=PositionGetDouble(POSITION_TP);
               double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
               long 反手Magic=PositionGetInteger(POSITION_MAGIC);
               string 反手注释=PositionGetString(POSITION_COMMENT);
               long ticket=PositionGetInteger(POSITION_TICKET);
               if(!OrderSend(request,result))
                 {
                  Print("订单发送失败代码："+IntegerToString(GetLastError()));
                  Print("交易返回代码："+IntegerToString(result.retcode));
                 }
               if(是否立即反手)
                  做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//------------------------------------------------------
void              新交易类::新平多(string _symbol,long _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+_comment)
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
               request.type_filling=返回交易量指令(request.symbol);
               request.price=SymbolInfoDouble(request.symbol,SYMBOL_BID);
               request.deviation=deviation(slippage,request.symbol);
               request.type=ORDER_TYPE_SELL;
               request.comment=PositionGetString(POSITION_COMMENT);
               string  反手币种=PositionGetString(POSITION_SYMBOL);
               double  反手手数=PositionGetDouble(POSITION_VOLUME);
               double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
               double 反手止损价格=PositionGetDouble(POSITION_SL);
               double 反手止盈价格=PositionGetDouble(POSITION_TP);
               double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
               long 反手Magic=PositionGetInteger(POSITION_MAGIC);
               string 反手注释=PositionGetString(POSITION_COMMENT);
               long ticket=PositionGetInteger(POSITION_TICKET);
               if(!OrderSend(request,result))
                 {
                  Print("订单发送失败代码："+IntegerToString(GetLastError()));
                  Print("交易返回代码："+IntegerToString(result.retcode));
                 }
               if(是否立即反手)
                  做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//------------------------------------------------------
void              新交易类::新平空(string _symbol,long _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+_comment)
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
               request.type_filling=返回交易量指令(request.symbol);
               request.price=SymbolInfoDouble(request.symbol,SYMBOL_ASK);
               request.deviation=deviation(slippage,request.symbol);
               request.type=ORDER_TYPE_BUY;
               request.comment=PositionGetString(POSITION_COMMENT);
               string  反手币种=PositionGetString(POSITION_SYMBOL);
               double  反手手数=PositionGetDouble(POSITION_VOLUME);
               double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
               double 反手止损价格=PositionGetDouble(POSITION_SL);
               double 反手止盈价格=PositionGetDouble(POSITION_TP);
               double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
               long 反手Magic=PositionGetInteger(POSITION_MAGIC);
               string 反手注释=PositionGetString(POSITION_COMMENT);
               long ticket=PositionGetInteger(POSITION_TICKET);
               if(!OrderSend(request,result))
                 {
                  Print("订单发送失败代码："+IntegerToString(GetLastError()));
                  Print("交易返回代码："+IntegerToString(result.retcode));
                 }
               if(是否立即反手)
                  做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+

//------------------------------------------------------
void              新交易类::新平单(string _symbol,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetString(POSITION_COMMENT)==prefix+_comment)
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
            request.type_filling=返回交易量指令(request.symbol);
            request.price=SymbolInfoDouble(request.symbol,SYMBOL_BID);
            request.deviation=deviation(slippage,request.symbol);
            request.type=ORDER_TYPE_SELL;
            request.comment=PositionGetString(POSITION_COMMENT);
            string  反手币种=PositionGetString(POSITION_SYMBOL);
            double  反手手数=PositionGetDouble(POSITION_VOLUME);
            double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
            double 反手止损价格=PositionGetDouble(POSITION_SL);
            double 反手止盈价格=PositionGetDouble(POSITION_TP);
            double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
            double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
            long 反手Magic=PositionGetInteger(POSITION_MAGIC);
            string 反手注释=PositionGetString(POSITION_COMMENT);
            long ticket=PositionGetInteger(POSITION_TICKET);
            if(!OrderSend(request,result))
              {
               Print("订单发送失败代码："+IntegerToString(GetLastError()));
               Print("交易返回代码："+IntegerToString(result.retcode));
              }
            if(是否立即反手)
               做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
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
            request.type_filling=返回交易量指令(request.symbol);
            request.price=SymbolInfoDouble(request.symbol,SYMBOL_ASK);
            request.deviation=deviation(slippage,request.symbol);
            request.type=ORDER_TYPE_BUY;
            request.comment=PositionGetString(POSITION_COMMENT);
            string  反手币种=PositionGetString(POSITION_SYMBOL);
            double  反手手数=PositionGetDouble(POSITION_VOLUME);
            double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
            double 反手止损价格=PositionGetDouble(POSITION_SL);
            double 反手止盈价格=PositionGetDouble(POSITION_TP);
            double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
            double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
            long 反手Magic=PositionGetInteger(POSITION_MAGIC);
            string 反手注释=PositionGetString(POSITION_COMMENT);
            long ticket=PositionGetInteger(POSITION_TICKET);
            if(!OrderSend(request,result))
              {
               Print("订单发送失败代码："+IntegerToString(GetLastError()));
               Print("交易返回代码："+IntegerToString(result.retcode));
              }
            if(是否立即反手)
               做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
           }
        }
     }
  };
//+------------------------------------------------------------------+
//------------------------------------------------------
void              新交易类::新平多(string _symbol,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetString(POSITION_COMMENT)==prefix+_comment)
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
            request.type_filling=返回交易量指令(request.symbol);
            request.price=SymbolInfoDouble(request.symbol,SYMBOL_BID);
            request.deviation=deviation(slippage,request.symbol);
            request.type=ORDER_TYPE_SELL;
            request.comment=PositionGetString(POSITION_COMMENT);
            string  反手币种=PositionGetString(POSITION_SYMBOL);
            double  反手手数=PositionGetDouble(POSITION_VOLUME);
            double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
            double 反手止损价格=PositionGetDouble(POSITION_SL);
            double 反手止盈价格=PositionGetDouble(POSITION_TP);
            double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
            double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
            long 反手Magic=PositionGetInteger(POSITION_MAGIC);
            string 反手注释=PositionGetString(POSITION_COMMENT);
            long ticket=PositionGetInteger(POSITION_TICKET);
            if(!OrderSend(request,result))
              {
               Print("订单发送失败代码："+IntegerToString(GetLastError()));
               Print("交易返回代码："+IntegerToString(result.retcode));
              }
            if(是否立即反手)
               做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
           }
        }
     }
  };
//+------------------------------------------------------------------+
//------------------------------------------------------
void              新交易类::新平空(string _symbol,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetString(POSITION_COMMENT)==prefix+_comment)
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
            request.type_filling=返回交易量指令(request.symbol);
            request.price=SymbolInfoDouble(request.symbol,SYMBOL_ASK);
            request.deviation=deviation(slippage,request.symbol);
            request.type=ORDER_TYPE_BUY;
            request.comment=PositionGetString(POSITION_COMMENT);
            string  反手币种=PositionGetString(POSITION_SYMBOL);
            double  反手手数=PositionGetDouble(POSITION_VOLUME);
            double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
            double 反手止损价格=PositionGetDouble(POSITION_SL);
            double 反手止盈价格=PositionGetDouble(POSITION_TP);
            double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
            double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
            long 反手Magic=PositionGetInteger(POSITION_MAGIC);
            string 反手注释=PositionGetString(POSITION_COMMENT);
            long ticket=PositionGetInteger(POSITION_TICKET);
            if(!OrderSend(request,result))
              {
               Print("订单发送失败代码："+IntegerToString(GetLastError()));
               Print("交易返回代码："+IntegerToString(result.retcode));
              }
            if(是否立即反手)
               做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
           }
        }
     }
  };
//+------------------------------------------------------------------+
//------------------------------------------------------
void              新交易类::新平单(long _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+_comment)
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
               request.type_filling=返回交易量指令(request.symbol);
               request.price=SymbolInfoDouble(request.symbol,SYMBOL_BID);
               request.deviation=deviation(slippage,request.symbol);
               request.type=ORDER_TYPE_SELL;
               request.comment=PositionGetString(POSITION_COMMENT);
               string  反手币种=PositionGetString(POSITION_SYMBOL);
               double  反手手数=PositionGetDouble(POSITION_VOLUME);
               double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
               double 反手止损价格=PositionGetDouble(POSITION_SL);
               double 反手止盈价格=PositionGetDouble(POSITION_TP);
               double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
               long 反手Magic=PositionGetInteger(POSITION_MAGIC);
               string 反手注释=PositionGetString(POSITION_COMMENT);
               long ticket=PositionGetInteger(POSITION_TICKET);
               if(!OrderSend(request,result))
                 {
                  Print("订单发送失败代码："+IntegerToString(GetLastError()));
                  Print("交易返回代码："+IntegerToString(result.retcode));
                 }
               if(是否立即反手)
                  做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
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
               request.type_filling=返回交易量指令(request.symbol);
               request.price=SymbolInfoDouble(request.symbol,SYMBOL_ASK);
               request.deviation=deviation(slippage,request.symbol);
               request.type=ORDER_TYPE_BUY;
               request.comment=PositionGetString(POSITION_COMMENT);
               string  反手币种=PositionGetString(POSITION_SYMBOL);
               double  反手手数=PositionGetDouble(POSITION_VOLUME);
               double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
               double 反手止损价格=PositionGetDouble(POSITION_SL);
               double 反手止盈价格=PositionGetDouble(POSITION_TP);
               double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
               long 反手Magic=PositionGetInteger(POSITION_MAGIC);
               string 反手注释=PositionGetString(POSITION_COMMENT);
               long ticket=PositionGetInteger(POSITION_TICKET);
               if(!OrderSend(request,result))
                 {
                  Print("订单发送失败代码："+IntegerToString(GetLastError()));
                  Print("交易返回代码："+IntegerToString(result.retcode));
                 }
               if(是否立即反手)
                  做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//------------------------------------------------------
void              新交易类::新平多(long _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+_comment)
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
               request.type_filling=返回交易量指令(request.symbol);
               request.price=SymbolInfoDouble(request.symbol,SYMBOL_BID);
               request.deviation=deviation(slippage,request.symbol);
               request.type=ORDER_TYPE_SELL;
               request.comment=PositionGetString(POSITION_COMMENT);
               string  反手币种=PositionGetString(POSITION_SYMBOL);
               double  反手手数=PositionGetDouble(POSITION_VOLUME);
               double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
               double 反手止损价格=PositionGetDouble(POSITION_SL);
               double 反手止盈价格=PositionGetDouble(POSITION_TP);
               double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
               long 反手Magic=PositionGetInteger(POSITION_MAGIC);
               string 反手注释=PositionGetString(POSITION_COMMENT);
               long ticket=PositionGetInteger(POSITION_TICKET);
               if(!OrderSend(request,result))
                 {
                  Print("订单发送失败代码："+IntegerToString(GetLastError()));
                  Print("交易返回代码："+IntegerToString(result.retcode));
                 }
               if(是否立即反手)
                  做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//------------------------------------------------------
void              新交易类::新平空(long _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+_comment)
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
               request.type_filling=返回交易量指令(request.symbol);
               request.price=SymbolInfoDouble(request.symbol,SYMBOL_ASK);
               request.deviation=deviation(slippage,request.symbol);
               request.type=ORDER_TYPE_BUY;
               request.comment=PositionGetString(POSITION_COMMENT);
               string  反手币种=PositionGetString(POSITION_SYMBOL);
               double  反手手数=PositionGetDouble(POSITION_VOLUME);
               double 反手开盘价=PositionGetDouble(POSITION_PRICE_OPEN);
               double 反手止损价格=PositionGetDouble(POSITION_SL);
               double 反手止盈价格=PositionGetDouble(POSITION_TP);
               double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
               long 反手Magic=PositionGetInteger(POSITION_MAGIC);
               string 反手注释=PositionGetString(POSITION_COMMENT);
               long ticket=PositionGetInteger(POSITION_TICKET);
               if(!OrderSend(request,result))
                 {
                  Print("订单发送失败代码："+IntegerToString(GetLastError()));
                  Print("交易返回代码："+IntegerToString(result.retcode));
                 }
               if(是否立即反手)
                  做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              新交易类::价格修改止损(string _symbol,string _comment,double _sl_price,ENUM_LONG_SHORT_MODE long_or_short=0)
  {
   if(_sl_price>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetString(POSITION_COMMENT)==prefix+_comment)
           {
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY&&(long_or_short==LONG_SHORT_ALL||long_or_short==LONG))
              {
               if(PositionGetDouble(POSITION_SL)!=_sl_price)
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
                  if(_sl_price&&PositionGetDouble(POSITION_SL)!=_sl_price)
                     request.sl=_sl_price;
                  if(_sl_price==1)
                     request.sl=NULL;
                  if(_sl_price==2)
                     request.sl=PositionGetDouble(POSITION_SL);
                  request.tp=PositionGetDouble(POSITION_TP);
                  request.deviation=deviation(slippage,request.symbol);
                  bool X=OrderSend(request,result);
                  if(X==false)
                    {
                     Print("订单发送失败代码："+IntegerToString(GetLastError()));
                     Print("交易返回代码："+IntegerToString(result.retcode));
                    }
                 }
              }
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL&&(long_or_short==LONG_SHORT_ALL||long_or_short==SHORT))
              {
               if(PositionGetDouble(POSITION_SL)!=_sl_price)
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
                  if(_sl_price&&PositionGetDouble(POSITION_SL)!=_sl_price)
                     request.sl=_sl_price;
                  if(_sl_price==1)
                     request.sl=NULL;
                  if(_sl_price==2)
                     request.sl=PositionGetDouble(POSITION_SL);
                  request.tp=PositionGetDouble(POSITION_TP);
                  request.deviation=deviation(slippage,request.symbol);
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
void              新交易类::移动价格修改止损(string _symbol,string _comment,double _sl_price,ENUM_LONG_SHORT_MODE long_or_short=0)
  {
   if(_sl_price>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetString(POSITION_COMMENT)==prefix+_comment)
           {
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY&&(long_or_short==LONG_SHORT_ALL||long_or_short==LONG))
              {
               if(PositionGetDouble(POSITION_SL)!=_sl_price&&(PositionGetDouble(POSITION_SL)<_sl_price||空值检测(PositionGetDouble(POSITION_SL))))
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
                  if(_sl_price&&PositionGetDouble(POSITION_SL)!=_sl_price)
                     request.sl=_sl_price;
                  if(_sl_price==1)
                     request.sl=NULL;
                  if(_sl_price==2)
                     request.sl=PositionGetDouble(POSITION_SL);
                  request.tp=PositionGetDouble(POSITION_TP);
                  request.deviation=deviation(slippage,request.symbol);
                  bool X=OrderSend(request,result);
                  if(X==false)
                    {
                     Print("订单发送失败代码："+IntegerToString(GetLastError()));
                     Print("交易返回代码："+IntegerToString(result.retcode));
                    }
                 }
              }
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL&&(long_or_short==LONG_SHORT_ALL||long_or_short==SHORT))
              {
               if(PositionGetDouble(POSITION_SL)!=_sl_price&&(PositionGetDouble(POSITION_SL)>_sl_price||空值检测(PositionGetDouble(POSITION_SL))))
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
                  if(_sl_price&&PositionGetDouble(POSITION_SL)!=_sl_price)
                     request.sl=_sl_price;
                  if(_sl_price==1)
                     request.sl=NULL;
                  if(_sl_price==2)
                     request.sl=PositionGetDouble(POSITION_SL);
                  request.tp=PositionGetDouble(POSITION_TP);
                  request.deviation=deviation(slippage,request.symbol);
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
int 新交易类::持仓单数统计(string _symbol,string _comment,ENUM_POSITION_TYPE 持仓方向)
  {
   int 总单量=PositionsTotal();
   int 指定单量=0;
   for(int i=总单量-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetString(POSITION_COMMENT)==prefix+_comment)
        {
         if(PositionGetInteger(POSITION_TYPE)==持仓方向)
            指定单量=指定单量+1;
        }
     }
   return(指定单量);
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 新交易类::持仓单数统计(string _symbol,string _comment)
  {
   int 总单量=PositionsTotal();
   int 指定单量=0;
   for(int i=总单量-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetString(POSITION_COMMENT)==prefix+_comment)
         指定单量=指定单量+1;
     }
   return(指定单量);
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::币种手动平单(string _symbol,string _comment)
  {
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      static long  更新时间1=TimeCurrent();
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY)&&HistoryDealGetInteger(deal_ticket,DEAL_TIME)>更新时间1)
        {
         if(HistoryDealGetInteger(deal_ticket,DEAL_TIME)<TimeCurrent()-120)
            break;
         ulong deal_position_id=HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID);
         string 进单注释=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(进单注释!=prefix+_comment)
            continue;
         ulong magic=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(magic>0)
           {
            StringReplace(进单注释,prefix,"");
            新平单(_symbol,magic,进单注释);
            更新时间1=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::币种手动平多(string _symbol,string _comment)
  {
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      static long  更新时间2=TimeCurrent();
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY)&&HistoryDealGetInteger(deal_ticket,DEAL_TIME)>更新时间2
         &&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==DEAL_TYPE_SELL)
        {
         if(HistoryDealGetInteger(deal_ticket,DEAL_TIME)<TimeCurrent()-120)
            break;
         ulong deal_position_id=HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID);
         string 进单注释=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(进单注释!=prefix+_comment)
            continue;
         ulong magic=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(magic>0)
           {
            StringReplace(进单注释,prefix,"");
            新平多(_symbol,magic,进单注释);
            更新时间2=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::币种手动平空(string _symbol,string _comment)
  {
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      static long  更新时间3=TimeCurrent();
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY)&&HistoryDealGetInteger(deal_ticket,DEAL_TIME)>更新时间3
         &&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==DEAL_TYPE_BUY)
        {
         if(HistoryDealGetInteger(deal_ticket,DEAL_TIME)<TimeCurrent()-120)
            break;
         ulong deal_position_id=HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID);
         string 进单注释=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(进单注释!=prefix+_comment)
            continue;
         ulong magic=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(magic>0)
           {
            StringReplace(进单注释,prefix,"");
            新平空(_symbol,magic,进单注释);
            更新时间3=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::币种手动平单(string _symbol,long _magic_number)
  {
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      static long  更新时间4=TimeCurrent();
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY)&&HistoryDealGetInteger(deal_ticket,DEAL_TIME)>更新时间4)
        {
         if(HistoryDealGetInteger(deal_ticket,DEAL_TIME)<TimeCurrent()-120)
            break;
         ulong deal_position_id=HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID);
         ulong 进单幻数=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(进单幻数!=_magic_number)
            continue;
         string _comment=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(_comment!="")
           {
            StringReplace(_comment,prefix,"");
            新平单(_symbol,_magic_number,_comment);
            更新时间4=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::币种手动平多(string _symbol,long _magic_number)
  {
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      static long  更新时间5=TimeCurrent();
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY)&&HistoryDealGetInteger(deal_ticket,DEAL_TIME)>更新时间5
         &&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==DEAL_TYPE_SELL)
        {
         if(HistoryDealGetInteger(deal_ticket,DEAL_TIME)<TimeCurrent()-120)
            break;
         ulong deal_position_id=HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID);
         ulong 进单幻数=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(进单幻数!=_magic_number)
            continue;
         string _comment=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(_comment!="")
           {
            StringReplace(_comment,prefix,"");
            新平多(_symbol,_magic_number,_comment);
            更新时间5=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::币种手动平空(string _symbol,long _magic_number)
  {
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      static long  更新时间6=TimeCurrent();
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&(HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT||HistoryDealGetInteger(deal_ticket,DEAL_ENTRY)==DEAL_ENTRY_OUT_BY)&&HistoryDealGetInteger(deal_ticket,DEAL_TIME)>更新时间6
         &&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==DEAL_TYPE_BUY)
        {
         if(HistoryDealGetInteger(deal_ticket,DEAL_TIME)<TimeCurrent()-120)
            break;
         ulong deal_position_id=HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID);
         ulong 进单幻数=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(进单幻数!=_magic_number)
            continue;
         string _comment=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(_comment!="")
           {
            StringReplace(_comment,prefix,"");
            新平空(_symbol,_magic_number,_comment);
            更新时间6=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::手动平单(string _comment)
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
         if(进单注释!=prefix+_comment)
            continue;
         ulong magic=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(magic>0)
           {
            StringReplace(进单注释,prefix,"");
            新平单(magic,进单注释);
            更新时间7=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::手动平多(string _comment)
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
         if(进单注释!=prefix+_comment)
            continue;
         ulong magic=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(magic>0)
           {
            StringReplace(进单注释,prefix,"");
            新平多(magic,进单注释);
            更新时间8=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::手动平空(string _comment)
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
         if(进单注释!=prefix+_comment)
            continue;
         ulong magic=订单号返回历史属性值(deal_position_id,DEAL_MAGIC,1);
         if(magic>0)
           {
            StringReplace(进单注释,prefix,"");
            新平空(magic,进单注释);
            更新时间9=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::手动平单(long _magic_number)
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
         if(进单幻数!=_magic_number)
            continue;
         string _comment=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(_comment!="")
           {
            StringReplace(_comment,prefix,"");
            新平单(_magic_number,_comment);
            更新时间10=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::手动平多(long _magic_number)
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
         if(进单幻数!=_magic_number)
            continue;
         string _comment=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(_comment!="")
           {
            StringReplace(_comment,prefix,"");
            新平多(_magic_number,_comment);
            更新时间11=TimeCurrent();
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::手动平空(long _magic_number)
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
         if(进单幻数!=_magic_number)
            continue;
         string _comment=订单号返回历史属性值(deal_position_id,DEAL_COMMENT,1);
         if(_comment!="")
           {
            StringReplace(_comment,prefix,"");
            新平空(_magic_number,_comment);
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
int    新交易类::价格限价挂多(string _symbol,double _lot,double 挂单价格,double _sl_price,double _tp_price,long _magic_number,string _comment)
  {
   if(挂单价格>0)
     {
      long magic=魔术幻数(_magic_number);
      _sl_price=多最小止损价格(_symbol,_sl_price);
      _tp_price=多最小止盈价格(_symbol,_tp_price);
      MqlTradeRequest request= {};
      MqlTradeResult  result= {};
      request.action=TRADE_ACTION_PENDING;
      request.volume=_lot;
      request.price=挂单价格;
      if(_sl_price==0||_sl_price==1||_sl_price==2)
         request.sl=NULL;
      else
         request.sl=_sl_price;
      if(_tp_price==0||_tp_price==1||_tp_price==2)
         request.tp=NULL;
      else
         request.tp=_tp_price;
      request.deviation=deviation(slippage,request.symbol);
      request.type=ORDER_TYPE_BUY_LIMIT;      //挂单类型
      request.symbol=_symbol;
      request.type_filling=返回交易量指令(request.symbol);//订单执行类型
      request.type_time=ORDER_TIME_GTC;
      request.expiration=0;
      request.comment=prefix+_comment;
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
int  新交易类:: 价格限价挂空(string _symbol,double _lot,double 挂单价格,double _sl_price,double _tp_price,long _magic_number,string _comment)
  {
   if(挂单价格>0)
     {
      long magic=魔术幻数(_magic_number);
      _sl_price=空最小止损价格(_symbol,_sl_price);
      _tp_price=空最小止盈价格(_symbol,_tp_price);
      MqlTradeRequest request= {};
      MqlTradeResult  result= {};
      request.action=TRADE_ACTION_PENDING;
      request.volume=_lot;
      request.price=挂单价格;
      if(_sl_price==0||_sl_price==1||_sl_price==2)
         request.sl=NULL;
      else
         request.sl=_sl_price;
      if(_tp_price==0||_tp_price==1||_tp_price==2)
         request.tp=NULL;
      else
         request.tp=_tp_price;
      request.deviation=deviation(slippage,request.symbol);
      request.type=ORDER_TYPE_SELL_LIMIT;      //挂单类型
      request.symbol=_symbol;
      request.type_filling=返回交易量指令(request.symbol);//订单执行类型
      request.type_time=ORDER_TIME_GTC;
      request.expiration=0;
      request.comment=prefix+_comment;
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
int   新交易类::价格突破挂多(string _symbol,double _lot,double 挂单价格,double _sl_price,double _tp_price,long _magic_number,string _comment)
  {
   if(挂单价格>0)
     {
      long magic=魔术幻数(_magic_number);
      _sl_price=多最小止损价格(_symbol,_sl_price);
      _tp_price=多最小止盈价格(_symbol,_tp_price);
      MqlTradeRequest request= {};
      MqlTradeResult  result= {};
      request.action=TRADE_ACTION_PENDING;
      request.volume=_lot;
      request.price=挂单价格;
      if(_sl_price==0||_sl_price==1||_sl_price==2)
         request.sl=NULL;
      else
         request.sl=_sl_price;
      if(_tp_price==0||_tp_price==1||_tp_price==2)
         request.tp=NULL;
      else
         request.tp=_tp_price;
      request.deviation=deviation(slippage,request.symbol);
      request.type=ORDER_TYPE_BUY_STOP;      //挂单类型
      request.symbol=_symbol;
      request.type_filling=返回交易量指令(request.symbol);//订单执行类型
      request.type_time=ORDER_TIME_GTC;
      request.expiration=0;
      request.comment=prefix+_comment;
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
int  新交易类::价格突破挂空(string _symbol,double _lot,double 挂单价格,double _sl_price,double _tp_price,long _magic_number,string _comment)
  {
   if(挂单价格>0)
     {
      long magic=魔术幻数(_magic_number);
      _sl_price=空最小止损价格(_symbol,_sl_price);
      _tp_price=空最小止盈价格(_symbol,_tp_price);
      MqlTradeRequest request= {};
      MqlTradeResult  result= {};
      request.action=TRADE_ACTION_PENDING;
      request.volume=_lot;
      request.price=挂单价格;
      if(_sl_price==0||_sl_price==1||_sl_price==2)
         request.sl=NULL;
      else
         request.sl=_sl_price;
      if(_tp_price==0||_tp_price==1||_tp_price==2)
         request.tp=NULL;
      else
         request.tp=_tp_price;
      request.deviation=deviation(slippage,request.symbol);
      request.type=ORDER_TYPE_SELL_STOP;      //挂单类型
      request.symbol=_symbol;
      request.type_filling=返回交易量指令(request.symbol);//订单执行类型
      request.type_time=ORDER_TIME_GTC;
      request.expiration=0;
      request.comment=prefix+_comment;
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
void              新交易类::修改止损止盈(double _sl_point,double _tp_point,ENUM_LONG_SHORT_MODE long_or_short=0)
  {
   if(_sl_point>0||_tp_point>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            string _symbol =PositionGetString(POSITION_SYMBOL);
            _sl_point=停损(_symbol,_sl_point);
            _tp_point=停损(_symbol,_tp_point);
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY&&(long_or_short==LONG_SHORT_ALL||long_or_short==LONG))
              {
               if((PositionGetDouble(POSITION_SL)!=PositionGetDouble(POSITION_PRICE_OPEN)-_sl_point*点值(PositionGetString(POSITION_SYMBOL)))
                  ||(PositionGetDouble(POSITION_TP)!=PositionGetDouble(POSITION_PRICE_OPEN)+_tp_point*点值(PositionGetString(POSITION_SYMBOL))))
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
                  if(_sl_point&&PositionGetDouble(POSITION_SL)!=PositionGetDouble(POSITION_PRICE_OPEN)-_sl_point*点值(PositionGetString(POSITION_SYMBOL)))
                     request.sl=request.price-_sl_point*点值(request.symbol);
                  if(_sl_point==1)
                     request.sl=NULL;
                  if(_sl_point==2||_sl_point==0)
                     request.sl=PositionGetDouble(POSITION_SL);
                  if(_tp_point&&PositionGetDouble(POSITION_TP)!=PositionGetDouble(POSITION_PRICE_OPEN)+_tp_point*点值(PositionGetString(POSITION_SYMBOL)))
                     request.tp=request.price+_tp_point*点值(request.symbol);
                  if(_tp_point==1)
                     request.tp=NULL;
                  if(_tp_point==2||_tp_point==0)
                     request.tp=PositionGetDouble(POSITION_TP);
                  request.deviation=deviation(slippage,request.symbol);
                  bool X=OrderSend(request,result);
                  if(X==false)
                    {
                     Print("订单发送失败代码："+IntegerToString(GetLastError()));
                     Print("交易返回代码："+IntegerToString(result.retcode));
                    }
                 }
              }
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL&&(long_or_short==LONG_SHORT_ALL||long_or_short==SHORT))
              {
               if((PositionGetDouble(POSITION_SL)!=PositionGetDouble(POSITION_PRICE_OPEN)+_sl_point*点值(PositionGetString(POSITION_SYMBOL)))
                  ||(PositionGetDouble(POSITION_TP)!=PositionGetDouble(POSITION_PRICE_OPEN)-_tp_point*点值(PositionGetString(POSITION_SYMBOL))))
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
                  if(_sl_point&&PositionGetDouble(POSITION_SL)!=PositionGetDouble(POSITION_PRICE_OPEN)+_sl_point*点值(PositionGetString(POSITION_SYMBOL)))
                     request.sl=request.price+_sl_point*点值(request.symbol);
                  if(_sl_point==1)
                     request.sl=NULL;
                  if(_sl_point==2||_sl_point==0)
                     request.sl=PositionGetDouble(POSITION_SL);
                  if(_tp_point&&PositionGetDouble(POSITION_TP)!=PositionGetDouble(POSITION_PRICE_OPEN)-_tp_point*点值(PositionGetString(POSITION_SYMBOL)))
                     request.tp=request.price-_tp_point*点值(request.symbol);
                  if(_tp_point==1)
                     request.tp=NULL;
                  if(_tp_point==2||_tp_point==0)
                     request.tp=PositionGetDouble(POSITION_TP);
                  request.deviation=deviation(slippage,request.symbol);
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
void              新交易类::修改止损(double _sl_point,ENUM_LONG_SHORT_MODE long_or_short=0)
  {
   if(_sl_point>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            string _symbol =PositionGetString(POSITION_SYMBOL);
            _sl_point=停损(_symbol,_sl_point);
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY&&(long_or_short==LONG_SHORT_ALL||long_or_short==LONG))
              {
               if(PositionGetDouble(POSITION_SL)!=PositionGetDouble(POSITION_PRICE_OPEN)-_sl_point*点值(PositionGetString(POSITION_SYMBOL)))
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
                  if(_sl_point&&PositionGetDouble(POSITION_SL)!=PositionGetDouble(POSITION_PRICE_OPEN)-_sl_point*点值(PositionGetString(POSITION_SYMBOL)))
                     request.sl=request.price-_sl_point*点值(request.symbol);
                  if(_sl_point==1)
                     request.sl=NULL;
                  if(_sl_point==2)
                     request.sl=PositionGetDouble(POSITION_SL);
                  request.tp=PositionGetDouble(POSITION_TP);
                  request.deviation=deviation(slippage,request.symbol);
                  bool X=OrderSend(request,result);
                  if(X==false)
                    {
                     Print("订单发送失败代码："+IntegerToString(GetLastError()));
                     Print("交易返回代码："+IntegerToString(result.retcode));
                    }
                 }
              }
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL&&(long_or_short==LONG_SHORT_ALL||long_or_short==SHORT))
              {
               if(PositionGetDouble(POSITION_SL)!=PositionGetDouble(POSITION_PRICE_OPEN)+_sl_point*点值(PositionGetString(POSITION_SYMBOL)))
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
                  if(_sl_point&&PositionGetDouble(POSITION_SL)!=PositionGetDouble(POSITION_PRICE_OPEN)+_sl_point*点值(PositionGetString(POSITION_SYMBOL)))
                     request.sl=request.price+_sl_point*点值(request.symbol);
                  if(_sl_point==1)
                     request.sl=NULL;
                  if(_sl_point==2)
                     request.sl=PositionGetDouble(POSITION_SL);
                  request.tp=PositionGetDouble(POSITION_TP);
                  request.deviation=deviation(slippage,request.symbol);
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
void              新交易类::修改止盈(double _tp_point,ENUM_LONG_SHORT_MODE long_or_short=0)
  {
   if(_tp_point>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            string _symbol =PositionGetString(POSITION_SYMBOL);
            _tp_point=停损(_symbol,_tp_point);
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY&&(long_or_short==LONG_SHORT_ALL||long_or_short==LONG))
              {
               if(PositionGetDouble(POSITION_TP)!=PositionGetDouble(POSITION_PRICE_OPEN)+_tp_point*点值(PositionGetString(POSITION_SYMBOL)))
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
                  if(_tp_point&&PositionGetDouble(POSITION_TP)!=PositionGetDouble(POSITION_PRICE_OPEN)+_tp_point*点值(PositionGetString(POSITION_SYMBOL)))
                     request.tp=request.price+_tp_point*点值(request.symbol);
                  if(_tp_point==1)
                     request.tp=NULL;
                  if(_tp_point==2)
                     request.tp=PositionGetDouble(POSITION_TP);
                  request.deviation=deviation(slippage,request.symbol);
                  bool X=OrderSend(request,result);
                  if(X==false)
                    {
                     Print("订单发送失败代码："+IntegerToString(GetLastError()));
                     Print("交易返回代码："+IntegerToString(result.retcode));
                    }
                 }
              }
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL&&(long_or_short==LONG_SHORT_ALL||long_or_short==SHORT))
              {
               if(PositionGetDouble(POSITION_TP)!=PositionGetDouble(POSITION_PRICE_OPEN)-_tp_point*点值(PositionGetString(POSITION_SYMBOL)))
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
                  if(_tp_point&&PositionGetDouble(POSITION_TP)!=PositionGetDouble(POSITION_PRICE_OPEN)-_tp_point*点值(PositionGetString(POSITION_SYMBOL)))
                     request.tp=request.price-_tp_point*点值(request.symbol);
                  if(_tp_point==1)
                     request.tp=NULL;
                  if(_tp_point==2)
                     request.tp=PositionGetDouble(POSITION_TP);
                  request.deviation=deviation(slippage,request.symbol);
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
int 新交易类::周期持仓单数统计(string _symbol,long _magic_number,string _comment,ENUM_POSITION_TYPE 持仓方向,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1)
  {
   int 总单量=PositionsTotal();
   int 指定单量=0;
   for(int i=总单量-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+_comment&&PositionGetInteger(POSITION_TIME)>iTime(_symbol,时间图表周期,0))
           {
            if(PositionGetInteger(POSITION_TYPE)==持仓方向)
               指定单量=指定单量+1;
           }
        }
     }
   return(指定单量);
  };
//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(string _symbol,long _magic_number,ENUM_POSITION_TYPE 持仓方向,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1)
  {
   int 总单量=PositionsTotal();
   int 指定单量=0;
   for(int i=总单量-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>iTime(_symbol,时间图表周期,0))
           {
            if(PositionGetInteger(POSITION_TYPE)==持仓方向)
               指定单量=指定单量+1;
           }
        }
     }
   return(指定单量);
  };
//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(long _magic_number,ENUM_POSITION_TYPE 持仓方向,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1)
  {
   int 总单量=PositionsTotal();
   int 指定单量=0;
   for(int i=总单量-1; i>=0; i--)
      if(PositionGetTicket(i)>0)
        {
         string _symbol =PositionGetString(POSITION_SYMBOL);
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>iTime(_symbol,时间图表周期,0))
           {
            if(PositionGetInteger(POSITION_TYPE)==持仓方向)
               指定单量=指定单量+1;
           }
        }
   return(指定单量);
  };
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(string _symbol,long _magic_number,string _comment,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1)
  {
   int 总单量=PositionsTotal();
   int 指定单量=0;
   for(int i=总单量-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+_comment&&PositionGetInteger(POSITION_TIME)>iTime(_symbol,时间图表周期,0))
            指定单量=指定单量+1;
        }
     }
   return(指定单量);
  };
//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(string _symbol,long _magic_number,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1)
  {
   int 总单量=PositionsTotal();
   int 指定单量=0;
   for(int i=总单量-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>iTime(_symbol,时间图表周期,0))
            指定单量=指定单量+1;
        }
     }
   return(指定单量);
  };
//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(long _magic_number,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1)
  {
   int 总单量=PositionsTotal();
   int 指定单量=0;
   for(int i=总单量-1; i>=0; i--)
      if(PositionGetTicket(i)>0)
        {
         string _symbol =PositionGetString(POSITION_SYMBOL);
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>iTime(_symbol,时间图表周期,0))
            指定单量=指定单量+1;
        }
   return(指定单量);
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::订单号返回持仓属性值(string _symbol,ulong ticket,ENUM_POSITION_TYPE _order_type,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long _start_tim,long _end_tim)
  {
   ulong value=0;
   if(integer属性值==POSITION_TYPE)
      value=-1;
   if(ticket>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_TICKET)==ticket&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim&&PositionGetInteger(POSITION_TYPE)==_order_type)
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
double   新交易类::订单号返回持仓属性值(string _symbol,ulong ticket,ENUM_POSITION_TYPE _order_type,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long _start_tim,long _end_tim)
  {
   double value=0;
   if(ticket>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_TICKET)==ticket&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim&&PositionGetInteger(POSITION_TYPE)==_order_type)
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
string   新交易类::订单号返回持仓属性值(string _symbol,ulong ticket,ENUM_POSITION_TYPE _order_type,ENUM_POSITION_PROPERTY_STRING string属性值,long _start_tim,long _end_tim)
  {
   string value="-1";
   if(ticket>0)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_TICKET)==ticket&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim&&PositionGetInteger(POSITION_TYPE)==_order_type)
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
ulong  新交易类::魔术号返回持仓属性值(string _symbol,long _magic_number,ENUM_POSITION_TYPE _order_type,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long _start_tim,long _end_tim)
  {
   ulong value=0;
   if(integer属性值==POSITION_TYPE)
      value=-1;
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim&&PositionGetInteger(POSITION_TYPE)==_order_type)
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
double   新交易类::魔术号返回持仓属性值(string _symbol,long _magic_number,ENUM_POSITION_TYPE _order_type,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long _start_tim,long _end_tim)
  {
   double value=0;
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim&&PositionGetInteger(POSITION_TYPE)==_order_type)
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
string   新交易类::魔术号返回持仓属性值(string _symbol,long _magic_number,ENUM_POSITION_TYPE _order_type,ENUM_POSITION_PROPERTY_STRING string属性值,long _start_tim,long _end_tim)
  {
   string value="-1";
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim&&PositionGetInteger(POSITION_TYPE)==_order_type)
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
ulong  新交易类::注释返回持仓属性值(string _symbol,string _comment,ENUM_POSITION_TYPE _order_type,ENUM_POSITION_PROPERTY_INTEGER integer属性值,long _start_tim,long _end_tim)
  {
   ulong value=0;
   if(integer属性值==POSITION_TYPE)
      value=-1;
   if(_comment!="")
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetString(POSITION_COMMENT)==prefix+_comment&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim&&PositionGetInteger(POSITION_TYPE)==_order_type)
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
double   新交易类::注释返回持仓属性值(string _symbol,string _comment,ENUM_POSITION_TYPE _order_type,ENUM_POSITION_PROPERTY_DOUBLE double属性值,long _start_tim,long _end_tim)
  {
   double value=0;
   if(_comment!="")
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetString(POSITION_COMMENT)==prefix+_comment&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim&&PositionGetInteger(POSITION_TYPE)==_order_type)
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
string   新交易类::注释返回持仓属性值(string _symbol,string _comment,ENUM_POSITION_TYPE _order_type,ENUM_POSITION_PROPERTY_STRING string属性值,long _start_tim,long _end_tim)
  {
   string value="-1";
   if(_comment!="")
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetString(POSITION_COMMENT)==prefix+_comment&&PositionGetInteger(POSITION_TIME)>=_start_tim&&PositionGetInteger(POSITION_TIME)<_end_tim&&PositionGetInteger(POSITION_TYPE)==_order_type)
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
ulong  新交易类::订单号返回历史属性值(string _symbol,ulong ticket,ENUM_DEAL_TYPE _order_type,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out)
  {
   ulong value=0;
   if(integer属性值==DEAL_TYPE)
      value=-1;
   if(ticket>0)
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID)==ticket&&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==_order_type)
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
double 新交易类::订单号返回历史属性值(string _symbol,ulong ticket,ENUM_DEAL_TYPE _order_type,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out)
  {
   double value=0;
   if(ticket>0)
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID)==ticket&&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==_order_type)
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
string 新交易类::订单号返回历史属性值(string _symbol,ulong ticket,ENUM_DEAL_TYPE _order_type,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out)
  {
   string value="-1";
   if(ticket>0)
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&HistoryDealGetInteger(deal_ticket,DEAL_POSITION_ID)==ticket&&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==_order_type)
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
ulong  新交易类::魔术号返回历史属性值(string _symbol,long _magic_number,ENUM_DEAL_TYPE _order_type,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out)
  {
   ulong value=0;
   if(integer属性值==DEAL_TYPE)
      value=-1;
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0)
        {
         long magic=魔术幻数(_magic_number);
         if(HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&HistoryDealGetInteger(deal_ticket,DEAL_MAGIC)==magic&&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==_order_type)
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
double 新交易类::魔术号返回历史属性值(string _symbol,long _magic_number,ENUM_DEAL_TYPE _order_type,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out)
  {
   double value=0;
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0)
        {
         long magic=魔术幻数(_magic_number);
         if(HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&HistoryDealGetInteger(deal_ticket,DEAL_MAGIC)==magic&&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==_order_type)
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
string 新交易类::魔术号返回历史属性值(string _symbol,long _magic_number,ENUM_DEAL_TYPE _order_type,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out)
  {
   string value="-1";
   for(int i=HistoryDealsTotal()-1; i>=0; i--)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(deal_ticket>0)
        {
         long magic=魔术幻数(_magic_number);
         if(HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&HistoryDealGetInteger(deal_ticket,DEAL_MAGIC)==magic&&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==_order_type)
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
ulong  新交易类::注释返回历史属性值(string _symbol,string _comment,ENUM_DEAL_TYPE _order_type,ENUM_DEAL_PROPERTY_INTEGER integer属性值,int one_int_two_out)
  {
   ulong value=0;
   if(integer属性值==DEAL_TYPE)
      value=-1;
   if(_comment!="")
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&HistoryDealGetString(deal_ticket,DEAL_COMMENT)==prefix+_comment&&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==_order_type)
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
double 新交易类::注释返回历史属性值(string _symbol,string _comment,ENUM_DEAL_TYPE _order_type,ENUM_DEAL_PROPERTY_DOUBLE double属性值,int one_int_two_out)
  {
   double value=0;
   if(_comment!="")
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&HistoryDealGetString(deal_ticket,DEAL_COMMENT)==prefix+_comment&&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==_order_type)
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
string 新交易类::注释返回历史属性值(string _symbol,string _comment,ENUM_DEAL_TYPE _order_type,ENUM_DEAL_PROPERTY_STRING string属性值,int one_int_two_out)
  {
   string value="-1";
   if(_comment!="")
     {
      for(int i=HistoryDealsTotal()-1; i>=0; i--)
        {
         ulong deal_ticket=HistoryDealGetTicket(i);
         if(deal_ticket>0&&HistoryDealGetString(deal_ticket,DEAL_SYMBOL)==_symbol&&HistoryDealGetString(deal_ticket,DEAL_COMMENT)==prefix+_comment&&HistoryDealGetInteger(deal_ticket,DEAL_TYPE)==_order_type)
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
   if(可用预付款百分比限制==0||空值检测(AccountInfoDouble(ACCOUNT_MARGIN_LEVEL)))
      检测=true;
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::结余盈利回撤百分比检测(string _symbol,double 盈利百分比=0,double 回撤百分比=0)
  {
   if(盈利百分比>0&&回撤百分比>0)
     {
      static double  当日结余=AccountInfoDouble(ACCOUNT_BALANCE);
      static double  最大结余=AccountInfoDouble(ACCOUNT_BALANCE);
      static  bool  检测=false;
      long 实时时间=iTime(_symbol,PERIOD_D1,0);
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
bool 新交易类::周期时间更新检测(string _symbol,ENUM_TIMEFRAMES _time_frame,bool &检测)
  {
   static long 初始时间1=0;
   long 实时时间1=iTime(_symbol,PERIOD_D1,0);
   if(初始时间1!=实时时间1)
     {
      检测=true;
      初始时间1=实时时间1;
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong 新交易类::提前K秒数(ulong int_tim,ENUM_TIMEFRAMES _time_frame,long 提前秒数,int 几根=1)
  {
   long 秒数=提前秒数;
   if(秒数<=0)
      秒数=PeriodSeconds(_time_frame);
   if(秒数>PeriodSeconds(_time_frame))
      秒数=PeriodSeconds(_time_frame);
   ulong 返回时间=int_tim+几根*PeriodSeconds(_time_frame)-秒数;
   return 返回时间;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::提前K秒数检测(ulong int_tim,ENUM_TIMEFRAMES _time_frame,long 提前秒数,int 几根=1)
  {
   long 秒数=提前秒数;
   if(秒数<=0)
      秒数=PeriodSeconds(_time_frame);
   if(秒数>PeriodSeconds(_time_frame))
      秒数=PeriodSeconds(_time_frame);
   ulong 返回时间=int_tim+几根*PeriodSeconds(_time_frame)-秒数;
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
double  新交易类::昨日结余(datetime _start_tim)
  {
   HistorySelect(_start_tim,TimeCurrent());
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
bool    新交易类::单位微秒do1(double _millisecond)
  {
   bool 检测=false;
   static ulong  初时间1=0;
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间1)
     {
      检测=true;
      初时间1=(ulong)(时时间+_millisecond);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool    新交易类::单位微秒do2(double _millisecond)
  {
   bool 检测=false;
   static ulong  初时间2=0;
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间2)
     {
      检测=true;
      初时间2=(ulong)(时时间+_millisecond);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool    新交易类::单位微秒do3(double _millisecond)
  {
   bool 检测=false;
   static ulong  初时间3=0;
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间3)
     {
      检测=true;
      初时间3=(ulong)(时时间+_millisecond);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool    新交易类::单位微秒do4(double _millisecond)
  {
   bool 检测=false;
   static ulong  初时间4=0;
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间4)
     {
      检测=true;
      初时间4=(ulong)(时时间+_millisecond);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool    新交易类::单位微秒1(double _millisecond)
  {
   bool 检测=false;
   static ulong  初时间5= GetMicrosecondCount();
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间5+_millisecond)
     {
      检测=true;
      初时间5=(ulong)(时时间);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool    新交易类::单位微秒2(double _millisecond)
  {
   bool 检测=false;
   static ulong  初时间6= GetMicrosecondCount();
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间6+_millisecond)
     {
      检测=true;
      初时间6=(ulong)(时时间);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool    新交易类::单位微秒3(double _millisecond)
  {
   bool 检测=false;
   static ulong  初时间7= GetMicrosecondCount();
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间7+_millisecond)
     {
      检测=true;
      初时间7=(ulong)(时时间);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool    新交易类::单位微秒4(double _millisecond)
  {
   bool 检测=false;
   static ulong  初时间8=GetMicrosecondCount();
   ulong 时时间=(ulong)GetMicrosecondCount();
   if(时时间>初时间8+_millisecond)
     {
      检测=true;
      初时间8=(ulong)(时时间);
     }
   return 检测;
  }
//+------------------------------------

//+------------------------------------------------------------------+
void 新交易类::方向带单(string _symbol,long _magic_number,string _comment,ENUM_POSITION_TYPE 方向1,ENUM_POSITION_TYPE 方向2,double 盈利启动金额,double 带单后盈利金额=0)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol &&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+_comment&&PositionGetInteger(POSITION_TYPE)==方向1)
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
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol &&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+_comment&&PositionGetInteger(POSITION_TYPE)==方向2)
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
            订单号平单((int)a[i][1]);
            Print((string)i+"带单订单号"+(string)(ulong)a[i][1]);
           }
//---
   int ss=ArraySize(b);
   for(int i=ss-1; i>=0; i--)
     {
      金额累计+=b[i][0];
      if(金额累计>带单后盈利金额)
        {
         订单号平单((int)b[i][1]);
         Print((string)i+"被带单订单号"+(string)(ulong)b[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::方向带单(string _symbol,long _magic_number,ENUM_POSITION_TYPE 方向1,ENUM_POSITION_TYPE 方向2,double 盈利启动金额,double 带单后盈利金额=0)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol &&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TYPE)==方向1)
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
         long magic=魔术幻数(_magic_number);
         if(PositionGetString(POSITION_SYMBOL)==_symbol &&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetInteger(POSITION_TYPE)==方向2)
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
            订单号平单((int)a[i][1]);
            Print((string)i+"带单订单号"+(string)(ulong)a[i][1]);
           }
//---
   int ss=ArraySize(b);
   for(int i=ss-1; i>=0; i--)
     {
      金额累计+=b[i][0];
      if(金额累计>带单后盈利金额)
        {
         订单号平单((int)b[i][1]);
         Print((string)i+"被带单订单号"+(string)(ulong)b[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::方向带单(string _symbol,ENUM_POSITION_TYPE 方向1,ENUM_POSITION_TYPE 方向2,double 盈利启动金额,double 带单后盈利金额=0)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_TYPE)==方向1)
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
      if(PositionGetTicket(i)>0&&PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_TYPE)==方向2)
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
            订单号平单((int)a[i][1]);
            Print((string)i+"带单订单号"+(string)(ulong)a[i][1]);
           }
//---
   int ss=ArraySize(b);
   for(int i=ss-1; i>=0; i--)
     {
      金额累计+=b[i][0];
      if(金额累计>带单后盈利金额)
        {
         订单号平单((int)b[i][1]);
         Print((string)i+"被带单订单号"+(string)(ulong)b[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::方向带单(long _magic_number,ENUM_POSITION_TYPE 方向1,ENUM_POSITION_TYPE 方向2,double 盈利启动金额,double 带单后盈利金额=0)
  {
   double a[][2];
   int t=PositionsTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(PositionGetTicket(i)>0)
        {
         long magic=魔术幻数(_magic_number);
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
         long magic=魔术幻数(_magic_number);
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
            订单号平单((int)a[i][1]);
            Print((string)i+"带单订单号"+(string)(ulong)a[i][1]);
           }
//---
   int ss=ArraySize(b);
   for(int i=ss-1; i>=0; i--)
     {
      金额累计+=b[i][0];
      if(金额累计>带单后盈利金额)
        {
         订单号平单((int)b[i][1]);
         Print((string)i+"被带单订单号"+(string)(ulong)b[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::在时间区间(datetime _time,string _start_tim,string _end_tim,ENUM_TIME_MODE timecurrent_or_timelocal)
  {
   string tmd= TimeToString(_time,TIME_SECONDS);
   bool 区间检测=StoCL(tmd,timecurrent_or_timelocal)>StoCL(_start_tim,timecurrent_or_timelocal)&&StoCL(tmd,timecurrent_or_timelocal)<StoCL(_end_tim,timecurrent_or_timelocal);
   return 区间检测;
  }
//+------------------------------------------------------------------+
/*void 新交易类::QQ微信消息推送(string 信息1="",string 信息2="",string 信息3="",string 信息4="",string 信息5="",string 信息6="",string 信息7="",string 信息8="",string 信息9="")
  {
   信息9=TimeToString(TimeLocal(),TIME_DATE|TIME_MINUTES|TIME_SECONDS);
   string 文件名=string((ulong)TimeLocal());
   int filehandle=FileOpen(文件名+".txt",FILE_WRITE|FILE_CSV|FILE_ANSI);
   FileWrite(filehandle,信息1,信息2,信息3,信息4,信息5,信息6,信息7,信息8,信息9);
   FileClose(filehandle);
   信息写入文件夹("QQ微信消息推送副本",1,",",文件名+"副本  "+信息1,信息2,信息3,信息4,信息5,信息6,信息7,信息8,信息9);
   CreateDirectoryW("C:\\SendFile",0);
   string   paxth=TerminalInfoString(TERMINAL_DATA_PATH)+"\\MQL5\\Files\\";
   int t=CopyFileW(paxth+文件名+".txt","C:\\SendFile\\"+文件名+".txt",0);
   FileDelete(文件名+".txt");
  }*/
//+------------------------------------------------------------------+
bool             新交易类::保本(string _symbol,long _magic_number,string _comment,double 启动点数,double 保本点数,ENUM_LONG_SHORT_MODE long_or_short=0)
  {
   bool 检测=false;
   if(启动点数>0&&保本点数>0&&保本点数<启动点数)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            long magic=魔术幻数(_magic_number);
            if(PositionGetSymbol(i)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+_comment)
              {
               double 多盈利点值=(卖价(_symbol)-PositionGetDouble(POSITION_PRICE_OPEN))/点值(_symbol);
               double 空盈利点值=(PositionGetDouble(POSITION_PRICE_OPEN)-买价(_symbol))/点值(_symbol);
               if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY&&(long_or_short==LONG_SHORT_ALL||long_or_short==LONG))
                 {
                  if(多盈利点值>启动点数&&PositionGetDouble(POSITION_SL)<PositionGetDouble(POSITION_PRICE_OPEN)+保本点数*点值(_symbol))
                    {
                     MqlTradeRequest request= {};
                     MqlTradeResult  result= {};
                     request.action=TRADE_ACTION_SLTP;
                     request.magic=PositionGetInteger(POSITION_MAGIC);
                     request.position=PositionGetInteger(POSITION_TICKET);
                     request.volume=PositionGetDouble(POSITION_VOLUME);
                     request.symbol=PositionGetString(POSITION_SYMBOL);
                     request.price=PositionGetDouble(POSITION_PRICE_OPEN);
                     request.sl=request.price+保本点数*点值(_symbol);
                     request.tp=PositionGetDouble(POSITION_TP);
                     request.deviation=deviation(slippage,request.symbol);
                     bool X=OrderSend(request,result);
                     if(X==false)
                       {
                        Print("订单发送失败代码："+IntegerToString(GetLastError()));
                        Print("交易返回代码："+IntegerToString(result.retcode));
                       }
                     检测=true;
                    }
                 }
               if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL&&(long_or_short==LONG_SHORT_ALL||long_or_short==SHORT))
                 {
                  if(空盈利点值>启动点数&&(PositionGetDouble(POSITION_SL)>PositionGetDouble(POSITION_PRICE_OPEN)-保本点数*点值(_symbol)||PositionGetDouble(POSITION_SL)==0))
                    {
                     MqlTradeRequest request= {};
                     MqlTradeResult  result= {};
                     request.action=TRADE_ACTION_SLTP;
                     request.magic=PositionGetInteger(POSITION_MAGIC);
                     request.position=PositionGetInteger(POSITION_TICKET);
                     request.volume=PositionGetDouble(POSITION_VOLUME);
                     request.symbol=PositionGetString(POSITION_SYMBOL);
                     request.price=PositionGetDouble(POSITION_PRICE_OPEN);
                     request.sl=request.price-保本点数*点值(_symbol);
                     request.tp=PositionGetDouble(POSITION_TP);
                     request.deviation=deviation(slippage,request.symbol);
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
bool             新交易类::保本(string _symbol,long _magic_number,double 启动点数,double 保本点数,ENUM_LONG_SHORT_MODE long_or_short=0)
  {
   bool 检测=false;
   if(启动点数>0&&保本点数>0&&保本点数<启动点数)
     {
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            long magic=魔术幻数(_magic_number);
            if(PositionGetSymbol(i)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic)
              {
               double 多盈利点值=(卖价(_symbol)-PositionGetDouble(POSITION_PRICE_OPEN))/点值(_symbol);
               double 空盈利点值=(PositionGetDouble(POSITION_PRICE_OPEN)-买价(_symbol))/点值(_symbol);
               if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY&&(long_or_short==LONG_SHORT_ALL||long_or_short==LONG))
                 {
                  if(多盈利点值>启动点数&&PositionGetDouble(POSITION_SL)<PositionGetDouble(POSITION_PRICE_OPEN)+保本点数*点值(_symbol))
                    {
                     MqlTradeRequest request= {};
                     MqlTradeResult  result= {};
                     request.action=TRADE_ACTION_SLTP;
                     request.magic=PositionGetInteger(POSITION_MAGIC);
                     request.position=PositionGetInteger(POSITION_TICKET);
                     request.volume=PositionGetDouble(POSITION_VOLUME);
                     request.symbol=PositionGetString(POSITION_SYMBOL);
                     request.price=PositionGetDouble(POSITION_PRICE_OPEN);
                     request.sl=request.price+保本点数*点值(_symbol);
                     request.tp=PositionGetDouble(POSITION_TP);
                     request.deviation=deviation(slippage,request.symbol);
                     bool X=OrderSend(request,result);
                     if(X==false)
                       {
                        Print("订单发送失败代码："+IntegerToString(GetLastError()));
                        Print("交易返回代码："+IntegerToString(result.retcode));
                       }
                     检测=true;
                    }
                 }
               if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL&&(long_or_short==LONG_SHORT_ALL||long_or_short==SHORT))
                 {
                  if(空盈利点值>启动点数&&(PositionGetDouble(POSITION_SL)>PositionGetDouble(POSITION_PRICE_OPEN)-保本点数*点值(_symbol)||PositionGetDouble(POSITION_SL)==0))
                    {
                     MqlTradeRequest request= {};
                     MqlTradeResult  result= {};
                     request.action=TRADE_ACTION_SLTP;
                     request.magic=PositionGetInteger(POSITION_MAGIC);
                     request.position=PositionGetInteger(POSITION_TICKET);
                     request.volume=PositionGetDouble(POSITION_VOLUME);
                     request.symbol=PositionGetString(POSITION_SYMBOL);
                     request.price=PositionGetDouble(POSITION_PRICE_OPEN);
                     request.sl=request.price-保本点数*点值(_symbol);
                     request.tp=PositionGetDouble(POSITION_TP);
                     request.deviation=deviation(slippage,request.symbol);
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
bool 新交易类::亏损持仓均价平单(string _symbol,long _magic_number,ENUM_POSITION_TYPE 持仓方向,double 设置平单点数)
  {
   bool 检测=false;
   if(设置平单点数>0)
     {
      double 浮亏均价=持仓均价(_symbol,_magic_number,持仓方向);
      if(浮亏均价>0&&持仓方向==POSITION_TYPE_BUY&&卖价(_symbol)<浮亏均价-设置平单点数*点值(_symbol))
        {
         平多(_symbol,_magic_number);
         检测=true;
        }
      if(浮亏均价>0&&持仓方向==POSITION_TYPE_SELL&&买价(_symbol)>浮亏均价+设置平单点数*点值(_symbol))
        {
         平空(_symbol,_magic_number);
         检测=true;
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong 新交易类::CtoL(ulong 传入服务器时间,ENUM_TIME_MODE timecurrent_or_time_local=TIME_CURRENT)
  {
   ulong 输出时间=传入服务器时间;
   if(timecurrent_or_time_local==TIME_CURRENT)
      输出时间=传入服务器时间;
   if(timecurrent_or_time_local==TIME_LOCAL)
      输出时间=传入服务器时间+(TimeLocal()-TimeCurrent());
   return 输出时间;
  }
//+------------------------------------------------------------------+
ulong 新交易类::LtoC(ulong 传入电脑时间,ENUM_TIME_MODE timecurrent_or_time_local=TIME_CURRENT)
  {
   ulong 输出时间=传入电脑时间;
   if(timecurrent_or_time_local==TIME_CURRENT)
      输出时间=传入电脑时间;
   if(timecurrent_or_time_local==TIME_LOCAL)
      输出时间=传入电脑时间+(TimeCurrent()-TimeLocal());
   return 输出时间;
  }
//+------------------------------------------------------------------+
ulong 新交易类::StoCL(string 传入转换时间,ENUM_TIME_MODE timecurrent_or_time_local=TIME_CURRENT)
  {
   ulong 输出时间=StringToTime(传入转换时间);
   if(timecurrent_or_time_local==TIME_CURRENT)
      if(TimeLocal()>StringToTime("00:00:00")&&TimeLocal()<StringToTime("00:00:00")+(TimeLocal()-TimeCurrent()))
         输出时间=(ulong)StringToTime(传入转换时间)-24*60*60;
   if(timecurrent_or_time_local==TIME_LOCAL)
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
   if(返回账户类型()!="模拟")
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
int   新交易类::手数返回持仓单数(string _symbol,long _magic_number,string _comment,ENUM_POSITION_TYPE _order_type,double _lot,long 进单时间=0)
  {
   int value=0;
   if(_lot>0)
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            long magic=魔术幻数(_magic_number);
            if(PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+_comment
               &&PositionGetInteger(POSITION_TYPE)==_order_type&&PositionGetDouble(POSITION_VOLUME)==_lot&&PositionGetInteger(POSITION_TIME)>进单时间)
               value++;
           }
        }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int   新交易类::手数返回持仓单数(string _symbol,long _magic_number,ENUM_POSITION_TYPE _order_type,double _lot,long 进单时间=0)
  {
   int value=0;
   if(_lot>0)
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            long magic=魔术幻数(_magic_number);
            if(PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic
               &&PositionGetInteger(POSITION_TYPE)==_order_type&&PositionGetDouble(POSITION_VOLUME)==_lot&&PositionGetInteger(POSITION_TIME)>进单时间)
               value++;
           }
        }
   return value;
  }
//+------------------------------------------------------------------+
int   新交易类::手数返回持仓单数(string _symbol,long _magic_number,string _comment,double _lot,long 进单时间=0)
  {
   int value=0;
   if(_lot>0)
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            long magic=魔术幻数(_magic_number);
            if(PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetString(POSITION_COMMENT)==prefix+_comment
               &&PositionGetDouble(POSITION_VOLUME)==_lot&&PositionGetInteger(POSITION_TIME)>进单时间)
               value++;
           }
        }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int   新交易类::手数返回持仓单数(string _symbol,long _magic_number,double _lot,long 进单时间=0)
  {
   int value=0;
   if(_lot>0)
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            long magic=魔术幻数(_magic_number);
            if(PositionGetString(POSITION_SYMBOL)==_symbol&&PositionGetInteger(POSITION_MAGIC)==magic
               &&PositionGetDouble(POSITION_VOLUME)==_lot&&PositionGetInteger(POSITION_TIME)>进单时间)
               value++;
           }
        }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int   新交易类::手数返回持仓单数(long _magic_number,double _lot,long 进单时间=0)
  {
   int value=0;
   if(_lot>0)
      for(int i=PositionsTotal()-1; i>=0; i--)
        {
         if(PositionGetTicket(i)>0)
           {
            long magic=魔术幻数(_magic_number);
            if(PositionGetInteger(POSITION_MAGIC)==magic&&PositionGetDouble(POSITION_VOLUME)==_lot&&PositionGetInteger(POSITION_TIME)>进单时间)
               value++;
           }
        }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::净值结余百分比(double percentage,ENUM_UPDOWN_MODE UP_OR_DN=DN)
  {
   bool check=false;
   if(UP_OR_DN==UP)
      check = percentage&&AccountInfoDouble(ACCOUNT_EQUITY)<AccountInfoDouble(ACCOUNT_BALANCE)*(1+percentage);
   if(UP_OR_DN==DN)
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
bool 新交易类::价格百分比(double in_price,double real_price,double _percent,int omax_tmin=1)
  {
   if(_percent&&in_price && real_price)
     {
      if(omax_tmin == 1 &&real_price > in_price*(1+_percent))
         return true;
      if(omax_tmin == 2 &&real_price < in_price*(1-_percent))
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
//+------------------------------------------------------------------+
bool  新交易类::arr_jx_chk(int cnt,double& min_z[],double& max_z[])
  {
   for(int i=0;i<cnt;i++)
      if(min_z[i]>max_z[i]&&min_z[i+1]<max_z[i+1])
         return true;
   return false;
  }
//+------------------------------------------------------------------+
bool  新交易类::arr_sx_chk(int cnt,double& min_z[],double& max_z[])
  {
   for(int i=0;i<cnt;i++)
      if(min_z[i]<max_z[i]&&min_z[i+1]>max_z[i+1])
         return true;
   return false;
  }

//+------------------------------------------------------------------+
bool  新交易类::atr_chk(string _symbol,ENUM_TIMEFRAMES _time_frame=PERIOD_CURRENT,int cnt=5,double point=180)
  {
   for(int i=0;i<cnt;i++)
      if(iHigh(_symbol,_time_frame,i)-iLow(_symbol,_time_frame,i)>point*点值(_symbol))
         return true;
   return false;
  }

//+------------------------------------------------------------------+
void    新交易类::二K一单做多(string _symbol,double _lot,double _sl_point,double _tp_point,long _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index)
  {
   time1=iTime(_symbol,_time_frame,index);
   if(tim1!= time1+PeriodSeconds(_time_frame))
     {
      做多(_symbol,_lot,_sl_point,_tp_point,_magic_number,_comment);
      tim1= time1;
     }
  };
//+------------------------------------------------------------------+
void  新交易类::二K一单做空(string _symbol,double _lot,double _sl_point,double _tp_point,long _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index)
  {
   time2=iTime(_symbol,_time_frame,index);
   if(tim2> time2+PeriodSeconds(_time_frame))
     {
      做空(_symbol,_lot,_sl_point,_tp_point,_magic_number,_comment);
      tim2=time2;
     }
  };
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void    新交易类:: 二K一单做多2(string _symbol,double _lot,double _sl_point,double _tp_point,long _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index)
  {
   time3=iTime(_symbol,_time_frame,index);
   if(tim3!= time3+PeriodSeconds(_time_frame))
     {
      做多(_symbol,_lot,_sl_point,_tp_point,_magic_number,_comment);
      tim3= time3;
     }
  };
//+------------------------------------------------------------------+
void  新交易类::二K一单做空2(string _symbol,double _lot,double _sl_point,double _tp_point,long _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index)
  {
   time4=iTime(_symbol,_time_frame,index);
   if(tim4> time4+PeriodSeconds(_time_frame))
     {
      做空(_symbol,_lot,_sl_point,_tp_point,_magic_number,_comment);
      tim4=time4;
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void    新交易类:: 价格2K一单做多(string _symbol,double _lot,double _sl_price,double _tp_price,long _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index)
  {
   time1=iTime(_symbol,_time_frame,index);
   if(tim1!= time1+PeriodSeconds(_time_frame))
     {
      价格做多(_symbol,_lot,_sl_price,_tp_price,_magic_number,_comment);
      tim1= time1;
     }
  };
//+------------------------------------------------------------------+
void  新交易类::价格2K一单做空(string _symbol,double _lot,double _sl_price,double _tp_price,long _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index)
  {
   time2=iTime(_symbol,_time_frame,index);
   if(tim2> time2+PeriodSeconds(_time_frame))
     {
      价格做空(_symbol,_lot,_sl_price,_tp_price,_magic_number,_comment);
      tim2=time2;
     }
  };
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void    新交易类:: 价格2K一单做多2(string _symbol,double _lot,double _sl_price,double _tp_price,long _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index)
  {
   time3=iTime(_symbol,_time_frame,index);
   if(tim3!= time3+PeriodSeconds(_time_frame))
     {
      价格做多(_symbol,_lot,_sl_price,_tp_price,_magic_number,_comment);
      tim3= time3;
     }
  };
//+------------------------------------------------------------------+
void  新交易类::价格2K一单做空2(string _symbol,double _lot,double _sl_price,double _tp_price,long _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index)
  {
   time4=iTime(_symbol,_time_frame,index);
   if(tim4> time4+PeriodSeconds(_time_frame))
     {
      价格做空(_symbol,_lot,_sl_price,_tp_price,_magic_number,_comment);
      tim4=time4;
     }
  };
//+------------------------------------------------------------------+
bool 新交易类::k线触碰检测(string _symbol,ENUM_TIMEFRAMES _time_frame,string 回调或反抽,int index,double value1)
  {
   bool k_chk = 0;
   if(回调或反抽=="回调")
      k_chk = (iClose(_symbol,_time_frame,index)>value1&& iLow(_symbol,_time_frame,index)<value1&&iClose(_symbol,_time_frame,index+1)>value1)
              ||(iClose(_symbol,_time_frame,index)>value1&&iClose(_symbol,_time_frame,index+1)< value1);

   if(回调或反抽=="反抽")
      k_chk = (iClose(_symbol,_time_frame,index)<value1&& iHigh(_symbol,_time_frame,index)>value1&&iClose(_symbol,_time_frame,index+1)<value1)
              ||(iClose(_symbol,_time_frame,index)<value1&&iClose(_symbol,_time_frame,index+1)> value1);
   return k_chk;
  }

//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::tim_second0_chk(long _second)
  {
   if(TimeCurrent()> time_seconds0 + _second)
     {
      time_seconds0  = TimeCurrent();
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_second1_chk(long _second)
  {
   if(TimeCurrent()> time_seconds1 + _second)
     {
      time_seconds1  = TimeCurrent();
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_second2_chk(long _second)
  {
   if(TimeCurrent()> time_seconds2 + _second)
     {
      time_seconds2  = TimeCurrent();
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_second3_chk(long _second)
  {
   if(TimeCurrent()> time_seconds3 + _second)
     {
      time_seconds3  = TimeCurrent();
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_second4_chk(long _second)
  {
   if(TimeCurrent()> time_seconds4 + _second)
     {
      time_seconds4  = TimeCurrent();
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_second5_chk(long _second)
  {
   if(TimeCurrent()> time_seconds5 + _second)
     {
      time_seconds5  = TimeCurrent();
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_second6_chk(long _second)
  {
   if(TimeCurrent()> time_seconds6 + _second)
     {
      time_seconds6  = TimeCurrent();
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_second7_chk(long _second)
  {
   if(TimeCurrent()> time_seconds7 + _second)
     {
      time_seconds7  = TimeCurrent();
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_second8_chk(long _second)
  {
   if(TimeCurrent()> time_seconds8 + _second)
     {
      time_seconds8  = TimeCurrent();
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_second9_chk(long _second)
  {
   if(TimeCurrent()> time_seconds9 + _second)
     {
      time_seconds9  = TimeCurrent();
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_k0_chk(datetime _time)
  {
   datetime tim = _time;
   if(tim > time_k0)
     {
      time_k0  = tim;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_k1_chk(datetime _time)
  {
   datetime tim = _time;
   if(tim > time_k1)
     {
      time_k1  = tim;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::tim_k2_chk(datetime _time)
  {
   datetime tim = _time;
   if(tim > time_k2)
     {
      time_k2  = tim;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_k3_chk(datetime _time)
  {
   datetime tim = _time;
   if(tim > time_k3)
     {
      time_k3  = tim;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::tim_k4_chk(datetime _time)
  {
   datetime tim = _time;
   if(tim > time_k4)
     {
      time_k4  = tim;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_k5_chk(datetime _time)
  {
   datetime tim = _time;
   if(tim > time_k5)
     {
      time_k5  = tim;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::tim_k6_chk(datetime _time)
  {
   datetime tim = _time;
   if(tim > time_k6)
     {
      time_k6  = tim;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::tim_k7_chk(datetime _time)
  {
   datetime tim = _time;
   if(tim > time_k7)
     {
      time_k7  = tim;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_k8_chk(datetime _time)
  {
   datetime tim = _time;
   if(tim > time_k8)
     {
      time_k8  = tim;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------
//+------------------------------------------------------------------+
bool 新交易类::tim_k9_chk(datetime _time)
  {
   datetime tim = _time;
   if(tim > time_k9)
     {
      time_k9  = tim;
      return true;
     }
   return false;
  }
//+------------------------------------------
//+------------------------------------------------------------------+
template<typename Tx,typename T>
bool 新交易类::线内检测(Tx price,T up_prices,T down_prices)
  {
   T up_price = up_prices;
   T down_price = down_prices;
   if(up_price!=0&&down_price!=0)
      return price<up_price&&price>down_price;
   if(up_price==0&&down_price!=0)
      return price>down_price;
   if(up_price!=0&&down_price==0)
      return price<up_price;
   return true;
  }
//+------------------------------------------------------------------+
template<typename Tx,typename T>
bool 新交易类::线外检测(Tx price,T up_prices,T down_prices)
  {
   T up_price = up_prices;
   T down_price = down_prices;
   if(up_price!=0&&down_price!=0)
      return price>up_price&&price<down_price;
   if(up_price==0&&down_price!=0)
      return price<down_price;
   if(up_price!=0&&down_price==0)
      return price>up_price;
   return true;
  }
//+------------------------------------------------------------------+
bool 新交易类::开单后平仓时间检测0(int orders,long& tim)
  {
   if(orders>0)
      close_order_chk0=1;
   if(close_order_chk0&&orders==0)
     {
      tim = TimeCurrent();
      time_0 = TimeCurrent();
      close_order_chk0=0;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::开单后平仓时间检测1(int orders,long& tim)
  {
   if(orders>0)
      close_order_chk1=1;
   if(close_order_chk1&&orders==0)
     {
      tim = TimeCurrent();
      time_1 = TimeCurrent();
      close_order_chk1=0;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::开单后平仓时间检测2(int orders,long& tim)
  {
   if(orders>0)
      close_order_chk2=1;
   if(close_order_chk2&&orders==0)
     {
      tim = TimeCurrent();
      time_2 = TimeCurrent();
      close_order_chk2=0;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
bool 新交易类::持仓盈利回撤百分比检测(int orders,double position_profit,double start_profit,double _percent)
  {
//---盈亏统计
   if(start_profit>0&&_percent>0&&_percent<=1)
     {
      static double profit = 0;
      if(orders==0)
         profit = 0;
      else
        {
         double position_profits = position_profit;
         if(position_profits>profit)
            profit = position_profits;
         if(profit>start_profit  && position_profits< profit -  profit*_percent)
            return true;
        }
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::每日净值回撤百分比检测(double equit_percents)
  {
   if(equit_percents>0)
     {
      static double day_equit = AccountInfoDouble(ACCOUNT_EQUITY);
      static datetime equit_tim = iTime(Symbol(),PERIOD_D1,0);
      if(iTime(Symbol(),PERIOD_D1,0)>equit_tim)//第二日再次开启
        {
         day_equit = AccountInfoDouble(ACCOUNT_EQUITY);
         equit_tim= iTime(Symbol(),PERIOD_D1,0);
        }
      if(day_equit>0&&AccountInfoDouble(ACCOUNT_EQUITY)<day_equit - day_equit*equit_percents)
        {day_equit = 0; return true;}
     }
   return false;
  }

//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool  新交易类::净值追踪(double equit_lit)
  {
   if(equit_lit>0)
     {
      static double equit_money = AccountInfoDouble(ACCOUNT_EQUITY);
      int orders = 持仓单数统计(2);
      if(orders==0)
         equit_money = AccountInfoDouble(ACCOUNT_EQUITY);
      if(AccountInfoDouble(ACCOUNT_EQUITY)>equit_money+equit_lit)
        {
         平单();
         平单();
         return true;
        }
     }
   return false;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool  新交易类::净值追踪(double equit,double equit_lit)
  {
   if(equit>0&&equit_lit>0)
     {
      static double equit_money = AccountInfoDouble(ACCOUNT_EQUITY);
      int orders = 持仓单数统计(2);
      if(orders==0)
         equit_money = AccountInfoDouble(ACCOUNT_EQUITY);
      if(AccountInfoDouble(ACCOUNT_EQUITY)>equit+equit_lit&&AccountInfoDouble(ACCOUNT_EQUITY)>equit_money+equit_lit)
        {
         平单();
         平单();
         return true;
        }
     }
   return false;
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 新交易类::K线穿越某值(string _symbol,ENUM_TIMEFRAMES _time_frame,ENUM_UPDOWN_MODE up_or_down,ENUM_OHLC_MODE ohlc,int index,double 某值1,double 某值0,int k_shift = 2)//---1向上2 向下穿越
  {
   bool chk=false;
   if(up_or_down==UP&&index>=0)
     {
      if(ohlc==OPEN)
         chk=iOpen(_symbol,_time_frame,index+1+k_shift)<某值1&&iOpen(_symbol,_time_frame,index)>某值0;
      if(ohlc==HIGH)
         chk=iHigh(_symbol,_time_frame,index+1+k_shift)<某值1&&iHigh(_symbol,_time_frame,index)>某值0;
      if(ohlc==LOW)
         chk=iLow(_symbol,_time_frame,index+1+k_shift)<某值1&&iLow(_symbol,_time_frame,index)>某值0;
      if(ohlc==CLOSE)
         chk=iClose(_symbol,_time_frame,index+1+k_shift)<某值1&&iClose(_symbol,_time_frame,index)>某值0;
     }
   if(up_or_down==DN&&index>=0)
     {
      if(ohlc==OPEN)
         chk=iOpen(_symbol,_time_frame,index+1+k_shift)>某值1&&iOpen(_symbol,_time_frame,index)<某值0;
      if(ohlc==HIGH)
         chk=iHigh(_symbol,_time_frame,index+1+k_shift)>某值1&&iHigh(_symbol,_time_frame,index)<某值0;
      if(ohlc==LOW)
         chk=iLow(_symbol,_time_frame,index+1+k_shift)>某值1&&iLow(_symbol,_time_frame,index)<某值0;
      if(ohlc==CLOSE)
         chk=iClose(_symbol,_time_frame,index+1+k_shift)>某值1&&iClose(_symbol,_time_frame,index)<某值0;
     }
   return chk;
  }
//+------------------------------------------------------------------+
datetime  设置云变量(string name1,long name2,string name3,double value=0)
  {
   string gobal_name = (string)AccountInfoInteger(ACCOUNT_LOGIN)+name1+(string)name2+name3;
   datetime gobal_time= GlobalVariableSet(gobal_name,value);
   return gobal_time;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double  获取云变量(string name1,long name2,string name3)
  {
   string gobal_name = (string)AccountInfoInteger(ACCOUNT_LOGIN)+name1+(string)name2+name3;
   double gobal_value= GlobalVariableGet(gobal_name);
   return gobal_value;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void 新交易类::订单号修改挂单止损止盈(long ticket,double _sl_point,double _tp_point)
  {
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderGetTicket(j)>0&&OrderGetTicket(j)==ticket)
        {
         MqlTradeRequest request= {};
         MqlTradeResult   result= {};
         request.action=TRADE_ACTION_MODIFY;
         request.order=OrderGetInteger(ORDER_TICKET);
         request.volume=OrderGetDouble(ORDER_VOLUME_CURRENT);
         request.comment=OrderGetString(ORDER_COMMENT);
         request.symbol=OrderGetString(ORDER_SYMBOL);
         request.price=OrderGetDouble(ORDER_PRICE_OPEN);
         request.sl=OrderGetDouble(ORDER_SL);
         request.tp=OrderGetDouble(ORDER_TP);
         if(OrderGetInteger(ORDER_TYPE)==ORDER_TYPE_BUY_LIMIT||OrderGetInteger(ORDER_TYPE)==ORDER_TYPE_BUY_STOP)
           {
            if(request.sl!=request.price - _sl_point*点值(request.symbol))
               request.sl= request.price - _sl_point*点值(request.symbol);
            if(request.tp!=request.price + _tp_point*点值(request.symbol))
               request.tp= request.price + _tp_point*点值(request.symbol);
           }
         if(OrderGetInteger(ORDER_TYPE)==ORDER_TYPE_SELL_LIMIT||OrderGetInteger(ORDER_TYPE)==ORDER_TYPE_SELL_STOP)
           {
            if(request.sl!=request.price + _sl_point*点值(request.symbol))
               request.sl= request.price + _sl_point*点值(request.symbol);
            if(request.tp!=request.price - _tp_point*点值(request.symbol))
               request.tp= request.price - _tp_point*点值(request.symbol);
           }
         if(_sl_point==0||_sl_point==1||_sl_point==2)
            request.sl=NULL;
         if(_tp_point==0||_tp_point==1||_tp_point==2)
            request.tp=NULL;

         bool e=OrderSend(request,result);
         if(e==false)
            Print("交易返回代码"+IntegerToString(result.retcode));
        }
     }
  }
//----

//+------------------------------------------------------------------+
void 新交易类::修改挂单止损止盈(string symbol_s,long _magic_number,string _comment,ENUM_ORDER_TYPE _order_type,double _sl_point,double _tp_point)
  {
   for(int j=0; j<OrdersTotal(); j++)
      if(OrderGetTicket(j)>0)
        {
         string _symbol = 设置币种(symbol_s);
         long magic=魔术幻数(_magic_number);
         if(OrderGetString(ORDER_SYMBOL)==_symbol&&OrderGetInteger(ORDER_MAGIC)==magic
            &&OrderGetString(ORDER_COMMENT)==prefix+_comment&&OrderGetInteger(ORDER_TYPE)==_order_type)
           {
            long ticket = OrderGetInteger(ORDER_TICKET);
            订单号修改挂单止损止盈(ticket,_sl_point,_tp_point);
           }
        }
  }
//----
void 新交易类::修改挂单止损止盈(string symbol_s,long _magic_number,ENUM_ORDER_TYPE _order_type,double _sl_point,double _tp_point)
  {
   for(int j=0; j<OrdersTotal(); j++)
      if(OrderGetTicket(j)>0)
        {
         string _symbol = 设置币种(symbol_s);
         long magic=魔术幻数(_magic_number);
         if(OrderGetString(ORDER_SYMBOL)==_symbol&&OrderGetInteger(ORDER_MAGIC)==magic
            &&OrderGetInteger(ORDER_TYPE)==_order_type)
           {
            long ticket = OrderGetInteger(ORDER_TICKET);
            订单号修改挂单止损止盈(ticket,_sl_point,_tp_point);
           }
        }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::修改挂单止损止盈(string symbol_s,long _magic_number,string _comment,double _sl_point,double _tp_point)
  {
   for(int j=0; j<OrdersTotal(); j++)
      if(OrderGetTicket(j)>0)
        {
         string _symbol = 设置币种(symbol_s);
         long magic=魔术幻数(_magic_number);
         if(OrderGetString(ORDER_SYMBOL)==_symbol&&OrderGetInteger(ORDER_MAGIC)==magic
            &&OrderGetString(ORDER_COMMENT)==prefix+_comment)
           {
            long ticket =OrderGetInteger(ORDER_TICKET);
            订单号修改挂单止损止盈(ticket,_sl_point,_tp_point);
           }
        }
  }
//----
void 新交易类::修改挂单止损止盈(string symbol_s,long _magic_number,double _sl_point,double _tp_point)
  {
   for(int j=0; j<OrdersTotal(); j++)
      if(OrderGetTicket(j)>0)
        {
         string _symbol = 设置币种(symbol_s);
         long magic=魔术幻数(_magic_number);
         if(OrderGetString(ORDER_SYMBOL)==_symbol&&OrderGetInteger(ORDER_MAGIC)==magic)
           {
            long ticket = OrderGetInteger(ORDER_TICKET);
            订单号修改挂单止损止盈(ticket,_sl_point,_tp_point);
           }
        }
  }
//+------------------------------------------------------------------+
void 新交易类::条件锁多(string _symbol,long _magic_number,double lots_percent=1.0,bool chk=true)
  {
   long _magic = _magic_number;
   static long    _ticket  = (long)魔术号返回持仓属性值(_symbol,_magic,POSITION_TICKET,0,TimeCurrent()+5);
   long   last_ticket  =(long)魔术号返回持仓属性值(_symbol,_magic,POSITION_TICKET,0,TimeCurrent()+5);
   ENUM_POSITION_TYPE last_type  =(ENUM_POSITION_TYPE) 魔术号返回持仓属性值(_symbol,_magic,POSITION_TYPE,0,TimeCurrent()+5);
   double last_volume =  魔术号返回持仓属性值(_symbol,_magic,POSITION_VOLUME,0,TimeCurrent()+5);
   string  last_comment =  魔术号返回持仓属性值(_symbol,_magic,POSITION_COMMENT,0,TimeCurrent()+5);

   if(last_ticket > _ticket && !(StringFind(last_comment,"条件锁")!=-1))
     {
      double lots = 手数自适应2(_symbol,last_volume*lots_percent);
      if(last_type==POSITION_TYPE_BUY&&chk)
         做空(_symbol,lots,0,0,_magic,"条件锁多"+last_comment+(string)last_ticket);
      _ticket=last_ticket;
     }
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void 新交易类::条件锁空(string _symbol,long _magic_number,double lots_percent=1.0,bool chk=true)
  {
   long _magic = _magic_number;

   static long    _ticket  = (long)魔术号返回持仓属性值(_symbol,_magic,POSITION_TICKET,0,TimeCurrent()+5);
   long   last_ticket  =(long)魔术号返回持仓属性值(_symbol,_magic,POSITION_TICKET,0,TimeCurrent()+5);
   ENUM_POSITION_TYPE last_type  =(ENUM_POSITION_TYPE) 魔术号返回持仓属性值(_symbol,_magic,POSITION_TYPE,0,TimeCurrent()+5);
   double last_volume =  魔术号返回持仓属性值(_symbol,_magic,POSITION_VOLUME,0,TimeCurrent()+5);
   string  last_comment =  魔术号返回持仓属性值(_symbol,_magic,POSITION_COMMENT,0,TimeCurrent()+5);

   if(last_ticket > _ticket && !(StringFind(last_comment,"条件锁")!=-1))
     {
      double lots = 手数自适应2(_symbol,last_volume*lots_percent);
      if(last_type==POSITION_TYPE_SELL&&chk)
         做多(_symbol,lots,0,0,_magic,"条件锁空"+last_comment+(string)last_ticket);
      _ticket=last_ticket;
     }
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 新交易类::下单邮件提醒()
  {
//---下单邮件提醒
   static ulong  tk = 返回尾单号();
   ulong ticket = 返回尾单号();
   if(ticket> tk)
     {
      double lots = 订单号返回double属性值(ticket,POSITION_VOLUME);
      ulong type= 订单号返回integer属性值(ticket,POSITION_TYPE);
      string _symbol = 订单号返回string属性值(ticket,POSITION_SYMBOL);

      string value ="";
      if(type==0)
         value="long ";
      if(type==1)
         value="short ";
      SendMail(TimeToString(TimeLocal(),TIME_DATE|TIME_MINUTES|TIME_SECONDS),       // header
               _symbol+" open_"+value+(string)lots);
      Print(TimeToString(TimeLocal(),TIME_DATE|TIME_MINUTES|TIME_SECONDS),       // header
            _symbol+" open_"+value+(string)lots);
      tk=ticket;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::步距持仓盈利回撤金额检测(int orders,double position_profit,double start_profit,double mondy)
  {
//---盈亏统计
   if(start_profit>0&&mondy>0)
     {
      static double profit = 0;
      if(orders==0)
         profit = 0;
      else
        {
         double position_profits = position_profit;
         if(position_profits>profit+2*mondy)
            profit = profit+mondy;
         if(profit>0&&profit>=start_profit-mondy  && position_profits<= profit)
            return true;
        }
     }
   return false;
  }
//+------------------------------------------------------------------+
#endif
//+------------------------------------------------------------------+
