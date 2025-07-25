//+------------------------------------------------------------------+
//|                                                      ProjectName |
//|                                      Copyright 2020, CompanyName |
//|                                       http://www.companyname.net |
//+------------------------------------------------------------------+
#property copyright "@Π.EA 大树My05613828"
#property link      "https://www.eahub.cn/space-uid-8564.html"
//#property version   "1.0"
//#property  icon     "//include//M4//logo.ico"
#define  _新交易类
#ifdef _新交易类
/*#import "kernel32.dll"
int CopyFileW(string a0,string a1,int a2);
bool CreateDirectoryW(string a0,int a1);
#import*/

#include <M4/交易类.mqh>

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
class 新交易类 :public 交易类
  {
public:
   long              time_seconds0,time_seconds1,time_seconds2,time_seconds3,time_seconds4,time_seconds5,time_seconds6,time_seconds7,time_seconds8,time_seconds9;
   datetime          time_k0,time_k1,time_k2,time_k3,time_k4,time_k5,time_k6,time_k7,time_k8,time_k9;
   bool              close_order_chk0,close_order_chk1,close_order_chk2;
   long              time_0,time_1,time_2;
                     新交易类();
                    ~新交易类();

   ulong             订单号返回持仓integer属性值(string _symbol,int ticket,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim);
   double            订单号返回持仓double属性值(string _symbol,int ticket,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim);
   string            订单号返回持仓string属性值(string _symbol,int ticket,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim);
   ulong             魔术号返回持仓integer属性值(string _symbol,int _magic_number,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim);
   double            魔术号返回持仓double属性值(string _symbol,int _magic_number,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim);
   string            魔术号返回持仓string属性值(string _symbol,int _magic_number,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim);
   ulong             注释返回持仓integer属性值(string _symbol,string _comment,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim);
   double            注释返回持仓double属性值(string _symbol,string _comment,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim);
   string            注释返回持仓string属性值(string _symbol,string _comment,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim);

   ulong             订单号返回历史integer属性值(string _symbol,int ticket,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim);
   double            订单号返回历史double属性值(string _symbol,int ticket,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim);
   string            订单号返回历史string属性值(string _symbol,int ticket,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim);
   ulong             魔术号返回历史integer属性值(string _symbol,int _magic_number,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim);
   double            魔术号返回历史double属性值(string _symbol,int _magic_number,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim);
   string            魔术号返回历史string属性值(string _symbol,int _magic_number,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim);
   ulong             注释返回历史integer属性值(string _symbol,string _comment,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim);
   double            注释返回历史double属性值(string _symbol,string _comment,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim);
   string            注释返回历史string属性值(string _symbol,string _comment,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim);
   //----
   ulong             订单号返回持仓integer属性值(string _symbol,int ticket,int _order_type,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim);
   double            订单号返回持仓double属性值(string _symbol,int ticket,int _order_type,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim);
   string            订单号返回持仓string属性值(string _symbol,int ticket,int _order_type,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim);
   ulong             魔术号返回持仓integer属性值(string _symbol,int _magic_number,int _order_type,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim);
   double            魔术号返回持仓double属性值(string _symbol,int _magic_number,int _order_type,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim);
   string            魔术号返回持仓string属性值(string _symbol,int _magic_number,int _order_type,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim);
   ulong             注释返回持仓integer属性值(string _symbol,string _comment,int _order_type,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim);
   double            注释返回持仓double属性值(string _symbol,string _comment,int _order_type,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim);
   string            注释返回持仓string属性值(string _symbol,string _comment,int _order_type,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim);

   ulong             订单号返回历史integer属性值(string _symbol,int ticket,int _order_type,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim);
   double            订单号返回历史double属性值(string _symbol,int ticket,int _order_type,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim);
   string            订单号返回历史string属性值(string _symbol,int ticket,int _order_type,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim);
   ulong             魔术号返回历史integer属性值(string _symbol,int _magic_number,int _order_type,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim);
   double            魔术号返回历史double属性值(string _symbol,int _magic_number,int _order_type,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim);
   string            魔术号返回历史string属性值(string _symbol,int _magic_number,int _order_type,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim);
   ulong             注释返回历史integer属性值(string _symbol,string _comment,int _order_type,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim);
   double            注释返回历史double属性值(string _symbol,string _comment,int _order_type,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim);
   string            注释返回历史string属性值(string _symbol,string _comment,int _order_type,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim);

   //-----上含币种 下不含币
   ulong             订单号返回持仓integer属性值(int ticket,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim);
   double            订单号返回持仓double属性值(int ticket,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim);
   string            订单号返回持仓string属性值(int ticket,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim);
   ulong             魔术号返回持仓integer属性值(int _magic_number,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim);
   double            魔术号返回持仓double属性值(int _magic_number,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim);
   string            魔术号返回持仓string属性值(int _magic_number,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim);
   ulong             注释返回持仓integer属性值(string _comment,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim);
   double            注释返回持仓double属性值(string _comment,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim);
   string            注释返回持仓string属性值(string _comment,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim);

   ulong             订单号返回历史integer属性值(int ticket,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim);
   double            订单号返回历史double属性值(int ticket,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim);
   string            订单号返回历史string属性值(int ticket,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim);
   ulong             魔术号返回历史integer属性值(int _magic_number,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim);
   double            魔术号返回历史double属性值(int _magic_number,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim);
   string            魔术号返回历史string属性值(int _magic_number,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim);
   ulong             注释返回历史integer属性值(string _comment,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim);
   double            注释返回历史double属性值(string _comment,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim);
   string            注释返回历史string属性值(string _comment,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim);

   void              盈利带亏损带方向(string _symbol,int _magic_number,string _comment,int type,double 设置金额);
   void              盈利带亏损带方向(string _symbol,int _magic_number,int type,double 设置金额);
   void              盈利带亏损带方向(string _symbol,int type,double 设置金额);
   void              盈利带亏损带方向(int _magic_number,int type,double 设置金额);
   //---
   void              盈利带亏损(string _symbol,int _magic_number,string _comment,double 设置金额);
   void              盈利带亏损(string _symbol,int _magic_number,double 设置金额);
   void              盈利带亏损(string _symbol,double 设置金额);
   void              盈利带亏损(int _magic_number,double 设置金额);
   //-------
   void              新平单(string _symbol,int _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              新平多(string _symbol,int _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              新平空(string _symbol,int _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   //-------
   void              新平单(string _symbol,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              新平多(string _symbol,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              新平空(string _symbol,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   //-------
   void              新平单(int _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              新平多(int _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              新平空(int _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);

   void              价格修改止损(string _symbol,string _comment,double 止损价格,ENUM_LONG_SHORT_MODE long_or_short=0);
   void              移动价格修改止损(string _symbol,string _comment,double 止损价格,ENUM_LONG_SHORT_MODE long_or_short=0);

   int               持仓单数统计(string _symbol,string _comment,int _order_type);
   int               持仓单数统计(string _symbol,string _comment);

   void              手动平单(string 多注释,string 空注释);
   void              手动平单(string _comment);
   void              手动平多(string _comment);
   void              手动平空(string _comment);

   void              手动平单(int 多幻数,int 空幻数);
   void              手动平单(int 幻数);
   void              手动平多(int 幻数);
   void              手动平空(int 幻数);

   void              币种手动平单(string _symbol,string 多注释,string 空注释);
   void              币种手动平单(string _symbol,string _comment);
   void              币种手动平多(string _symbol,string _comment);
   void              币种手动平空(string _symbol,string _comment);

   void              币种手动平单(string _symbol,int 多幻数,int 空幻数);
   void              币种手动平单(string _symbol,int 幻数);
   void              币种手动平多(string _symbol,int 幻数);
   void              币种手动平空(string _symbol,int 幻数);
   int               Highest(const double &array[],const int depth,const int start);
   int               Lowest(const double &array[],const int depth,const int start);

   //+------------------------------------------------------------------+
   int               价格限价挂多(string _symbol,double _lot,double 挂单价格,double 止损价格,double 止盈价格,int _magic_number,string _comment);
   //+------------------------------------------------------------------+
   int               价格限价挂空(string _symbol,double _lot,double 挂单价格,double 止损价格,double 止盈价格,int _magic_number,string _comment);
   //+------------------------------------------------------------------+
   int               价格突破挂多(string _symbol,double _lot,double 挂单价格,double 止损价格,double 止盈价格,int _magic_number,string _comment);
   //+------------------------------------------------------------------+
   int               价格突破挂空(string _symbol,double _lot,double 挂单价格,double 止损价格,double 止盈价格,int _magic_number,string _comment);
   void              修改止损止盈(double 止损点数,double 止盈点数,ENUM_LONG_SHORT_MODE long_or_short=0);
   void              修改止损(double 止损点数,ENUM_LONG_SHORT_MODE long_or_short=0);
   void              修改止盈(double 止盈点数,ENUM_LONG_SHORT_MODE long_or_short=0);

   bool              在价格区间(double 参考价,double 价格上限,double 价格下限);
   int               周期持仓单数统计(string _symbol,int _magic_number,string _comment,int _order_type,ENUM_TIMEFRAMES _time_frame=PERIOD_D1);
   int               周期持仓单数统计(string _symbol,int _magic_number,int _order_type,ENUM_TIMEFRAMES _time_frame=PERIOD_D1);
   int               周期持仓单数统计(int _magic_number,int _order_type,ENUM_TIMEFRAMES _time_frame=PERIOD_D1);
   int               周期持仓单数统计(string _symbol,int _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame=PERIOD_D1);
   int               周期持仓单数统计(string _symbol,int _magic_number,ENUM_TIMEFRAMES _time_frame=PERIOD_D1);
   int               周期持仓单数统计(int _magic_number,ENUM_TIMEFRAMES _time_frame=PERIOD_D1);

   bool              预付款维持率检测(double 可用预付款百分比限制);
   bool              结余盈利回撤百分比检测(string _symbol,double 盈利百分比=0,double 回撤百分比=0);
   bool              周期时间更新检测(string _symbol,ENUM_TIMEFRAMES _time_frame,bool &chk);
   ulong             提前K秒数(ulong 传入时间,ENUM_TIMEFRAMES _time_frame,long 提前秒数,int 几根=1);
   bool              提前K秒数检测(ulong 传入时间,ENUM_TIMEFRAMES _time_frame,long 提前秒数,int 几根=1);
   void              模板(string 模板名);

   double            昨日结余(datetime _start_tim);
   bool              持仓类型();
   bool              昨日结余盈利回撤百分比检测(double 昨日结余,double 盈利百分比=0,double 回撤百分比=0);

   bool              单位毫秒do1(double 间隔毫秒);
   bool              单位毫秒do2(double 间隔毫秒);
   bool              单位毫秒do3(double 间隔毫秒);
   bool              单位毫秒do4(double 间隔毫秒);
   bool              单位毫秒1(double 间隔毫秒);
   bool              单位毫秒2(double 间隔毫秒);
   bool              单位毫秒3(double 间隔毫秒);
   bool              单位毫秒4(double 间隔毫秒);
   //+------------------------------------------------------------------
   //+------------------------------------------------------------------+
   bool              单位微秒do1(double _millisecond);
   bool              单位微秒do2(double _millisecond);
   bool              单位微秒do3(double _millisecond);
   bool              单位微秒do4(double _millisecond);
   bool              单位微秒1(double _millisecond);
   bool              单位微秒2(double _millisecond);
   bool              单位微秒3(double _millisecond);
   bool              单位微秒4(double _millisecond);
   //+------------------------------------------------------------------+
   //+------------------------------------------------------------------+
   bool              单位毫秒向上差点值之外(string _symbol,double 设置差点值,double 间隔毫秒,double 参考价);
   bool              单位毫秒向下差点值之外(string _symbol,double 设置差点值,double 间隔毫秒,double 参考价);
   double            单位毫秒差值(double 间隔毫秒,double 参考价);
   double            单位毫秒向上差值(double 间隔毫秒,double 参考价);
   double            单位毫秒向下差值(double 间隔毫秒,double 参考价);
   //+------------------------------------------------------------------+
   bool              单位微秒向上差点值之外(string _symbol,double 设置差点值,double _millisecond,double 参考价);
   bool              单位微秒向下差点值之外(string _symbol,double 设置差点值,double _millisecond,double 参考价);
   double            单位微秒差值(double _millisecond,double 参考价);
   double            单位微秒向上差值(double _millisecond,double 参考价);
   double            单位微秒向下差值(double _millisecond,double 参考价);
   void              注释包含盈利点数折仓(string _symbol,int _magic_number,string _comment,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0);
   void              方向带单(string _symbol,int _magic_number,string _comment,int 方向1,int 方向2,double 盈利启动金额,double 带单后盈利金额=0);
   void              方向带单(string _symbol,int _magic_number,int 方向1,int 方向2,double 盈利启动金额,double 带单后盈利金额=0);
   void              方向带单(string _symbol,int 方向1,int 方向2,double 盈利启动金额,double 带单后盈利金额=0);
   void              方向带单(int _magic_number,int 方向1,int 方向2,double 盈利启动金额,double 带单后盈利金额=0);
   bool              在时间区间(string _start_tim,string _end_tim,datetime time,int 壹服贰电=1);
   //   void              QQ微信消息推送(string 信息1="",string 信息2="",string 信息3="",string 信息4="",string 信息5="",string 信息6="",string 信息7="",string 信息8="",string 信息9="");
   bool              保本(string _symbol,int _magic_number,string _comment,double 启动点数,double 保本点数,ENUM_LONG_SHORT_MODE long_or_short=0);
   bool              保本(string _symbol,int _magic_number,double 启动点数,double 保本点数,ENUM_LONG_SHORT_MODE long_or_short=0);
   bool              亏损持仓均价平单(string _symbol,int _magic_number,int 持仓方向,double 设置平单点数);
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
   int               手数返回持仓单数(string _symbol,int _magic_number,string _comment,int _order_type,double lot,long 进单时间=0);
   int               手数返回持仓单数(string _symbol,int _magic_number,int _order_type,double lot,long 进单时间=0);
   int               手数返回持仓单数(string _symbol,int _magic_number,string _comment,double lot,long 进单时间=0);
   int               手数返回持仓单数(string _symbol,int _magic_number,double lot,long 进单时间=0);
   int               手数返回持仓单数(int _magic_number,double lot,long 进单时间=0);
   bool              净值结余百分比(double percentage,int 壹上贰下=2);
   bool              str_check(string in_str1,string in_str2,int index=3);
   //+------------------------------------------------------------------+
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
   bool              arr_jx_chk(int cnt,double& min_z[],double& max_z[]);
   bool              arr_sx_chk(int cnt,double& min_z[],double& max_z[]);
   bool              atr_chk(string symbol,ENUM_TIMEFRAMES _time_frame=PERIOD_CURRENT,int cnt=5,double point=180);
   void              二K一单做多(string symbol,double lot,double _sl_point,double _tp_point,int  _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index);
   void              二K一单做空(string symbol,double lot,double _sl_point,double _tp_point,int  _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index);
   void              二K一单做多2(string symbol,double lot,double _sl_point,double _tp_point,int  _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index);
   void              二K一单做空2(string symbol,double lot,double _sl_point,double _tp_point,int  _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index);
   void              价格2K一单做多(string symbol,double lot,double _sl_price,double _tp_price,int  _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index);
   void              价格2K一单做空(string symbol,double lot,double _sl_price,double _tp_price,int  _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index);
   void              价格2K一单做多2(string symbol,double lot,double _sl_price,double _tp_price,int  _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index);
   void              价格2K一单做空2(string symbol,double lot,double _sl_price,double _tp_price,int  _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index);
   bool              k线触碰检测(string symbol,ENUM_TIMEFRAMES _time_frame,string 回调或反抽,int index,double value1);
   bool              tim_second0_chk(long second);
   bool              tim_second1_chk(long second);
   bool              tim_second2_chk(long second);
   bool              tim_second3_chk(long second);
   bool              tim_second4_chk(long second);
   bool              tim_second5_chk(long second);
   bool              tim_second6_chk(long second);
   bool              tim_second7_chk(long second);
   bool              tim_second8_chk(long second);
   bool              tim_second9_chk(long second);

   bool              tim_k0_chk(datetime time);
   bool              tim_k1_chk(datetime time);
   bool              tim_k2_chk(datetime time);
   bool              tim_k3_chk(datetime time);
   bool              tim_k4_chk(datetime time);
   bool              tim_k5_chk(datetime time);
   bool              tim_k6_chk(datetime time);
   bool              tim_k7_chk(datetime time);
   bool              tim_k8_chk(datetime time);
   bool              tim_k9_chk(datetime time);



   template<typename Tx,typename T>
   bool              线内检测(Tx price,T up_prices,T down_prices);
   template<typename Tx,typename T>
   bool              线外检测(Tx price,T up_prices,T down_prices);

   bool              开单后平仓时间检测0(int orders,long& tim);
   bool              开单后平仓时间检测1(int orders,long& tim);
   bool              开单后平仓时间检测2(int orders,long& tim);

   bool              步距持仓盈利回撤金额检测(int orders,double position_profit,double start_profit,double mondy);
   bool              持仓盈利回撤百分比检测(int orders,double position_profit,double start_profit,double percent);
   bool              每日净值回撤百分比检测(double equit_percents);
   bool              净值追踪(double equit_lit);
   bool              净值追踪(double equit,double equit_lit);
   bool              K线穿越某值(string symbol,ENUM_TIMEFRAMES _time_frame,ENUM_UPDOWN_MODE up_or_down,ENUM_OHLC_MODE ohlc,int index,double 某值1,double 某值0,int k_shift = 2);//---1向上2 向下穿越
   void              订单号修改挂单止损止盈(int ticket,double _sl_point,double _tp_point);
   void              修改挂单止损止盈(string symbols,int _magic_number,string _comment,int _order_type,double _sl_point,double _tp_point);
   void              修改挂单止损止盈(string symbols,int _magic_number,int _order_type,double _sl_point,double _tp_point);
   void              修改挂单止损止盈(string symbols,int _magic_number,string _comment,double _sl_point,double _tp_point);
   void              修改挂单止损止盈(string symbols,int _magic_number,double _sl_point,double _tp_point);
   void              条件锁多(string symbol,int _magic_number,double lots_percent=1.0,bool chk=true);
   void              条件锁空(string symbol,int _magic_number,double lots_percent=1.0,bool chk=true);
public:
   bool              新交易类::下单邮件提醒();
private:
  };
//+------------------------------------------------------------------+
新交易类::新交易类()
  {
   prefix="Π.EA ";
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
//+------------------------------------------------------------------+
ulong  新交易类::订单号返回持仓integer属性值(string _symbol,int ticket,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim)
  {
   ulong vaule=0;
   if(ticket>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderTicket()==ticket&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim)
              {
               vaule = GetInteger(property);
               break;
              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::订单号返回持仓double属性值(string _symbol,int ticket,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim)
  {
   double vaule=0;
   if(ticket>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderTicket()==ticket&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim)
              {
               vaule = GetDouble(property);
               break;
              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::订单号返回持仓string属性值(string _symbol,int ticket,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim)
  {
   string vaule="";
   if(ticket>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderTicket()==ticket&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim)
              {
               vaule = GetString(property);
               break;
              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::魔术号返回持仓integer属性值(string _symbol,int _magic_number,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim)
  {
   ulong vaule=0;
   if(property ==_ORDER_TYPE)
      vaule=-1;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim)
              {
               vaule = GetInteger(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::魔术号返回持仓double属性值(string _symbol,int _magic_number,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim)
  {
   double vaule=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim)
              {
               vaule = GetDouble(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::魔术号返回持仓string属性值(string _symbol,int _magic_number,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim)
  {
   string vaule="";
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim)
              {
               vaule = GetString(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::注释返回持仓integer属性值(string _symbol,string _comment,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim)
  {
   ulong vaule=0;
   if(property==_ORDER_TYPE)
      vaule=-1;
   if(_comment!="")
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderComment()==prefix+_comment&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim)
              {
               vaule = GetInteger(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::注释返回持仓double属性值(string _symbol,string _comment,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim)
  {
   double vaule=0;
   if(_comment!="")
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderComment()==prefix+_comment&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim)
              {
               vaule = GetDouble(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::注释返回持仓string属性值(string _symbol,string _comment,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim)
  {
   string vaule="";
   if(_comment!="")
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderComment()==prefix+_comment&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim)
              {
               vaule = GetString(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::订单号返回历史integer属性值(string _symbol,int ticket,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim)
  {
   ulong vaule=0;
   if(property==_ORDER_TYPE)
      vaule=-1;
   if(ticket>0)
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderTicket()==ticket&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim)
              {
               vaule = GetInteger(property);
               break;
              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::订单号返回历史double属性值(string _symbol,int ticket,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim)
  {
   double vaule=0;
   if(ticket>0)
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderTicket()==ticket&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim)
              {
               vaule = GetDouble(property);
               break;
              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::订单号返回历史string属性值(string _symbol,int ticket,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim)
  {
   string vaule="";
   if(ticket>0)
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderTicket()==ticket&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim)
              {
               vaule = GetString(property);
               break;
              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::魔术号返回历史integer属性值(string _symbol,int _magic_number,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim)
  {
   ulong vaule=0;
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim)
              {
               vaule = GetInteger(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::魔术号返回历史double属性值(string _symbol,int _magic_number,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim)
  {
   double vaule=0;
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim)
              {
               vaule = GetDouble(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::魔术号返回历史string属性值(string _symbol,int _magic_number,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim)
  {
   string vaule="";
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim)
              {
               vaule = GetString(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::注释返回历史integer属性值(string _symbol,string _comment,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim)
  {
   ulong vaule=0;
   if(property==_ORDER_TYPE)
      vaule=-1;
   if(_comment!="")
     {
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderComment()==prefix+_comment&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim)
              {
               vaule = GetInteger(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::注释返回历史double属性值(string _symbol,string _comment,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim)
  {
   double vaule=0;
   if(_comment!="")
     {
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderComment()==prefix+_comment&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim)
              {
               vaule = GetDouble(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::注释返回历史string属性值(string _symbol,string _comment,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim)
  {
   string vaule="";
   if(_comment!="")
     {
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderComment()==prefix+_comment&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim)
              {
               vaule = GetString(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::订单号返回持仓integer属性值(int ticket,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim)
  {
   ulong vaule=0;
   if(property==_ORDER_TYPE)
      vaule=-1;
   if(ticket>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderTicket()==ticket&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim)
              {
               vaule = GetInteger(property);
               break;
              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::订单号返回持仓double属性值(int ticket,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim)
  {
   double vaule=0;
   if(ticket>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderTicket()==ticket&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim)
              {
               vaule = GetDouble(property);
               break;
              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::订单号返回持仓string属性值(int ticket,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim)
  {
   string vaule="";
   if(ticket>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderTicket()==ticket&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim)
              {
               vaule = GetString(property);
               break;
              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::魔术号返回持仓integer属性值(int _magic_number,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim)
  {
   ulong vaule=0;
   if(property==_ORDER_TYPE)
      vaule=-1;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderMagicNumber()==magic&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim)
              {
               vaule = GetInteger(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::魔术号返回持仓double属性值(int _magic_number,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim)
  {
   double vaule=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderMagicNumber()==magic&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim)
              {
               vaule = GetDouble(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::魔术号返回持仓string属性值(int _magic_number,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim)
  {
   string vaule="";
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderMagicNumber()==magic&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim)
              {
               vaule = GetString(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::注释返回持仓integer属性值(string _comment,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim)
  {
   ulong vaule=0;
   if(property==_ORDER_TYPE)
      vaule=-1;
   if(_comment!="")
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderComment()==prefix+_comment&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim)
              {
               vaule = GetInteger(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::注释返回持仓double属性值(string _comment,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim)
  {
   double vaule=0;
   if(_comment!="")
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderComment()==prefix+_comment&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim)
              {
               vaule = GetDouble(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::注释返回持仓string属性值(string _comment,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim)
  {
   string vaule="";
   if(_comment!="")
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderComment()==prefix+_comment&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim)
              {
               vaule = GetString(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::订单号返回历史integer属性值(int ticket,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim)
  {
   ulong vaule=0;
   if(property==_ORDER_TYPE)
      vaule=-1;
   if(ticket>0)
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderTicket()==ticket&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim)
              {
               vaule = GetInteger(property);
               break;
              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::订单号返回历史double属性值(int ticket,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim)
  {
   double vaule=0;
   if(ticket>0)
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderTicket()==ticket&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim)
              {
               vaule = GetDouble(property);
               break;
              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::订单号返回历史string属性值(int ticket,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim)
  {
   string vaule="";
   if(ticket>0)
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderTicket()==ticket&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim)
              {
               vaule = GetString(property);
               break;
              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::魔术号返回历史integer属性值(int _magic_number,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim)
  {
   ulong vaule=0;
   if(property==_ORDER_TYPE)
      vaule=-1;
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderMagicNumber()==magic&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim)
              {
               vaule = GetInteger(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::魔术号返回历史double属性值(int _magic_number,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim)
  {
   double vaule=0;
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderMagicNumber()==magic&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim)
              {
               vaule = GetDouble(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::魔术号返回历史string属性值(int _magic_number,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim)
  {
   string vaule="";
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderMagicNumber()==magic&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim)
              {
               vaule = GetString(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::注释返回历史integer属性值(string _comment,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim)
  {
   ulong vaule=0;
   if(property==_ORDER_TYPE)
      vaule=-1;
   if(_comment!="")
     {
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderComment()==prefix+_comment&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim)
              {
               vaule = GetInteger(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::注释返回历史double属性值(string _comment,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim)
  {
   double vaule=0;
   if(_comment!="")
     {
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderComment()==prefix+_comment&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim)
              {
               vaule = GetDouble(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::注释返回历史string属性值(string _comment,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim)
  {
   string vaule="";
   if(_comment!="")
     {
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderComment()==prefix+_comment&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim)
              {
               vaule = GetString(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损带方向(string _symbol,int _magic_number,string _comment,int type,double 设置金额)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol &&OrderMagicNumber()==magic&&OrderComment()==prefix+_comment&&OrderType()==type)
              {
               a[i][0]=OrderProfit();
               a[i][1]=(double)OrderTicket();
              }
           }
        }
     }
   ArraySort(a);
   int s=ArraySize(a);
   double 金额累计=0;
   for(int i=s-1; i>=0; i--)
     {
      金额累计+=a[i][0];
      if(金额累计>设置金额)
        {订单号平单((int)a[i][1]); Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);}
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损带方向(string _symbol,int _magic_number,int type,double 设置金额)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol &&OrderMagicNumber()==magic&&OrderType()==type)
              {
               a[i][0]=OrderProfit();
               a[i][1]=(double)OrderTicket();
              }
           }
        }
     }
   ArraySort(a);
   int s=ArraySize(a);
   double 金额累计=0;
   for(int i=s-1; i>=0; i--)
     {
      金额累计+=a[i][0];
      if(金额累计>设置金额)
        {订单号平单((int)a[i][1]); Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);}
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损带方向(string _symbol,int type,double 设置金额)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderType()==type)
           {
            a[i][0]=OrderProfit();
            a[i][1]=(double)OrderTicket();
           }
        }
     }
   ArraySort(a);
   int s=ArraySize(a);
   double 金额累计=0;
   for(int i=s-1; i>=0; i--)
     {
      金额累计+=a[i][0];
      if(金额累计>设置金额)
        {订单号平单((int)a[i][1]); Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);}
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损带方向(int _magic_number,int type,double 设置金额)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderMagicNumber()==magic&&OrderType()==type)
              {
               a[i][0]=OrderProfit();
               a[i][1]=(double)OrderTicket();
              }
           }
        }
     }
   ArraySort(a);
   int s=ArraySize(a);
   double 金额累计=0;
   for(int i=s-1; i>=0; i--)
     {
      金额累计+=a[i][0];
      if(金额累计>设置金额)
        {订单号平单((int)a[i][1]); Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);}
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损(string _symbol,int _magic_number,string _comment,double 设置金额)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol &&OrderMagicNumber()==magic&&OrderComment()==prefix+_comment)
              {
               a[i][0]=OrderProfit();
               a[i][1]=(double)OrderTicket();
              }
           }
        }
     }
   ArraySort(a);
   int s=ArraySize(a);
   double 金额累计=0;
   for(int i=s-1; i>=0; i--)
     {
      金额累计+=a[i][0];
      if(金额累计>设置金额)
        {订单号平单((int)a[i][1]); Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);}
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损(string _symbol,int _magic_number,double 设置金额)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol &&OrderMagicNumber()==magic)
              {
               a[i][0]=OrderProfit();
               a[i][1]=(double)OrderTicket();
              }
           }
        }
     }
   ArraySort(a);
   int s=ArraySize(a);
   double 金额累计=0;
   for(int i=s-1; i>=0; i--)
     {
      金额累计+=a[i][0];
      if(金额累计>设置金额)
        {订单号平单((int)a[i][1]); Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);}
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损(string _symbol,double 设置金额)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0&&OrderSymbol()==_symbol)
           {
            a[i][0]=OrderProfit();
            a[i][1]=(double)OrderTicket();
           }
        }
     }
   ArraySort(a);
   int s=ArraySize(a);
   double 金额累计=0;
   for(int i=s-1; i>=0; i--)
     {
      金额累计+=a[i][0];
      if(金额累计>设置金额)
        {订单号平单((int)a[i][1]); Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);}
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损(int _magic_number,double 设置金额)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderMagicNumber()==magic)
              {
               a[i][0]=OrderProfit();
               a[i][1]=(double)OrderTicket();
              }
           }
        }
     }
   ArraySort(a);
   int s=ArraySize(a);
   double 金额累计=0;
   for(int i=s-1; i>=0; i--)
     {
      金额累计+=a[i][0];
      if(金额累计>设置金额)
        {订单号平单((int)a[i][1]); Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);}
     }
  }
//+------------------------------------------------------------------+
//+---------------------
void 新交易类::新平单(string _symbol,int _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderComment()==prefix+_comment)
              {
               string  反手币种=OrderSymbol();
               double  反手手数=OrderLots();
               double 反手开盘价=OrderOpenPrice();
               double 反手止损价格=OrderStopLoss();
               double 反手止盈价格=OrderTakeProfit();
               double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
               int 反手Magic=OrderMagicNumber();
               string 反手注释=OrderComment();
               int ticket=OrderTicket();
               switch(OrderType())
                 {
                  case OP_BUY:
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),(int)deviation(slippage,_symbol),Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
                     break;
                  case OP_SELL:
                     result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),(int)deviation(slippage,_symbol),Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
                     break;
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+---------------------
void 新交易类::新平多(string _symbol,int _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderComment()==prefix+_comment)
              {
               string  反手币种=OrderSymbol();
               double  反手手数=OrderLots();
               double 反手开盘价=OrderOpenPrice();
               double 反手止损价格=OrderStopLoss();
               double 反手止盈价格=OrderTakeProfit();
               double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
               int 反手Magic=OrderMagicNumber();
               string 反手注释=OrderComment();
               int ticket=OrderTicket();
               switch(OrderType())
                 {
                  case OP_BUY:
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),(int)deviation(slippage,_symbol),Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
                     break;
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+---------------------
void 新交易类::新平空(string _symbol,int _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderComment()==prefix+_comment)
              {
               string  反手币种=OrderSymbol();
               double  反手手数=OrderLots();
               double 反手开盘价=OrderOpenPrice();
               double 反手止损价格=OrderStopLoss();
               double 反手止盈价格=OrderTakeProfit();
               double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
               int 反手Magic=OrderMagicNumber();
               string 反手注释=OrderComment();
               int ticket=OrderTicket();
               switch(OrderType())
                 {
                  case OP_SELL:
                     result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),(int)deviation(slippage,_symbol),Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
                     break;
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+---------------------
void 新交易类::新平单(string _symbol,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderSymbol()==_symbol&&OrderComment()==prefix+_comment)
           {
            string  反手币种=OrderSymbol();
            double  反手手数=OrderLots();
            double 反手开盘价=OrderOpenPrice();
            double 反手止损价格=OrderStopLoss();
            double 反手止盈价格=OrderTakeProfit();
            double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
            double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
            int 反手Magic=OrderMagicNumber();
            string 反手注释=OrderComment();
            int ticket=OrderTicket();
            switch(OrderType())
              {
               case OP_BUY:
                  result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),(int)deviation(slippage,_symbol),Yellow);
                  if(是否立即反手)
                     做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
                  break;
               case OP_SELL:
                  result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),(int)deviation(slippage,_symbol),Red);
                  if(是否立即反手)
                     做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
                  break;
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+---------------------
void 新交易类::新平多(string _symbol,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderSymbol()==_symbol&&OrderComment()==prefix+_comment)
           {
            string  反手币种=OrderSymbol();
            double  反手手数=OrderLots();
            double 反手开盘价=OrderOpenPrice();
            double 反手止损价格=OrderStopLoss();
            double 反手止盈价格=OrderTakeProfit();
            double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
            double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
            int 反手Magic=OrderMagicNumber();
            string 反手注释=OrderComment();
            int ticket=OrderTicket();
            switch(OrderType())
              {
               case OP_BUY:
                  result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),(int)deviation(slippage,_symbol),Yellow);
                  if(是否立即反手)
                     做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
                  break;
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+---------------------
void 新交易类::新平空(string _symbol,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderSymbol()==_symbol&&OrderComment()==prefix+_comment)
           {
            string  反手币种=OrderSymbol();
            double  反手手数=OrderLots();
            double 反手开盘价=OrderOpenPrice();
            double 反手止损价格=OrderStopLoss();
            double 反手止盈价格=OrderTakeProfit();
            double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
            double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
            int 反手Magic=OrderMagicNumber();
            string 反手注释=OrderComment();
            int ticket=OrderTicket();
            switch(OrderType())
              {
               case OP_SELL:
                  result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),(int)deviation(slippage,_symbol),Red);
                  if(是否立即反手)
                     做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
                  break;
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//+---------------------
void 新交易类::新平单(int _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderMagicNumber()==magic&&OrderComment()==prefix+_comment)
              {
               string  反手币种=OrderSymbol();
               double  反手手数=OrderLots();
               double 反手开盘价=OrderOpenPrice();
               double 反手止损价格=OrderStopLoss();
               double 反手止盈价格=OrderTakeProfit();
               double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
               int 反手Magic=OrderMagicNumber();
               string 反手注释=OrderComment();
               int ticket=OrderTicket();
               switch(OrderType())
                 {
                  case OP_BUY:
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),(int)deviation(slippage,OrderSymbol()),Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
                     break;
                  case OP_SELL:
                     result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),(int)deviation(slippage,OrderSymbol()),Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
                     break;
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+---------------------
void 新交易类::新平多(int _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderMagicNumber()==magic&&OrderComment()==prefix+_comment)
              {
               string  反手币种=OrderSymbol();
               double  反手手数=OrderLots();
               double 反手开盘价=OrderOpenPrice();
               double 反手止损价格=OrderStopLoss();
               double 反手止盈价格=OrderTakeProfit();
               double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
               int 反手Magic=OrderMagicNumber();
               string 反手注释=OrderComment();
               int ticket=OrderTicket();
               switch(OrderType())
                 {
                  case OP_BUY:
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),(int)deviation(slippage,OrderSymbol()),Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
                     break;
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+---------------------
void 新交易类::新平空(int _magic_number,string _comment,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderMagicNumber()==magic&&OrderComment()==prefix+_comment)
              {
               string  反手币种=OrderSymbol();
               double  反手手数=OrderLots();
               double 反手开盘价=OrderOpenPrice();
               double 反手止损价格=OrderStopLoss();
               double 反手止盈价格=OrderTakeProfit();
               double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
               int 反手Magic=OrderMagicNumber();
               string 反手注释=OrderComment();
               int ticket=OrderTicket();
               switch(OrderType())
                 {
                  case OP_SELL:
                     result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),(int)deviation(slippage,OrderSymbol()),Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)ticket);
                     break;
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             新交易类::价格修改止损(string _symbol,string _comment,double 止损价格,ENUM_LONG_SHORT_MODE long_or_short=0)
  {
   if(止损价格>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderSymbol()==_symbol&&OrderComment()==prefix+_comment)
              {
               double  多止损价格=止损价格;
               double  空止损价格=止损价格;
               if(止损价格==1)
                 {
                  多止损价格=0;
                  空止损价格=0;
                 }
               if(止损价格==2)
                 {
                  多止损价格=OrderStopLoss();
                  空止损价格=OrderStopLoss();
                 }
               if(OrderType()==OP_BUY&&OrderStopLoss()!=止损价格&&(long_or_short==LONG_SHORT_ALL||long_or_short==LONG))
                  bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),多止损价格,OrderTakeProfit(),OrderExpiration(),CLR_NONE);
               if(OrderType()==OP_SELL&&OrderStopLoss()!=止损价格&&(long_or_short==LONG_SHORT_ALL||long_or_short==SHORT))
                  bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),空止损价格,OrderTakeProfit(),OrderExpiration(),CLR_NONE);
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             新交易类::移动价格修改止损(string _symbol,string _comment,double 止损价格,ENUM_LONG_SHORT_MODE long_or_short=0)
  {
   if(止损价格>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderSymbol()==_symbol&&OrderComment()==prefix+_comment)
              {
               double  多止损价格=止损价格;
               double  空止损价格=止损价格;
               if(止损价格==1)
                 {
                  多止损价格=0;
                  空止损价格=0;
                 }
               if(止损价格==2)
                 {
                  多止损价格=OrderStopLoss();
                  空止损价格=OrderStopLoss();
                 }
               if(OrderType()==OP_BUY&&OrderStopLoss()!=止损价格&&(long_or_short==LONG_SHORT_ALL||long_or_short==LONG)&&(OrderStopLoss()<止损价格||OrderStopLoss()==0))
                  bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),多止损价格,OrderTakeProfit(),OrderExpiration(),CLR_NONE);
               if(OrderType()==OP_SELL&&OrderStopLoss()!=止损价格&&(long_or_short==LONG_SHORT_ALL||long_or_short==SHORT)&&(OrderStopLoss()>止损价格||OrderStopLoss()==0))
                  bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),空止损价格,OrderTakeProfit(),OrderExpiration(),CLR_NONE);
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 新交易类::持仓单数统计(string _symbol,string _comment,int _order_type)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0&&OrderSymbol()==_symbol
            &&OrderType()==_order_type&&OrderComment()==prefix+_comment)
            总单数++;
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 新交易类::持仓单数统计(string _symbol,string _comment)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderComment()==prefix+_comment)
            总单数++;
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::手动平单(string 多注释,string 空注释)
  {
   static long  更新时间1=TimeCurrent();
   int 多幻数=(int)注释返回历史integer属性值(多注释,2,更新时间1,TimeCurrent());
   int 空幻数=(int)注释返回历史integer属性值(空注释,2,更新时间1,TimeCurrent());
   if(多幻数>0)
     {
      新平多(多幻数,多注释);
      更新时间1=TimeCurrent();
     }
   if(空幻数>0)
     {
      新平空(空幻数,空注释);
      更新时间1=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
void  新交易类::手动平单(string _comment)
  {
   static long  更新时间2=TimeCurrent();
   int 幻数=(int)注释返回历史integer属性值(_comment,2,更新时间2,TimeCurrent());
   if(幻数>0)
     {
      新平单(幻数,_comment);
      更新时间2=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
void  新交易类::手动平多(string _comment)
  {
   static long  更新时间3=TimeCurrent();
   int 幻数=(int)注释返回历史integer属性值(_comment,2,更新时间3,TimeCurrent());
   if(幻数>0)
     {
      新平多(幻数,_comment);
      更新时间3=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
void  新交易类::手动平空(string _comment)
  {
   static long  更新时间4=TimeCurrent();
   int 幻数=(int)注释返回历史integer属性值(_comment,2,更新时间4,TimeCurrent());
   if(幻数>0)
     {
      新平空(幻数,_comment);
      更新时间4=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::手动平单(int 多幻数,int 空幻数)
  {
   static long  更新时间5=TimeCurrent();
   string 多注释=魔术号返回历史string属性值(多幻数,1,更新时间5,TimeCurrent());
   string 空注释=魔术号返回历史string属性值(空幻数,1,更新时间5,TimeCurrent());
   if(多注释!="")
     {
      StringReplace(多注释,prefix,"");
      新平多(多幻数,多注释);
      更新时间5=TimeCurrent();
     }
   if(空注释!="")
     {
      StringReplace(空注释,prefix,"");
      新平空(空幻数,空注释);
      更新时间5=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::手动平单(int 幻数)
  {
   static long  更新时间6=TimeCurrent();
   string _comment=魔术号返回历史string属性值(幻数,1,更新时间6,TimeCurrent());
   if(_comment!="")
     {
      StringReplace(_comment,prefix,"");
      新平单(幻数,_comment);
      更新时间6=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::手动平多(int 幻数)
  {
   static long  更新时间7=TimeCurrent();
   string _comment=魔术号返回历史string属性值(幻数,1,更新时间7,TimeCurrent());
   if(_comment!="")
     {
      StringReplace(_comment,prefix,"");
      新平多(幻数,_comment);
      更新时间7=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::手动平空(int 幻数)
  {
   static long  更新时间8=TimeCurrent();
   string _comment=魔术号返回历史string属性值(幻数,1,更新时间8,TimeCurrent());
   if(_comment!="")
     {
      StringReplace(_comment,prefix,"");
      新平空(幻数,_comment);
      更新时间8=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
void  新交易类::币种手动平单(string _symbol,string 多注释,string 空注释)
  {
   static long  更新时间9=TimeCurrent();
   int 多幻数=(int)注释返回历史integer属性值(_symbol,多注释,2,更新时间9,TimeCurrent());
   int 空幻数=(int)注释返回历史integer属性值(_symbol,空注释,2,更新时间9,TimeCurrent());
   if(多幻数>0)
     {
      平多(_symbol,多幻数,多注释);
      更新时间9=TimeCurrent();
     }
   if(空幻数>0)
     {
      平空(_symbol,空幻数,空注释);
      更新时间9=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
void  新交易类::币种手动平单(string _symbol,string _comment)
  {
   static long  更新时间10=TimeCurrent();
   int 幻数=(int)注释返回历史integer属性值(_symbol,_comment,2,更新时间10,TimeCurrent());
   if(幻数>0)
     {
      平单(_symbol,幻数,_comment);
      更新时间10=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
void  新交易类::币种手动平多(string _symbol,string _comment)
  {
   static long  更新时间11=TimeCurrent();
   int 幻数=(int)注释返回历史integer属性值(_symbol,_comment,2,更新时间11,TimeCurrent());
   if(幻数>0)
     {
      平多(_symbol,幻数,_comment);
      更新时间11=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
void  新交易类::币种手动平空(string _symbol,string _comment)
  {
   static long  更新时间12=TimeCurrent();
   int 幻数=(int)注释返回历史integer属性值(_symbol,_comment,2,更新时间12,TimeCurrent());
   if(幻数>0)
     {
      平空(_symbol,幻数,_comment);
      更新时间12=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::币种手动平单(string _symbol,int 多幻数,int 空幻数)
  {
   static long  更新时间13=TimeCurrent();
   string 多注释=魔术号返回历史string属性值(_symbol,多幻数,1,更新时间13,TimeCurrent());
   string 空注释=魔术号返回历史string属性值(_symbol,空幻数,1,更新时间13,TimeCurrent());
   if(多注释!="")
     {
      StringReplace(多注释,prefix,"");
      平多(_symbol,多幻数,多注释);
      更新时间13=TimeCurrent();
     }
   if(空注释!="")
     {
      StringReplace(空注释,prefix,"");
      平空(_symbol,空幻数,空注释);
      更新时间13=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::币种手动平单(string _symbol,int 幻数)
  {
   static long  更新时间14=TimeCurrent();
   string _comment=魔术号返回历史string属性值(_symbol,幻数,1,更新时间14,TimeCurrent());
   if(_comment!="")
     {
      StringReplace(_comment,prefix,"");
      平单(_symbol,幻数,_comment);
      更新时间14=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::币种手动平多(string _symbol,int 幻数)
  {
   static long  更新时间15=TimeCurrent();
   string _comment=魔术号返回历史string属性值(_symbol,幻数,1,更新时间15,TimeCurrent());
   if(_comment!="")
     {
      StringReplace(_comment,prefix,"");
      平多(_symbol,幻数,_comment);
      更新时间15=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::币种手动平空(string _symbol,int 幻数)
  {
   static long  更新时间16=TimeCurrent();
   string _comment=魔术号返回历史string属性值(_symbol,幻数,1,更新时间16,TimeCurrent());
   if(_comment!="")
     {
      StringReplace(_comment,prefix,"");
      平空(_symbol,幻数,_comment);
      更新时间16=TimeCurrent();
     }
  }
//+------------------------------------------------------------------
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
//+------------------------------------------------------------------+
int 新交易类::价格限价挂多(string _symbol,double _lot,double 挂单价格,double 止损价格,double 止盈价格,int _magic_number,string _comment)
  {
   if(挂单价格>0)
     {
      int magic=魔术幻数(_magic_number);
      止损价格=多最小止损价格(_symbol,止损价格);
      止盈价格=多最小止盈价格(_symbol,止盈价格);
      if(止损价格==0||止损价格==1||止损价格==2)
         止损价格=0;
      if(止盈价格==0||止盈价格==1||止盈价格==2)
         止盈价格=0;
      int 多=OrderSend(_symbol,OP_BUYLIMIT,_lot,挂单价格,(int)deviation(slippage,_symbol),止损价格,止盈价格,prefix+_comment,_magic_number,0,Violet);
      if(多<0)
        {
         Print("OrderSend 限价挂多 with error #",GetLastError());
         return 多;
        }
      return 1;
     }
   return -1;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 新交易类::价格限价挂空(string _symbol,double _lot,double 挂单价格,double 止损价格,double 止盈价格,int _magic_number,string _comment)
  {
   if(挂单价格>0)
     {
      int magic=魔术幻数(_magic_number);
      止损价格=空最小止损价格(_symbol,止损价格);
      止盈价格=空最小止盈价格(_symbol,止盈价格);
      if(止损价格==0||止损价格==1||止损价格==2)
         止损价格=0;
      if(止盈价格==0||止盈价格==1||止盈价格==2)
         止盈价格=0;
      int 空=OrderSend(_symbol,OP_SELLLIMIT,_lot,挂单价格,(int)deviation(slippage,_symbol),止损价格,止盈价格,prefix+_comment,_magic_number,0,Violet);
      if(空<0)
        {
         Print("OrderSend 限价挂空 with error #",GetLastError());
         return 空;
        }
      return 1;
     }
   return -1;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 新交易类::价格突破挂多(string _symbol,double _lot,double 挂单价格,double 止损价格,double 止盈价格,int _magic_number,string _comment)
  {
   if(挂单价格>0)
     {
      int magic=魔术幻数(_magic_number);
      止损价格=多最小止损价格(_symbol,止损价格);
      止盈价格=多最小止盈价格(_symbol,止盈价格);

      if(止损价格==0||止损价格==1||止损价格==2)
         止损价格=0;
      if(止盈价格==0||止盈价格==1||止盈价格==2)
         止盈价格=0;
      int 多=OrderSend(_symbol,OP_BUYSTOP,_lot,挂单价格,(int)deviation(slippage,_symbol),止损价格,止盈价格,prefix+_comment,_magic_number,0,Violet);
      if(多<0)
        {
         Print("OrderSend 突破挂多 with error #",GetLastError());
         return 多;
        }
      return 1;
     }
   return -1;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 新交易类::价格突破挂空(string _symbol,double _lot,double 挂单价格,double 止损价格,double 止盈价格,int _magic_number,string _comment)
  {
   if(挂单价格>0)
     {
      int magic=魔术幻数(_magic_number);
      止损价格=空最小止损价格(_symbol,止损价格);
      止盈价格=空最小止盈价格(_symbol,止盈价格);
      if(止损价格==0||止损价格==1||止损价格==2)
         止损价格=0;
      if(止盈价格==0||止盈价格==1||止盈价格==2)
         止盈价格=0;
      int 空=OrderSend(_symbol,OP_SELLSTOP,_lot,挂单价格,(int)deviation(slippage,_symbol),止损价格,止盈价格,prefix+_comment,_magic_number,0,Violet);
      if(空<0)
        {
         Print("OrderSend 突破挂空 with error #",GetLastError());
         return 空;
        }
      return 1;
     }
   return -1;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             新交易类::修改止损止盈(double 止损点数,double 止盈点数,ENUM_LONG_SHORT_MODE long_or_short=0)
  {
   if(止损点数>0||止盈点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            string _symbol =OrderSymbol();
            if(止损点数>2)
               止损点数=停损(_symbol,止损点数);
            double  多止损价格=OrderOpenPrice()-止损点数*点值(_symbol);
            double  空止损价格=OrderOpenPrice()+止损点数*点值(_symbol);
            if(止损点数==1)
              {
               多止损价格=0;
               空止损价格=0;
              }
            if(止损点数==2||止损点数==0)
              {
               多止损价格=OrderStopLoss();
               空止损价格=OrderStopLoss();
              }
            if(止盈点数>2)
               止盈点数=停损(_symbol,止盈点数);
            double  多止盈价格=OrderOpenPrice()+止盈点数*点值(_symbol);
            double  空止盈价格=OrderOpenPrice()-止盈点数*点值(_symbol);
            if(止盈点数==1)
              {
               多止盈价格=0;
               空止盈价格=0;
              }
            if(止盈点数==2||止盈点数==0)
              {
               多止盈价格=OrderTakeProfit();
               空止盈价格=OrderTakeProfit();
              }
            if(OrderType()==OP_BUY&&(OrderStopLoss()!=多止损价格||OrderTakeProfit()!=多止盈价格)&&(long_or_short==LONG_SHORT_ALL||long_or_short==LONG))
               bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),多止损价格,多止盈价格,OrderExpiration(),CLR_NONE);
            if(OrderType()==OP_SELL&&(OrderStopLoss()!=空止损价格||OrderTakeProfit()!=空止盈价格)&&(long_or_short==LONG_SHORT_ALL||long_or_short==SHORT))
               bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),空止损价格,空止盈价格,OrderExpiration(),CLR_NONE);
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             新交易类::修改止损(double 止损点数,ENUM_LONG_SHORT_MODE long_or_short=0)
  {
   if(止损点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            string _symbol =OrderSymbol();
            if(止损点数>2)
               止损点数=停损(_symbol,止损点数);
            double  多止损价格=OrderOpenPrice()-止损点数*点值(_symbol);
            double  空止损价格=OrderOpenPrice()+止损点数*点值(_symbol);
            if(止损点数==1)
              {
               多止损价格=0;
               空止损价格=0;
              }
            if(止损点数==2)
              {
               多止损价格=OrderStopLoss();
               空止损价格=OrderStopLoss();
              }

            if(OrderType()==OP_BUY&&OrderStopLoss()!=多止损价格&&(long_or_short==LONG_SHORT_ALL||long_or_short==LONG))
               bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),多止损价格,OrderTakeProfit(),OrderExpiration(),CLR_NONE);
            if(OrderType()==OP_SELL&&OrderStopLoss()!=空止损价格&&(long_or_short==LONG_SHORT_ALL||long_or_short==SHORT))
               bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),空止损价格,OrderTakeProfit(),OrderExpiration(),CLR_NONE);
           }
        }
     }
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
void             新交易类::修改止盈(double 止盈点数,ENUM_LONG_SHORT_MODE long_or_short=0)
  {
   if(止盈点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            string _symbol =OrderSymbol();
            if(止盈点数>2)
               止盈点数=停损(_symbol,止盈点数);
            double  多止盈价格=OrderOpenPrice()+止盈点数*点值(_symbol);
            double  空止盈价格=OrderOpenPrice()-止盈点数*点值(_symbol);
            if(止盈点数==1)
              {
               多止盈价格=0;
               空止盈价格=0;
              }
            if(止盈点数==2)
              {
               多止盈价格=OrderTakeProfit();
               空止盈价格=OrderTakeProfit();
              }
            if(OrderType()==OP_BUY&&OrderTakeProfit()!=多止盈价格&&(long_or_short==LONG_SHORT_ALL||long_or_short==LONG))
               bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderStopLoss(),多止盈价格,OrderExpiration(),CLR_NONE);
            if(OrderType()==OP_SELL&&OrderTakeProfit()!=空止盈价格&&(long_or_short==LONG_SHORT_ALL||long_or_short==SHORT))
               bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderStopLoss(),空止盈价格,OrderExpiration(),CLR_NONE);
           }
        }
     }
  }
//+------------------------------------------------------------------+
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
int 新交易类::周期持仓单数统计(string _symbol,int _magic_number,string _comment,int _order_type,ENUM_TIMEFRAMES _time_frame=PERIOD_D1)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderType()==_order_type&&OrderMagicNumber()==magic&&OrderComment()==prefix+_comment&&OrderOpenTime()>iTime(_symbol,_time_frame,0))
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(string _symbol,int _magic_number,int _order_type,ENUM_TIMEFRAMES _time_frame=PERIOD_D1)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderType()==_order_type&&OrderMagicNumber()==magic&&OrderOpenTime()>iTime(_symbol,_time_frame,0))
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(int _magic_number,int _order_type,ENUM_TIMEFRAMES _time_frame=PERIOD_D1)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         string _symbol =OrderSymbol();
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderType()==_order_type&&OrderMagicNumber()==magic&&OrderOpenTime()>iTime(_symbol,_time_frame,0))
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(string _symbol,int _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame=PERIOD_D1)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderComment()==prefix+_comment&&OrderOpenTime()>iTime(_symbol,_time_frame,0))
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(string _symbol,int _magic_number,ENUM_TIMEFRAMES _time_frame=PERIOD_D1)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderOpenTime()>iTime(_symbol,_time_frame,0))
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(int _magic_number,ENUM_TIMEFRAMES _time_frame=PERIOD_D1)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         string _symbol =OrderSymbol();
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderOpenTime()>iTime(_symbol,_time_frame,0))
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::订单号返回持仓integer属性值(string _symbol,int ticket,int _order_type,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim)
  {
   ulong vaule=0;
   if(property==_ORDER_TYPE)
      vaule=-1;
   if(ticket>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderTicket()==ticket&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim&&OrderType()==_order_type)
              {
               vaule=GetInteger(property);
               break;
              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::订单号返回持仓double属性值(string _symbol,int ticket,int _order_type,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim)
  {
   double vaule=0;
   if(ticket>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderTicket()==ticket&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim&&OrderType()==_order_type)
              {
               vaule = GetDouble(property);
               break;
              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::订单号返回持仓string属性值(string _symbol,int ticket,int _order_type,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim)
  {
   string vaule="";
   if(ticket>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderTicket()==ticket&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim&&OrderType()==_order_type)
              {

               vaule=GetString(property);

               break;
              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::魔术号返回持仓integer属性值(string _symbol,int _magic_number,int _order_type,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim)
  {
   ulong vaule=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim&&OrderType()==_order_type)
              {
               vaule = GetInteger(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::魔术号返回持仓double属性值(string _symbol,int _magic_number,int _order_type,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim)
  {
   double vaule=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim&&OrderType()==_order_type)
              {
               vaule =GetDouble(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::魔术号返回持仓string属性值(string _symbol,int _magic_number,int _order_type,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim)
  {
   string vaule="";
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim&&OrderType()==_order_type)
              {
               vaule = GetString(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::注释返回持仓integer属性值(string _symbol,string _comment,int _order_type,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim)
  {
   ulong vaule=0;
   if(property==_ORDER_TYPE)
      vaule=-1;
   if(_comment!="")
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderComment()==prefix+_comment&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim&&OrderType()==_order_type)
              {
               vaule = GetInteger(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::注释返回持仓double属性值(string _symbol,string _comment,int _order_type,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim)
  {
   double vaule=0;
   if(_comment!="")
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderComment()==prefix+_comment&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim&&OrderType()==_order_type)
              {
               vaule = GetDouble(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::注释返回持仓string属性值(string _symbol,string _comment,int _order_type,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim)
  {
   string vaule="";
   if(_comment!="")
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderComment()==prefix+_comment&&OrderOpenTime()>=_start_tim&&OrderOpenTime()<_end_tim&&OrderType()==_order_type)
              {
               vaule = GetString(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::订单号返回历史integer属性值(string _symbol,int ticket,int _order_type,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim)
  {
   ulong vaule=0;
   if(property==_ORDER_TYPE)
      vaule=-1;
   if(ticket>0)
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderTicket()==ticket&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim&&OrderType()==_order_type)
              {
               vaule = GetInteger(property);
               break;
              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::订单号返回历史double属性值(string _symbol,int ticket,int _order_type,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim)
  {
   double vaule=0;
   if(ticket>0)
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderTicket()==ticket&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim&&OrderType()==_order_type)
              {
               vaule = GetDouble(property);
               break;
              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::订单号返回历史string属性值(string _symbol,int ticket,int _order_type,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim)
  {
   string vaule="";
   if(ticket>0)
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderTicket()==ticket&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim&&OrderType()==_order_type)
              {
               vaule = GetString(property);
               break;
              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::魔术号返回历史integer属性值(string _symbol,int _magic_number,int _order_type,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim)
  {
   ulong vaule=0;
   if(property==_ORDER_TYPE)
      vaule=-1;
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim&&OrderType()==_order_type)
              {
               vaule = GetInteger(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::魔术号返回历史double属性值(string _symbol,int _magic_number,int _order_type,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim)
  {
   double vaule=0;
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim&&OrderType()==_order_type)
              {
               vaule = GetDouble(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::魔术号返回历史string属性值(string _symbol,int _magic_number,int _order_type,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim)
  {
   string vaule="";
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim&&OrderType()==_order_type)
              {
               vaule = GetString(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::注释返回历史integer属性值(string _symbol,string _comment,int _order_type,ENUM_PROPERTY_INTEGER property,long _start_tim,long _end_tim)
  {
   ulong vaule=0;
   if(property==_ORDER_TYPE)
      vaule=-1;
   if(_comment!="")
     {
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderComment()==prefix+_comment&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim&&OrderType()==_order_type)
              {
               vaule = GetInteger(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::注释返回历史double属性值(string _symbol,string _comment,int _order_type,ENUM_PROPERTY_DOUBLE property,long _start_tim,long _end_tim)
  {
   double vaule=0;
   if(_comment!="")
     {
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderComment()==prefix+_comment&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim&&OrderType()==_order_type)
              {
               vaule = GetDouble(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::注释返回历史string属性值(string _symbol,string _comment,int _order_type,ENUM_PROPERTY_STRING property,long _start_tim,long _end_tim)
  {
   string vaule="";
   if(_comment!="")
     {
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderComment()==prefix+_comment&&OrderCloseTime()>=_start_tim&&OrderCloseTime()<_end_tim&&OrderType()==_order_type)
              {
               vaule = GetString(property);
               break;
              }
           }
        }
     }
   return vaule;
  }
//+------------------------------------------------------------------+
bool 新交易类::预付款维持率检测(double 可用预付款百分比限制)
  {
   bool chk=AccountInfoDouble(ACCOUNT_MARGIN_LEVEL)>0&&AccountInfoDouble(ACCOUNT_MARGIN_LEVEL)>可用预付款百分比限制;
   if(可用预付款百分比限制==0||空值检测(AccountInfoDouble(ACCOUNT_MARGIN_LEVEL)))
      chk=true;
   return chk;
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 新交易类::结余盈利回撤百分比检测(string _symbol,double 盈利百分比=0,double 回撤百分比=0)
  {
   if(盈利百分比>0&&回撤百分比>0)
     {
      static  double  当日结余=AccountInfoDouble(ACCOUNT_BALANCE);
      static double  最大结余=AccountInfoDouble(ACCOUNT_BALANCE);
      static  bool  chk=false;
      long 实时时间=iTime(_symbol,PERIOD_D1,0);
      static long 初始时间=0;
      if(初始时间!=实时时间)
        {
         当日结余=AccountInfoDouble(ACCOUNT_BALANCE);
         最大结余=AccountInfoDouble(ACCOUNT_BALANCE);
         chk=false;
         初始时间=实时时间;
        }
      //---
      if(AccountInfoDouble(ACCOUNT_BALANCE)>最大结余)
         最大结余=AccountInfoDouble(ACCOUNT_BALANCE);
      if(最大结余>当日结余*(1+盈利百分比))
         chk=true;
      if(chk)
         if(AccountInfoDouble(ACCOUNT_BALANCE)<最大结余-(最大结余-当日结余)*回撤百分比)
            return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::周期时间更新检测(string _symbol,ENUM_TIMEFRAMES _time_frame,bool &chk)
  {
   static long 初始时间1=0;
   long 实时时间1=iTime(_symbol,PERIOD_D1,0);
   if(初始时间1!=实时时间1)
     {
      chk=true;
      初始时间1=实时时间1;
     }
   return chk;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong 新交易类::提前K秒数(ulong 传入时间,ENUM_TIMEFRAMES _time_frame,long 提前秒数,int 几根=1)
  {
   long 秒数=提前秒数;
   if(秒数<=0)
      秒数=PeriodSeconds(_time_frame);
   if(秒数>PeriodSeconds(_time_frame))
      秒数=PeriodSeconds(_time_frame);
   ulong 返回时间=传入时间+几根*PeriodSeconds(_time_frame)-秒数;
   return 返回时间;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::提前K秒数检测(ulong 传入时间,ENUM_TIMEFRAMES _time_frame,long 提前秒数,int 几根=1)
  {
   long 秒数=提前秒数;
   if(秒数<=0)
      秒数=PeriodSeconds(_time_frame);
   if(秒数>PeriodSeconds(_time_frame))
      秒数=PeriodSeconds(_time_frame);
   ulong 返回时间=传入时间+几根*PeriodSeconds(_time_frame)-秒数;
   return (ulong)TimeCurrent()>=返回时间;
  }
//+------------------------------------------------------------------
//+------------------------------------------------------------------+
void 新交易类::模板(string 模板名)
  {
   ChartSaveTemplate(0,模板名);
   ChartApplyTemplate(0,模板名);
  }
//+------------------------------------------------------------------
//+------------------------------------------------------------------+
double  新交易类::昨日结余(datetime _start_tim)
  {
   double 昨利=0;
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&持仓类型())
        {
         if(OrderTicket()>0&&OrderCloseTime()>=_start_tim)
            昨利=昨利+OrderProfit()+OrderCommission()+OrderSwap();
        }
     }
   double 昨结=AccountInfoDouble(ACCOUNT_BALANCE)-昨利;
   return 昨结;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 新交易类::持仓类型()
  {
   bool chk=OrderType()==OP_BUY||OrderType()==OP_SELL;
   return chk;
  }
//+---
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 新交易类::昨日结余盈利回撤百分比检测(double 昨日结余,double 盈利百分比=0,double 回撤百分比=0)
  {
   if(盈利百分比>0&&回撤百分比>0)
     {
      static double  最大结余=AccountBalance();
      static  bool  chk=false;
      long 实时时间=iTime(Symbol(),PERIOD_D1,0);
      static long 初始时间=0;
      if(初始时间!=实时时间)
        {
         最大结余=AccountBalance();
         chk=false;
         初始时间=实时时间;
        }
      //---
      if(AccountBalance()>最大结余)
         最大结余=AccountBalance();
      if(最大结余>昨日结余*(1+盈利百分比))
         chk=true;
      if(chk)
         if(AccountBalance()<最大结余-(最大结余-昨日结余)*回撤百分比)
            return true;
     }
   return false;
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool    新交易类::单位毫秒do1(double 间隔毫秒)
  {
   bool chk=false;
   static ulong 初时间1=0;
   ulong 时时间=(ulong) GetTickCount();
   if(时时间>初时间1)
     {
      chk=true;
      初时间1=(ulong)(时时间+间隔毫秒);
     }
   return chk;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool    新交易类::单位毫秒do2(double 间隔毫秒)
  {
   bool chk=false;
   static ulong 初时间2=0;
   ulong 时时间=(ulong) GetTickCount();
   if(时时间>初时间2)
     {
      chk=true;
      初时间2=(ulong)(时时间+间隔毫秒);
     }
   return chk;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool    新交易类::单位毫秒do3(double 间隔毫秒)
  {
   bool chk=false;
   static ulong 初时间3=0;
   ulong 时时间=(ulong) GetTickCount();
   if(时时间>初时间3)
     {
      chk=true;
      初时间3=(ulong)(时时间+间隔毫秒);
     }
   return chk;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool    新交易类::单位毫秒do4(double 间隔毫秒)
  {
   bool chk=false;
   static ulong 初时间4=0;
   ulong 时时间=(ulong) GetTickCount();
   if(时时间>初时间4)
     {
      chk=true;
      初时间4=(ulong)(时时间+间隔毫秒);
     }
   return chk;
  }
//+------------------------------------------------------------------+
bool    新交易类::单位毫秒1(double 间隔毫秒)
  {
   bool chk=false;
   static ulong 初时间5= GetTickCount();
   ulong 时时间=(ulong) GetTickCount();
   if(时时间>初时间5+间隔毫秒)
     {
      chk=true;
      初时间5=(ulong)(时时间);
     }
   return chk;
  }
//+------------------------------------------------------------------+
bool    新交易类::单位毫秒2(double 间隔毫秒)
  {
   bool chk=false;
   static ulong 初时间6= GetTickCount();
   ulong 时时间=(ulong) GetTickCount();
   if(时时间>初时间6+间隔毫秒)
     {
      chk=true;
      初时间6=(ulong)(时时间);
     }
   return chk;
  }
//+------------------------------------------------------------------+
bool    新交易类::单位毫秒3(double 间隔毫秒)
  {
   bool chk=false;
   static ulong 初时间7= GetTickCount();
   ulong 时时间=(ulong) GetTickCount();
   if(时时间>初时间7+间隔毫秒)
     {
      chk=true;
      初时间7=(ulong)(时时间);
     }
   return chk;
  }
//+------------------------------------------------------------------+
bool    新交易类::单位毫秒4(double 间隔毫秒)
  {
   bool chk=false;
   static ulong 初时间8= GetTickCount();
   ulong 时时间=(ulong) GetTickCount();
   if(时时间>初时间8+间隔毫秒)
     {
      chk=true;
      初时间8=(ulong)(时时间);
     }
   return chk;
  }
//+------------------------------------------------------------------
//+------------------------------------------------------------------+
bool    新交易类::单位微秒do1(double _millisecond)
  {
   bool chk=false;
   static ulong 初时间1=0;
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间1)
     {
      chk=true;
      初时间1=(ulong)(时时间+_millisecond);
     }
   return chk;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool    新交易类::单位微秒do2(double _millisecond)
  {
   bool chk=false;
   static ulong 初时间2=0;
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间2)
     {
      chk=true;
      初时间2=(ulong)(时时间+_millisecond);
     }
   return chk;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool    新交易类::单位微秒do3(double _millisecond)
  {
   bool chk=false;
   static ulong 初时间3=0;
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间3)
     {
      chk=true;
      初时间3=(ulong)(时时间+_millisecond);
     }
   return chk;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool    新交易类::单位微秒do4(double _millisecond)
  {
   bool chk=false;
   static ulong 初时间4=0;
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间4)
     {
      chk=true;
      初时间4=(ulong)(时时间+_millisecond);
     }
   return chk;
  }
//+------------------------------------------------------------------+
bool    新交易类::单位微秒1(double _millisecond)
  {
   bool chk=false;
   static ulong 初时间5= GetMicrosecondCount();
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间5+_millisecond)
     {
      chk=true;
      初时间5=(ulong)(时时间);
     }
   return chk;
  }
//+------------------------------------------------------------------+
bool    新交易类::单位微秒2(double _millisecond)
  {
   bool chk=false;
   static ulong 初时间6= GetMicrosecondCount();
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间6+_millisecond)
     {
      chk=true;
      初时间6=(ulong)(时时间);
     }
   return chk;
  }
//+------------------------------------------------------------------+
bool    新交易类::单位微秒3(double _millisecond)
  {
   bool chk=false;
   static ulong 初时间7= GetMicrosecondCount();
   ulong 时时间=(ulong) GetMicrosecondCount();
   if(时时间>初时间7+_millisecond)
     {
      chk=true;
      初时间7=(ulong)(时时间);
     }
   return chk;
  }
//+------------------------------------------------------------------+
bool    新交易类::单位微秒4(double _millisecond)
  {
   bool chk=false;
   static ulong 初时间8=GetMicrosecondCount();
   ulong 时时间=(ulong)GetMicrosecondCount();
   if(时时间>初时间8+_millisecond)
     {
      chk=true;
      初时间8=(ulong)(时时间);
     }
   return chk;
  }
//+------------------------------------
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool   新交易类::单位毫秒向上差点值之外(string _symbol,double 设置差点值,double 间隔毫秒,double 参考价)
  {
   static ulong 初时时间1=0;
   static double 初时价1=0;
   ulong 实时时间=(ulong)GetTickCount();
   if(实时时间>初时时间1)
     {
      初时价1=参考价;
      初时时间1=(ulong)(实时时间+间隔毫秒);
     }
   bool 在差点值之外1=false;
   if(初时价1!=0&&参考价>初时价1)
      在差点值之外1=在差点值之外(_symbol,参考价,初时价1,设置差点值);
   if(在差点值之外1)
      初时时间1=(ulong)GetTickCount();
   return 在差点值之外1;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool   新交易类::单位毫秒向下差点值之外(string _symbol,double 设置差点值,double 间隔毫秒,double 参考价)
  {
   static ulong 初时时间2=0;
   static double 初时价2=0;
   ulong 实时时间=(ulong)GetTickCount();
   if(实时时间>初时时间2)
     {
      初时价2=参考价;
      初时时间2=(ulong)(实时时间+间隔毫秒);
     }
   bool 在差点值之外2=false;
   if(初时价2!=0&&参考价<初时价2)
      在差点值之外2=在差点值之外(_symbol,参考价,初时价2,设置差点值);
   if(在差点值之外2)
      初时时间2=(ulong)GetTickCount();
   return 在差点值之外2;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   新交易类::单位毫秒差值(double 间隔毫秒,double 参考价)
  {
   static ulong 初时时间3=0;
   static double 初时价3=0;
   ulong 实时时间=(ulong)GetTickCount();
   if(实时时间>初时时间3)
     {
      初时价3=参考价;
      初时时间3=(ulong)(实时时间+间隔毫秒);
     }
   double 差值=0;
   if(初时价3!=0)
      差值=参考价-初时价3;
   return 差值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::单位毫秒向上差值(double 间隔毫秒,double 参考价)
  {
   static ulong 初时时间4=0;
   static double 初时价4=0;
   ulong 实时时间=(ulong)GetTickCount();
   if(实时时间>初时时间4)
     {
      初时价4=参考价;
      初时时间4=(ulong)(实时时间+间隔毫秒);
     }
   double 差值=0;
   if(初时价4!=0&&参考价>初时价4)
      差值=参考价-初时价4;
   return 差值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   新交易类::单位毫秒向下差值(double 间隔毫秒,double 参考价)
  {
   static ulong 初时时间5=0;
   static double 初时价5=0;
   ulong 实时时间=(ulong)GetTickCount();
   if(实时时间>初时时间5)
     {
      初时价5=参考价;
      初时时间5=(ulong)(实时时间+间隔毫秒);
     }
   double 差值=0;
   if(初时价5!=0&&参考价<初时价5)
      差值=初时价5-参考价;
   return 差值;
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool   新交易类::单位微秒向上差点值之外(string _symbol,double 设置差点值,double _millisecond,double 参考价)
  {
   static ulong 初时时间1=0;
   static double 初时价1=0;
   ulong 实时时间=(ulong)GetMicrosecondCount();
   if(实时时间>初时时间1)
     {
      初时价1=参考价;
      初时时间1=(ulong)(实时时间+_millisecond);
     }
   bool 在差点值之外1=false;
   if(初时价1!=0&&参考价>初时价1)
      在差点值之外1=在差点值之外(_symbol,参考价,初时价1,设置差点值);
   if(在差点值之外1)
      初时时间1=(ulong)GetMicrosecondCount();
   return 在差点值之外1;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool   新交易类::单位微秒向下差点值之外(string _symbol,double 设置差点值,double _millisecond,double 参考价)
  {
   static ulong 初时时间2=0;
   static double 初时价2=0;
   ulong 实时时间=(ulong)GetMicrosecondCount();
   if(实时时间>初时时间2)
     {
      初时价2=参考价;
      初时时间2=(ulong)(实时时间+_millisecond);
     }
   bool 在差点值之外2=false;
   if(初时价2!=0&&参考价<初时价2)
      在差点值之外2=在差点值之外(_symbol,参考价,初时价2,设置差点值);
   if(在差点值之外2)
      初时时间2=(ulong)GetMicrosecondCount();
   return 在差点值之外2;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   新交易类::单位微秒差值(double _millisecond,double 参考价)
  {
   static ulong 初时时间3=0;
   static double 初时价3=0;
   ulong 实时时间=(ulong)GetMicrosecondCount();
   if(实时时间>初时时间3)
     {
      初时价3=参考价;
      初时时间3=(ulong)(实时时间+_millisecond);
     }
   double 差值=0;
   if(初时价3!=0)
      差值=参考价-初时价3;
   return 差值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::单位微秒向上差值(double _millisecond,double 参考价)
  {
   static ulong 初时时间4=0;
   static double 初时价4=0;
   ulong 实时时间=(ulong)GetMicrosecondCount();
   if(实时时间>初时时间4)
     {
      初时价4=参考价;
      初时时间4=(ulong)(实时时间+_millisecond);
     }
   double 差值=0;
   if(初时价4!=0&&参考价>初时价4)
      差值=参考价-初时价4;
   return 差值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   新交易类::单位微秒向下差值(double _millisecond,double 参考价)
  {
   static ulong 初时时间5=0;
   static double 初时价5=0;
   ulong 实时时间=(ulong)GetMicrosecondCount();
   if(实时时间>初时时间5)
     {
      初时价5=参考价;
      初时时间5=(ulong)(实时时间+_millisecond);
     }
   double 差值=0;
   if(初时价5!=0&&参考价<初时价5)
      差值=初时价5-参考价;
   return 差值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void         新交易类:: 注释包含盈利点数折仓(string _symbol,int _magic_number,string _comment,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0)
  {
   if(减仓比例>0&&减仓比例<=1&&启动点数>0&&(盈利多少点数折仓>0||盈利点数大于几倍止损>0))
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0)
              {
               int magic=魔术幻数(_magic_number);
               if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&StringFind(OrderComment(),_comment)!=-1)
                 {
                  double 盈利点数=(OrderClosePrice()-OrderOpenPrice())/点值(_symbol);
                  double 止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(_symbol);
                  double 大于几倍值=盈利点数大于几倍止损*止损点数;
                  if(空值检测(OrderStopLoss())&&盈利多少点数折仓==0)
                     大于几倍值=盈利点数大于几倍止损*启动点数;
                  if(盈利多少点数折仓)
                     大于几倍值=0;
                  if(盈利多少点数折仓==0&&盈利点数大于几倍止损==0)
                     break;
                  if(OrderType()==OP_BUY&&盈利点数>启动点数&&盈利点数>大于几倍值+盈利多少点数折仓)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(_symbol,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,卖价(_symbol),(int)deviation(slippage,_symbol),Yellow);
                    }
                  if(OrderType()==OP_SELL&&-盈利点数>启动点数&&-盈利点数>大于几倍值+盈利多少点数折仓)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(_symbol,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,买价(_symbol),(int)deviation(slippage,_symbol),Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::方向带单(string _symbol,int _magic_number,string _comment,int 方向1,int 方向2,double 盈利启动金额,double 带单后盈利金额=0)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol &&OrderMagicNumber()==magic&&OrderComment()==prefix+_comment&&OrderType()==方向1)
              {
               a[i][0]=OrderProfit();
               a[i][1]=(double)OrderTicket();
              }
           }
        }
     }
   ArraySort(a);
//---
   double b[][2];
   t=OrdersTotal();
   ArrayResize(b,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol &&OrderMagicNumber()==magic&&OrderComment()==prefix+_comment&&OrderType()==方向2)
              {
               b[i][0]=OrderProfit();
               b[i][1]=(double)OrderTicket();
              }
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
void 新交易类::方向带单(string _symbol,int _magic_number,int 方向1,int 方向2,double 盈利启动金额,double 带单后盈利金额=0)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol &&OrderMagicNumber()==magic&&OrderType()==方向1)
              {
               a[i][0]=OrderProfit();
               a[i][1]=(double)OrderTicket();
              }
           }
        }
     }
   ArraySort(a);
//---
   double b[][2];
   t=OrdersTotal();
   ArrayResize(b,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderSymbol()==_symbol &&OrderMagicNumber()==magic&&OrderType()==方向2)
              {
               b[i][0]=OrderProfit();
               b[i][1]=(double)OrderTicket();
              }
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
void 新交易类::方向带单(string _symbol,int 方向1,int 方向2,double 盈利启动金额,double 带单后盈利金额=0)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderType()==方向1)
           {
            a[i][0]=OrderProfit();
            a[i][1]=(double)OrderTicket();
           }
        }
     }
   ArraySort(a);
//---
   double b[][2];
   t=OrdersTotal();
   ArrayResize(b,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0&&OrderSymbol()==_symbol&&OrderType()==方向2)
           {
            b[i][0]=OrderProfit();
            b[i][1]=(double)OrderTicket();
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
void 新交易类::方向带单(int _magic_number,int 方向1,int 方向2,double 盈利启动金额,double 带单后盈利金额=0)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderMagicNumber()==magic&&OrderType()==方向1)
              {
               a[i][0]=OrderProfit();
               a[i][1]=(double)OrderTicket();
              }
           }
        }
     }
   ArraySort(a);
//---
   double b[][2];
   t=OrdersTotal();
   ArrayResize(b,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
        {
         if(OrderTicket()>0)
           {
            int magic=魔术幻数(_magic_number);
            if(OrderMagicNumber()==magic&&OrderType()==方向2)
              {
               b[i][0]=OrderProfit();
               b[i][1]=(double)OrderTicket();
              }
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
bool 新交易类::在时间区间(string _start_tim,string _end_tim,datetime time,int 壹服贰电=1)
  {
   string tmd= TimeToString(time,TIME_SECONDS);
   bool 区间检测=StoCL(tmd,壹服贰电)>StoCL(_start_tim,壹服贰电)&&StoCL(tmd,壹服贰电)<StoCL(_end_tim,壹服贰电);
   return 区间检测;
  }
//+------------------------------------------------------------------+
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
   string   paxth=TerminalInfoString(TERMINAL_DATA_PATH)+"\\MQL4\\Files\\";
   int t=CopyFileW(paxth+文件名+".txt","C:\\SendFile\\"+文件名+".txt",0);
   FileDelete(文件名+".txt");
  }*/
//+------------------------------------------------------------------+
bool 新交易类::保本(string _symbol,int _magic_number,string _comment,double 启动点数,double 保本点数,ENUM_LONG_SHORT_MODE long_or_short=0)
  {
   bool chk=false;
   if(启动点数>0&&保本点数>0&&保本点数<启动点数)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0)
              {
               int magic=魔术幻数(_magic_number);
               if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderComment()==prefix+_comment)
                 {
                  double 多盈利点值=(卖价(_symbol)-OrderOpenPrice())/点值(_symbol);
                  double 空盈利点值=(OrderOpenPrice()-买价(_symbol))/点值(_symbol);
                  if(OrderType()==OP_BUY&&(long_or_short==LONG_SHORT_ALL||long_or_short==LONG))
                    {
                     if(多盈利点值>启动点数&&OrderStopLoss()<OrderOpenPrice()+保本点数*点值(_symbol))
                       {
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+保本点数*点值(_symbol),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                        chk=true;
                       }
                    }
                  if(OrderType()==OP_SELL&&(long_or_short==LONG_SHORT_ALL||long_or_short==SHORT))
                    {
                     if(空盈利点值>启动点数&&(OrderStopLoss()>OrderOpenPrice()-保本点数*点值(_symbol)||OrderStopLoss()==0))
                       {
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-保本点数*点值(_symbol),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                        chk=true;
                       }
                    }
                 }
              }
           }
        }
     }
   return chk;
  };
//+------------------------------------------------------------------+
bool 新交易类::保本(string _symbol,int _magic_number,double 启动点数,double 保本点数,ENUM_LONG_SHORT_MODE long_or_short=0)
  {
   bool chk=false;
   if(启动点数>0&&保本点数>0&&保本点数<启动点数)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0)
              {
               int magic=魔术幻数(_magic_number);
               if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic)
                 {
                  double 多盈利点值=(卖价(_symbol)-OrderOpenPrice())/点值(_symbol);
                  double 空盈利点值=(OrderOpenPrice()-买价(_symbol))/点值(_symbol);
                  if(OrderType()==OP_BUY&&(long_or_short==LONG_SHORT_ALL||long_or_short==LONG))
                    {
                     if(多盈利点值>启动点数&&OrderStopLoss()<OrderOpenPrice()+保本点数*点值(_symbol))
                       {
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+保本点数*点值(_symbol),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                        chk=true;
                       }
                    }
                  if(OrderType()==OP_SELL&&(long_or_short==LONG_SHORT_ALL||long_or_short==SHORT))
                    {
                     if(空盈利点值>启动点数&&(OrderStopLoss()>OrderOpenPrice()-保本点数*点值(_symbol)||OrderStopLoss()==0))
                       {
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-保本点数*点值(_symbol),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                        chk=true;
                       }
                    }
                 }
              }
           }
        }
     }
   return chk;
  };
//+------------------------------------------------------------------+
bool 新交易类::亏损持仓均价平单(string _symbol,int _magic_number,int 持仓方向,double 设置平单点数)
  {
   bool chk=false;
   if(设置平单点数>0)
     {
      double 浮亏均价=持仓均价(_symbol,_magic_number,持仓方向);
      if(浮亏均价>0&&持仓方向==OP_BUY&&卖价(_symbol)<浮亏均价-设置平单点数*点值(_symbol))
        {
         平多(_symbol,_magic_number);
         chk=true;
        }
      if(浮亏均价>0&&持仓方向==OP_SELL&&买价(_symbol)>浮亏均价+设置平单点数*点值(_symbol))
        {
         平空(_symbol,_magic_number);
         chk=true;
        }
     }
   return chk;
  }
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
   bool chk = false;
   bool t1 = 价格 && 价格 < 传入上限 && 价格 > 传入下限;
   bool t2 = 价格 && 价格 < 传入上限 && 传入下限 == 0.0;
   bool t3 = 价格 && 传入上限 == 0.0 && 价格 > 传入下限;
   bool t4 = 价格 && 传入上限 == 0.0 && 传入下限 == 0.0;
   bool tz = t1 + t2 + t3 + t4;
   if(tz)
      chk = true;
   return chk;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 新交易类::手数返回持仓单数(string _symbol,int _magic_number,string _comment,int _order_type,double lot,long 进单时间=0)
  {
   int vaule=0;
   if(lot>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0)
              {
               int magic=魔术幻数(_magic_number);
               if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderComment()==_comment&&OrderType()==_order_type&&OrderLots()==lot&&OrderOpenTime()>进单时间)
                  vaule++;

              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 新交易类::手数返回持仓单数(string _symbol,int _magic_number,int _order_type,double lot,long 进单时间=0)
  {
   int vaule=0;
   if(lot>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0)
              {
               int magic=魔术幻数(_magic_number);
               if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderType()==_order_type&&OrderLots()==lot&&OrderOpenTime()>进单时间)
                  vaule++;
              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
int 新交易类::手数返回持仓单数(string _symbol,int _magic_number,string _comment,double lot,long 进单时间=0)
  {
   int vaule=0;
   if(lot>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0)
              {
               int magic=魔术幻数(_magic_number);
               if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderComment()==_comment&&OrderLots()==lot&&OrderOpenTime()>进单时间)
                  vaule++;

              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
int 新交易类::手数返回持仓单数(string _symbol,int _magic_number,double lot,long 进单时间=0)
  {
   int vaule=0;
   if(lot>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0)
              {
               int magic=魔术幻数(_magic_number);
               if(OrderSymbol()==_symbol&&OrderMagicNumber()==magic&&OrderLots()==lot&&OrderOpenTime()>进单时间)
                  vaule++;

              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
int 新交易类::手数返回持仓单数(int _magic_number,double lot,long 进单时间=0)
  {
   int vaule=0;
   if(lot>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_POSITION))
           {
            if(OrderTicket()>0)
              {
               int magic=魔术幻数(_magic_number);
               if(OrderMagicNumber()==magic&&OrderLots()==lot&&OrderOpenTime()>进单时间)
                  vaule++;

              }
           }
        }
   return vaule;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::净值结余百分比(double percentage,int 壹上贰下=2)
  {
   bool check=false;
   if(壹上贰下==1)
      check=percentage&&AccountInfoDouble(ACCOUNT_EQUITY)<AccountInfoDouble(ACCOUNT_BALANCE)*(1+percentage);
   if(壹上贰下==2)
      check=percentage&&AccountInfoDouble(ACCOUNT_EQUITY)<AccountInfoDouble(ACCOUNT_BALANCE)*(1-percentage);
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
//+------------------------------------------------------------------+
bool  新交易类::arr_jx_chk(int cnt,double& min_z[],double& max_z[])
  {
   for(int i=0; i<cnt; i++)
      if(min_z[i]>max_z[i]&&min_z[i+1]<max_z[i+1])
         return true;
   return false;
  }
//+------------------------------------------------------------------+
bool  新交易类::arr_sx_chk(int cnt,double& min_z[],double& max_z[])
  {
   for(int i=0; i<cnt; i++)
      if(min_z[i]<max_z[i]&&min_z[i+1]>max_z[i+1])
         return true;
   return false;
  }

//+------------------------------------------------------------------+
bool  新交易类::atr_chk(string symbol,ENUM_TIMEFRAMES _time_frame=PERIOD_CURRENT,int cnt=5,double point=180)
  {
   for(int i=0; i<cnt; i++)
      if(iHigh(symbol,_time_frame,i)-iLow(symbol,_time_frame,i)>point*点值(symbol))
         return true;
   return false;
  }

//+------------------------------------------------------------------+
void    新交易类::二K一单做多(string symbol,double lot,double _sl_point,double _tp_point,int  _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index)
  {
   time1=iTime(symbol,_time_frame,index);
   if(tim1!= time1+PeriodSeconds(_time_frame))
     {
      做多(symbol,lot,_sl_point,_tp_point,_magic_number,_comment);
      tim1= time1;
     }
  };
//+------------------------------------------------------------------+
void  新交易类::二K一单做空(string symbol,double lot,double _sl_point,double _tp_point,int  _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index)
  {
   time2=iTime(symbol,_time_frame,index);
   if(tim2> time2+PeriodSeconds(_time_frame))
     {
      做空(symbol,lot,_sl_point,_tp_point,_magic_number,_comment);
      tim2=time2;
     }
  };
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void    新交易类:: 二K一单做多2(string symbol,double lot,double _sl_point,double _tp_point,int  _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index)
  {
   time3=iTime(symbol,_time_frame,index);
   if(tim3!= time3+PeriodSeconds(_time_frame))
     {
      做多(symbol,lot,_sl_point,_tp_point,_magic_number,_comment);
      tim3= time3;
     }
  };
//+------------------------------------------------------------------+
void  新交易类::二K一单做空2(string symbol,double lot,double _sl_point,double _tp_point,int  _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index)
  {
   time4=iTime(symbol,_time_frame,index);
   if(tim4> time4+PeriodSeconds(_time_frame))
     {
      做空(symbol,lot,_sl_point,_tp_point,_magic_number,_comment);
      tim4=time4;
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void    新交易类:: 价格2K一单做多(string symbol,double lot,double _sl_price,double _tp_price,int  _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index)
  {
   time1=iTime(symbol,_time_frame,index);
   if(tim1!= time1+PeriodSeconds(_time_frame))
     {
      价格做多(symbol,lot,_sl_price,_tp_price,_magic_number,_comment);
      tim1= time1;
     }
  };
//+------------------------------------------------------------------+
void  新交易类::价格2K一单做空(string symbol,double lot,double _sl_price,double _tp_price,int  _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index)
  {
   time2=iTime(symbol,_time_frame,index);
   if(tim2> time2+PeriodSeconds(_time_frame))
     {
      价格做空(symbol,lot,_sl_price,_tp_price,_magic_number,_comment);
      tim2=time2;
     }
  };
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void    新交易类:: 价格2K一单做多2(string symbol,double lot,double _sl_price,double _tp_price,int  _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index)
  {
   time3=iTime(symbol,_time_frame,index);
   if(tim3!= time3+PeriodSeconds(_time_frame))
     {
      价格做多(symbol,lot,_sl_price,_tp_price,_magic_number,_comment);
      tim3= time3;
     }
  };
//+------------------------------------------------------------------+
void  新交易类::价格2K一单做空2(string symbol,double lot,double _sl_price,double _tp_price,int  _magic_number,string _comment,ENUM_TIMEFRAMES _time_frame,int index)
  {
   time4=iTime(symbol,_time_frame,index);
   if(tim4> time4+PeriodSeconds(_time_frame))
     {
      价格做空(symbol,lot,_sl_price,_tp_price,_magic_number,_comment);
      tim4=time4;
     }
  };
//+------------------------------------------------------------------+
bool 新交易类::k线触碰检测(string symbol,ENUM_TIMEFRAMES _time_frame,string 回调或反抽,int index,double value1)
  {
   bool k_chk = 0;
   if(回调或反抽=="回调")
      k_chk = (iClose(symbol,_time_frame,index)>value1&& iLow(symbol,_time_frame,index)<value1&&iClose(symbol,_time_frame,index+1)>value1)
              ||(iClose(symbol,_time_frame,index)>value1&&iClose(symbol,_time_frame,index+1)< value1);

   if(回调或反抽=="反抽")
      k_chk = (iClose(symbol,_time_frame,index)<value1&& iHigh(symbol,_time_frame,index)>value1&&iClose(symbol,_time_frame,index+1)<value1)
              ||(iClose(symbol,_time_frame,index)<value1&&iClose(symbol,_time_frame,index+1)> value1);
   return k_chk;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_second0_chk(long second)
  {
   if(TimeCurrent()> time_seconds0 + second)
     {
      time_seconds0  = TimeCurrent();
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_second1_chk(long second)
  {
   if(TimeCurrent()> time_seconds1 + second)
     {
      time_seconds1  = TimeCurrent();
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_second2_chk(long second)
  {
   if(TimeCurrent()> time_seconds2 + second)
     {
      time_seconds2  = TimeCurrent();
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_second3_chk(long second)
  {
   if(TimeCurrent()> time_seconds3 + second)
     {
      time_seconds3  = TimeCurrent();
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_second4_chk(long second)
  {
   if(TimeCurrent()> time_seconds4 + second)
     {
      time_seconds4  = TimeCurrent();
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_second5_chk(long second)
  {
   if(TimeCurrent()> time_seconds5 + second)
     {
      time_seconds5  = TimeCurrent();
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_second6_chk(long second)
  {
   if(TimeCurrent()> time_seconds6 + second)
     {
      time_seconds6  = TimeCurrent();
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_second7_chk(long second)
  {
   if(TimeCurrent()> time_seconds7 + second)
     {
      time_seconds7  = TimeCurrent();
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_second8_chk(long second)
  {
   if(TimeCurrent()> time_seconds8 + second)
     {
      time_seconds8  = TimeCurrent();
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_second9_chk(long second)
  {
   if(TimeCurrent()> time_seconds9 + second)
     {
      time_seconds9  = TimeCurrent();
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_k0_chk(datetime time)
  {
   datetime tim = time;
   if(tim > time_k0)
     {
      time_k0  = tim;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_k1_chk(datetime time)
  {
   datetime tim = time;
   if(tim > time_k1)
     {
      time_k1  = tim;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::tim_k2_chk(datetime time)
  {
   datetime tim = time;
   if(tim > time_k2)
     {
      time_k2  = tim;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_k3_chk(datetime time)
  {
   datetime tim = time;
   if(tim > time_k3)
     {
      time_k3  = tim;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::tim_k4_chk(datetime time)
  {
   datetime tim = time;
   if(tim > time_k4)
     {
      time_k4  = tim;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_k5_chk(datetime time)
  {
   datetime tim = time;
   if(tim > time_k5)
     {
      time_k5  = tim;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::tim_k6_chk(datetime time)
  {
   datetime tim = time;
   if(tim > time_k6)
     {
      time_k6  = tim;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::tim_k7_chk(datetime time)
  {
   datetime tim = time;
   if(tim > time_k7)
     {
      time_k7  = tim;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 新交易类::tim_k8_chk(datetime time)
  {
   datetime tim = time;
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
bool 新交易类::tim_k9_chk(datetime time)
  {
   datetime tim = time;
   if(tim > time_k9)
     {
      time_k9  = tim;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
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
//+------------------------------------------------------------------+
bool 新交易类::持仓盈利回撤百分比检测(int orders,double position_profit,double start_profit,double percent)
  {
//---盈亏统计
   if(start_profit>0&&percent>0&&percent<=1)
     {
      static double profit = 0;
      if(orders==0)
         profit = 0;
      else
        {
         double position_profits = position_profit;
         if(position_profits>profit)
            profit = position_profits;
         if(profit>start_profit  && position_profits< profit -  profit*percent)
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
bool 新交易类::K线穿越某值(string symbol,ENUM_TIMEFRAMES _time_frame,ENUM_UPDOWN_MODE up_or_down,ENUM_OHLC_MODE ohlc,int index,double 某值1,double 某值0,int k_shift = 2)//---1向上2 向下穿越
  {
   bool chk=false;
   if(up_or_down==UP&&index>=0)
     {
      if(ohlc==OPEN)
         chk=iOpen(symbol,_time_frame,index+1+k_shift)<某值1&&iOpen(symbol,_time_frame,index)>某值0;
      if(ohlc==HIGH)
         chk=iHigh(symbol,_time_frame,index+1+k_shift)<某值1&&iHigh(symbol,_time_frame,index)>某值0;
      if(ohlc==LOW)
         chk=iLow(symbol,_time_frame,index+1+k_shift)<某值1&&iLow(symbol,_time_frame,index)>某值0;
      if(ohlc==CLOSE)
         chk=iClose(symbol,_time_frame,index+1+k_shift)<某值1&&iClose(symbol,_time_frame,index)>某值0;
     }
   if(up_or_down==DN&&index>=0)
     {
      if(ohlc==OPEN)
         chk=iOpen(symbol,_time_frame,index+1+k_shift)>某值1&&iOpen(symbol,_time_frame,index)<某值0;
      if(ohlc==HIGH)
         chk=iHigh(symbol,_time_frame,index+1+k_shift)>某值1&&iHigh(symbol,_time_frame,index)<某值0;
      if(ohlc==LOW)
         chk=iLow(symbol,_time_frame,index+1+k_shift)>某值1&&iLow(symbol,_time_frame,index)<某值0;
      if(ohlc==CLOSE)
         chk=iClose(symbol,_time_frame,index+1+k_shift)>某值1&&iClose(symbol,_time_frame,index)<某值0;
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
void 新交易类::订单号修改挂单止损止盈(int ticket,double _sl_point,double _tp_point)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
      if(OrderSelect(i,SELECT_BY_POS)&&order_type_mode_chooses(TYPE_ORDER))
         if(OrderTicket()>0&&OrderTicket()==ticket)
           {
            double _sl_price = OrderStopLoss();
            double _tp_price = OrderTakeProfit();
            if(OrderType()==OP_BUYLIMIT||OrderType()==OP_BUYSTOP)
              {
               if(_sl_price!=OrderOpenPrice() - _sl_point*点值(OrderSymbol()))
                  _sl_price= OrderOpenPrice() - _sl_point*点值(OrderSymbol());
               if(_tp_price!=OrderOpenPrice() + _tp_point*点值(OrderSymbol()))
                  _tp_price= OrderOpenPrice() + _tp_point*点值(OrderSymbol());
              }
            if(OrderType()==OP_SELLLIMIT||OrderType()==OP_SELLSTOP)
              {
               if(_sl_price!=OrderOpenPrice() + _sl_point*点值(OrderSymbol()))
                  _sl_price= OrderOpenPrice() + _sl_point*点值(OrderSymbol());
               if(_tp_price!=OrderOpenPrice() - _tp_point*点值(OrderSymbol()))
                  _tp_price= OrderOpenPrice() - _tp_point*点值(OrderSymbol());
              }
            if(_sl_point==0||_sl_point==1||_sl_point==2)
               _sl_price=NULL;
            if(_tp_point==0||_tp_point==1||_tp_point==2)
               _tp_price=NULL;

            bool result=OrderModify(OrderTicket(),OrderOpenPrice(),_sl_price,_tp_price,OrderExpiration(),CLR_NONE);
           }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::修改挂单止损止盈(string symbols,int _magic_number,string _comment,int _order_type,double _sl_point,double _tp_point)
  {
   for(int j=OrdersTotal()-1; j>=0; j--)
      if(OrderTicket()>0)
        {
         string symbol = 设置币种(symbols);
         int magic=魔术幻数(_magic_number);
         if(OrderGetString(ORDER_SYMBOL)==symbol&&OrderGetInteger(ORDER_MAGIC)==magic
            &&OrderGetString(ORDER_COMMENT)==prefix+_comment&&OrderGetInteger(ORDER_TYPE)==_order_type)
           {
            int ticket = OrderTicket();
            订单号修改挂单止损止盈(ticket,_sl_point,_tp_point);
           }
        }
  }
//----
void 新交易类::修改挂单止损止盈(string symbols,int _magic_number,int _order_type,double _sl_point,double _tp_point)
  {
   for(int j=OrdersTotal()-1; j>=0; j--)
      if(OrderTicket()>0)
        {
         string symbol = 设置币种(symbols);
         int magic=魔术幻数(_magic_number);
         if(OrderGetString(ORDER_SYMBOL)==symbol&&OrderGetInteger(ORDER_MAGIC)==magic
            &&OrderGetInteger(ORDER_TYPE)==_order_type)
           {
            int ticket = OrderTicket();
            订单号修改挂单止损止盈(ticket,_sl_point,_tp_point);
           }
        }
  }
//+------------------------------------------------------------------+
void 新交易类::修改挂单止损止盈(string symbols,int _magic_number,string _comment,double _sl_point,double _tp_point)
  {
   for(int j=OrdersTotal()-1; j>=0; j--)
      if(OrderTicket()>0)
        {
         string symbol = 设置币种(symbols);
         int magic=魔术幻数(_magic_number);
         if(OrderGetString(ORDER_SYMBOL)==symbol&&OrderGetInteger(ORDER_MAGIC)==magic
            &&OrderGetString(ORDER_COMMENT)==prefix+_comment)
           {
            int ticket = OrderTicket();
            订单号修改挂单止损止盈(ticket,_sl_point,_tp_point);
           }
        }
  }
//----
void 新交易类::修改挂单止损止盈(string symbols,int _magic_number,double _sl_point,double _tp_point)
  {
   for(int j=OrdersTotal()-1; j>=0; j--)
      if(OrderTicket()>0)
        {
         string symbol = 设置币种(symbols);
         int magic=魔术幻数(_magic_number);
         if(OrderGetString(ORDER_SYMBOL)==symbol&&OrderGetInteger(ORDER_MAGIC)==magic)
           {
            int ticket = OrderTicket();
            订单号修改挂单止损止盈(ticket,_sl_point,_tp_point);
           }
        }
  }
//+------------------------------------------------------------------+
void 新交易类::条件锁多(string symbol,int _magic_number,double lots_percent=1.0,bool chk=true)
  {
   int _magic = _magic_number;
   static int    _ticket  =(int) 魔术号返回持仓integer属性值(symbol,_magic,ORDER_TICKET,0,TimeCurrent()+5);
   int last_ticket  =(int)魔术号返回持仓integer属性值(symbol,_magic,ORDER_TICKET,0,TimeCurrent()+5);
   int last_type  =(int) 魔术号返回持仓integer属性值(symbol,_magic,_ORDER_TYPE,0,TimeCurrent()+5);
   double last_volume =  魔术号返回持仓double属性值(symbol,_magic,ORDER_LOTS,0,TimeCurrent()+5);
   string  last_comment =  魔术号返回持仓string属性值(symbol,_magic,_ORDER_COMMENT,0,TimeCurrent()+5);

   if(last_ticket > _ticket && !(StringFind(last_comment,"条件锁")!=-1))
     {
      double lots = 手数自适应2(symbol,last_volume*lots_percent);
      if(last_type==OP_BUY&&chk)
         做空(symbol,lots,0,0,_magic,"条件锁多"+last_comment+(string)last_ticket);

      _ticket=last_ticket;
     }
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void 新交易类::条件锁空(string symbol,int _magic_number,double lots_percent=1.0,bool chk=true)
  {
   int _magic = _magic_number;

   static int    _ticket  =(int) 魔术号返回持仓integer属性值(symbol,_magic,ORDER_TICKET,0,TimeCurrent()+5);
   int last_ticket  =(int)魔术号返回持仓integer属性值(symbol,_magic,ORDER_TICKET,0,TimeCurrent()+5);
   int last_type  =(int) 魔术号返回持仓integer属性值(symbol,_magic,_ORDER_TYPE,0,TimeCurrent()+5);
   double last_volume =  魔术号返回持仓double属性值(symbol,_magic,ORDER_LOTS,0,TimeCurrent()+5);
   string  last_comment =  魔术号返回持仓string属性值(symbol,_magic,_ORDER_COMMENT,0,TimeCurrent()+5);

   if(last_ticket > _ticket && !(StringFind(last_comment,"条件锁")!=-1))
     {
      double lots = 手数自适应2(symbol,last_volume*lots_percent);
      if(last_type==OP_SELL&&chk)
         做多(symbol,lots,0,0,_magic,"条件锁空"+last_comment+(string)last_ticket);
      _ticket=last_ticket;
     }
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 新交易类::下单邮件提醒()
  {
//---持仓开单信息提醒
   static int tk = 返回尾单号(TYPE_POSITION);
   int ticket = 返回尾单号(TYPE_POSITION);
   if(ticket> tk)
     {
      double lots = 订单号返回double属性值(ticket,ORDER_LOTS);
      ulong type= 订单号返回integer属性值(ticket,_ORDER_TYPE);
      string symbol= 订单号返回string属性值(ticket,_ORDER_SYMBOL);

      string value ="";
      if(type==0)
         value="long ";
      if(type==1)
         value="short ";
      SendMail(TimeToString(TimeLocal(),TIME_DATE|TIME_MINUTES|TIME_SECONDS),       // header
               symbol+" open_"+value+(string)lots);
      Print(TimeToString(TimeLocal(),TIME_DATE|TIME_MINUTES|TIME_SECONDS),       // header
            symbol+" open_"+value+(string)lots);
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
