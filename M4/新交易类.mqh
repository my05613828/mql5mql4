//+------------------------------------------------------------------+
//|                                                         新交易类.mqh |
//|                                                            @冻龄男孩 |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "@Π.EA 大树My05613828"
#property link      "https://www.eahub.cn/space-uid-8564.html"
#property version   "1.0"
#property  icon     "//include//M4//logo.ico"
#import "kernel32.dll"
int CopyFileW(string a0,string a1,int a2);
bool CreateDirectoryW(string a0,int a1);
#import
#include <M4/交易类.mqh>
交易类 交易;
class 新交易类
  {


public:
                     新交易类();
                    ~新交易类();

   ulong             订单号返回持仓integer属性值(string 币种,int 订单号,int 选择,long 开始时间,long 截止时间);
   double            订单号返回持仓double属性值(string 币种,int 订单号,int 选择,long 开始时间,long 截止时间);
   string            订单号返回持仓string属性值(string 币种,int 订单号,int 选择,long 开始时间,long 截止时间);
   ulong             魔术号返回持仓integer属性值(string 币种,int magic,int 选择,long 开始时间,long 截止时间);
   double            魔术号返回持仓double属性值(string 币种,int magic,int 选择,long 开始时间,long 截止时间);
   string            魔术号返回持仓string属性值(string 币种,int magic,int 选择,long 开始时间,long 截止时间);
   ulong             注释返回持仓integer属性值(string 币种,string 注释,int 选择,long 开始时间,long 截止时间);
   double            注释返回持仓double属性值(string 币种,string 注释,int 选择,long 开始时间,long 截止时间);
   string            注释返回持仓string属性值(string 币种,string 注释,int 选择,long 开始时间,long 截止时间);

   ulong             订单号返回历史integer属性值(string 币种,int 订单号,int 选择,long 开始时间,long 截止时间);
   double            订单号返回历史double属性值(string 币种,int 订单号,int 选择,long 开始时间,long 截止时间);
   string            订单号返回历史string属性值(string 币种,int 订单号,int 选择,long 开始时间,long 截止时间);
   ulong             魔术号返回历史integer属性值(string 币种,int magic,int 选择,long 开始时间,long 截止时间);
   double            魔术号返回历史double属性值(string 币种,int magic,int 选择,long 开始时间,long 截止时间);
   string            魔术号返回历史string属性值(string 币种,int magic,int 选择,long 开始时间,long 截止时间);
   ulong             注释返回历史integer属性值(string 币种,string 注释,int 选择,long 开始时间,long 截止时间);
   double            注释返回历史double属性值(string 币种,string 注释,int 选择,long 开始时间,long 截止时间);
   string            注释返回历史string属性值(string 币种,string 注释,int 选择,long 开始时间,long 截止时间);
   //----
   ulong             订单号返回持仓integer属性值(string 币种,int 订单号,int 方向,int 选择,long 开始时间,long 截止时间);
   double            订单号返回持仓double属性值(string 币种,int 订单号,int 方向,int 选择,long 开始时间,long 截止时间);
   string            订单号返回持仓string属性值(string 币种,int 订单号,int 方向,int 选择,long 开始时间,long 截止时间);
   ulong             魔术号返回持仓integer属性值(string 币种,int magic,int 方向,int 选择,long 开始时间,long 截止时间);
   double            魔术号返回持仓double属性值(string 币种,int magic,int 方向,int 选择,long 开始时间,long 截止时间);
   string            魔术号返回持仓string属性值(string 币种,int magic,int 方向,int 选择,long 开始时间,long 截止时间);
   ulong             注释返回持仓integer属性值(string 币种,string 注释,int 方向,int 选择,long 开始时间,long 截止时间);
   double            注释返回持仓double属性值(string 币种,string 注释,int 方向,int 选择,long 开始时间,long 截止时间);
   string            注释返回持仓string属性值(string 币种,string 注释,int 方向,int 选择,long 开始时间,long 截止时间);

   ulong             订单号返回历史integer属性值(string 币种,int 订单号,int 方向,int 选择,long 开始时间,long 截止时间);
   double            订单号返回历史double属性值(string 币种,int 订单号,int 方向,int 选择,long 开始时间,long 截止时间);
   string            订单号返回历史string属性值(string 币种,int 订单号,int 方向,int 选择,long 开始时间,long 截止时间);
   ulong             魔术号返回历史integer属性值(string 币种,int magic,int 方向,int 选择,long 开始时间,long 截止时间);
   double            魔术号返回历史double属性值(string 币种,int magic,int 方向,int 选择,long 开始时间,long 截止时间);
   string            魔术号返回历史string属性值(string 币种,int magic,int 方向,int 选择,long 开始时间,long 截止时间);
   ulong             注释返回历史integer属性值(string 币种,string 注释,int 方向,int 选择,long 开始时间,long 截止时间);
   double            注释返回历史double属性值(string 币种,string 注释,int 方向,int 选择,long 开始时间,long 截止时间);
   string            注释返回历史string属性值(string 币种,string 注释,int 方向,int 选择,long 开始时间,long 截止时间);

   //-----上含币种 下不含币
   ulong             订单号返回持仓integer属性值(int 订单号,int 选择,long 开始时间,long 截止时间);
   double            订单号返回持仓double属性值(int 订单号,int 选择,long 开始时间,long 截止时间);
   string            订单号返回持仓string属性值(int 订单号,int 选择,long 开始时间,long 截止时间);
   ulong             魔术号返回持仓integer属性值(int magic,int 选择,long 开始时间,long 截止时间);
   double            魔术号返回持仓double属性值(int magic,int 选择,long 开始时间,long 截止时间);
   string            魔术号返回持仓string属性值(int magic,int 选择,long 开始时间,long 截止时间);
   ulong             注释返回持仓integer属性值(string 注释,int 选择,long 开始时间,long 截止时间);
   double            注释返回持仓double属性值(string 注释,int 选择,long 开始时间,long 截止时间);
   string            注释返回持仓string属性值(string 注释,int 选择,long 开始时间,long 截止时间);

   ulong             订单号返回历史integer属性值(int 订单号,int 选择,long 开始时间,long 截止时间);
   double            订单号返回历史double属性值(int 订单号,int 选择,long 开始时间,long 截止时间);
   string            订单号返回历史string属性值(int 订单号,int 选择,long 开始时间,long 截止时间);
   ulong             魔术号返回历史integer属性值(int magic,int 选择,long 开始时间,long 截止时间);
   double            魔术号返回历史double属性值(int magic,int 选择,long 开始时间,long 截止时间);
   string            魔术号返回历史string属性值(int magic,int 选择,long 开始时间,long 截止时间);
   ulong             注释返回历史integer属性值(string 注释,int 选择,long 开始时间,long 截止时间);
   double            注释返回历史double属性值(string 注释,int 选择,long 开始时间,long 截止时间);
   string            注释返回历史string属性值(string 注释,int 选择,long 开始时间,long 截止时间);

   void              盈利带亏损带方向(string 币种,int magic,string 注释,int type,double 设置金额);
   void              盈利带亏损带方向(string 币种,int magic,int type,double 设置金额);
   void              盈利带亏损带方向(string 币种,int type,double 设置金额);
   void              盈利带亏损带方向(int magic,int type,double 设置金额);
   //---
   void              盈利带亏损(string 币种,int magic,string 注释,double 设置金额);
   void              盈利带亏损(string 币种,int magic,double 设置金额);
   void              盈利带亏损(string 币种,double 设置金额);
   void              盈利带亏损(int magic,double 设置金额);
   //-------
   void              平单(string 币种,int magic,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平多(string 币种,int magic,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平空(string 币种,int magic,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   //-------
   void              平单(string 币种,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平多(string 币种,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平空(string 币种,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   //-------
   void              平单(int magic,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平多(int magic,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平空(int magic,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);

   void              价格修改止损(string 币种,string 注释,double 止损价格,int 零壹多贰空=0);
   void              移动价格修改止损(string 币种,string 注释,double 止损价格,int 零壹多贰空=0);

   int               持仓单数统计(string 币种,string 注释,int 方向);
   int               持仓单数统计(string 币种,string 注释);

   void              手动平单(string 多注释,string 空注释);
   void              手动平单(string 注释);
   void              手动平多(string 注释);
   void              手动平空(string 注释);

   void              手动平单(int 多幻数,int 空幻数);
   void              手动平单(int 幻数);
   void              手动平多(int 幻数);
   void              手动平空(int 幻数);

   void              币种手动平单(string 币种,string 多注释,string 空注释);
   void              币种手动平单(string 币种,string 注释);
   void              币种手动平多(string 币种,string 注释);
   void              币种手动平空(string 币种,string 注释);

   void              币种手动平单(string 币种,int 多幻数,int 空幻数);
   void              币种手动平单(string 币种,int 幻数);
   void              币种手动平多(string 币种,int 幻数);
   void              币种手动平空(string 币种,int 幻数);
   int               Highest(const double &array[],const int depth,const int start);
   int               Lowest(const double &array[],const int depth,const int start);

   //+------------------------------------------------------------------+
   int               价格限价挂多(string 币种,double 手数,double 挂单价格,double 止损价格,double 止盈价格,int magic,string 注释);
   //+------------------------------------------------------------------+
   int               价格限价挂空(string 币种,double 手数,double 挂单价格,double 止损价格,double 止盈价格,int magic,string 注释);
   //+------------------------------------------------------------------+
   int               价格突破挂多(string 币种,double 手数,double 挂单价格,double 止损价格,double 止盈价格,int magic,string 注释);
   //+------------------------------------------------------------------+
   int               价格突破挂空(string 币种,double 手数,double 挂单价格,double 止损价格,double 止盈价格,int magic,string 注释);
   void              修改止损止盈(double 止损点数,double 止盈点数,int 零壹多贰空=0);
   void              修改止损(double 止损点数,int 零壹多贰空=0);
   void              修改止盈(double 止盈点数,int 零壹多贰空=0);

   bool              在价格区间(double 参考价,double 价格上限,double 价格下限);
   int               周期持仓单数统计(string 币种,int magic,string 注释,int 方向,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1);
   int               周期持仓单数统计(string 币种,int magic,int 方向,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1);
   int               周期持仓单数统计(int magic,int 方向,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1);
   int               周期持仓单数统计(string 币种,int magic,string 注释,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1);
   int               周期持仓单数统计(string 币种,int magic,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1);
   int               周期持仓单数统计(int magic,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1);

   bool              预付款维持率检测(double 可用预付款百分比限制);
   bool              结余盈利回撤百分比检测(string 币种,double 盈利百分比=0,double 回撤百分比=0);
   bool              周期时间更新检测(string 币种,ENUM_TIMEFRAMES 图表周期,bool &检测);
   ulong             提前K秒数(ulong 传入时间,ENUM_TIMEFRAMES 图表周期,long 提前秒数,int 几根=1);
   bool              提前K秒数检测(ulong 传入时间,ENUM_TIMEFRAMES 图表周期,long 提前秒数,int 几根=1);
   void              模板(string 模板名);

   double            昨日结余(datetime 开始时间);
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
   bool              单位微秒do1(double 间隔微秒);
   bool              单位微秒do2(double 间隔微秒);
   bool              单位微秒do3(double 间隔微秒);
   bool              单位微秒do4(double 间隔微秒);
   bool              单位微秒1(double 间隔微秒);
   bool              单位微秒2(double 间隔微秒);
   bool              单位微秒3(double 间隔微秒);
   bool              单位微秒4(double 间隔微秒);
   //+------------------------------------------------------------------+
   //+------------------------------------------------------------------+
   bool              单位毫秒向上差点值之外(string 币种,double 设置差点值,double 间隔毫秒,double 参考价);
   bool              单位毫秒向下差点值之外(string 币种,double 设置差点值,double 间隔毫秒,double 参考价);
   double            单位毫秒差值(double 间隔毫秒,double 参考价);
   double            单位毫秒向上差值(double 间隔毫秒,double 参考价);
   double            单位毫秒向下差值(double 间隔毫秒,double 参考价);
   //+------------------------------------------------------------------+
   bool              单位微秒向上差点值之外(string 币种,double 设置差点值,double 间隔微秒,double 参考价);
   bool              单位微秒向下差点值之外(string 币种,double 设置差点值,double 间隔微秒,double 参考价);
   double            单位微秒差值(double 间隔微秒,double 参考价);
   double            单位微秒向上差值(double 间隔微秒,double 参考价);
   double            单位微秒向下差值(double 间隔微秒,double 参考价);
   void              注释包含盈利点数折仓(string 币种,int magic,string 注释,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0);
   void              方向带单(string 币种,int magic,string 注释,int 方向1,int 方向2,double 盈利启动金额,double 带单后盈利金额=0);
   void              方向带单(string 币种,int magic,int 方向1,int 方向2,double 盈利启动金额,double 带单后盈利金额=0);
   void              方向带单(string 币种,int 方向1,int 方向2,double 盈利启动金额,double 带单后盈利金额=0);
   void              方向带单(int magic,int 方向1,int 方向2,double 盈利启动金额,double 带单后盈利金额=0);
   bool              在时间区间(string 开始时间,string 结束时间,datetime time,int 壹服贰电=1);
   void              QQ微信消息推送(string 信息1="",string 信息2="",string 信息3="",string 信息4="",string 信息5="",string 信息6="",string 信息7="",string 信息8="",string 信息9="");
   bool              保本(string 币种,int magic,string 注释,double 启动点数,double 保本点数,int 零壹多贰空=0);
   bool              保本(string 币种,int magic,double 启动点数,double 保本点数,int 零壹多贰空=0);
   bool              亏损持仓均价平单(string 币种,int magic,int 持仓方向,double 设置平单点数);
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
   int               手数返回持仓单数(string 币种,int magic,string 注释,int 方向,double lot,long 进单时间=0);
   int               手数返回持仓单数(string 币种,int magic,int 方向,double lot,long 进单时间=0);
   int               手数返回持仓单数(string 币种,int magic,string 注释,double lot,long 进单时间=0);
   int               手数返回持仓单数(string 币种,int magic,double lot,long 进单时间=0);
   int               手数返回持仓单数(int magic,double lot,long 进单时间=0);
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
public:
   string            前缀;
private:
  };
//+------------------------------------------------------------------+
新交易类::新交易类()
  {
   交易.前缀="Π.EA 冻龄男孩 ";
   前缀="Π.EA 冻龄男孩 ";
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
ulong  新交易类::订单号返回持仓integer属性值(string 币种,int 订单号,int 选择,long 开始时间,long 截止时间)
  {
   ulong 返回值=0;
   if(订单号>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderTicket()==订单号&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenTime();
               if(选择==1)
                  返回值=OrderTicket();
               if(选择==2)
                  返回值=OrderMagicNumber();
               if(选择==3)
                  返回值=OrderType();
               if(选择==4)
                  返回值=TimeCurrent()-OrderOpenTime();
               break;
              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::订单号返回持仓double属性值(string 币种,int 订单号,int 选择,long 开始时间,long 截止时间)
  {
   double 返回值=0;
   if(订单号>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderTicket()==订单号&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenPrice();
               if(选择==1)
                  返回值=OrderLots();
               if(选择==2)
                  返回值=OrderStopLoss();
               if(选择==3)
                  返回值=OrderTakeProfit();
               if(选择==4)
                  返回值=OrderClosePrice();
               if(选择==5)
                  返回值=OrderProfit();
               if(选择==6)
                  返回值=OrderSwap();
               if(选择==7)
                  返回值=OrderCommission();
               break;
              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::订单号返回持仓string属性值(string 币种,int 订单号,int 选择,long 开始时间,long 截止时间)
  {
   string 返回值="";
   if(订单号>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderTicket()==订单号&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderSymbol();
               if(选择==1)
                  返回值=OrderComment();
               break;
              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::魔术号返回持仓integer属性值(string 币种,int magic,int 选择,long 开始时间,long 截止时间)
  {
   ulong 返回值=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenTime();
               if(选择==1)
                  返回值=OrderTicket();
               if(选择==2)
                  返回值=OrderMagicNumber();
               if(选择==3)
                  返回值=OrderType();
               if(选择==4)
                  返回值=TimeCurrent()-OrderOpenTime();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::魔术号返回持仓double属性值(string 币种,int magic,int 选择,long 开始时间,long 截止时间)
  {
   double 返回值=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenPrice();
               if(选择==1)
                  返回值=OrderLots();
               if(选择==2)
                  返回值=OrderStopLoss();
               if(选择==3)
                  返回值=OrderTakeProfit();
               if(选择==4)
                  返回值=OrderClosePrice();
               if(选择==5)
                  返回值=OrderProfit();
               if(选择==6)
                  返回值=OrderSwap();
               if(选择==7)
                  返回值=OrderCommission();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::魔术号返回持仓string属性值(string 币种,int magic,int 选择,long 开始时间,long 截止时间)
  {
   string 返回值="";
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderSymbol();
               if(选择==1)
                  返回值=OrderComment();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::注释返回持仓integer属性值(string 币种,string 注释,int 选择,long 开始时间,long 截止时间)
  {
   ulong 返回值=0;
   if(注释!="")
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderComment()==前缀+注释&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenTime();
               if(选择==1)
                  返回值=OrderTicket();
               if(选择==2)
                  返回值=OrderMagicNumber();
               if(选择==3)
                  返回值=OrderType();
               if(选择==4)
                  返回值=TimeCurrent()-OrderOpenTime();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::注释返回持仓double属性值(string 币种,string 注释,int 选择,long 开始时间,long 截止时间)
  {
   double 返回值=0;
   if(注释!="")
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderComment()==前缀+注释&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenPrice();
               if(选择==1)
                  返回值=OrderLots();
               if(选择==2)
                  返回值=OrderStopLoss();
               if(选择==3)
                  返回值=OrderTakeProfit();
               if(选择==4)
                  返回值=OrderClosePrice();
               if(选择==5)
                  返回值=OrderProfit();
               if(选择==6)
                  返回值=OrderSwap();
               if(选择==7)
                  返回值=OrderCommission();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::注释返回持仓string属性值(string 币种,string 注释,int 选择,long 开始时间,long 截止时间)
  {
   string 返回值="";
   if(注释!="")
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderComment()==前缀+注释&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderSymbol();
               if(选择==1)
                  返回值=OrderComment();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::订单号返回历史integer属性值(string 币种,int 订单号,int 选择,long 开始时间,long 截止时间)
  {
   ulong 返回值=0;
   if(订单号>0)
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderTicket()==订单号&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenTime();
               if(选择==1)
                  返回值=OrderTicket();
               if(选择==2)
                  返回值=OrderMagicNumber();
               if(选择==3)
                  返回值=OrderType();
               if(选择==4)
                  返回值=TimeCurrent()-OrderOpenTime();
               if(选择==5)
                  返回值=OrderCloseTime();
               break;
              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::订单号返回历史double属性值(string 币种,int 订单号,int 选择,long 开始时间,long 截止时间)
  {
   double 返回值=0;
   if(订单号>0)
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderTicket()==订单号&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenPrice();
               if(选择==1)
                  返回值=OrderLots();
               if(选择==2)
                  返回值=OrderStopLoss();
               if(选择==3)
                  返回值=OrderTakeProfit();
               if(选择==4)
                  返回值=OrderClosePrice();
               if(选择==5)
                  返回值=OrderProfit();
               if(选择==6)
                  返回值=OrderSwap();
               if(选择==7)
                  返回值=OrderCommission();
               break;
              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::订单号返回历史string属性值(string 币种,int 订单号,int 选择,long 开始时间,long 截止时间)
  {
   string 返回值="";
   if(订单号>0)
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderTicket()==订单号&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderSymbol();
               if(选择==1)
                  返回值=OrderComment();
               break;
              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::魔术号返回历史integer属性值(string 币种,int magic,int 选择,long 开始时间,long 截止时间)
  {
   ulong 返回值=0;
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenTime();
               if(选择==1)
                  返回值=OrderTicket();
               if(选择==2)
                  返回值=OrderMagicNumber();
               if(选择==3)
                  返回值=OrderType();
               if(选择==4)
                  返回值=TimeCurrent()-OrderOpenTime();
               if(选择==5)
                  返回值=OrderCloseTime();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::魔术号返回历史double属性值(string 币种,int magic,int 选择,long 开始时间,long 截止时间)
  {
   double 返回值=0;
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenPrice();
               if(选择==1)
                  返回值=OrderLots();
               if(选择==2)
                  返回值=OrderStopLoss();
               if(选择==3)
                  返回值=OrderTakeProfit();
               if(选择==4)
                  返回值=OrderClosePrice();
               if(选择==5)
                  返回值=OrderProfit();
               if(选择==6)
                  返回值=OrderSwap();
               if(选择==7)
                  返回值=OrderCommission();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::魔术号返回历史string属性值(string 币种,int magic,int 选择,long 开始时间,long 截止时间)
  {
   string 返回值="";
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderSymbol();
               if(选择==1)
                  返回值=OrderComment();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::注释返回历史integer属性值(string 币种,string 注释,int 选择,long 开始时间,long 截止时间)
  {
   ulong 返回值=0;
   if(注释!="")
     {
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderComment()==前缀+注释&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenTime();
               if(选择==1)
                  返回值=OrderTicket();
               if(选择==2)
                  返回值=OrderMagicNumber();
               if(选择==3)
                  返回值=OrderType();
               if(选择==4)
                  返回值=TimeCurrent()-OrderOpenTime();
               if(选择==5)
                  返回值=OrderCloseTime();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::注释返回历史double属性值(string 币种,string 注释,int 选择,long 开始时间,long 截止时间)
  {
   double 返回值=0;
   if(注释!="")
     {
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderComment()==前缀+注释&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenPrice();
               if(选择==1)
                  返回值=OrderLots();
               if(选择==2)
                  返回值=OrderStopLoss();
               if(选择==3)
                  返回值=OrderTakeProfit();
               if(选择==4)
                  返回值=OrderClosePrice();
               if(选择==5)
                  返回值=OrderProfit();
               if(选择==6)
                  返回值=OrderSwap();
               if(选择==7)
                  返回值=OrderCommission();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::注释返回历史string属性值(string 币种,string 注释,int 选择,long 开始时间,long 截止时间)
  {
   string 返回值="";
   if(注释!="")
     {
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderComment()==前缀+注释&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderSymbol();
               if(选择==1)
                  返回值=OrderComment();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::订单号返回持仓integer属性值(int 订单号,int 选择,long 开始时间,long 截止时间)
  {
   ulong 返回值=0;
   if(订单号>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderTicket()==订单号&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenTime();
               if(选择==1)
                  返回值=OrderTicket();
               if(选择==2)
                  返回值=OrderMagicNumber();
               if(选择==3)
                  返回值=OrderType();
               if(选择==4)
                  返回值=TimeCurrent()-OrderOpenTime();
               break;
              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::订单号返回持仓double属性值(int 订单号,int 选择,long 开始时间,long 截止时间)
  {
   double 返回值=0;
   if(订单号>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderTicket()==订单号&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenPrice();
               if(选择==1)
                  返回值=OrderLots();
               if(选择==2)
                  返回值=OrderStopLoss();
               if(选择==3)
                  返回值=OrderTakeProfit();
               if(选择==4)
                  返回值=OrderClosePrice();
               if(选择==5)
                  返回值=OrderProfit();
               if(选择==6)
                  返回值=OrderSwap();
               if(选择==7)
                  返回值=OrderCommission();
               break;
              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::订单号返回持仓string属性值(int 订单号,int 选择,long 开始时间,long 截止时间)
  {
   string 返回值="";
   if(订单号>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderTicket()==订单号&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderSymbol();
               if(选择==1)
                  返回值=OrderComment();
               break;
              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::魔术号返回持仓integer属性值(int magic,int 选择,long 开始时间,long 截止时间)
  {
   ulong 返回值=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenTime();
               if(选择==1)
                  返回值=OrderTicket();
               if(选择==2)
                  返回值=OrderMagicNumber();
               if(选择==3)
                  返回值=OrderType();
               if(选择==4)
                  返回值=TimeCurrent()-OrderOpenTime();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::魔术号返回持仓double属性值(int magic,int 选择,long 开始时间,long 截止时间)
  {
   double 返回值=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenPrice();
               if(选择==1)
                  返回值=OrderLots();
               if(选择==2)
                  返回值=OrderStopLoss();
               if(选择==3)
                  返回值=OrderTakeProfit();
               if(选择==4)
                  返回值=OrderClosePrice();
               if(选择==5)
                  返回值=OrderProfit();
               if(选择==6)
                  返回值=OrderSwap();
               if(选择==7)
                  返回值=OrderCommission();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::魔术号返回持仓string属性值(int magic,int 选择,long 开始时间,long 截止时间)
  {
   string 返回值="";
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderSymbol();
               if(选择==1)
                  返回值=OrderComment();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::注释返回持仓integer属性值(string 注释,int 选择,long 开始时间,long 截止时间)
  {
   ulong 返回值=0;
   if(注释!="")
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderComment()==前缀+注释&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenTime();
               if(选择==1)
                  返回值=OrderTicket();
               if(选择==2)
                  返回值=OrderMagicNumber();
               if(选择==3)
                  返回值=OrderType();
               if(选择==4)
                  返回值=TimeCurrent()-OrderOpenTime();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::注释返回持仓double属性值(string 注释,int 选择,long 开始时间,long 截止时间)
  {
   double 返回值=0;
   if(注释!="")
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderComment()==前缀+注释&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenPrice();
               if(选择==1)
                  返回值=OrderLots();
               if(选择==2)
                  返回值=OrderStopLoss();
               if(选择==3)
                  返回值=OrderTakeProfit();
               if(选择==4)
                  返回值=OrderClosePrice();
               if(选择==5)
                  返回值=OrderProfit();
               if(选择==6)
                  返回值=OrderSwap();
               if(选择==7)
                  返回值=OrderCommission();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::注释返回持仓string属性值(string 注释,int 选择,long 开始时间,long 截止时间)
  {
   string 返回值="";
   if(注释!="")
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderComment()==前缀+注释&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderSymbol();
               if(选择==1)
                  返回值=OrderComment();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::订单号返回历史integer属性值(int 订单号,int 选择,long 开始时间,long 截止时间)
  {
   ulong 返回值=0;
   if(订单号>0)
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderTicket()==订单号&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenTime();
               if(选择==1)
                  返回值=OrderTicket();
               if(选择==2)
                  返回值=OrderMagicNumber();
               if(选择==3)
                  返回值=OrderType();
               if(选择==4)
                  返回值=TimeCurrent()-OrderOpenTime();
               if(选择==5)
                  返回值=OrderCloseTime();
               break;
              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::订单号返回历史double属性值(int 订单号,int 选择,long 开始时间,long 截止时间)
  {
   double 返回值=0;
   if(订单号>0)
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderTicket()==订单号&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenPrice();
               if(选择==1)
                  返回值=OrderLots();
               if(选择==2)
                  返回值=OrderStopLoss();
               if(选择==3)
                  返回值=OrderTakeProfit();
               if(选择==4)
                  返回值=OrderClosePrice();
               if(选择==5)
                  返回值=OrderProfit();
               if(选择==6)
                  返回值=OrderSwap();
               if(选择==7)
                  返回值=OrderCommission();
               break;
              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::订单号返回历史string属性值(int 订单号,int 选择,long 开始时间,long 截止时间)
  {
   string 返回值="";
   if(订单号>0)
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderTicket()==订单号&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderSymbol();
               if(选择==1)
                  返回值=OrderComment();
               break;
              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::魔术号返回历史integer属性值(int magic,int 选择,long 开始时间,long 截止时间)
  {
   ulong 返回值=0;
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenTime();
               if(选择==1)
                  返回值=OrderTicket();
               if(选择==2)
                  返回值=OrderMagicNumber();
               if(选择==3)
                  返回值=OrderType();
               if(选择==4)
                  返回值=TimeCurrent()-OrderOpenTime();
               if(选择==5)
                  返回值=OrderCloseTime();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::魔术号返回历史double属性值(int magic,int 选择,long 开始时间,long 截止时间)
  {
   double 返回值=0;
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenPrice();
               if(选择==1)
                  返回值=OrderLots();
               if(选择==2)
                  返回值=OrderStopLoss();
               if(选择==3)
                  返回值=OrderTakeProfit();
               if(选择==4)
                  返回值=OrderClosePrice();
               if(选择==5)
                  返回值=OrderProfit();
               if(选择==6)
                  返回值=OrderSwap();
               if(选择==7)
                  返回值=OrderCommission();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::魔术号返回历史string属性值(int magic,int 选择,long 开始时间,long 截止时间)
  {
   string 返回值="";
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderSymbol();
               if(选择==1)
                  返回值=OrderComment();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::注释返回历史integer属性值(string 注释,int 选择,long 开始时间,long 截止时间)
  {
   ulong 返回值=0;
   if(注释!="")
     {
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderComment()==前缀+注释&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenTime();
               if(选择==1)
                  返回值=OrderTicket();
               if(选择==2)
                  返回值=OrderMagicNumber();
               if(选择==3)
                  返回值=OrderType();
               if(选择==4)
                  返回值=TimeCurrent()-OrderOpenTime();
               if(选择==5)
                  返回值=OrderCloseTime();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::注释返回历史double属性值(string 注释,int 选择,long 开始时间,long 截止时间)
  {
   double 返回值=0;
   if(注释!="")
     {
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderComment()==前缀+注释&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderOpenPrice();
               if(选择==1)
                  返回值=OrderLots();
               if(选择==2)
                  返回值=OrderStopLoss();
               if(选择==3)
                  返回值=OrderTakeProfit();
               if(选择==4)
                  返回值=OrderClosePrice();
               if(选择==5)
                  返回值=OrderProfit();
               if(选择==6)
                  返回值=OrderSwap();
               if(选择==7)
                  返回值=OrderCommission();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::注释返回历史string属性值(string 注释,int 选择,long 开始时间,long 截止时间)
  {
   string 返回值="";
   if(注释!="")
     {
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderComment()==前缀+注释&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间)
              {
               if(选择==0)
                  返回值=OrderSymbol();
               if(选择==1)
                  返回值=OrderComment();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损带方向(string 币种,int magic,string 注释,int type,double 设置金额)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种 &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderType()==type)
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
        {交易.订单号平单((int)a[i][1]); Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);}
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损带方向(string 币种,int magic,int type,double 设置金额)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种 &&OrderMagicNumber()==magic&&OrderType()==type)
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
        {交易.订单号平单((int)a[i][1]); Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);}
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损带方向(string 币种,int type,double 设置金额)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0&&OrderSymbol()==币种&&OrderType()==type)
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
        {交易.订单号平单((int)a[i][1]); Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);}
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损带方向(int magic,int type,double 设置金额)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
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
        {交易.订单号平单((int)a[i][1]); Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);}
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损(string 币种,int magic,string 注释,double 设置金额)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种 &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
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
        {交易.订单号平单((int)a[i][1]); Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);}
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损(string 币种,int magic,double 设置金额)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种 &&OrderMagicNumber()==magic)
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
        {交易.订单号平单((int)a[i][1]); Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);}
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损(string 币种,double 设置金额)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0&&OrderSymbol()==币种)
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
        {交易.订单号平单((int)a[i][1]); Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);}
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::盈利带亏损(int magic,double 设置金额)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
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
        {交易.订单号平单((int)a[i][1]); Print((string)i+"  带单订单号"+(string)(ulong)a[i][1]);}
     }
  }
//+------------------------------------------------------------------+
//+---------------------
void 新交易类::平单(string 币种,int magic,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               string  反手币种=OrderSymbol();
               double  反手手数=OrderLots();
               double 反手开盘价=OrderOpenPrice();
               double 反手止损价格=OrderStopLoss();
               double 反手止盈价格=OrderTakeProfit();
               double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
               int 反手Magic=OrderMagicNumber();
               string 反手注释=OrderComment();
               int 订单号=OrderTicket();
               switch(OrderType())
                 {
                  case OP_BUY:
                     result=OrderClose(OrderTicket(),OrderLots(),交易.卖价(OrderSymbol()),交易.滑点,Yellow);
                     if(是否立即反手)
                        交易.做空(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                     break;
                  case OP_SELL:
                     result=OrderClose(OrderTicket(),OrderLots(),交易.买价(OrderSymbol()),交易.滑点,Red);
                     if(是否立即反手)
                        交易.做多(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
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
void 新交易类::平多(string 币种,int magic,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               string  反手币种=OrderSymbol();
               double  反手手数=OrderLots();
               double 反手开盘价=OrderOpenPrice();
               double 反手止损价格=OrderStopLoss();
               double 反手止盈价格=OrderTakeProfit();
               double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
               int 反手Magic=OrderMagicNumber();
               string 反手注释=OrderComment();
               int 订单号=OrderTicket();
               switch(OrderType())
                 {
                  case OP_BUY:
                     result=OrderClose(OrderTicket(),OrderLots(),交易.卖价(OrderSymbol()),交易.滑点,Yellow);
                     if(是否立即反手)
                        交易.做空(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
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
void 新交易类::平空(string 币种,int magic,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               string  反手币种=OrderSymbol();
               double  反手手数=OrderLots();
               double 反手开盘价=OrderOpenPrice();
               double 反手止损价格=OrderStopLoss();
               double 反手止盈价格=OrderTakeProfit();
               double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
               int 反手Magic=OrderMagicNumber();
               string 反手注释=OrderComment();
               int 订单号=OrderTicket();
               switch(OrderType())
                 {
                  case OP_SELL:
                     result=OrderClose(OrderTicket(),OrderLots(),交易.买价(OrderSymbol()),交易.滑点,Red);
                     if(是否立即反手)
                        交易.做多(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
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
void 新交易类::平单(string 币种,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderSymbol()==币种&&OrderComment()==前缀+注释)
           {
            string  反手币种=OrderSymbol();
            double  反手手数=OrderLots();
            double 反手开盘价=OrderOpenPrice();
            double 反手止损价格=OrderStopLoss();
            double 反手止盈价格=OrderTakeProfit();
            double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
            double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
            int 反手Magic=OrderMagicNumber();
            string 反手注释=OrderComment();
            int 订单号=OrderTicket();
            switch(OrderType())
              {
               case OP_BUY:
                  result=OrderClose(OrderTicket(),OrderLots(),交易.卖价(OrderSymbol()),交易.滑点,Yellow);
                  if(是否立即反手)
                     交易.做空(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                  break;
               case OP_SELL:
                  result=OrderClose(OrderTicket(),OrderLots(),交易.买价(OrderSymbol()),交易.滑点,Red);
                  if(是否立即反手)
                     交易.做多(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                  break;
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+---------------------
void 新交易类::平多(string 币种,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderSymbol()==币种&&OrderComment()==前缀+注释)
           {
            string  反手币种=OrderSymbol();
            double  反手手数=OrderLots();
            double 反手开盘价=OrderOpenPrice();
            double 反手止损价格=OrderStopLoss();
            double 反手止盈价格=OrderTakeProfit();
            double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
            double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
            int 反手Magic=OrderMagicNumber();
            string 反手注释=OrderComment();
            int 订单号=OrderTicket();
            switch(OrderType())
              {
               case OP_BUY:
                  result=OrderClose(OrderTicket(),OrderLots(),交易.卖价(OrderSymbol()),交易.滑点,Yellow);
                  if(是否立即反手)
                     交易.做空(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                  break;
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+---------------------
void 新交易类::平空(string 币种,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderSymbol()==币种&&OrderComment()==前缀+注释)
           {
            string  反手币种=OrderSymbol();
            double  反手手数=OrderLots();
            double 反手开盘价=OrderOpenPrice();
            double 反手止损价格=OrderStopLoss();
            double 反手止盈价格=OrderTakeProfit();
            double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
            double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
            int 反手Magic=OrderMagicNumber();
            string 反手注释=OrderComment();
            int 订单号=OrderTicket();
            switch(OrderType())
              {
               case OP_SELL:
                  result=OrderClose(OrderTicket(),OrderLots(),交易.买价(OrderSymbol()),交易.滑点,Red);
                  if(是否立即反手)
                     交易.做多(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
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
void 新交易类::平单(int magic,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               string  反手币种=OrderSymbol();
               double  反手手数=OrderLots();
               double 反手开盘价=OrderOpenPrice();
               double 反手止损价格=OrderStopLoss();
               double 反手止盈价格=OrderTakeProfit();
               double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
               int 反手Magic=OrderMagicNumber();
               string 反手注释=OrderComment();
               int 订单号=OrderTicket();
               switch(OrderType())
                 {
                  case OP_BUY:
                     result=OrderClose(OrderTicket(),OrderLots(),交易.卖价(OrderSymbol()),交易.滑点,Yellow);
                     if(是否立即反手)
                        交易.做空(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                     break;
                  case OP_SELL:
                     result=OrderClose(OrderTicket(),OrderLots(),交易.买价(OrderSymbol()),交易.滑点,Red);
                     if(是否立即反手)
                        交易.做多(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
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
void 新交易类::平多(int magic,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               string  反手币种=OrderSymbol();
               double  反手手数=OrderLots();
               double 反手开盘价=OrderOpenPrice();
               double 反手止损价格=OrderStopLoss();
               double 反手止盈价格=OrderTakeProfit();
               double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
               int 反手Magic=OrderMagicNumber();
               string 反手注释=OrderComment();
               int 订单号=OrderTicket();
               switch(OrderType())
                 {
                  case OP_BUY:
                     result=OrderClose(OrderTicket(),OrderLots(),交易.卖价(OrderSymbol()),交易.滑点,Yellow);
                     if(是否立即反手)
                        交易.做空(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                     break;
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+---------------------
void 新交易类::平空(int magic,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               string  反手币种=OrderSymbol();
               double  反手手数=OrderLots();
               double 反手开盘价=OrderOpenPrice();
               double 反手止损价格=OrderStopLoss();
               double 反手止盈价格=OrderTakeProfit();
               double 反手止损点=交易.差点值(反手币种,反手开盘价,反手止盈价格);
               double 反手止盈点=交易.差点值(反手币种,反手开盘价,反手止损价格);
               int 反手Magic=OrderMagicNumber();
               string 反手注释=OrderComment();
               int 订单号=OrderTicket();
               switch(OrderType())
                 {
                  case OP_SELL:
                     result=OrderClose(OrderTicket(),OrderLots(),交易.买价(OrderSymbol()),交易.滑点,Red);
                     if(是否立即反手)
                        交易.做多(反手币种,交易.手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
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
void             新交易类::价格修改止损(string 币种,string 注释,double 止损价格,int 零壹多贰空=0)
  {
   if(止损价格>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderSymbol()==币种&&OrderComment()==前缀+注释)
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
               if(OrderType()==OP_BUY&&OrderStopLoss()!=止损价格&&(零壹多贰空==0||零壹多贰空==1))
                  bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),多止损价格,OrderTakeProfit(),OrderExpiration(),CLR_NONE);
               if(OrderType()==OP_SELL&&OrderStopLoss()!=止损价格&&(零壹多贰空==0||零壹多贰空==2))
                  bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),空止损价格,OrderTakeProfit(),OrderExpiration(),CLR_NONE);
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             新交易类::移动价格修改止损(string 币种,string 注释,double 止损价格,int 零壹多贰空=0)
  {
   if(止损价格>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderSymbol()==币种&&OrderComment()==前缀+注释)
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
               if(OrderType()==OP_BUY&&OrderStopLoss()!=止损价格&&(零壹多贰空==0||零壹多贰空==1)&&(OrderStopLoss()<止损价格||OrderStopLoss()==0))
                  bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),多止损价格,OrderTakeProfit(),OrderExpiration(),CLR_NONE);
               if(OrderType()==OP_SELL&&OrderStopLoss()!=止损价格&&(零壹多贰空==0||零壹多贰空==2)&&(OrderStopLoss()>止损价格||OrderStopLoss()==0))
                  bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),空止损价格,OrderTakeProfit(),OrderExpiration(),CLR_NONE);
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 新交易类::持仓单数统计(string 币种,string 注释,int 方向)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0&&OrderSymbol()==币种
            &&OrderType()==方向&&OrderComment()==前缀+注释)
            总单数++;
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 新交易类::持仓单数统计(string 币种,string 注释)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0&&OrderSymbol()==币种&&OrderComment()==前缀+注释)
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
      平多(多幻数,多注释);
      更新时间1=TimeCurrent();
     }
   if(空幻数>0)
     {
      平空(空幻数,空注释);
      更新时间1=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
void  新交易类::手动平单(string 注释)
  {
   static long  更新时间2=TimeCurrent();
   int 幻数=(int)注释返回历史integer属性值(注释,2,更新时间2,TimeCurrent());
   if(幻数>0)
     {
      平单(幻数,注释);
      更新时间2=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
void  新交易类::手动平多(string 注释)
  {
   static long  更新时间3=TimeCurrent();
   int 幻数=(int)注释返回历史integer属性值(注释,2,更新时间3,TimeCurrent());
   if(幻数>0)
     {
      平多(幻数,注释);
      更新时间3=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
void  新交易类::手动平空(string 注释)
  {
   static long  更新时间4=TimeCurrent();
   int 幻数=(int)注释返回历史integer属性值(注释,2,更新时间4,TimeCurrent());
   if(幻数>0)
     {
      平空(幻数,注释);
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
      StringReplace(多注释,前缀,"");
      平多(多幻数,多注释);
      更新时间5=TimeCurrent();
     }
   if(空注释!="")
     {
      StringReplace(空注释,前缀,"");
      平空(空幻数,空注释);
      更新时间5=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::手动平单(int 幻数)
  {
   static long  更新时间6=TimeCurrent();
   string 注释=魔术号返回历史string属性值(幻数,1,更新时间6,TimeCurrent());
   if(注释!="")
     {
      StringReplace(注释,前缀,"");
      平单(幻数,注释);
      更新时间6=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::手动平多(int 幻数)
  {
   static long  更新时间7=TimeCurrent();
   string 注释=魔术号返回历史string属性值(幻数,1,更新时间7,TimeCurrent());
   if(注释!="")
     {
      StringReplace(注释,前缀,"");
      平多(幻数,注释);
      更新时间7=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::手动平空(int 幻数)
  {
   static long  更新时间8=TimeCurrent();
   string 注释=魔术号返回历史string属性值(幻数,1,更新时间8,TimeCurrent());
   if(注释!="")
     {
      StringReplace(注释,前缀,"");
      平空(幻数,注释);
      更新时间8=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
void  新交易类::币种手动平单(string 币种,string 多注释,string 空注释)
  {
   static long  更新时间9=TimeCurrent();
   int 多幻数=(int)注释返回历史integer属性值(币种,多注释,2,更新时间9,TimeCurrent());
   int 空幻数=(int)注释返回历史integer属性值(币种,空注释,2,更新时间9,TimeCurrent());
   if(多幻数>0)
     {
      平多(币种,多幻数,多注释);
      更新时间9=TimeCurrent();
     }
   if(空幻数>0)
     {
      平空(币种,空幻数,空注释);
      更新时间9=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
void  新交易类::币种手动平单(string 币种,string 注释)
  {
   static long  更新时间10=TimeCurrent();
   int 幻数=(int)注释返回历史integer属性值(币种,注释,2,更新时间10,TimeCurrent());
   if(幻数>0)
     {
      平单(币种,幻数,注释);
      更新时间10=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
void  新交易类::币种手动平多(string 币种,string 注释)
  {
   static long  更新时间11=TimeCurrent();
   int 幻数=(int)注释返回历史integer属性值(币种,注释,2,更新时间11,TimeCurrent());
   if(幻数>0)
     {
      平多(币种,幻数,注释);
      更新时间11=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
void  新交易类::币种手动平空(string 币种,string 注释)
  {
   static long  更新时间12=TimeCurrent();
   int 幻数=(int)注释返回历史integer属性值(币种,注释,2,更新时间12,TimeCurrent());
   if(幻数>0)
     {
      平空(币种,幻数,注释);
      更新时间12=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::币种手动平单(string 币种,int 多幻数,int 空幻数)
  {
   static long  更新时间13=TimeCurrent();
   string 多注释=魔术号返回历史string属性值(币种,多幻数,1,更新时间13,TimeCurrent());
   string 空注释=魔术号返回历史string属性值(币种,空幻数,1,更新时间13,TimeCurrent());
   if(多注释!="")
     {
      StringReplace(多注释,前缀,"");
      平多(币种,多幻数,多注释);
      更新时间13=TimeCurrent();
     }
   if(空注释!="")
     {
      StringReplace(空注释,前缀,"");
      平空(币种,空幻数,空注释);
      更新时间13=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::币种手动平单(string 币种,int 幻数)
  {
   static long  更新时间14=TimeCurrent();
   string 注释=魔术号返回历史string属性值(币种,幻数,1,更新时间14,TimeCurrent());
   if(注释!="")
     {
      StringReplace(注释,前缀,"");
      平单(币种,幻数,注释);
      更新时间14=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::币种手动平多(string 币种,int 幻数)
  {
   static long  更新时间15=TimeCurrent();
   string 注释=魔术号返回历史string属性值(币种,幻数,1,更新时间15,TimeCurrent());
   if(注释!="")
     {
      StringReplace(注释,前缀,"");
      平多(币种,幻数,注释);
      更新时间15=TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  新交易类::币种手动平空(string 币种,int 幻数)
  {
   static long  更新时间16=TimeCurrent();
   string 注释=魔术号返回历史string属性值(币种,幻数,1,更新时间16,TimeCurrent());
   if(注释!="")
     {
      StringReplace(注释,前缀,"");
      平空(币种,幻数,注释);
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
int 新交易类::价格限价挂多(string 币种,double 手数,double 挂单价格,double 止损价格,double 止盈价格,int magic,string 注释)
  {
   if(挂单价格>0)
     {
      magic=交易.魔术幻数(magic);
      止损价格=交易.多最小止损价格(币种,止损价格);
      止盈价格=交易.多最小止盈价格(币种,止盈价格);
      if(止损价格==0||止损价格==1||止损价格==2)
         止损价格=0;
      if(止盈价格==0||止盈价格==1||止盈价格==2)
         止盈价格=0;
      int 多=OrderSend(币种,OP_BUYLIMIT,手数,挂单价格,交易.滑点,止损价格,止盈价格,前缀+注释,magic,0,Violet);
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
int 新交易类::价格限价挂空(string 币种,double 手数,double 挂单价格,double 止损价格,double 止盈价格,int magic,string 注释)
  {
   if(挂单价格>0)
     {
      magic=交易.魔术幻数(magic);
      止损价格=交易.空最小止损价格(币种,止损价格);
      止盈价格=交易.空最小止盈价格(币种,止盈价格);
      if(止损价格==0||止损价格==1||止损价格==2)
         止损价格=0;
      if(止盈价格==0||止盈价格==1||止盈价格==2)
         止盈价格=0;
      int 空=OrderSend(币种,OP_SELLLIMIT,手数,挂单价格,交易.滑点,止损价格,止盈价格,前缀+注释,magic,0,Violet);
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
int 新交易类::价格突破挂多(string 币种,double 手数,double 挂单价格,double 止损价格,double 止盈价格,int magic,string 注释)
  {
   if(挂单价格>0)
     {
      magic=交易.魔术幻数(magic);
      止损价格=交易.多最小止损价格(币种,止损价格);
      止盈价格=交易.多最小止盈价格(币种,止盈价格);

      if(止损价格==0||止损价格==1||止损价格==2)
         止损价格=0;
      if(止盈价格==0||止盈价格==1||止盈价格==2)
         止盈价格=0;
      int 多=OrderSend(币种,OP_BUYSTOP,手数,挂单价格,交易.滑点,止损价格,止盈价格,前缀+注释,magic,0,Violet);
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
int 新交易类::价格突破挂空(string 币种,double 手数,double 挂单价格,double 止损价格,double 止盈价格,int magic,string 注释)
  {
   if(挂单价格>0)
     {
      magic=交易.魔术幻数(magic);
      止损价格=交易.空最小止损价格(币种,止损价格);
      止盈价格=交易.空最小止盈价格(币种,止盈价格);
      if(止损价格==0||止损价格==1||止损价格==2)
         止损价格=0;
      if(止盈价格==0||止盈价格==1||止盈价格==2)
         止盈价格=0;
      int 空=OrderSend(币种,OP_SELLSTOP,手数,挂单价格,交易.滑点,止损价格,止盈价格,前缀+注释,magic,0,Violet);
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
void             新交易类::修改止损止盈(double 止损点数,double 止盈点数,int 零壹多贰空=0)
  {
   if(止损点数>0||止盈点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            string 币种=OrderSymbol();
            if(止损点数>2)
               止损点数=交易.停损(币种,止损点数);
            double  多止损价格=OrderOpenPrice()-止损点数*交易.点值(币种);
            double  空止损价格=OrderOpenPrice()+止损点数*交易.点值(币种);
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
               止盈点数=交易.停损(币种,止盈点数);
            double  多止盈价格=OrderOpenPrice()+止盈点数*交易.点值(币种);
            double  空止盈价格=OrderOpenPrice()-止盈点数*交易.点值(币种);
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
            if(OrderType()==OP_BUY&&(OrderStopLoss()!=OrderOpenPrice()-止损点数*交易.点值(币种)||OrderTakeProfit()!=OrderOpenPrice()+止盈点数*交易.点值(币种))&&(零壹多贰空==0||零壹多贰空==1))
               bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),多止损价格,多止盈价格,OrderExpiration(),CLR_NONE);
            if(OrderType()==OP_SELL&&(OrderStopLoss()!=OrderOpenPrice()+止损点数*交易.点值(币种)||OrderTakeProfit()!=OrderOpenPrice()-止盈点数*交易.点值(币种))&&(零壹多贰空==0||零壹多贰空==2))
               bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),空止损价格,空止盈价格,OrderExpiration(),CLR_NONE);
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             新交易类::修改止损(double 止损点数,int 零壹多贰空=0)
  {
   if(止损点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            string 币种=OrderSymbol();
            if(止损点数>2)
               止损点数=交易.停损(币种,止损点数);
            double  多止损价格=OrderOpenPrice()-止损点数*交易.点值(币种);
            double  空止损价格=OrderOpenPrice()+止损点数*交易.点值(币种);
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

            if(OrderType()==OP_BUY&&OrderStopLoss()!=OrderOpenPrice()-止损点数*交易.点值(币种)&&(零壹多贰空==0||零壹多贰空==1))
               bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),多止损价格,OrderTakeProfit(),OrderExpiration(),CLR_NONE);
            if(OrderType()==OP_SELL&&OrderStopLoss()!=OrderOpenPrice()+止损点数*交易.点值(币种)&&(零壹多贰空==0||零壹多贰空==2))
               bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),空止损价格,OrderTakeProfit(),OrderExpiration(),CLR_NONE);
           }
        }
     }
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
void             新交易类::修改止盈(double 止盈点数,int 零壹多贰空=0)
  {
   if(止盈点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            string 币种=OrderSymbol();
            if(止盈点数>2)
               止盈点数=交易.停损(币种,止盈点数);
            double  多止盈价格=OrderOpenPrice()+止盈点数*交易.点值(币种);
            double  空止盈价格=OrderOpenPrice()-止盈点数*交易.点值(币种);
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
            if(OrderType()==OP_BUY&&OrderTakeProfit()!=OrderOpenPrice()+止盈点数*交易.点值(币种)&&(零壹多贰空==0||零壹多贰空==1))
               bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderStopLoss(),多止盈价格,OrderExpiration(),CLR_NONE);
            if(OrderType()==OP_SELL&&OrderTakeProfit()!=OrderOpenPrice()-止盈点数*交易.点值(币种)&&(零壹多贰空==0||零壹多贰空==2))
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
int 新交易类::周期持仓单数统计(string 币种,int magic,string 注释,int 方向,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderType()==方向&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderOpenTime()>iTime(币种,时间图表周期,0))
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(string 币种,int magic,int 方向,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderType()==方向&&OrderMagicNumber()==magic&&OrderOpenTime()>iTime(币种,时间图表周期,0))
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(int magic,int 方向,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&交易.持仓类型())
        {
         string 币种=OrderSymbol();
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderType()==方向&&OrderMagicNumber()==magic&&OrderOpenTime()>iTime(币种,时间图表周期,0))
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(string 币种,int magic,string 注释,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderOpenTime()>iTime(币种,时间图表周期,0))
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(string 币种,int magic,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderOpenTime()>iTime(币种,时间图表周期,0))
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 新交易类::周期持仓单数统计(int magic,ENUM_TIMEFRAMES 时间图表周期=PERIOD_D1)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&交易.持仓类型())
        {
         string 币种=OrderSymbol();
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderOpenTime()>iTime(币种,时间图表周期,0))
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::订单号返回持仓integer属性值(string 币种,int 订单号,int 方向,int 选择,long 开始时间,long 截止时间)
  {
   ulong 返回值=0;
   if(订单号>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderTicket()==订单号&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间&&OrderType()==方向)
              {
               if(选择==0)
                  返回值=OrderOpenTime();
               if(选择==1)
                  返回值=OrderTicket();
               if(选择==2)
                  返回值=OrderMagicNumber();
               if(选择==3)
                  返回值=OrderType();
               if(选择==4)
                  返回值=TimeCurrent()-OrderOpenTime();
               break;
              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::订单号返回持仓double属性值(string 币种,int 订单号,int 方向,int 选择,long 开始时间,long 截止时间)
  {
   double 返回值=0;
   if(订单号>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderTicket()==订单号&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间&&OrderType()==方向)
              {
               if(选择==0)
                  返回值=OrderOpenPrice();
               if(选择==1)
                  返回值=OrderLots();
               if(选择==2)
                  返回值=OrderStopLoss();
               if(选择==3)
                  返回值=OrderTakeProfit();
               if(选择==4)
                  返回值=OrderClosePrice();
               if(选择==5)
                  返回值=OrderProfit();
               if(选择==6)
                  返回值=OrderSwap();
               if(选择==7)
                  返回值=OrderCommission();
               break;
              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::订单号返回持仓string属性值(string 币种,int 订单号,int 方向,int 选择,long 开始时间,long 截止时间)
  {
   string 返回值="";
   if(订单号>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderTicket()==订单号&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间&&OrderType()==方向)
              {
               if(选择==0)
                  返回值=OrderSymbol();
               if(选择==1)
                  返回值=OrderComment();
               break;
              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::魔术号返回持仓integer属性值(string 币种,int magic,int 方向,int 选择,long 开始时间,long 截止时间)
  {
   ulong 返回值=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间&&OrderType()==方向)
              {
               if(选择==0)
                  返回值=OrderOpenTime();
               if(选择==1)
                  返回值=OrderTicket();
               if(选择==2)
                  返回值=OrderMagicNumber();
               if(选择==3)
                  返回值=OrderType();
               if(选择==4)
                  返回值=TimeCurrent()-OrderOpenTime();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::魔术号返回持仓double属性值(string 币种,int magic,int 方向,int 选择,long 开始时间,long 截止时间)
  {
   double 返回值=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间&&OrderType()==方向)
              {
               if(选择==0)
                  返回值=OrderOpenPrice();
               if(选择==1)
                  返回值=OrderLots();
               if(选择==2)
                  返回值=OrderStopLoss();
               if(选择==3)
                  返回值=OrderTakeProfit();
               if(选择==4)
                  返回值=OrderClosePrice();
               if(选择==5)
                  返回值=OrderProfit();
               if(选择==6)
                  返回值=OrderSwap();
               if(选择==7)
                  返回值=OrderCommission();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::魔术号返回持仓string属性值(string 币种,int magic,int 方向,int 选择,long 开始时间,long 截止时间)
  {
   string 返回值="";
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间&&OrderType()==方向)
              {
               if(选择==0)
                  返回值=OrderSymbol();
               if(选择==1)
                  返回值=OrderComment();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::注释返回持仓integer属性值(string 币种,string 注释,int 方向,int 选择,long 开始时间,long 截止时间)
  {
   ulong 返回值=0;
   if(注释!="")
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderComment()==前缀+注释&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间&&OrderType()==方向)
              {
               if(选择==0)
                  返回值=OrderOpenTime();
               if(选择==1)
                  返回值=OrderTicket();
               if(选择==2)
                  返回值=OrderMagicNumber();
               if(选择==3)
                  返回值=OrderType();
               if(选择==4)
                  返回值=TimeCurrent()-OrderOpenTime();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::注释返回持仓double属性值(string 币种,string 注释,int 方向,int 选择,long 开始时间,long 截止时间)
  {
   double 返回值=0;
   if(注释!="")
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderComment()==前缀+注释&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间&&OrderType()==方向)
              {
               if(选择==0)
                  返回值=OrderOpenPrice();
               if(选择==1)
                  返回值=OrderLots();
               if(选择==2)
                  返回值=OrderStopLoss();
               if(选择==3)
                  返回值=OrderTakeProfit();
               if(选择==4)
                  返回值=OrderClosePrice();
               if(选择==5)
                  返回值=OrderProfit();
               if(选择==6)
                  返回值=OrderSwap();
               if(选择==7)
                  返回值=OrderCommission();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::注释返回持仓string属性值(string 币种,string 注释,int 方向,int 选择,long 开始时间,long 截止时间)
  {
   string 返回值="";
   if(注释!="")
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderComment()==前缀+注释&&OrderOpenTime()>开始时间&&OrderOpenTime()<截止时间&&OrderType()==方向)
              {
               if(选择==0)
                  返回值=OrderSymbol();
               if(选择==1)
                  返回值=OrderComment();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::订单号返回历史integer属性值(string 币种,int 订单号,int 方向,int 选择,long 开始时间,long 截止时间)
  {
   ulong 返回值=0;
   if(订单号>0)
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderTicket()==订单号&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间&&OrderType()==方向)
              {
               if(选择==0)
                  返回值=OrderOpenTime();
               if(选择==1)
                  返回值=OrderTicket();
               if(选择==2)
                  返回值=OrderMagicNumber();
               if(选择==3)
                  返回值=OrderType();
               if(选择==4)
                  返回值=TimeCurrent()-OrderOpenTime();
               if(选择==5)
                  返回值=OrderCloseTime();
               break;
              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::订单号返回历史double属性值(string 币种,int 订单号,int 方向,int 选择,long 开始时间,long 截止时间)
  {
   double 返回值=0;
   if(订单号>0)
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderTicket()==订单号&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间&&OrderType()==方向)
              {
               if(选择==0)
                  返回值=OrderOpenPrice();
               if(选择==1)
                  返回值=OrderLots();
               if(选择==2)
                  返回值=OrderStopLoss();
               if(选择==3)
                  返回值=OrderTakeProfit();
               if(选择==4)
                  返回值=OrderClosePrice();
               if(选择==5)
                  返回值=OrderProfit();
               if(选择==6)
                  返回值=OrderSwap();
               if(选择==7)
                  返回值=OrderCommission();
               break;
              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::订单号返回历史string属性值(string 币种,int 订单号,int 方向,int 选择,long 开始时间,long 截止时间)
  {
   string 返回值="";
   if(订单号>0)
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderTicket()==订单号&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间&&OrderType()==方向)
              {
               if(选择==0)
                  返回值=OrderSymbol();
               if(选择==1)
                  返回值=OrderComment();
               break;
              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::魔术号返回历史integer属性值(string 币种,int magic,int 方向,int 选择,long 开始时间,long 截止时间)
  {
   ulong 返回值=0;
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间&&OrderType()==方向)
              {
               if(选择==0)
                  返回值=OrderOpenTime();
               if(选择==1)
                  返回值=OrderTicket();
               if(选择==2)
                  返回值=OrderMagicNumber();
               if(选择==3)
                  返回值=OrderType();
               if(选择==4)
                  返回值=TimeCurrent()-OrderOpenTime();
               if(选择==5)
                  返回值=OrderCloseTime();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::魔术号返回历史double属性值(string 币种,int magic,int 方向,int 选择,long 开始时间,long 截止时间)
  {
   double 返回值=0;
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间&&OrderType()==方向)
              {
               if(选择==0)
                  返回值=OrderOpenPrice();
               if(选择==1)
                  返回值=OrderLots();
               if(选择==2)
                  返回值=OrderStopLoss();
               if(选择==3)
                  返回值=OrderTakeProfit();
               if(选择==4)
                  返回值=OrderClosePrice();
               if(选择==5)
                  返回值=OrderProfit();
               if(选择==6)
                  返回值=OrderSwap();
               if(选择==7)
                  返回值=OrderCommission();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::魔术号返回历史string属性值(string 币种,int magic,int 方向,int 选择,long 开始时间,long 截止时间)
  {
   string 返回值="";
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间&&OrderType()==方向)
              {
               if(选择==0)
                  返回值=OrderSymbol();
               if(选择==1)
                  返回值=OrderComment();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  新交易类::注释返回历史integer属性值(string 币种,string 注释,int 方向,int 选择,long 开始时间,long 截止时间)
  {
   ulong 返回值=0;
   if(注释!="")
     {
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderComment()==前缀+注释&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间&&OrderType()==方向)
              {
               if(选择==0)
                  返回值=OrderOpenTime();
               if(选择==1)
                  返回值=OrderTicket();
               if(选择==2)
                  返回值=OrderMagicNumber();
               if(选择==3)
                  返回值=OrderType();
               if(选择==4)
                  返回值=TimeCurrent()-OrderOpenTime();
               if(选择==5)
                  返回值=OrderCloseTime();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::注释返回历史double属性值(string 币种,string 注释,int 方向,int 选择,long 开始时间,long 截止时间)
  {
   double 返回值=0;
   if(注释!="")
     {
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderComment()==前缀+注释&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间&&OrderType()==方向)
              {
               if(选择==0)
                  返回值=OrderOpenPrice();
               if(选择==1)
                  返回值=OrderLots();
               if(选择==2)
                  返回值=OrderStopLoss();
               if(选择==3)
                  返回值=OrderTakeProfit();
               if(选择==4)
                  返回值=OrderClosePrice();
               if(选择==5)
                  返回值=OrderProfit();
               if(选择==6)
                  返回值=OrderSwap();
               if(选择==7)
                  返回值=OrderCommission();
               break;
              }
           }
        }
     }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  新交易类::注释返回历史string属性值(string 币种,string 注释,int 方向,int 选择,long 开始时间,long 截止时间)
  {
   string 返回值="";
   if(注释!="")
     {
      for(int i=OrdersHistoryTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&交易.持仓类型())
           {
            if(OrderTicket()>0&&OrderSymbol()==币种&&OrderComment()==前缀+注释&&OrderCloseTime()>开始时间&&OrderCloseTime()<截止时间&&OrderType()==方向)
              {
               if(选择==0)
                  返回值=OrderSymbol();
               if(选择==1)
                  返回值=OrderComment();
               break;
              }
           }
        }
     }
   return 返回值;
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
//|                                                                  |
//+------------------------------------------------------------------+
bool 新交易类::结余盈利回撤百分比检测(string 币种,double 盈利百分比=0,double 回撤百分比=0)
  {
   if(盈利百分比>0&&回撤百分比>0)
     {
      static  double  当日结余=AccountInfoDouble(ACCOUNT_BALANCE);
      static double  最大结余=AccountInfoDouble(ACCOUNT_BALANCE);
      static  bool  检测=false;
      long 实时时间=iTime(币种,PERIOD_D1,0);
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
bool 新交易类::周期时间更新检测(string 币种,ENUM_TIMEFRAMES 图表周期,bool &检测)
  {
   static long 初始时间1=0;
   long 实时时间1=iTime(币种,PERIOD_D1,0);
   if(初始时间1!=实时时间1)
     {
      检测=true;
      初始时间1=实时时间1;
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong 新交易类::提前K秒数(ulong 传入时间,ENUM_TIMEFRAMES 图表周期,long 提前秒数,int 几根=1)
  {
   long 秒数=提前秒数;
   if(秒数<=0)
      秒数=PeriodSeconds(图表周期);
   if(秒数>PeriodSeconds(图表周期))
      秒数=PeriodSeconds(图表周期);
   ulong 返回时间=传入时间+几根*PeriodSeconds(图表周期)-秒数;
   return 返回时间;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新交易类::提前K秒数检测(ulong 传入时间,ENUM_TIMEFRAMES 图表周期,long 提前秒数,int 几根=1)
  {
   long 秒数=提前秒数;
   if(秒数<=0)
      秒数=PeriodSeconds(图表周期);
   if(秒数>PeriodSeconds(图表周期))
      秒数=PeriodSeconds(图表周期);
   ulong 返回时间=传入时间+几根*PeriodSeconds(图表周期)-秒数;
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
double  新交易类::昨日结余(datetime 开始时间)
  {
   double 昨利=0;
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&持仓类型())
        {
         if(OrderTicket()>0&&OrderCloseTime()>=开始时间)
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
   bool 检测=OrderType()==OP_BUY||OrderType()==OP_SELL;
   return 检测;
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
      static  bool  检测=false;
      long 实时时间=iTime(Symbol(),PERIOD_D1,0);
      static long 初始时间=0;
      if(初始时间!=实时时间)
        {
         最大结余=AccountBalance();
         检测=false;
         初始时间=实时时间;
        }
      //---
      if(AccountBalance()>最大结余)
         最大结余=AccountBalance();
      if(最大结余>昨日结余*(1+盈利百分比))
         检测=true;
      if(检测)
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
   bool 检测=false;
   static ulong 初时间1=0;
   ulong 时时间=(ulong) GetTickCount();
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
   static ulong 初时间2=0;
   ulong 时时间=(ulong) GetTickCount();
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
   static ulong 初时间3=0;
   ulong 时时间=(ulong) GetTickCount();
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
   static ulong 初时间4=0;
   ulong 时时间=(ulong) GetTickCount();
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
   static ulong 初时间5= GetTickCount();
   ulong 时时间=(ulong) GetTickCount();
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
   static ulong 初时间6= GetTickCount();
   ulong 时时间=(ulong) GetTickCount();
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
   static ulong 初时间7= GetTickCount();
   ulong 时时间=(ulong) GetTickCount();
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
   static ulong 初时间8= GetTickCount();
   ulong 时时间=(ulong) GetTickCount();
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
   static ulong 初时间1=0;
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
   static ulong 初时间2=0;
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
   static ulong 初时间3=0;
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
   static ulong 初时间4=0;
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
   static ulong 初时间5= GetMicrosecondCount();
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
   static ulong 初时间6= GetMicrosecondCount();
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
   static ulong 初时间7= GetMicrosecondCount();
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
   static ulong 初时间8=GetMicrosecondCount();
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
//+------------------------------------------------------------------+
bool   新交易类::单位毫秒向上差点值之外(string 币种,double 设置差点值,double 间隔毫秒,double 参考价)
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
      在差点值之外1=交易.在差点值之外(币种,参考价,初时价1,设置差点值);
   if(在差点值之外1)
      初时时间1=(ulong)GetTickCount();
   return 在差点值之外1;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool   新交易类::单位毫秒向下差点值之外(string 币种,double 设置差点值,double 间隔毫秒,double 参考价)
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
      在差点值之外2=交易.在差点值之外(币种,参考价,初时价2,设置差点值);
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
bool   新交易类::单位微秒向上差点值之外(string 币种,double 设置差点值,double 间隔微秒,double 参考价)
  {
   static ulong 初时时间1=0;
   static double 初时价1=0;
   ulong 实时时间=(ulong)GetMicrosecondCount();
   if(实时时间>初时时间1)
     {
      初时价1=参考价;
      初时时间1=(ulong)(实时时间+间隔微秒);
     }
   bool 在差点值之外1=false;
   if(初时价1!=0&&参考价>初时价1)
      在差点值之外1=交易.在差点值之外(币种,参考价,初时价1,设置差点值);
   if(在差点值之外1)
      初时时间1=(ulong)GetMicrosecondCount();
   return 在差点值之外1;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool   新交易类::单位微秒向下差点值之外(string 币种,double 设置差点值,double 间隔微秒,double 参考价)
  {
   static ulong 初时时间2=0;
   static double 初时价2=0;
   ulong 实时时间=(ulong)GetMicrosecondCount();
   if(实时时间>初时时间2)
     {
      初时价2=参考价;
      初时时间2=(ulong)(实时时间+间隔微秒);
     }
   bool 在差点值之外2=false;
   if(初时价2!=0&&参考价<初时价2)
      在差点值之外2=交易.在差点值之外(币种,参考价,初时价2,设置差点值);
   if(在差点值之外2)
      初时时间2=(ulong)GetMicrosecondCount();
   return 在差点值之外2;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   新交易类::单位微秒差值(double 间隔微秒,double 参考价)
  {
   static ulong 初时时间3=0;
   static double 初时价3=0;
   ulong 实时时间=(ulong)GetMicrosecondCount();
   if(实时时间>初时时间3)
     {
      初时价3=参考价;
      初时时间3=(ulong)(实时时间+间隔微秒);
     }
   double 差值=0;
   if(初时价3!=0)
      差值=参考价-初时价3;
   return 差值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  新交易类::单位微秒向上差值(double 间隔微秒,double 参考价)
  {
   static ulong 初时时间4=0;
   static double 初时价4=0;
   ulong 实时时间=(ulong)GetMicrosecondCount();
   if(实时时间>初时时间4)
     {
      初时价4=参考价;
      初时时间4=(ulong)(实时时间+间隔微秒);
     }
   double 差值=0;
   if(初时价4!=0&&参考价>初时价4)
      差值=参考价-初时价4;
   return 差值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   新交易类::单位微秒向下差值(double 间隔微秒,double 参考价)
  {
   static ulong 初时时间5=0;
   static double 初时价5=0;
   ulong 实时时间=(ulong)GetMicrosecondCount();
   if(实时时间>初时时间5)
     {
      初时价5=参考价;
      初时时间5=(ulong)(实时时间+间隔微秒);
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
void         新交易类:: 注释包含盈利点数折仓(string 币种,int magic,string 注释,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0)
  {
   if(减仓比例>0&&减仓比例<=1&&启动点数>0&&(盈利多少点数折仓>0||盈利点数大于几倍止损>0))
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=交易.魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&StringFind(OrderComment(),注释)!=-1)
                 {
                  double 盈利点数=(OrderClosePrice()-OrderOpenPrice())/交易.点值(币种);
                  double 止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/交易.点值(币种);
                  double 大于几倍值=盈利点数大于几倍止损*止损点数;
                  if(交易.空值检测(OrderStopLoss())&&盈利多少点数折仓==0)
                     大于几倍值=盈利点数大于几倍止损*启动点数;
                  if(盈利多少点数折仓)
                     大于几倍值=0;
                  if(盈利多少点数折仓==0&&盈利点数大于几倍止损==0)
                     break;
                  if(OrderType()==OP_BUY&&盈利点数>启动点数&&盈利点数>大于几倍值+盈利多少点数折仓)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=交易.手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,交易.卖价(币种),交易.滑点,Yellow);
                    }
                  if(OrderType()==OP_SELL&&-盈利点数>启动点数&&-盈利点数>大于几倍值+盈利多少点数折仓)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=交易.手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,交易.买价(币种),交易.滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新交易类::方向带单(string 币种,int magic,string 注释,int 方向1,int 方向2,double 盈利启动金额,double 带单后盈利金额=0)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种 &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderType()==方向1)
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
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种 &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderType()==方向2)
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
void 新交易类::方向带单(string 币种,int magic,int 方向1,int 方向2,double 盈利启动金额,double 带单后盈利金额=0)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种 &&OrderMagicNumber()==magic&&OrderType()==方向1)
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
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
            if(OrderSymbol()==币种 &&OrderMagicNumber()==magic&&OrderType()==方向2)
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
void 新交易类::方向带单(string 币种,int 方向1,int 方向2,double 盈利启动金额,double 带单后盈利金额=0)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0&&OrderSymbol()==币种&&OrderType()==方向1)
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
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0&&OrderSymbol()==币种&&OrderType()==方向2)
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
void 新交易类::方向带单(int magic,int 方向1,int 方向2,double 盈利启动金额,double 带单后盈利金额=0)
  {
   double a[][2];
   int t=OrdersTotal();
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
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
      if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=交易.魔术幻数(magic);
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
bool 新交易类::在时间区间(string 开始时间,string 结束时间,datetime time,int 壹服贰电=1)
  {
   string tmd= TimeToString(time,TIME_SECONDS);
   bool 区间检测=StoCL(tmd,壹服贰电)>StoCL(开始时间,壹服贰电)&&StoCL(tmd,壹服贰电)<StoCL(结束时间,壹服贰电);
   return 区间检测;
  }
//+------------------------------------------------------------------+
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
   string   paxth=TerminalInfoString(TERMINAL_DATA_PATH)+"\\MQL4\\Files\\";
   int t=CopyFileW(paxth+文件名+".txt","C:\\SendFile\\"+文件名+".txt",0);
   FileDelete(文件名+".txt");
  }
//+------------------------------------------------------------------+
bool 新交易类::保本(string 币种,int magic,string 注释,double 启动点数,double 保本点数,int 零壹多贰空=0)
  {
   bool 检测=false;
   if(启动点数>0&&保本点数>0&&保本点数<启动点数)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=交易.魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==交易.前缀+注释)
                 {
                  double 多盈利点值=(交易.卖价(币种)-OrderOpenPrice())/交易.点值(币种);
                  double 空盈利点值=(OrderOpenPrice()-交易.买价(币种))/交易.点值(币种);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(多盈利点值>启动点数&&OrderStopLoss()<OrderOpenPrice()+保本点数*交易.点值(币种))
                       {
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+保本点数*交易.点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                        检测=true;
                       }
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(空盈利点值>启动点数&&(OrderStopLoss()>OrderOpenPrice()-保本点数*交易.点值(币种)||OrderStopLoss()==0))
                       {
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-保本点数*交易.点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                        检测=true;
                       }
                    }
                 }
              }
           }
        }
     }
   return 检测;
  };
//+------------------------------------------------------------------+
bool 新交易类::保本(string 币种,int magic,double 启动点数,double 保本点数,int 零壹多贰空=0)
  {
   bool 检测=false;
   if(启动点数>0&&保本点数>0&&保本点数<启动点数)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=交易.魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  double 多盈利点值=(交易.卖价(币种)-OrderOpenPrice())/交易.点值(币种);
                  double 空盈利点值=(OrderOpenPrice()-交易.买价(币种))/交易.点值(币种);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(多盈利点值>启动点数&&OrderStopLoss()<OrderOpenPrice()+保本点数*交易.点值(币种))
                       {
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+保本点数*交易.点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                        检测=true;
                       }
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(空盈利点值>启动点数&&(OrderStopLoss()>OrderOpenPrice()-保本点数*交易.点值(币种)||OrderStopLoss()==0))
                       {
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-保本点数*交易.点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                        检测=true;
                       }
                    }
                 }
              }
           }
        }
     }
   return 检测;
  };
//+------------------------------------------------------------------+
bool 新交易类::亏损持仓均价平单(string 币种,int magic,int 持仓方向,double 设置平单点数)
  {
   bool 检测=false;
   if(设置平单点数>0)
     {
      double 浮亏均价=交易.持仓均价(币种,magic,持仓方向);
      if(浮亏均价>0&&持仓方向==OP_BUY&&交易.卖价(币种)<浮亏均价-设置平单点数*交易.点值(币种))
        {
         交易.平多(币种,magic);
         检测=true;
        }
      if(浮亏均价>0&&持仓方向==OP_SELL&&交易.买价(币种)>浮亏均价+设置平单点数*交易.点值(币种))
        {
         交易.平空(币种,magic);
         检测=true;
        }
     }
   return 检测;
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
//+------------------------------------------------------------------+
int 新交易类::手数返回持仓单数(string 币种,int magic,string 注释,int 方向,double lot,long 进单时间=0)
  {
   int 返回值=0;
   if(lot>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=交易.魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==注释&&OrderType()==方向&&OrderLots()==lot&&OrderOpenTime()>进单时间)
                  返回值++;

              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 新交易类::手数返回持仓单数(string 币种,int magic,int 方向,double lot,long 进单时间=0)
  {
   int 返回值=0;
   if(lot>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=交易.魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderType()==方向&&OrderLots()==lot&&OrderOpenTime()>进单时间)
                  返回值++;
              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
int 新交易类::手数返回持仓单数(string 币种,int magic,string 注释,double lot,long 进单时间=0)
  {
   int 返回值=0;
   if(lot>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=交易.魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==注释&&OrderLots()==lot&&OrderOpenTime()>进单时间)
                  返回值++;

              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
int 新交易类::手数返回持仓单数(string 币种,int magic,double lot,long 进单时间=0)
  {
   int 返回值=0;
   if(lot>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=交易.魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderLots()==lot&&OrderOpenTime()>进单时间)
                  返回值++;

              }
           }
        }
   return 返回值;
  }
//+------------------------------------------------------------------+
int 新交易类::手数返回持仓单数(int magic,double lot,long 进单时间=0)
  {
   int 返回值=0;
   if(lot>0)
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&交易.持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=交易.魔术幻数(magic);
               if(OrderMagicNumber()==magic&&OrderLots()==lot&&OrderOpenTime()>进单时间)
                  返回值++;

              }
           }
        }
   return 返回值;
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
