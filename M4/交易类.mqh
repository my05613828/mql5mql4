//+------------------------------------------------------------------+
//|                                                          交易类.mqh |
//|                                                             @冻龄男孩 |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "@Π.EA 大树My05613828"
#property link      "https://www.eahub.cn/space-uid-8564.html"
#property version   "1.0"
#property  icon     "//include//M4//logo.ico"
#property strict
#include  <M4/图形类.mqh>
图形类 图形;
#include  <M4/新图形类.mqh>
新图形类 新图;
#include  <M4/数据类.mqh>
数据类 数据;
#include  <M4/字符串.mqh>
字符串 字符;
class 交易类
  {
public:
   bool              检,检1,检2,检3,检4,检5,检6,检7,检8,检9;
   int               备用数组[],滑点,倒数,累计,累计1,累计2,累计3,累计4,累计5,累计6,累计7,累计8,累计9,计,计1,计2,计3,计4,计5,计6,计7,计8,计9;
   double            加,加1,加2,加3,加4,加5,加6,加7,加8,加9;
   string            Π大吉大利今晚吃鸡,前缀,币种X;
   ulong             初1,时1,初2,时2,初3,时3,初4,时4,初5,时5,初6, 时6,初7,时7,初8,时8,初9,时9;
   struct 结构体
     {
      string            成员[];
     };
   结构体         数组1[],数组2[];
   struct SLine
     {
      string            field[];
     };
   SLine             数组3[],数组4[];
   //==================================================================
                     交易类();
                    ~交易类();
   //|======================交易函数封装===============================
   void              类成员变量初始化();
   void              初时初始化();
   void              累计初始化();
   string            返回账户类型();
   bool              持仓类型();
   bool              挂单类型();
   void              报错组件(string a,bool 显示文字吗=true,color 文字颜色=clrGreen);
   void              laber(string a,color b, bool 是否显示文字标签);
   double            停损(string 币种,double 设置点数X);
   double            凝结(string 币种,double 设置点数X);
   //+------------------------------------------------------------------+
   double            多最小止损价格(string 币种,double 传入价格,double 参考价格=0);
   double            多最小止盈价格(string 币种,double 传入价格,double 参考价格=0);
   //+------------------------------------------------------------------+
   double            空最小止损价格(string 币种,double 传入价格,double 参考价格=0);
   double            空最小止盈价格(string 币种,double 传入价格,double 参考价格=0);
   //+------------------------------------------------------------------+
   bool              账号检测(const long &adn[]);
   void              授权(datetime EA到期时间,long &账号授权数组[],string 程序名称="冻龄男孩",bool 弹窗提醒=true,bool 移除EA=true,bool 删主窗口=false,bool 删子窗口=false,bool 程序名可改=true,bool 授权模拟=true,string 授权账号密码="Π大吉大利今晚吃鸡",string 重置时间密码="Π大吉大利今晚吃鸡");
   void              授权时间(datetime 有效时间,long &账号授权数组[],bool 加载成功提醒=true,bool 移除EA=true,bool 删除主窗口=false,bool 删除子窗口=false);
   void              密码设置(string 账号授权密码,string 时间重置密码);
   bool              时间判断(string 开始时间,string 结束时间,ulong 参考时间,int 壹服贰电=0,int GMT偏移=0);
   bool              时间判断(ulong 开始时间,string 结束时间,ulong 参考时间,int 壹服贰电=0,int GMT偏移=0);
   bool              时间判断(string 开始时间,ulong 结束时间,ulong 参考时间,int 壹服贰电=0,int GMT偏移=0);
   bool              时间判断(ulong 开始时间,ulong 结束时间,ulong 参考时间,int 壹服贰电=0,int GMT偏移=0);
   bool              时间判断(int 开始小时,int 开始分钟,int 结束小时,int 结束分钟,ulong 参考时间,int 壹服贰电=0,int GMT偏移=0);
   bool              时间判断(int 开始小时,int 结束小时,ulong 参考时间,int 壹服贰电=0,int GMT偏移=0);
   bool              币种标识符检测(string 币种,bool 窗口选择,int 警报间隔秒数次数,bool 移除EA,bool 关闭图表);//---Oninit 使用
   bool              允许点差检测(string 币种,double 允许点差值);
   bool              允许算法检测(int 警报间隔秒数次数,bool 移除EA,bool 关闭图表);//---Oninit 使用
   void              允许账户净值(double 允许账户盈利,double 允许账户亏损,bool 警报弹窗,bool 是否移除EA);
   //+------------------------------------------------------------------+
   int               K线信息(string 币种,ENUM_TIMEFRAMES  图表周期,int 起始,int 计算数量,MqlRates &K线值信息[]);
   //+------------------------------------------------------------------+
   int               持仓单数统计(string 币种,int magic,string 注释,int 方向);
   int               持仓单数统计(string 币种,int magic,string 注释);
   int               持仓单数统计(string 币种,int magic,int 方向);
   int               持仓单数统计(string 币种,int magic);
   int               持仓单数统计(int magic,string 注释,int 方向);
   int               持仓单数统计(int magic,string 注释);
   int               持仓单数统计(int magic,int 方向);
   int               持仓单数统计(int magic);
   int               挂单单数统计(string 币种,int magic,string 注释,int 方向);
   int               挂单单数统计(string 币种,int magic,int 方向);
   int               挂单单数统计(string 币种,int magic,string 注释);
   int               挂单单数统计(string 币种,int magic);
   int               挂单单数统计(int magic);
   //+------------------------------------------------------------------+
   int               返回首单号(string 币种,int magic,string 注释,int 方向,int 第几=1);
   int               返回首单号(string 币种,int magic,int 方向,int 第几=1);
   int               返回首单号(string 币种,int magic,string 注释,int 第几=1);
   int               返回首单号(string 币种,int magic,int 第几=1);
   int               返回尾单号(string 币种,int magic,string 注释,int 方向,int 第几=1);
   int               返回尾单号(string 币种,int magic,int 方向,int 第几=1);
   int               返回尾单号(string 币种,int magic,string 注释,int 第几=1);
   int               返回尾单号(string 币种,int magic,int 第几=1);
   ulong             尾单开盘时间(string 币种,int magic,string 注释,int 方向);
   ulong             尾单开盘时间(string 币种,int magic,string 注释);
   ulong             尾单开盘时间(string 币种,int magic,int 方向);
   ulong             尾单开盘时间(string 币种,int magic);
   double            尾单开盘价(string 币种,int magic,string 注释,int 方向);
   double            尾单开盘价(string 币种,int magic,int 方向);
   double            尾单开盘价(int magic,int 方向);
   double            尾单开盘价(string 币种,int magic,string 注释);
   double            尾单开盘价(string 币种,int magic);
   double            尾单开盘价(int magic);
   double            首单开盘价(string 币种,int magic,string 注释,int 方向);
   double            首单开盘价(string 币种,int magic,int 方向);
   double            首单开盘价(int magic,int 方向);
   double            首单开盘价(string 币种,int magic,string 注释);
   double            首单开盘价(string 币种,int magic);
   double            首单开盘价(int magic);

   double            尾单交易量(string 币种,int magic,string 注释,int 方向);
   double            尾单交易量(string 币种,int magic,int 方向);
   double            尾单交易量(int magic,int 方向);
   double            尾单交易量(string 币种,int magic,string 注释);
   double            尾单交易量(string 币种,int magic);
   double            尾单交易量(int magic);
   double            首单交易量(string 币种,int magic,string 注释,int 方向);
   double            首单交易量(string 币种,int magic,int 方向);
   double            首单交易量(int magic,int 方向);
   double            首单交易量(string 币种,int magic,string 注释);
   double            首单交易量(string 币种,int magic);
   double            首单交易量(int magic);
   //+------------------------------------------------------------------+
   double            尾单盈亏金额(string 币种,int magic,string 注释,int 方向);
   double            尾单盈亏金额(string 币种,int magic,int 方向);
   //+------------------------------------------------------------------+

   int               做多(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释);
   int               做空(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释);
   int               价格做多(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释);
   int               价格做空(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释);
   //-------------------------
   void              做多不重复(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释);
   void              做空不重复(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释);
   void              做多不重复带注释(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释);
   void              做空不重复带注释(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释);
   void              一K一单做多(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              一K一单做空(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              一K一单做多2(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              一K一单做空2(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              一K一单做多3(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              一K一单做空3(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              一K一单做多4(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              一K一单做空4(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              一K一单做空不重复带注释(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              一K一单做多不重复带注释(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              一K一单做空不重复(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              一K一单做多不重复(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);

   void              几K一单做多(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              几K一单做空(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              几K一单做多2(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              几K一单做空2(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              几K一单做多3(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              几K一单做空3(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              几K一单做多4(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              几K一单做空4(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              几K一单做空不重复带注释(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              几K一单做多不重复带注释(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              几K一单做空不重复(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              几K一单做多不重复(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              拆多(string 币种,double 手数,double 拆单手数,double 止损点数,double 止盈点数,int magic,string 注释);
   void              拆空(string 币种,double 手数,double 拆单手数,double 止损点数,double 止盈点数,int magic,string 注释);
   void              一K一单拆多(string 币种,double 手数,double 拆单手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              一K一单拆空(string 币种,double 手数,double 拆单手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              几K一单拆多(string 币种,double 手数,double 拆单手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              几K一单拆空(string 币种,double 手数,double 拆单手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              拆多(string 币种,double 手数,int 拆单层数,double 止损点数,double 止盈点数,int magic,string 注释);
   void              拆空(string 币种,double 手数,int 拆单层数,double 止损点数,double 止盈点数,int magic,string 注释);
   void              一K一单拆多(string 币种,double 手数,int 拆单层数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              一K一单拆空(string 币种,double 手数,int 拆单层数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              几K一单拆多(string 币种,double 手数,int 拆单层数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              几K一单拆空(string 币种,double 手数,int 拆单层数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);

   void              价格做多不重复(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释);
   void              价格做空不重复(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释);
   void              价格做多不重复带注释(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释);
   void              价格做空不重复带注释(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释);
   void              价格一K一单做多(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              价格一K一单做空(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              价格一K一单做多2(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              价格一K一单做空2(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              价格一K一单做多3(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              价格一K一单做空3(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              价格一K一单做多4(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              价格一K一单做空4(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              价格一K一单做空不重复带注释(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              价格一K一单做多不重复带注释(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              价格一K一单做空不重复(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              价格一K一单做多不重复(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);

   void              价格几K一单做多(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              价格几K一单做空(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              价格几K一单做多2(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              价格几K一单做空2(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              价格几K一单做多3(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              价格几K一单做空3(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              价格几K一单做多4(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              价格几K一单做空4(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              价格几K一单做空不重复带注释(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              价格几K一单做多不重复带注释(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              价格几K一单做空不重复(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              价格几K一单做多不重复(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              价格拆多(string 币种,double 手数,double 拆单手数,double 止损价格,double 止盈价格,int magic,string 注释);
   void              价格拆空(string 币种,double 手数,double 拆单手数,double 止损价格,double 止盈价格,int magic,string 注释);
   void              价格一K一单拆多(string 币种,double 手数,double 拆单手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              价格一K一单拆空(string 币种,double 手数,double 拆单手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              价格几K一单拆多(string 币种,double 手数,double 拆单手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              价格几K一单拆空(string 币种,double 手数,double 拆单手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              价格拆多(string 币种,double 手数,int 拆单层数,double 止损价格,double 止盈价格,int magic,string 注释);
   void              价格拆空(string 币种,double 手数,int 拆单层数,double 止损价格,double 止盈价格,int magic,string 注释);
   void              价格一K一单拆多(string 币种,double 手数,int 拆单层数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              价格一K一单拆空(string 币种,double 手数,int 拆单层数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号);
   void              价格几K一单拆多(string 币种,double 手数,int 拆单层数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   void              价格几K一单拆空(string 币种,double 手数,int 拆单层数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1);
   bool              金死叉检测(double 小1,double 大1,double 小0,double 大0,int 壹金贰死);
   void              返回金死叉值(double&小值[],double &大值[],double&金死叉值[],int 计算数量,int 一金二死选择);
   void              返回金死叉值(double&小值[],double &大值[],double&金死叉值[][2],int 计算数量,int 一金二死选择);
   void              返回金死叉值(string 币种,ENUM_TIMEFRAMES 图表周期,double&小值[],double &大值[],double&金死叉值[][3],int 计算数量,int 一金二死选择);
   void              数组取值重新排序(string 币种,ENUM_TIMEFRAMES 图表周期, double &传入数组[],double &传出数组[][4],int 计算数量);
   void              数组取值重新排序(string 币种,ENUM_TIMEFRAMES 图表周期, double &传入数组[],double &传出数组[][3],int 计算数量);
   void              数组取值重新排序(double &传入数组[],double &传出数组[][2],int 计算数量);
   void              数组取值重新排序(double &传入数组[],double &传出数组[],int 计算数量);

   double            买价(string 币种="");
   double            卖价(string 币种="");
   double            点值(string 币种="");
   double            最高价(string 币种="",ENUM_TIMEFRAMES 图表周期=PERIOD_CURRENT,int 索引=0);
   double            最低价(string 币种="",ENUM_TIMEFRAMES 图表周期=PERIOD_CURRENT,int 索引=0);
   //+------------------------------------------------------------------+
   void              平多尾单(string 币种,int magic);
   void              平空尾单(string 币种,int magic);
   void              订单号平单(int 订单号,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              订单号平多(int 订单号,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              订单号平空(int 订单号,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              跟单平单(int  传入订单号,string 币种,int magic,string 注释,double 传入价格,double 设置误差点值=0.0,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              模糊跟单平单(int  传入订单号,string 币种,int magic,string 注释,double 传入价格,double 设置误差点值=0.0,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平单(string 币种,int magic,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平单(string 币种,int magic,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平单(string 币种,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平单(int magic,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平单(bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平多(string 币种,int magic,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平多(string 币种,int magic,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平多(string 币种,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平多(int magic,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平多(bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平空(string 币种,int magic,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平空(string 币种,int magic,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平空(string 币种,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平空(int magic,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              平空(bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定点值平单(string 币种,int magic,string 注释,double 指定点数,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定点值平单(string 币种,int magic,double 指定点数,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定点值平单(int magic,double 指定点数,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定点值平多(string 币种,int magic,string 注释,double 指定点数,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定点值平多(string 币种,int magic,double 指定点数,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定点值平多(int magic,double 指定点数,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定点值平空(string 币种,int magic,string 注释,double 指定点数,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定点值平空(string 币种,int magic,double 指定点数,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定点值平空(int magic,double 指定点数,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);

   void              指定盈利平单(string 币种,int magic,string 注释,double 盈利金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定盈利平单(string 币种,int magic,double 盈利金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定盈利平单(int magic,double 盈利金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定盈利平多(string 币种,int magic,string 注释,double 盈利金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定盈利平多(string 币种,int magic,double 盈利金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定盈利平多(int magic,double 盈利金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定盈利平空(string 币种,int magic,string 注释,double 盈利金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定盈利平空(string 币种,int magic,double 盈利金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定盈利平空(int magic,double 盈利金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);

   void              指定亏损平单(string 币种,int magic,string 注释,double 亏损金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定亏损平单(string 币种,int magic,double 亏损金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定亏损平单(int magic,double 亏损金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定亏损平多(string 币种,int magic,string 注释,double 亏损金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定亏损平多(string 币种,int magic,double 亏损金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定亏损平多(int magic,double 亏损金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定亏损平空(string 币种,int magic,string 注释,double 亏损金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定亏损平空(string 币种,int magic,double 亏损金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定亏损平空(int magic,double 亏损金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);

   void              指定盈利比例平单(string 币种,int magic,string 注释,double 盈利比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定盈利比例平单(string 币种,int magic,double 盈利比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定盈利比例平单(int magic,double 盈利比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定盈利比例平多(string 币种,int magic,string 注释,double 盈利比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定盈利比例平多(string 币种,int magic,double 盈利比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定盈利比例平多(int magic,double 盈利比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定盈利比例平空(string 币种,int magic,string 注释,double 盈利比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定盈利比例平空(string 币种,int magic,double 盈利比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定盈利比例平空(int magic,double 盈利比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);

   void              指定亏损比例平单(string 币种,int magic,string 注释,double 亏损比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定亏损比例平单(string 币种,int magic,double 亏损比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定亏损比例平单(int magic,double 亏损比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定亏损比例平多(string 币种,int magic,string 注释,double 亏损比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定亏损比例平多(string 币种,int magic,double 亏损比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定亏损比例平多(int magic,double 亏损比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定亏损比例平空(string 币种,int magic,string 注释,double 亏损比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定亏损比例平空(string 币种,int magic,double 亏损比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   void              指定亏损比例平空(int magic,double 亏损比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0);
   bool              总盈利平单(string 币种1,string 币种2,int 币种1Magic,int 币种2Magic,double 盈利金额,bool 截屏吗=false);
   bool              总亏损平单(string 币种1,string 币种2,int 币种1Magic,int 币种2Magic,double 亏损金额,bool 截屏吗=false);
   bool              总盈利平单(string 币种1,string 币种2,int 币种1Magic,int 币种2Magic,int 币种1Magic2,int 币种2Magic2,double 盈利金额,bool 截屏吗=false);
   bool              总亏损平单(string 币种1,string 币种2,int 币种1Magic,int 币种2Magic,int 币种1Magic2,int 币种2Magic2,double 亏损金额,bool 截屏吗=false);
   bool              总盈利平单(string 币种,int magic,string 注释,double 总盈利,bool 截屏吗=false);
   bool              总亏损平单(string 币种,int magic,string 注释,double 总亏损,bool 截屏吗=false);
   bool              总盈利平单(string 币种,int magic,double 总盈利,bool 截屏吗=false);
   bool              总亏损平单(string 币种,int magic,double 总亏损,bool 截屏吗=false);
   bool              总盈利平单(string 币种,double 总盈利,bool 截屏吗=false);
   bool              总亏损平单(string 币种,double 总亏损,bool 截屏吗=false);
   bool              总盈利平单(int magic,double 总盈利,bool 截屏吗=false);
   bool              总亏损平单(int magic,double 总亏损,bool 截屏吗=false);
   bool              总盈利平单(double 总盈利,bool 截屏吗=false);
   bool              总亏损平单(double 总亏损,bool 截屏吗=false);
   bool              总盈利平多(string 币种,int magic,string 注释,double 总盈利,bool 截屏吗=false);
   bool              总亏损平多(string 币种,int magic,string 注释,double 总亏损,bool 截屏吗=false);
   bool              总盈利平多(string 币种,int magic,double 总盈利,bool 截屏吗=false);
   bool              总亏损平多(string 币种,int magic,double 总亏损,bool 截屏吗=false);
   bool              总盈利平多(int magic,double 总盈利,bool 截屏吗=false);
   bool              总亏损平多(int magic,double 总亏损,bool 截屏吗=false);
   bool              总盈利平空(string 币种,int magic,string 注释,double 总盈利,bool 截屏吗=false);
   bool              总亏损平空(string 币种,int magic,string 注释,double 总亏损,bool 截屏吗=false);
   bool              总盈利平空(string 币种,int magic,double 总盈利,bool 截屏吗=false);
   bool              总亏损平空(string 币种,int magic,double 总亏损,bool 截屏吗=false);
   bool              总盈利平空(int magic,double 总盈利,bool 截屏吗=false);
   bool              总亏损平空(int magic,double 总亏损,bool 截屏吗=false);
   //+------------------------------------------------------------------+

   void              前止损点追踪止损(string 币种,int magic,string 注释,double 追踪点数,int 零壹多贰空=0,int 前几单追踪=0);
   void              前止损点追踪止损(string 币种,int magic,double 追踪点数,int 零壹多贰空=0,int 前几单追踪=0);
   void              前止损点追踪止损(int magic,double 追踪点数,int 零壹多贰空=0,int 前几单追踪=0);
   void              前启动点追踪止损(string 币种,int magic,string 注释,double 启动点数,double 追踪点数,double 百分比=0,int 零壹多贰空=0,int 前几单追踪=0);
   void              前启动点追踪止损(string 币种,int magic,double 启动点数,double 追踪点数,double 百分比=0,int 零壹多贰空=0,int 前几单追踪=0);
   void              前启动点追踪止损(int magic,double 启动点数,double 追踪点数,double 百分比=0,int 零壹多贰空=0,int 前几单追踪=0);
   void              后止损点追踪止损(string 币种,int magic,string 注释,double 追踪点数,int 零壹多贰空=0,int 后几单追踪=0);
   void              后止损点追踪止损(string 币种,int magic,double 追踪点数,int 零壹多贰空=0,int 后几单追踪=0);
   void              后止损点追踪止损(int magic,double 追踪点数,int 零壹多贰空=0,int 后几单追踪=0);
   void              后启动点追踪止损(string 币种,int magic,string 注释,double 启动点数,double 追踪点数,double 百分比=0,int 零壹多贰空=0,int 后几单追踪=0);
   void              后启动点追踪止损(string 币种,int magic,double 启动点数,double 追踪点数,double 百分比=0,int 零壹多贰空=0,int 后几单追踪=0);
   void              后启动点追踪止损(int magic,double 启动点数,double 追踪点数,double 百分比=0,int 零壹多贰空=0,int 后几单追踪=0);
   //+------------------------------------------------------------------+
   void              前止损点追踪止多(string 币种,int magic,string 注释,double 追踪点数,int 前几单追踪=0);
   void              前止损点追踪止多(string 币种,int magic,double 追踪点数,int 前几单追踪=0);
   void              前止损点追踪止多(int magic,double 追踪点数,int 前几单追踪=0);
   void              前启动点追踪止多(string 币种,int magic,string 注释,double 启动点数,double 追踪点数,double 百分比=0,int 前几单追踪=0);
   void              前启动点追踪止多(string 币种,int magic,double 启动点数,double 追踪点数,double 百分比=0,int 前几单追踪=0);
   void              前启动点追踪止多(int magic,double 启动点数,double 追踪点数,double 百分比=0,int 前几单追踪=0);
   void              后止损点追踪止多(string 币种,int magic,string 注释,double 追踪点数,int 后几单追踪=0);
   void              后止损点追踪止多(string 币种,int magic,double 追踪点数,int 后几单追踪=0);
   void              后止损点追踪止多(int magic,double 追踪点数,int 后几单追踪=0);
   void              后启动点追踪止多(string 币种,int magic,string 注释,double 启动点数,double 追踪点数,double 百分比=0,int 后几单追踪=0);
   void              后启动点追踪止多(string 币种,int magic,double 启动点数,double 追踪点数,double 百分比=0,int 后几单追踪=0);
   void              后启动点追踪止多(int magic,double 启动点数,double 追踪点数,double 百分比=0,int 后几单追踪=0);
   //+------------------------------------------------------------------+
   void              前止损点追踪止空(string 币种,int magic,string 注释,double 追踪点数,int 前几单追踪=0);
   void              前止损点追踪止空(string 币种,int magic,double 追踪点数,int 前几单追踪=0);
   void              前止损点追踪止空(int magic,double 追踪点数,int 前几单追踪=0);
   void              前启动点追踪止空(string 币种,int magic,string 注释,double 启动点数,double 追踪点数,double 百分比=0,int 前几单追踪=0);
   void              前启动点追踪止空(string 币种,int magic,double 启动点数,double 追踪点数,double 百分比=0,int 前几单追踪=0);
   void              前启动点追踪止空(int magic,double 启动点数,double 追踪点数,double 百分比=0,int 前几单追踪=0);
   void              后止损点追踪止空(string 币种,int magic,string 注释,double 追踪点数,int 后几单追踪=0);
   void              后止损点追踪止空(string 币种,int magic,double 追踪点数,int 后几单追踪=0);
   void              后止损点追踪止空(int magic,double 追踪点数,int 后几单追踪=0);
   void              后启动点追踪止空(string 币种,int magic,string 注释,double 启动点数,double 追踪点数,double 百分比=0,int 后几单追踪=0);
   void              后启动点追踪止空(string 币种,int magic,double 启动点数,double 追踪点数,double 百分比=0,int 后几单追踪=0);
   void              后启动点追踪止空(int magic,double 启动点数,double 追踪点数,double 百分比=0,int 后几单追踪=0);
   //+------------------------------------------------------------------+
   void              启动点浮动追踪止损(string 币种,int magic,double 追踪点数,int 零壹多贰空=0);
   void              启动点追踪止损到开盘价(string 币种,int magic,string 注释,double 启动点数,double 追踪点数,int 零壹多贰空=0);
   void              启动点追踪止损到开盘价(string 币种,int magic,double 启动点数,double 追踪点数,int 零壹多贰空=0);
   void              启动点追踪止损到开盘价(int magic,double 启动点数,double 追踪点数,int 零壹多贰空=0);
   //+------------------------------------------------------------------+
   bool              保本(string 币种,int magic,double 保本点数,int 零壹多贰空=0);
   bool              保本(string 币种,int magic,string 注释,double 启动点数,double 保本点数,int 零壹多贰空=0);
   bool              保本(string 币种,int magic,double 启动点数,double 保本点数,int 零壹多贰空=0);
   bool              保本(int magic,double 启动点数,double 保本点数,int 零壹多贰空=0);
   bool              保多(string 币种,int magic,double 保本点数);
   bool              保多(string 币种,int magic,string 注释,double 启动点数,double 保本点数);
   bool              保多(string 币种,int magic,double 启动点数,double 保本点数);
   bool              保多(int magic,double 启动点数,double 保本点数);
   bool              保空(string 币种,int magic,double 保本点数);
   bool              保空(string 币种,int magic,string 注释,double 启动点数,double 保本点数);
   bool              保空(string 币种,int magic,double 启动点数,double 保本点数);
   bool              保空(int magic,double 启动点数,double 保本点数);
   double            手数自适应(string 币种,double lots);
   double            手数自适应2(string 币种,double lots);
   double            手数自适应3(string 币种,double lots);
   double            手数自适应4(string 币种,double lots);
   //+------------------------------------------------------------------+
   string            设置币种(string symbol="");
   string            设置注释(string comment="");
   int               魔术幻数(int magic);
   void              删除指标(bool 删除主窗口,bool 删除子窗口);
   bool              文件是否存在(string 文件名,int 位置=0);
   void              读取文件(string 文件名,string 间隔符);
   int               读取文件非空判断(string 文件名,string 间隔符,int 非空判断);
   void              信息写入文件夹(string 文件名,int 写入次数,string 间隔符,string 写入信息1,string 写入信息2="",string 写入信息3="",string 写入信息4="",string 写入信息5="",string 写入信息6="",string 写入信息7="",string 写入信息8="",string 写入信息9="",string 写入信息10="",string 写入信息11="",string 写入信息12="",string 写入信息13="",string 写入信息14="",string 写入信息15="");
   void              删除文件(int 位置=0,string 文件名称1="",string 文件名称2="",string 文件名称3="",string 文件名称4="",string 文件名称5="",string 文件名称6="",string 文件名称7="",string 文件名称8="",string 文件名称9="");
   void              复制文件(string 原文件名, string 现文件名,int 起始位置=0,int 结束位置=FILE_COMMON);
   bool              读取文件至数组(string 文件名,string 间隔符,结构体 & 数组[]);
   bool              ReadFileToArrayCSV(string 文件名,string 间隔符,SLine & Lines[]);
   string            读取数组内容(string 文件名,string 间隔符,int 成员序号,结构体 & 动态数组[]);
   string            读取数组内容2(string 文件名,string 间隔符,int 成员序号,SLine & lines[]);
   string            读取数组内容(string 文件名,string 间隔符,int 数列序号,int 成员序号, 结构体 & 动态数组[]);
   string            读取数组内容2(string 文件名,string 间隔符,int 数列序号,int 成员序号, SLine & lines[]);
   void              读取数组文件至数组(string 文件名,string 间隔符,结构体 & 动态数组[],double &值数组[],int 成员序号);
   void              消息盒子(string 提示内容,string 表头,bool  移除EA,string 提醒内容);
   void              图表设置(bool 隐藏交易水平线=true,bool 禁止拖动止损止盈线=true,color 外框颜色=clrGreen,color 止损止盈颜色=clrAliceBlue,color 网格颜色=clrBlack);
   void              图表设置还原();
   //+------------------------------------------------------------------+
   bool              净持仓均价平单(string 币种,int magic,string 注释,double 设置平单点数);
   bool              净持仓均价平单(string 币种,int magic,double 设置平单点数);
   double            净持仓均价(string 币种,int magic,string 注释);
   double            净持仓均价(string 币种,int magic);
   bool              持仓均价平单(string 币种,int magic,string 注释,int 持仓方向,double 设置平单点数);
   bool              持仓均价平单(string 币种,int magic,int 持仓方向,double 设置平单点数);
   double            持仓均价(string 币种,int magic,string 注释,int 持仓方向);
   double            持仓均价(string 币种,int magic,int 持仓方向);
   //+------------------------------------------------------------------+
   double            持仓仓位统计(string 币种,int magic,string 注释,int 持仓方向);
   double            持仓仓位统计(string 币种,int magic,int 持仓方向);
   double            持仓仓位统计(int magic,int 持仓方向);
   double            持仓仓位统计(string 币种,int magic,string 注释);
   double            持仓仓位统计(string 币种,int magic);
   double            持仓仓位统计(int magic);
   double            持仓盈亏统计(string 币种,int  magic,string 注释,int 持仓方向);
   double            持仓盈亏统计(string 币种,int magic,int 持仓方向);
   double            持仓盈亏统计(int magic,int 持仓方向);
   double            持仓盈亏统计(string 币种,int  magic,string 注释);
   double            持仓盈亏统计(string 币种,int magic);
   double            持仓盈亏统计(string 币种);
   double            持仓盈亏统计(int magic);
   double            持仓盈亏统计();

   bool              多价差手数不对等检测(string 币种1,string  币种2,int 币种1多magic,int 币种2空magic,double 允许手数误差最小值,bool 是否开启);
   bool              空价差手数不对等检测(string 币种1,string  币种2,int 币种1空magic,int 币种2多magic,double 允许手数误差最小值,bool 是否开启);
   void              多价差补单(string 币种1,string  币种2,int 币种1多magic,int 币种2空magic,double 允许手数误差最小值,bool 是否开启,int 延迟检测微秒数);
   void              空价差补单(string 币种1,string  币种2,int 币种1空magic,int 币种2多magic,double 允许手数误差最小值,bool 是否开启,int 延迟检测微秒数);
   //+------------------------------------------------------------------
   //+------------------------------------------------------------------+
   void              多价差盈利金额平单(string 币种1,string  币种2,int 币种1多magic,int 币种2空magic,double 允许手数误差最小值,double 二尾单盈亏金额);
   void              空价差盈利金额平单(string 币种1,string 币种2,int 币种1空magic,int 币种2多magic,double 允许手数误差最小值,double 二尾单盈亏金额);
   void              多价差网格平单(string 币种1,string  币种2,int 币种1多magic,int 币种2空magic,double 允许手数误差最小值,double 网格平尾单持单价差);
   void              空价差网格平单(string 币种1,string 币种2,int 币种1空magic,int 币种2多magic,double 允许手数误差最小值,double 网格平尾单持单价差);
   //+------------------------------------------------------------------+
   int               限价挂多(string 币种,double 手数,double 手数系数,double 距现价点数,double 挂单点数,double 止损点数,double 止盈点数,int 数量,int  magic,string 注释);
   int               限价挂空(string 币种,double 手数,double 手数系数,double 距现价点数,double 挂单点数,double 止损点数,double 止盈点数,int 数量,int  magic,string 注释);
   int               限价挂多(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int magic,string 注释);
   int               限价挂空(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int magic,string 注释);
   int               突破挂多(string 币种,double 手数,double 手数系数,double 距现价点数,double 挂单点数,double 止损点数,double 止盈点数,int 数量,int  magic,string 注释);
   int               突破挂空(string 币种,double 手数,double 手数系数,double 距现价点数,double 挂单点数,double 止损点数,double 止盈点数,int 数量,int  magic,string 注释);
   int               突破挂多(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int magic,string 注释);
   int               突破挂空(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int magic,string 注释);
   void              限价挂多不重复(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int  magic,string 注释);
   void              限价挂空不重复(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int  magic,string 注释);
   void              限价挂多不重复带注释(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int  magic,string 注释);
   void              限价挂空不重复带注释(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int  magic,string 注释);
   void              突破挂多不重复(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int  magic,string 注释);
   void              突破挂空不重复(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int  magic,string 注释);
   void              突破挂多不重复带注释(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int  magic,string 注释);
   void              突破挂空不重复带注释(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int  magic,string 注释);
   void              修改限价多挂单(string 币种,int magic,string 注释,double 挂单点数,double 止损点数, double 止盈点数);
   void              修改限价多挂单(string 币种,int magic,double 挂单点数,double 止损点数, double 止盈点数);
   void              修改限价空挂单(string 币种,int magic,string 注释,double 挂单点数,double 止损点数, double 止盈点数);
   void              修改限价空挂单(string 币种,int magic,double 挂单点数,double 止损点数, double 止盈点数);
   void              修改突破多挂单(string 币种,int magic,string 注释,double 挂单点数,double 止损点数, double 止盈点数);
   void              修改突破多挂单(string 币种,int magic,double 挂单点数,double 止损点数, double 止盈点数);
   void              修改突破空挂单(string 币种,int magic,string 注释,double 挂单点数,double 止损点数, double 止盈点数);
   void              修改突破空挂单(string 币种,int magic,double 挂单点数,double 止损点数, double 止盈点数);
   //+------------------------------------------------------------------+
   int               价格限价挂多(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释);
   int               价格限价挂空(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释);
   int               价格突破挂多(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释);
   int               价格突破挂空(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释);
   void              价格限价挂多不重复(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释);
   void              价格限价挂空不重复(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释);
   void              价格突破挂多不重复(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释);
   void              价格突破挂空不重复(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释);
   void              价格限价挂多不重复带注释(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释);
   void              价格限价挂空不重复带注释(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释);
   void              价格突破挂多不重复带注释(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释);
   void              价格突破挂空不重复带注释(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释);
   void              价格修改限价多挂单(string 币种,int magic,string 注释,double 进场价格,double 止损点数, double 止盈点数);
   void              价格修改限价空挂单(string 币种,int magic,string 注释,double 进场价格,double 止损点数, double 止盈点数);
   void              价格修改突破多挂单(string 币种,int magic,string 注释,double 进场价格,double 止损点数, double 止盈点数);
   void              价格修改突破空挂单(string 币种,int magic,string 注释,double 进场价格,double 止损点数, double 止盈点数);
   void              价格修改限价多挂单(string 币种,int magic,double 进场价格,double 止损点数, double 止盈点数);
   void              价格修改限价空挂单(string 币种,int magic,double 进场价格,double 止损点数, double 止盈点数);
   void              价格修改突破多挂单(string 币种,int magic,double 进场价格,double 止损点数, double 止盈点数);
   void              价格修改突破空挂单(string 币种,int magic,double 进场价格,double 止损点数, double 止盈点数);
   //+------------------------------------------------------------------+
   void              限价拆多(string 币种,double 手数,double 拆单手数,double 距现价点数,double 止损点数,double 止盈点数,int magic,string 注释);
   void              限价拆空(string 币种,double 手数,double 拆单手数,double 距现价点数,double 止损点数,double 止盈点数,int magic,string 注释);
   void              限价拆多(string 币种,double 手数,int 拆单层数,double 距现价点数,double 止损点数,double 止盈点数,int magic,string 注释);
   void              限价拆空(string 币种,double 手数,int 拆单层数,double 距现价点数,double 止损点数,double 止盈点数,int magic,string 注释);
   //+------------------------------------------------------------------+
   void              价格限价拆多(string 币种,double 手数,double 拆单手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释);
   void              价格限价拆空(string 币种,double 手数,double 拆单手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释);
   void              价格限价拆多(string 币种,double 手数,int 拆单层数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释);
   void              价格限价拆空(string 币种,double 手数,int 拆单层数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释);
   //+------------------------------------------------------------------+
   //+------------------------------------------------------------------+
   void              突破拆多(string 币种,double 手数,double 拆单手数,double 距现价点数,double 止损点数,double 止盈点数,int magic,string 注释);
   void              突破拆空(string 币种,double 手数,double 拆单手数,double 距现价点数,double 止损点数,double 止盈点数,int magic,string 注释);
   void              突破拆多(string 币种,double 手数,int 拆单层数,double 距现价点数,double 止损点数,double 止盈点数,int magic,string 注释);
   void              突破拆空(string 币种,double 手数,int 拆单层数,double 距现价点数,double 止损点数,double 止盈点数,int magic,string 注释);

   void              价格突破拆多(string 币种,double 手数,double 拆单手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释);
   void              价格突破拆空(string 币种,double 手数,double 拆单手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释);
   void              价格突破拆多(string 币种,double 手数,int 拆单层数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释);
   void              价格突破拆空(string 币种,double 手数,int 拆单层数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释);
   //------------------------------------------
   void              删除挂单(string 币种,int magic,string 注释,int 挂单类型);
   void              删除挂单(string 币种,int magic,int 挂单类型);
   void              删除挂单(string 币种,int magic,string 注释);
   void              删除挂单(string 币种,int magic);
   void              删除挂单();
   //+------------------------------------------------------------------+
   double            日盈亏统计(string 币种,int magic,int 哪天,int 方向);
   double            历史盈亏统计(string 币种,int magic,ulong 查询时间,int 方向);
   double            日手数统计(string 币种,int magic,int 哪天,int 方向);
   double            历史手数统计(string 币种,int magic,ulong 查询时间,int 方向);
   int               日单数统计(string 币种,int magic,int 哪天,int 方向);
   int               历史单数统计(string 币种,int magic,ulong 查询时间,int 方向);

   double            日盈亏统计(string 币种,int magic,int 哪天);
   double            历史盈亏统计(string 币种,int magic,ulong 查询时间);
   double            日手数统计(string 币种,int magic,int 哪天);
   double            历史手数统计(string 币种,int magic,ulong 查询时间);
   int               日单数统计(string 币种,int magic,int 哪天);
   int               历史单数统计(string 币种,int magic,ulong 查询时间);
   //+------------------------------------------------------------------+
   bool              优势多加单点值(string 币种,int  magic,string 注释,double 优势点数);
   bool              优势空加单点值(string 币种,int  magic,string 注释,double 优势点数);
   bool              优势加单点值(string 币种,int  magic,string 注释,int 持仓方向,double 优势点数);
   bool              优势加单点值(string 币种,int  magic,string 注释,double 优势点数);
   bool              优势多加单点值(string 币种,int  magic,double 优势点数);
   bool              优势空加单点值(string 币种,int  magic,double 优势点数);
   bool              优势加单点值(string 币种,int  magic,int 持仓方向,double 优势点数);
   bool              优势加单点值(string 币种,int  magic,double 优势点数);
   //--
   bool              劣势加单点值(string 币种,int  magic,int 持仓方向,double 劣势点数);
   bool              劣势加单点值(string 币种,int  magic,double 劣势点数);
   bool              劣势多加单点值(string 币种,int  magic,double 劣势点数);
   bool              劣势空加单点值(string 币种,int  magic,double 劣势点数);
   bool              劣势加单点值(string 币种,int  magic,string 注释,int 持仓方向,double 劣势点数);
   bool              劣势加单点值(string 币种,int  magic,string 注释,double 劣势点数);
   bool              劣势多加单点值(string 币种,int  magic,string 注释,double 劣势点数);
   bool              劣势空加单点值(string 币种,int  magic,string 注释,double 劣势点数);
   //+------------------------------------------------------------------+
   bool              首单优势多加单点值(string 币种,int  magic,string 注释,double 优势点数);
   bool              首单优势空加单点值(string 币种,int  magic,string 注释,double 优势点数);
   bool              首单优势加单点值(string 币种,int  magic,string 注释,int 持仓方向,double 优势点数);
   bool              首单优势加单点值(string 币种,int  magic,string 注释,double 优势点数);
   bool              首单优势多加单点值(string 币种,int  magic,double 优势点数);
   bool              首单优势空加单点值(string 币种,int  magic,double 优势点数);
   bool              首单优势加单点值(string 币种,int  magic,int 持仓方向,double 优势点数);
   bool              首单优势加单点值(string 币种,int  magic,double 优势点数);
   //----
   bool              首单劣势加单点值(string 币种,int  magic,int 持仓方向,double 劣势点数);
   bool              首单劣势加单点值(string 币种,int  magic,double 劣势点数);
   bool              首单劣势多加单点值(string 币种,int  magic,double 劣势点数);
   bool              首单劣势空加单点值(string 币种,int  magic,double 劣势点数);
   bool              首单劣势加单点值(string 币种,int  magic,string 注释,int 持仓方向,double 劣势点数);
   bool              首单劣势加单点值(string 币种,int  magic,string 注释,double 劣势点数);
   bool              首单劣势多加单点值(string 币种,int  magic,string 注释,double 劣势点数);
   bool              首单劣势空加单点值(string 币种,int  magic,string 注释,double 劣势点数);
   //+------------------------------------------------------------------+
   double            点差值(string 币种);
   double            限制点差值(string 币种,double 设置允许点差值);
   double            限制点差值之外(string 币种,double 设置允许点差值);
   int               尾单持仓方向(string 币种,int magic);
   int               尾单持仓方向(string 币种,int magic,string 注释);
   int               首单持仓方向(string 币种,int magic);
   int               首单持仓方向(string 币种,int magic,string 注释);
   double            倒数历史盈亏(string 币种,int magic,ulong 查询时间,int 方向,int 倒数第几);
   double            倒数历史手数(string 币种,int magic,ulong 查询时间,int 方向,int 倒数第几);
   double            倒数历史盈亏(string 币种,int magic,ulong 查询时间,int 倒数第几);
   double            倒数历史手数(string 币种,int magic,ulong 查询时间,int 倒数第几);
   double            倒数方向(string 币种,int magic,ulong 查询时间,int 倒数第几);
   //+------------------------------------------------------------------+
   double            多尾单马丁手数(string 币种,int magic,double 初始下单手数,double 手数系数,bool 倍投开启);
   double            空尾单马丁手数(string 币种,int magic,double 初始下单手数,double 手数系数,bool 倍投开启);
   double            多尾单马丁手数(string 币种,int magic,string 注释,double 初始下单手数,double 手数系数,bool 倍投开启);
   double            空尾单马丁手数(string 币种,int magic,string 注释,double 初始下单手数,double 手数系数,bool 倍投开启);
   double            多马丁手数(string 币种,int magic,double 初始下单手数,double 手数系数,double 等差);
   double            空马丁手数(string 币种,int magic,double 初始下单手数,double 手数系数,double 等差);
   double            多马丁手数(string 币种,int magic,string 注释,double 初始下单手数,double 手数系数,double 等差);
   double            空马丁手数(string 币种,int magic,string 注释,double 初始下单手数,double 手数系数,double 等差);
   double            尾单马丁手数(string 币种,int magic,double 初始下单手数,double 手数系数,bool 倍投开启);
   double            尾单马丁手数(string 币种,int magic,string 注释,double 初始下单手数,double 手数系数,bool 倍投开启);
   double            尾单马丁手数(string 币种,int magic,int 持仓方向,double 初始下单手数,double 手数系数,bool 倍投开启);
   double            尾单马丁手数(string 币种,int magic,string 注释,int 持仓方向,double 初始下单手数,double 手数系数,bool 倍投开启);
   double            马丁手数(string 币种,int magic,double 初始下单手数,double 手数系数,double 等差);
   double            马丁手数(string 币种,int magic,string 注释,double 初始下单手数,double 手数系数,double 等差);
   double            马丁手数(string 币种,int magic,int 持仓方向,double 初始下单手数,double 手数系数,double 等差);
   double            马丁手数(string 币种,int magic,string 注释,int 持仓方向,double 初始下单手数,double 手数系数,double 等差);
   double            马丁手数(string 币种,double 传入手数,double 递增手数=0,double 手数系数=1,bool 倍投开启=false);
   //+------------------------------------------------------------------+
   //+------------------------------------------------------------------+
   string            获取物件string值(string 名称);
   double            获取物件double值(string 名称);
   double            获取物件指定时间价格(string 名称,datetime 时间=1,int 修饰符=0);
   datetime          获取物件指定价格时间(string 名称,double 价格=0,int 修饰符=0);
   bool              K线穿越某值(string 币种,ENUM_TIMEFRAMES 图表周期,int 向上穿越还是向下,int 开高低收,int 序号,double 某值1,double 某值0);//---1向上2 向下穿越
   bool              K线极值穿越某值(string 币种,ENUM_TIMEFRAMES 图表周期,int 向上穿越还是向下,int 开高低收,int 序号,double 某值1,double 某值0);
   bool              穿越某值(int 向上穿越还是向下,int 序号,double &数组[],double 某值1,double 某值0);//---1向上2 向下穿越

   bool              允许持仓单数(string 币种,int magic,string 注释,int 持仓方向,int 限制单数);
   bool              允许持仓单数(string 币种,int magic,int 持仓方向,int 限制单数);
   bool              允许持仓仓位(string 币种,int  magic,int  持仓方向,double 交易量限制);
   bool              允许持仓总仓位(string 币种,int  magic,double 交易量限制);
   void              锁多仓(string 币种,int magic,string 注释,double 止损点数,double 止盈点数,int 锁仓Magic,string 锁仓注释);
   void              锁空仓(string 币种,int magic,string 注释,double 止损点数,double 止盈点数,int 锁仓Magic,string 锁仓注释);
   void              锁全仓(string 币种,int magic,string 注释,double 止损点数,double 止盈点数,int 锁仓Magic,string 锁仓注释);
   void              锁多仓(string 币种,int magic,double 止损点数,double 止盈点数,int 锁仓Magic,string 锁仓注释);
   void              锁空仓(string 币种,int magic,double 止损点数,double 止盈点数,int 锁仓Magic,string 锁仓注释);
   void              锁全仓(string 币种,int magic,double 止损点数,double 止盈点数,int 锁仓Magic,string 锁仓注释);
   bool              允许账户属性值(ENUM_ACCOUNT_INFO_DOUBLE double账户属性值,double 允许值);
   void              订单号修改止损止盈(int 订单号,double 止损点数,double 止盈点数,int 零壹多贰空=0);
   void              订单号价格修改止损止盈(int 订单号,double 止损价格,double 止盈价格,int 零壹多贰空=0);
   void              无限制订单号价格修改止损止盈(int 订单号,double 止损价格,double 止盈价格,int 零壹多贰空=0);
   void              修改止损止盈(string 币种,int magic,string 注释,double 止损点数,double 止盈点数,int 零壹多贰空=0);
   void              修改止损止盈(string 币种,int magic,double 止损点数,double 止盈点数,int 零壹多贰空=0);
   void              修改止损止盈(int magic,double 止损点数,double 止盈点数,int 零壹多贰空=0);
   void              修改止损(string 币种,int magic,string 注释,double 止损点数,int 零壹多贰空=0);
   void              修改止损(string 币种,int magic,double 止损点数,int 零壹多贰空=0);
   void              修改止损(int magic,double 止损点数,int 零壹多贰空=0);
   void              修改止盈(string 币种,int magic,string 注释,double 止盈点数,int 零壹多贰空=0);
   void              修改止盈(string 币种,int magic,double 止盈点数,int 零壹多贰空=0);
   void              修改止盈(int magic,double 止盈点数,int 零壹多贰空=0);
   void              无限制价格修改止损止盈(string 币种,int magic,string 注释,double 止损价格,double 止盈价格,int 零壹多贰空=0);
   void              无限制价格修改止损(string 币种,int magic,string 注释,double 止损价格,int 零壹多贰空=0);
   void              无限制价格修改止盈(string 币种,int magic,string 注释,double 止盈价格,int 零壹多贰空=0);
   void              价格修改止损止盈(string 币种,int magic,string 注释,double 止损价格,double 止盈价格,int 零壹多贰空=0);
   void              价格修改止损止盈(string 币种,int magic,double 止损价格,double 止盈价格,int 零壹多贰空=0);
   void              价格修改止损止盈(int magic,double 止损价格,double 止盈价格,int 零壹多贰空=0);
   void              价格修改止损(string 币种,int magic,string 注释,double 止损价格,int 零壹多贰空=0);
   void              价格修改止损(string 币种,int magic,double 止损价格,int 零壹多贰空=0);
   void              价格修改止损(int magic,double 止损价格,int 零壹多贰空=0);
   void              移动价格修改止损(string 币种,int magic,string 注释,double 止损价格,int 零壹多贰空=0);
   void              移动价格修改止损(string 币种,int magic,double 止损价格,int 零壹多贰空=0);
   void              移动价格修改止损(int magic,double 止损价格,int 零壹多贰空=0);
   void              价格修改止盈(string 币种,int magic,string 注释,double 止盈价格,int 零壹多贰空=0);
   void              价格修改止盈(string 币种,int magic,double 止盈价格,int 零壹多贰空=0);
   void              价格修改止盈(int magic,double 止盈价格,int 零壹多贰空=0);
   void              订单号折仓(int 订单号,double 折仓手数,double 减仓比例);
   void              订单号折多(int 订单号,double 折仓手数,double 减仓比例);
   void              订单号折空(int 订单号,double 折仓手数,double 减仓比例);
   void              跟单折仓(int  传入订单号,string 币种,int magic,string 注释,double 传入价格,double 设置误差点值,double 进出手数差,double 折仓手数,double 减仓比例,ulong 对方时间,ulong 己方时间);
   void              模糊跟单折仓(int  传入订单号,string 币种,int magic,string 注释,double 传入价格,double 设置误差点值,double 进出手数差,double 折仓手数,double 减仓比例,ulong 对方时间,ulong 己方时间);
   void              折仓(string 币种,int magic,string 注释,double 折仓手数,double 减仓比例,bool 开启只折一次=false);
   void              折仓(string 币种,int magic,double 折仓手数,double 减仓比例,bool 开启只折一次=false);
   void              折仓(int magic,double 折仓手数,double 减仓比例,bool 开启只折一次=false);
   void              折多仓(string 币种,int magic,string 注释,double 折仓手数,double 减仓比例,bool 开启只折一次=false);
   void              折多仓(string 币种,int magic,double 折仓手数,double 减仓比例,bool 开启只折一次=false);
   void              折多仓(int magic,double 折仓手数,double 减仓比例,bool 开启只折一次=false);
   void              折空仓(string 币种,int magic,string 注释,double 折仓手数,double 减仓比例,bool 开启只折一次=false);
   void              折空仓(string 币种,int magic,double 折仓手数,double 减仓比例,bool 开启只折一次=false);
   void              折空仓(int magic,double 折仓手数,double 减仓比例,bool 开启只折一次=false);
   double            系数(string symbol,bool 国际点差自适应=true);
   double            历史持仓尾单手数(string 币种,int magic,string 注释,int 方向,int 倒数第几=1);
   double            历史持仓尾单手数(string 币种,int magic,string 注释,int 倒数第几=1);
   double            历史持仓尾单手数(string 币种,int magic,int 方向,int 倒数第几=1);
   double            历史持仓尾单手数(string 币种,int magic,int 倒数第几=1);
   double            历史持仓尾单盈亏(string 币种,int magic,string 注释,int 方向,int 倒数第几=1);
   double            历史持仓尾单盈亏(string 币种,int magic,string 注释,int 倒数第几=1);
   double            历史持仓尾单盈亏(string 币种,int magic,int 方向,int 倒数第几=1);
   double            历史持仓尾单盈亏(string 币种,int magic,int 倒数第几=1);
   double            历史持仓尾单开收止损止盈价(string 币种,int magic,string 注释,int 方向,int 壹开贰收止损止盈=2,int 倒数第几=1);
   double            历史持仓尾单开收止损止盈价(string 币种,int magic,string 注释,int 壹开贰收止损止盈=2,int 倒数第几=1);
   double            历史持仓尾单开收止损止盈价(string 币种,int magic,int 方向,int 壹开贰收止损止盈=2,int 倒数第几=1);
   double            历史持仓尾单开收止损止盈价(string 币种,int magic,int 壹开贰收止损止盈=2,int 倒数第几=1);

   ulong             历史持仓尾单时间订单号带方向(string 币种,int magic,string 注释,int 方向,int 壹开贰收叁订单号=2,int 倒数第几=1);
   ulong             历史持仓尾单时间订单号(string 币种,int magic,string 注释,int 壹开贰收叁订单号=2,int 倒数第几=1);
   ulong             历史持仓尾单时间订单号带方向(string 币种,int magic,int 方向,int 壹开贰收叁订单号=2,int 倒数第几=1);
   ulong             历史持仓尾单时间订单号(string 币种,int magic,int 壹开贰收叁订单号=2,int 倒数第几=1);

   ulong             历史尾单时间订单号带方向(string 币种,int magic,string 注释,int 方向,int 壹开贰收叁订单号=2,int 倒数第几=1);
   ulong             历史尾单时间订单号(string 币种,int magic,string 注释,int 壹开贰收叁订单号=2,int 倒数第几=1);
   ulong             历史尾单时间订单号带方向(string 币种,int magic,int 方向,int 壹开贰收叁订单号=2,int 倒数第几=1);
   ulong             历史尾单时间订单号(string 币种,int magic,int 壹开贰收叁订单号=2,int 倒数第几=1);

   int               历史持仓尾单方向(string 币种,int magic,string 注释,int 倒数第几=1);
   int               历史持仓尾单方向(string 币种,int magic,int 倒数第几=1);
   bool              持仓有单返回false(string 币种,int magic,string 注释,int 多空都=2);
   bool              持仓有单返回false(string 币种,int magic,int 多空都=2);
   int               返回一周的每天(datetime aTime);
   bool              周末时间(int set_weekend,string weekend_time="22:50",int 一服二电=1);
   bool              阴阳判断(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,int 一阴二阳);
   bool              二阴阳判断(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,int 一阴二阳);
   bool              三阴阳判断(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,int 一阴二阳);
   bool              二连阴阳判断(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,int 一阴二阳);
   bool              三连阴阳判断(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,int 一阴二阳);
   bool              可连续二连阴阳判断(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,int 一阴二阳);
   bool              可连续三连阴阳判断(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,int 一阴二阳);
   double            HV(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始位置,int 计算数量,int 开高低收);
   double            LV(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始位置,int 计算数量,int 开高低收);
   //-----------------------------------------
   bool              字符串含币种检测(string 遍历字符串,string 分隔符,string &返回数组[],bool 窗口选择,int 警报间隔秒数次数,bool 移除EA,bool 关闭图表);
   bool              字符串含小时检测(string 遍历字符串,string 分隔符,string &返回数组[],ulong 参考时间,int 壹服贰电=0,int GMT偏移=0);
   int               分隔号拆分字符串(string 遍历字符串,string 分隔符,string &返回数组[]);
   string               返回拆分的子字符串(string 遍历字符串,string 分隔符,string &返回数组[]);
   string            返回市场币种(bool 窗口选择,int  从第几循环);
   string            市场币种(bool 窗口选择,int 倒数第几);
   string            币种选择(string 币种,int 当前市场所有);
   void              持仓时间平单(string 币种,int magic,string 注释,int 距开盘时间平仓秒数);
   void              持仓时间平单(string 币种,int magic,int 距开盘时间平仓秒数);
   void              持仓时间平单(int magic,int 距开盘时间平仓秒数);
   void              持仓时间平多(string 币种,int magic,string 注释,int 距开盘时间平仓秒数);
   void              持仓时间平多(string 币种,int magic,int 距开盘时间平仓秒数);
   void              持仓时间平多(int magic,int 距开盘时间平仓秒数);
   void              持仓时间平空(string 币种,int magic,string 注释,int 距开盘时间平仓秒数);
   void              持仓时间平空(string 币种,int magic,int 距开盘时间平仓秒数);
   void              持仓时间平空(int magic,int 距开盘时间平仓秒数);
   double            区间K线最高价(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始位置,int 计算数量,int 开高低收,double &区间高价[],bool 是否倒序=true);
   double            区间K线最高价(string 币种,ENUM_TIMEFRAMES 图表周期,datetime 起始时间,int 计算数量,int 开高低收,double &区间高价[],bool 是否倒序=true);
   double            区间K线最高价(string 币种,ENUM_TIMEFRAMES 图表周期,datetime 起始时间,datetime 结束时间,int 开高低收,double &区间高价[],bool 是否倒序=true);
   double            区间K线最低价(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始位置,int 计算数量,int 开高低收,double &区间低价[],bool 是否倒序=true);
   double            区间K线最低价(string 币种,ENUM_TIMEFRAMES 图表周期,datetime 起始时间,int 计算数量,int 开高低收,double &区间低价[],bool 是否倒序=true);
   double            区间K线最低价(string 币种,ENUM_TIMEFRAMES 图表周期,datetime 起始时间,datetime 结束时间,int 开高低收,double &区间低价[],bool 是否倒序=true);
   double            差价(double A,double B);
   double            差价绝对值(double A,double B);
   double            价点值(string 币种,double A);
   double            差点值(string 币种,double A,double B);
   double            在差点值之内(string 币种,double A,double B,double 设置允许点值);
   double            差点值(string 币种1,double A,string 币种2,double B);
   double            在差点值之内(string 币种1,double A,string 币种2,double B,double 设置允许点值);
   double            允许最小手数(string  币种);
   double            允许最大手数(string  币种);
   double            数组最大值(double &区间[],int 起始=0,int 结束=WHOLE_ARRAY);
   double            数组最小值(double &区间[],int 起始=0,int 结束=WHOLE_ARRAY);
   double            数组平均中值(double &区间[],int 起始=0,int 结束=WHOLE_ARRAY);
   double            数组差价(double &区间[],int 起始=0,int 结束=WHOLE_ARRAY);
   double            数组差点值(double &区间[],string 币种,int 起始=0,int 结束=WHOLE_ARRAY);
   bool              允许数组差点值(double &区间[],string 币种,double 设置允许点值,int 起始=0,int 结束=WHOLE_ARRAY);
   void              追踪平单(string 币种,int magic,string 注释,double 启动点数,double 追踪点数,double 百分比=0);
   void              追踪平单(string 币种,int magic,double 启动点数,double 追踪点数,double 百分比=0);
   void              追踪平单(int magic,double 启动点数,double 追踪点数,double 百分比=0);
   void              追踪平多(string 币种,int magic,string 注释,double 启动点数,double 追踪点数,double 百分比=0);
   void              追踪平多(string 币种,int magic,double 启动点数,double 追踪点数,double 百分比=0);
   void              追踪平多(int magic,double 启动点数,double 追踪点数,double 百分比=0);
   void              追踪平空(string 币种,int magic,string 注释,double 启动点数,double 追踪点数,double 百分比=0);
   void              追踪平空(string 币种,int magic,double 启动点数,double 追踪点数,double 百分比=0);
   void              追踪平空(int magic,double 启动点数,double 追踪点数,double 百分比=0);
   bool              区间k线极值在差点值内检测(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始位置,int 结束位置,int 开高低收1,int 开高低收2,double 设置允许点值);
   bool              实体极值百分比检测(string 币种,ENUM_TIMEFRAMES 图表周期,double 最高价,double 最低价,int 序号,int 一阴二阳,double 大于设定百分比通过);
   bool              实体极值刷新百分比检测(string 币种,ENUM_TIMEFRAMES 图表周期,double 最高价,double 最低价,int 序号,int 一阴二阳,double 大于设定百分比通过);
   bool              非区间收阴百分比(string 币种,ENUM_TIMEFRAMES 图表周期,ENUM_SERIESMODE 最高价价格类型,ENUM_SERIESMODE 最低价格类型,int 序号,int 区间根数,ENUM_TIMEFRAMES 阴图表周期,double 阴百分比,double 设置允许区间点值);
   bool              非区间收阳百分比(string 币种,ENUM_TIMEFRAMES 图表周期,ENUM_SERIESMODE 最高价价格类型,ENUM_SERIESMODE 最低价格类型,int 序号,int 区间根数,ENUM_TIMEFRAMES 阳图表周期,double 阳百分比,double 设置允许区间点值);
   bool              区间收阴百分比(string 币种,ENUM_TIMEFRAMES 图表周期,ENUM_SERIESMODE 最高价价格类型,ENUM_SERIESMODE 最低价格类型,int 序号,int 区间根数,ENUM_TIMEFRAMES 阴图表周期,double 阴百分比,double 设置允许区间点值);
   bool              区间收阳百分比(string 币种,ENUM_TIMEFRAMES 图表周期,ENUM_SERIESMODE 最高价价格类型,ENUM_SERIESMODE 最低价格类型,int 序号,int 区间根数,ENUM_TIMEFRAMES 阳图表周期,double 阳百分比,double 设置允许区间点值);
   bool              非区间刷新收阴百分比(string 币种,ENUM_TIMEFRAMES 图表周期,ENUM_SERIESMODE 最高价价格类型,ENUM_SERIESMODE 最低价格类型,int 序号,int 区间根数,ENUM_TIMEFRAMES 阴图表周期,double 阴百分比,double 设置允许区间点值);
   bool              非区间刷新收阳百分比(string 币种,ENUM_TIMEFRAMES 图表周期,ENUM_SERIESMODE 最高价价格类型,ENUM_SERIESMODE 最低价格类型,int 序号,int 区间根数,ENUM_TIMEFRAMES 阳图表周期,double 阳百分比,double 设置允许区间点值);
   bool              区间刷新收阴百分比(string 币种,ENUM_TIMEFRAMES 图表周期,ENUM_SERIESMODE 最高价价格类型,ENUM_SERIESMODE 最低价格类型,int 序号,int 区间根数,ENUM_TIMEFRAMES 阴图表周期,double 阴百分比,double 设置允许区间点值);
   bool              区间刷新收阳百分比(string 币种,ENUM_TIMEFRAMES 图表周期,ENUM_SERIESMODE 最高价价格类型,ENUM_SERIESMODE 最低价格类型,int 序号,int 区间根数,ENUM_TIMEFRAMES 阳图表周期,double 阳百分比,double 设置允许区间点值);
   double            在差点值之外(string 币种1,double A,string 币种2,double B,double 设置允许点值);
   double            在差点值之外(string 币种,double A,double B,double 设置允许点值);
   ENUM_TIMEFRAMES   索引累计返回图表周期(int 累计到循环周期);
   ENUM_TIMEFRAMES   索引返回图表周期(int 索引);
   bool              净持仓均价平单休息多少秒(string 币种,int magic,string 注释,double 设置平单点数,int 休息秒数=0);
   bool              净持仓均价平单休息多少秒(string 币种,int magic,double 设置平单点数,int 休息秒数=0);
   bool              总盈利平单休息多少秒(string 币种,int magic,string 注释,double 盈利金额,int 休息秒数=0);
   bool              总盈利平单休息多少秒(string 币种,int magic,double 盈利金额,int 休息秒数=0);
   bool              总盈利平单休息多少秒(int magic,double 盈利金额,int 休息秒数=0);
   bool              总亏损平单休息多少秒(string 币种,int magic,string 注释,double 亏损金额,int 休息秒数=0);
   bool              总亏损平单休息多少秒(string 币种,int magic,double 亏损金额,int 休息秒数=0);
   bool              总亏损平单休息多少秒(int magic,double 亏损金额,int 休息秒数=0);
   double            画按钮编辑框返其值(string 按钮名称,string 编辑框名称,string  按钮内容,string 编辑框内容,int 一按二编辑,int 按妞字号=12,int 编辑框字=12, int 平移=0,int 下移=0,bool 背景隐藏=true);
   void              左上角信息展示(string 信息,int 字号=15,int 平移=0,int 下移=0,color 按钮颜色=clrWhite,color 边框颜色=clrGreen,color 字体颜色=clrBlack,bool 背景隐藏=true);
   void              左上角信息展示(string 信息1,string 信息2,int 字号=15,int 平移=0,int 下移=0,color 按钮颜色=clrWhite,color 边框颜色=clrGreen,color 字体颜色=clrBlack,bool 背景隐藏=true);
   void              左上角信息展示(string 信息1,string 信息2,string 信息3,int 字号=15,int 平移=0,int 下移=0,color 按钮颜色=clrWhite,color 边框颜色=clrGreen,color 字体颜色=clrBlack,bool 背景隐藏=true);
   void              左上角信息展示(string 信息1,string 信息2,string 信息3,string 信息4,int 字号=15,int 平移=0,int 下移=0,color 按钮颜色=clrWhite,color 边框颜色=clrGreen,color 字体颜色=clrBlack,bool 背景隐藏=true);
   void              左上角信息展示(string 信息1,string 信息2,string 信息3,string 信息4,string 信息5,int 字号=15,int 平移=0,int 下移=0,color 按钮颜色=clrWhite,color 边框颜色=clrGreen,color 字体颜色=clrBlack,bool 背景隐藏=true);
   void              左上角信息展示(string 信息1,string 信息2,string 信息3,string 信息4,string 信息5,string 信息6,int 字号=15,int 平移=0,int 下移=0,color 按钮颜色=clrWhite,color 边框颜色=clrGreen,color 字体颜色=clrBlack,bool 背景隐藏=true);

   void              终端消息推送(long 推送频率秒数,string 信息);
   void              终端消息推送(long 推送频率秒数,string 信息1,string 信息2);
   void              终端消息推送(long 推送频率秒数,string 信息1,string 信息2,string 信息3);
   void              终端消息推送2(long 推送频率秒数,string 信息);
   void              终端消息推送2(long 推送频率秒数,string 信息1,string 信息2);
   void              终端消息推送2(long 推送频率秒数,string 信息1,string 信息2,string 信息3);
   //-----------------------------------------
   void              删除全部物件(int  窗口,ENUM_OBJECT 物件类型1=OBJ_ARROW,ENUM_OBJECT 物件类型2=OBJ_ARROW,ENUM_OBJECT 物件类型3 =OBJ_ARROW,ENUM_OBJECT 物件类型4= OBJ_ARROW,ENUM_OBJECT 物件类型5= OBJ_ARROW,ENUM_OBJECT 物件类型6 =OBJ_ARROW,ENUM_OBJECT 物件类型7= OBJ_ARROW,ENUM_OBJECT 物件类型8 =OBJ_ARROW,ENUM_OBJECT 物件类型9 =OBJ_ARROW);
   void              删除物件(int  窗口,ENUM_OBJECT 物件类型1=OBJ_ARROW,ENUM_OBJECT 物件类型2=OBJ_ARROW,ENUM_OBJECT 物件类型3 =OBJ_ARROW,ENUM_OBJECT 物件类型4= OBJ_ARROW,ENUM_OBJECT 物件类型5= OBJ_ARROW,ENUM_OBJECT 物件类型6 =OBJ_ARROW,ENUM_OBJECT 物件类型7= OBJ_ARROW,ENUM_OBJECT 物件类型8 =OBJ_ARROW,ENUM_OBJECT 物件类型9 =OBJ_ARROW);

   void              删除物件(int 窗口=0);
   void              删除全部物件();
   void              删除左上角信息();
   void              删除物件(long 窗口,string 名称1,string 名称2="",string 名称3="",string 名称4="",string 名称5="",string 名称6="",string 名称7="",string 名称8="",string 名称9="");
   string            尾单注释(string 币种,int magic,int 方向);
   string            尾单注释(int magic,int 方向);
   string            尾单注释(string 币种,int magic);
   string            尾单注释(int magic);
   string            挂单尾单注释(string 币种,int magic,int 方向);
   string            挂单尾单注释(int magic,int 方向);
   string            挂单尾单注释(string 币种,int magic);
   string            挂单尾单注释(int magic);
   int               挂单尾单方向(string 币种,int magic,string 注释);
   int               挂单尾单方向(string 币种,int magic);
   int               挂单尾单方向(int magic);
   double            返回挂单尾单属性值(string 币种,int magic,string 注释,int 方向,int 一价二量三损四盈五时=1);
   double            返回挂单尾单属性值(string 币种,int magic,int 方向,int 一价二量三损四盈五时=1);
   double            返回挂单尾单属性值(int magic,int 方向,int 一价二量三损四盈五时=1);
   double            返回挂单尾单属性值(string 币种,int magic,string 注释,int 一价二量三损四盈五时=1);
   double            返回挂单尾单属性值(string 币种,int magic,int 一价二量三损四盈五时=1);
   double            返回挂单尾单属性值(int magic,int 一价二量三损四盈五时=1);
   void              净持仓追踪平单(string 币种,int  magic,string 注释,double 启动点数,double 追踪点数,double 百分比=0);
   void              净持仓追踪平单(string 币种,int  magic,double 启动点数,double 追踪点数,double 百分比=0);
   double            订单号返回挂单属性值(int 订单号,int 一价二量三损四盈五时=1);
   double            订单号返回属性值(int 订单号,int 一价二量三损四盈五时=1);
   ulong             订单号返回挂单开盘时间(int 订单号);
   datetime              订单号返回开盘时间(int 订单号);
   void              净值回调平单(string 币种,int magic,double 账户盈利金额,double 保护利润);
   void              净值回调平单(string 币种,int magic,string 注释,double 账户盈利金额,double 保护利润);
   void              空值不显示(int 缓冲区=0,int 缓冲区1=0,int 缓冲区2=0,int 缓冲区3=0,int 缓冲区4=0,int 缓冲区5=0,int 缓冲区6=0,int 缓冲区7=0,int 缓冲区8=0);
   bool              双币种开盘时间同步检测(string 币种1,string 币种2,bool 币种窗口,int 警报提示间隔秒数,ENUM_TIMEFRAMES 图表周期,bool 打印提示);
   bool              双币种手数检测(string 币种1,double 手数1,string 币种2,double 手数2,int 警报间隔秒数次数,bool 移除EA,bool 关闭图表);
   bool              允许手数检测(string 币种,double 手数);
   void              多价差手数不对等平尾单(string 币种1,string  币种2,int 币种1多magic,int 币种2空magic,double 允许手数误差最小值,bool 是否开启);
   void              空价差手数不对等平尾单(string 币种1,string  币种2,int 币种1空magic,int 币种2多magic,double 允许手数误差最小值,bool 是否开启);
   void              空价差手数不对等折尾单(string 币种1,string  币种2,int 币种1空magic,int 币种2多magic,double 允许手数误差最小值,bool 是否开启);
   void              多价差手数不对等折尾单(string 币种1,string  币种2,int 币种1多magic,int 币种2空magic,double 允许手数误差最小值,bool 是否开启);
   void              折多尾单(string 币种,int magic,double 折仓手数,double 减仓比例);
   void              折空尾单(string 币种,int magic,double 折仓手数,double 减仓比例);
   bool              顶底分型(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,int 一顶二底);
   string            DayOfWeek(const datetime time);
   bool              非空值检测(double  传入值);
   bool              空值检测(double  传入值);
   bool              计数取模检测(int 传入计数,int 取模层级);
   bool              计数取模检测2(int 传入计数,int 取模层级);
   bool              计数取模检测3(int 传入计数,int 取模层级);
   bool              计数取模检测4(int 传入计数,int 取模层级);
   double            区间均价(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始,int  计算数量,int 开高低收);
   double            区间均价差价(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始,int  计算数量,int 开高低收1,int 开高低收2);
   double            区间均值差价点值(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始,int  计算数量,int 开高低收1,int 开高低收2);
   double            允许区间均值差价点值(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始,int  计算数量,int 开高低收1,int 开高低收2,double 设置允许点值);
   bool              K线小于均价检测(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始,int  计算数量,int 开高低收,int 序号);
   bool              K线大于均价检测(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始,int  计算数量,int 开高低收,int 序号);
   bool              区间底背离(string 币种,ENUM_TIMEFRAMES 图表周期,double &zigzag[][4],int 限定根数=20,int 序号=0,int 低收=3,bool 不时测=true);
   bool              区间顶背离(string 币种,ENUM_TIMEFRAMES 图表周期,double &zigzag[][4],int 限定根数=20,int 序号=0,int 低收=3,bool 不时测=true);
   bool              区间底背离(string 币种,ENUM_TIMEFRAMES 图表周期,double &zigzag[][3],int 限定根数=20,int 序号=0,int 低收=3,bool 不时测=true);
   bool              区间顶背离(string 币种,ENUM_TIMEFRAMES 图表周期,double &zigzag[][3],int 限定根数=20,int 序号=0,int 低收=3,bool 不时测=true);
   double            持仓最大仓位(string 币种,int magic,string 注释,int 方向);
   double            持仓最大仓位(string 币种,int magic,int 方向);
   double            持仓最大仓位(int magic,int 方向);
   double            持仓最大仓位(string 币种,int magic,string 注释);
   double            持仓最大仓位(string 币种,int magic);
   double            持仓最大仓位(int magic);
   double            比例手数(string 币种,int magic,string 注释,double 输入手数,ENUM_ACCOUNT_INFO_DOUBLE 净值或者可用保证金,int 允许单数,double  自定义百分比,double 手数补偿系数=1);//---0结余 3净值 5可用保证金
   double            比例手数(string 币种,int magic,string 注释,double 输入手数,ENUM_ACCOUNT_INFO_DOUBLE 净值或者可用保证金,int 允许单数,int 多或者空,double  自定义百分比,double 手数补偿系数=1);
   double            比例手数(string 币种,int magic,double 输入手数,ENUM_ACCOUNT_INFO_DOUBLE 净值或者可用保证金,int 允许单数,double  自定义百分比,double 手数补偿系数=1);//---0结余 3净值 5可用保证金
   double            比例手数(string 币种,int magic,double 输入手数,ENUM_ACCOUNT_INFO_DOUBLE 净值或者可用保证金,int 允许单数,int 多或者空,double  自定义百分比,double 手数补偿系数=1);
   double            比例手数(double 输入手数,ENUM_ACCOUNT_INFO_DOUBLE 净值或者可用保证金,double  自定义百分比,double 手数补偿系数=1);
   double            返回日刷新比较值(double 输入值,double 比较值,int 大小);
   double            返回历史比较值(double 输入值,double 比较值,int 大小);
   double            返回所需保证金(string 币种,double 手数);
   bool              保证金百分比限制(string 币种,double 手数,double 限制百分比=0,ENUM_ACCOUNT_INFO_DOUBLE 净值或者可用保证金=ACCOUNT_MARGIN_FREE);
   double            formatlots(string symbol,double lots);
   bool              截屏(string 图片名称="-1",int 宽度=1600,int 高度=900,ENUM_ALIGN_MODE align_mode=ALIGN_RIGHT);
   void              字符串替换(string &图片名称,string 搜索子内容,string 替换内容);
   double            持仓最高价(string 币种,int magic,string 注释,int 方向);
   double            持仓最高价(string 币种,int magic,int 方向);
   double            持仓最高价(int magic,int 方向);
   double            持仓最高价(string 币种,int magic,string 注释);
   double            持仓最高价(string 币种,int magic);
   double            持仓最高价(int magic);
   //---
   double            持仓最低价(string 币种,int magic,string 注释,int 方向);
   double            持仓最低价(string 币种,int magic,int 方向);
   double            持仓最低价(int magic,int 方向);
   double            持仓最低价(string 币种,int magic,string 注释);
   double            持仓最低价(string 币种,int magic);
   double            持仓最低价(int magic);
   bool              向上加单点值(string 币种,double 参考价格,double 买卖价格,double 加单点数);
   bool              向下加单点值(string 币种,double 参考价格,double 买卖价格,double 加单点数);
   double            getTickValue(string input_symbol);
   void              坐标(double 横坐标=1,datetime 纵坐标=1);
   void              左上角文字(string 信息1,string 信息2,string 信息3,string 信息4,string 信息5,string 信息6,int 下移=0,color 颜色=clrYellow);
   void              左上角文字(string 信息1,string 信息2,string 信息3,string 信息4,string 信息5,int 下移=0,color 颜色=clrYellow);
   void              左上角文字(string 信息1,string 信息2,string 信息3,string 信息4,int 下移=0,color 颜色=clrYellow);
   void              左上角文字(string 信息1,string 信息2,string 信息3,int 下移=0,color 颜色=clrYellow);
   void              左上角文字(string 信息1,string 信息2,int 下移=0,color 颜色=clrYellow);
   void              左上角文字(string 信息1,int 下移=0,color 颜色=clrYellow);
   //+------------------------------------------------------------------+
   void              右上角文字(string 信息1,string 信息2,string 信息3,string 信息4,string 信息5,string 信息6,int 下移=0,color 颜色=clrYellow);
   void              右上角文字(string 信息1,string 信息2,string 信息3,string 信息4,string 信息5,int 下移=0,color 颜色=clrYellow);
   void              右上角文字(string 信息1,string 信息2,string 信息3,string 信息4,int 下移=0,color 颜色=clrYellow);
   void              右上角文字(string 信息1,string 信息2,string 信息3,int 下移=0,color 颜色=clrYellow);
   void              右上角文字(string 信息1,string 信息2,int 下移=0,color 颜色=clrYellow);
   void              右上角文字(string 信息1,int 下移=0,color 颜色=clrYellow);
   //+------------------------------------------------------------------+
   double            平均值(double &x[], int len);
   double            方差(double &x[], int len);
   double            标准差(double &x[], int len);
   double            正序标准差(int 遍历序号,const double &样本数组[],const double &样本均价[],int 选中样本个数);
   double            倒序标准差(int 遍历序号,const double &样本数组[],const double &样本均价[],int 选中样本个数);

   double            账户盈亏百分之几();
   bool              允许账户盈利百分之几(double 设置允许账户盈利百分之几=0,bool 警报弹窗=false,bool 是否移除EA=false);
   bool              允许账户亏损百分之几(double 设置允许账户亏损百分之几=0,bool 警报弹窗=false,bool 是否移除EA=false);
   double            持仓盈亏百分之几(string 币种,int  magic);
   bool              允许持仓盈利百分之几(string 币种,int  magic,double 设置允许持仓盈利百分之几=0,bool 警报弹窗=false,bool 是否移除EA=false);
   bool              允许持仓亏损百分之几(string 币种,int  magic,double 设置允许持仓亏损百分之几=0,bool 警报弹窗=false,bool 是否移除EA=false);
   int               copyrates(string 币种,ENUM_TIMEFRAMES 图表周期,MqlRates &rates[],int 计算数量,int 起始位置=0);
   int               copyrates(string 币种,ENUM_TIMEFRAMES 图表周期,MqlRates &rates[],int 计算数量,datetime 起始时间=0);
   int               copyrates(string 币种,ENUM_TIMEFRAMES 图表周期,MqlRates &rates[],datetime 结束时间,datetime 起始时间=0);
   void              持仓信息统计(string 币种,int magic,int 下移1=110,int 壹左贰右=1,color 颜色=clrYellow);
   void              持仓信息统计(int magic,int 下移1=110,int 壹左贰右=1,color 颜色=clrYellow);
   double            历史总盈亏平推手数(string 币种,int magic,double 传入初始手数,bool 盈亏信号检测,double 递增手数=0,double 手数系数=1,bool 倍投开启=false);
   void              自定义面板(bool 是否画待运行1=true,bool 是否画待运行2=true,int 下移=30,int 平移=0);
   void              自定义面板2(bool 是否画待运行1=true,bool 是否画待运行2=true,int 下移=0,int 平移=0);
   void              自定义面板3(bool 是否画响应栏=true,int 字号15=10,int 向左平移=0,int 上下平移=0,ENUM_BASE_CORNER 角落=CORNER_RIGHT_UPPER);

   void              自定义面板辅助实现(string 币种,int magic,double 止损点数,double 止盈点数,const int id,const string sparam);
   void              自定义面板辅助实现3(string 币种,int magic,double 止损点数,double 止盈点数,const int id,const string sparam);
   bool              物件文本检测(string 物件名="运行1",string 现物件名="运行中");
   template<typename x>
   void              倒序数组(x &传入数组[],bool 是否倒序);
   double            持单数自定义列表(string 币种,int magic,int 方向,double 初始值=0,string 列表1="",string 列表2="",string 列表3="",string 列表4="",string 列表5="",string 列表6="",string 列表7="",bool 不检测方向开启=false);
   double            自定义列表(int 计数,double 初始值=0,string 列表1="",string 列表2="",string 列表3="",string 列表4="",string 列表5="",string 列表6="",string 列表7="");
   double             区间回调比例价格(double 高价,double 低价,int 壹上贰下=1,double 比例=0.618);
   bool              物件不存在(string 物件名称,int 查找窗口=0);
   bool              物件存在(string 物件名称,int 查找窗口=0);
   double            马丁手数1(string 币种,int 持单数量,double 初始下单手数,double 手数系数,double 等差);
   double            马丁手数2(string 币种,int 持单数量,double 初始下单手数,double 手数系数,double 等差);
   double            马丁手数3(string 币种,int 持单数量,double 初始下单手数,double 手数系数,double 等差);
   double            马丁手数4(string 币种,int 持单数量,double 初始下单手数,double 手数系数,double 等差);
   bool              多单检测();
   bool              空单检测();
   bool              止损大于开盘价();
   bool              止损小于开盘价();
   double            角度(double A,double B,int 序1,int 序0=0);
   double            画角度(string 币种,ENUM_TIMEFRAMES 图表周期,double 价格A,double 价格B,int 序1,int 序0=0,bool 左射=false,bool 右射=true);
   bool              账户净值增加检测(double 设置净值增加金额,string 币种,ENUM_TIMEFRAMES 图表周期=PERIOD_D1,int 序号=0);
   double            平均波动点值(string 币种,ENUM_TIMEFRAMES 图表周期,int ATR计算周期,int 计算起位置=0);
   bool              历史盈利平持仓亏损(string 币种,int magic,double 历史总盈亏金额百分之几=0.5);
   //+----------------------------------------------------------
   int               多尾单盈利带尾单(string 币种,int magic,string 注释,double 指定尾单盈利点值=0);
   int               空尾单盈利带尾单(string 币种,int magic,string 注释,double 指定尾单盈利点值=0);
   int               多尾单盈利带尾单(string 币种,int magic,double 指定尾单盈利点值=0);
   int               空尾单盈利带尾单(string 币种,int magic,double 指定尾单盈利点值=0);

   int               多尾单盈利带首单(string 币种,int magic,string 注释,double 指定尾单盈利点值=0);
   int               空尾单盈利带首单(string 币种,int magic,string 注释,double 指定尾单盈利点值=0);
   int               多尾单盈利带首单(string 币种,int magic,double 指定尾单盈利点值=0);
   int               空尾单盈利带首单(string 币种,int magic,double 指定尾单盈利点值=0);
   //+----------------------------------------------------------
   void              盈利点数折仓(string 币种,int magic,string 注释,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0,bool 开启只折一次=false);
   void              盈利点数折仓(string 币种,int magic,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0,bool 开启只折一次=false);
   void              盈利点数折仓(int magic,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0,bool 开启只折一次=false);
   void              盈利点数折多(string 币种,int magic,string 注释,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0,bool 开启只折一次=false);
   void              盈利点数折多(string 币种,int magic,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0,bool 开启只折一次=false);
   void              盈利点数折多(int magic,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0,bool 开启只折一次=false);
   void              盈利点数折空(string 币种,int magic,string 注释,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0,bool 开启只折一次=false);
   void              盈利点数折空(string 币种,int magic,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0,bool 开启只折一次=false);
   void              盈利点数折空(int magic,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0,bool 开启只折一次=false);
   bool              阳孕阴(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,bool 开启不检开收价=false,bool 不检孕阴阳=false);
   bool              阴孕阳(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,bool 开启不检开收价=false,bool 不检孕阴阳=false);
   bool              上破阳孕阴(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,int 模式=0,bool 开启不检开收价=false,bool 不检孕阴阳=false);
   bool              下破阴孕阳(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,int 模式=0,bool 开启不检开收价=false,bool 不检孕阴阳=false);
   bool              看涨吞没(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,bool 开启不检开收价=false);
   bool              看跌吞没(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,bool 开启不检开收价=false);
   bool              阳下影线比例(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 影线占实影多少比例=0.6);
   bool              阴下影线比例(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 影线占实影多少比例=0.6);
   bool              阳上影线比例(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 影线占实影多少比例=0.6);
   bool              阴上影线比例(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 影线占实影多少比例=0.6);
   bool              看涨pinbar(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 影线占实影多少比例=0.6);
   bool              看跌pinbar(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 影线占实影多少比例=0.6);
   //+----------------------------------------------------------
   //+------------------------------------------------------------------+
   bool              K线大于某值(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 某值,int 模式开高低收=3);
   bool              K线小于某值(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 某值,int 模式开高低收=3);
   bool              二连K大于某值(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 某值1,double 某值2,int 模式开高低收1=3,int 模式开高低收2=3);
   bool              三连K大于某值(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 某值1,double 某值2,double 某值3,int 模式开高低收1=3,int 模式开高低收2=3,int 模式开高低收3=3);
   bool              二连K小于某值(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 某值1,double 某值2,int 模式开高低收1=3,int 模式开高低收2=3);
   bool              三连K小于某值(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 某值1,double 某值2,double 某值3,int 模式开高低收1=3,int 模式开高低收2=3,int 模式开高低收3=3);
   //+------------------------------------------------------------------+
   double            最大盈利金额(string 币种,int magic,string 注释,int 持仓方向,uint &订单号);
   double            最大盈利金额(string 币种,int magic,int 持仓方向,uint &订单号);
   double            最大盈利金额(int magic,int 持仓方向,uint &订单号);
   double            最大盈利金额(string 币种,int magic,string 注释,uint &订单号);
   double            最大盈利金额(string 币种,int magic,uint &订单号);
   double            最大盈利金额(int magic,uint &订单号);
   //------
   double            最小亏损金额(string 币种,int magic,string 注释,int 持仓方向,uint &订单号);
   double            最小亏损金额(string 币种,int magic,int 持仓方向,uint &订单号);
   double            最小亏损金额(int magic,int 持仓方向,uint &订单号);
   double            最小亏损金额(string 币种,int magic,string 注释,uint &订单号);
   double            最小亏损金额(string 币种,int magic,uint &订单号);
   double            最小亏损金额(int magic,uint &订单号);
   //---------------------
   //+------------------------------------------------------------------+
   double            盈利金额由大到小平单(double 设置金额,string 币种,int magic,string 注释,int 持仓方向);
   double            盈利金额由大到小平单(double 设置金额,string 币种,int magic,int 持仓方向);
   double            盈利金额由大到小平单(double 设置金额,int magic,int 持仓方向);
   double            盈利金额由大到小平单(double 设置金额,string 币种,int magic,string 注释);
   double            盈利金额由大到小平单(double 设置金额,string 币种,int magic);
   double            盈利金额由大到小平单(double 设置金额,int magic);
   //-----
   double            设置金额由小到大平亏损(double 设置金额,string 币种,int magic,string 注释,int 持仓方向);
   double            设置金额由小到大平亏损(double 设置金额,string 币种,int magic,int 持仓方向);
   double            设置金额由小到大平亏损(double 设置金额,int magic,int 持仓方向);
   double            设置金额由小到大平亏损(double 设置金额,string 币种,int magic,string 注释);
   double            设置金额由小到大平亏损(double 设置金额,string 币种,int magic);
   double            设置金额由小到大平亏损(double 设置金额,int magic);
   //+------------------------------------------------------------------+
   void              反向开单(string 币种,int magic,string 注释,double 比例反手倍率=0,double 增减手数=0,bool 是否平单反手=false);
   void              反向开单(string 币种,int magic,double 比例反手倍率=0,double 增减手数=0,bool 是否平单反手=false);
   void              反向开单(int magic,double 比例反手倍率=0,double 增减手数=0,bool 是否平单反手=false);
   void              反向开多(string 币种,int magic,string 注释,double 比例反手倍率=0,double 增减手数=0,bool 是否平单反手=false);
   void              反向开多(string 币种,int magic,double 比例反手倍率=0,double 增减手数=0,bool 是否平单反手=false);
   void              反向开多(int magic,double 比例反手倍率=0,double 增减手数=0,bool 是否平单反手=false);
   void              反向开空(string 币种,int magic,string 注释,double 比例反手倍率=0,double 增减手数=0,bool 是否平单反手=false);
   void              反向开空(string 币种,int magic,double 比例反手倍率=0,double 增减手数=0,bool 是否平单反手=false);
   void              反向开空(int magic,double 比例反手倍率=0,double 增减手数=0,bool 是否平单反手=false);
   //+------------------------------------------------------------------+
   void              同向开单(string 币种,int magic,string 注释,double 比例倍率=0,double 增减手数=0,bool 是否平单同向=false);
   void              同向开单(string 币种,int magic,double 比例倍率=0,double 增减手数=0,bool 是否平单同向=false);
   void              同向开单(int magic,double 比例倍率=0,double 增减手数=0,bool 是否平单同向=false);
   void              同向开多(string 币种,int magic,string 注释,double 比例倍率=0,double 增减手数=0,bool 是否平单同向=false);
   void              同向开多(string 币种,int magic,double 比例倍率=0,double 增减手数=0,bool 是否平单同向=false);
   void              同向开多(int magic,double 比例倍率=0,double 增减手数=0,bool 是否平单同向=false);
   void              同向开空(string 币种,int magic,string 注释,double 比例倍率=0,double 增减手数=0,bool 是否平单同向=false);
   void              同向开空(string 币种,int magic,double 比例倍率=0,double 增减手数=0,bool 是否平单同向=false);
   void              同向开空(int magic,double 比例倍率=0,double 增减手数=0,bool 是否平单同向=false);
   //+------------------------------------------------------------------+
   //+------------------------------------------------------------------+
   void              自定义反向开单(string 币种,int magic,string 注释,double 比例反手倍率,double 增减手数,bool 是否平单反手,double 止损点数,double 止盈点数,string 反手注释);
   void              自定义反向开单(string 币种,int magic,double 比例反手倍率,double 增减手数,bool 是否平单反手,double 止损点数,double 止盈点数,string 反手注释);
   void              自定义反向开单(int magic,double 比例反手倍率,double 增减手数,bool 是否平单反手,double 止损点数,double 止盈点数,string 反手注释);
   void              自定义反向开多(string 币种,int magic,string 注释,double 比例反手倍率,double 增减手数,bool 是否平单反手,double 止损点数,double 止盈点数,string 反手注释);
   void              自定义反向开多(string 币种,int magic,double 比例反手倍率,double 增减手数,bool 是否平单反手,double 止损点数,double 止盈点数,string 反手注释);
   void              自定义反向开多(int magic,double 比例反手倍率,double 增减手数,bool 是否平单反手,double 止损点数,double 止盈点数,string 反手注释);
   void              自定义反向开空(string 币种,int magic,string 注释,double 比例反手倍率,double 增减手数,bool 是否平单反手,double 止损点数,double 止盈点数,string 反手注释);
   void              自定义反向开空(string 币种,int magic,double 比例反手倍率,double 增减手数,bool 是否平单反手,double 止损点数,double 止盈点数,string 反手注释);
   void              自定义反向开空(int magic,double 比例反手倍率,double 增减手数,bool 是否平单反手,double 止损点数,double 止盈点数,string 反手注释);
   //-------------------------------------------------------------------------
   void              自定义同向开单(string 币种,int magic,string 注释,double 比例倍率,double 增减手数,bool 是否平单同向,double 止损点数,double 止盈点数,string 同向注释);
   void              自定义同向开单(string 币种,int magic,double 比例倍率,double 增减手数,bool 是否平单同向,double 止损点数,double 止盈点数,string 同向注释);
   void              自定义同向开单(int magic,double 比例倍率,double 增减手数,bool 是否平单同向,double 止损点数,double 止盈点数,string 同向注释);
   void              自定义同向开多(string 币种,int magic,string 注释,double 比例倍率,double 增减手数,bool 是否平单同向,double 止损点数,double 止盈点数,string 同向注释);
   void              自定义同向开多(string 币种,int magic,double 比例倍率,double 增减手数,bool 是否平单同向,double 止损点数,double 止盈点数,string 同向注释);
   void              自定义同向开多(int magic,double 比例倍率,double 增减手数,bool 是否平单同向,double 止损点数,double 止盈点数,string 同向注释);
   void              自定义同向开空(string 币种,int magic,string 注释,double 比例倍率,double 增减手数,bool 是否平单同向,double 止损点数,double 止盈点数,string 同向注释);
   void              自定义同向开空(string 币种,int magic,double 比例倍率,double 增减手数,bool 是否平单同向,double 止损点数,double 止盈点数,string 同向注释);
   void              自定义同向开空(int magic,double 比例倍率,double 增减手数,bool 是否平单同向,double 止损点数,double 止盈点数,string 同向注释);
   //-----------------------------------------
   bool              单位时间向上差点值之外(string 币种,double 设置差点值,double 间隔秒数,double 参考价);
   bool              单位时间向下差点值之外(string 币种,double 设置差点值,double 间隔秒数,double 参考价);
   double            单位时间向上差值(double 间隔秒数,double 参考价);
   double            单位时间向下差值(double 间隔秒数,double 参考价);
   double            单位时间差值(double 间隔秒数,double 参考价);
   bool              单位时间do1(double 间隔秒数);
   bool              单位时间do2(double 间隔秒数);
   bool              单位时间do3(double 间隔秒数);
   bool              单位时间do4(double 间隔秒数);
   bool              单位时间1(double 间隔秒数);
   bool              单位时间2(double 间隔秒数);
   bool              单位时间3(double 间隔秒数);
   bool              单位时间4(double 间隔秒数);
   int               小数点(string 币种);
   void              pfun(string 错误信息);
   template<typename x>
   bool              字符串拆分含参检测(string 字符串,x 对比的参数,string 分隔符=",");
   bool              订单注释含订单号检测(int  传入订单号);
   ulong             订单注释含订单号返回integer属性值(int  传入订单号,int 选择);
   double            订单注释含订单号返回double属性值(int  传入订单号,int 选择);
   string            订单注释含订单号返回string属性值(int  传入订单号,int 选择);
   ulong             跨平台服务器时间转换(ulong 传入服务器时间,ulong 历史服务器时间);
   bool              历史订单注释含订单号检测(int  传入订单号,ulong 开始时间,ulong 截止时间=0);
   long              历史订单注释含订单号返回关闭时间(int  传入订单号,ulong 开始时间,ulong 截止时间=0);
   bool              历史订单ID含订单号检测(string  注释,ulong 开始时间,ulong 截止时间=0);
   bool              买误差点值(string 币种,double 传入价格,double 设置差点值=0);
   bool              卖误差点值(string 币种,double 传入价格,double 设置差点值=0);
   bool              在设置时差内(ulong 输入时间,ulong 参考时间,ulong 设置误差秒数=-1);
   string            币种修正(string 传入币种,bool 窗口选择=false);
   string            特殊币种修正(string 传入币种,string 输入币种字符组,string 输出币种字符组);
   string            特殊比例手数修正(string 传入币种,string 输入币种字符组,string 传入比例,string 输出比例手数组);
   bool              字符串包含(string 检测字符串,string 包含的字符串,int 开始位置=0);
   bool              币种标识符检测(string 币种,bool 窗口选择);
   string            持仓含有币种修正(string 传入币种,int magic,string 传入注释);
   double            返回持单手数(string 传入币种,int magic,string 传入注释);
   void              指定条件closeby(string 币种,int magic,string 注释);
   void              指定条件closeby(string 币种,int magic);
   void              指定条件closeby(string 币种,string 注释);
   void              指定条件closeby(int magic);
   void              closeby(string 币种,int magic,string 注释);
   void              closeby(string 币种,int magic);
   void              closeby(string 币种,string 注释);
   void              closeby(int magic);
   void              closeby();
   bool              订单号不存在检测(ulong 要检订单号,ulong &待检数组[]);
   void              升序带单(int 设置几单,int 带几单,double 带单金额);
   double            历史订单注释含订单号出场总手数(int  传入订单号,ulong 开始时间,ulong 截止时间=0);
   //+---------------------
   void              极值穿越开盘价平多(string 币种,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 壹上贰下,int 开高低收,int 序号=0);
   void              极值穿越开盘价平空(string 币种,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 壹上贰下,int 开高低收,int 序号=0);
   void              极值穿越开盘价平多(string 币种,int magic,ENUM_TIMEFRAMES 图表周期,int 壹上贰下,int 开高低收,int 序号=0);
   void              极值穿越开盘价平空(string 币种,int magic,ENUM_TIMEFRAMES 图表周期,int 壹上贰下,int 开高低收,int 序号=0);

   void              平N时间前单(string 币种,int magic,string 注释,long 时间);
   void              平N时间前单(string 币种,int magic,long 时间);
   void              平N时间前单(int magic,long 时间);
   void              平N时间前多单(string 币种,int magic,string 注释,long 时间);
   void              平N时间前多单(string 币种,int magic,long 时间);
   void              平N时间前多单(int magic,long 时间);
   void              平N时间前空单(string 币种,int magic,string 注释,long 时间);
   void              平N时间前空单(string 币种,int magic,long 时间);
   void              平N时间前空单(int magic,long 时间);
   ulong             CtoL(ulong 传入服务器时间,int 壹服贰电=0);
   ulong             LtoC(ulong 传入电脑时间,int 壹服贰电=0);
   ulong             StoCL(string 传入转换时间,int 壹服贰电=0);
   int               偏移小时();
   double            NormalizeVolume(string symbol,double lot);
   void              模拟授权();
   bool              升序带单(string 币种,int magic,int 设置几单,int 带几单,double 带单金额);
   bool              更新价格(double ref_price,double &price,double point_price,int oup_tdown=1);
   double            多盈亏返回价格(string 币种,int magic,string 注释,double long_profit);
   double            空盈亏返回价格(string 币种,int magic,string 注释,double short_profit);
   double            多盈亏返回价格(string 币种,int magic,double long_profit);
   double            空盈亏返回价格(string 币种,int magic,double short_profit);
   void              对冲手数带单(string symbol,int magic,int magic2,double profit_start=100,double profit_end=1,int choose=0);
   bool              时间账号check(long account_number,datetime time);
   void              正止损点追踪止损(string 币种,int magic,string 注释,double 追踪点数,double 间隔点数,int 零壹多贰空=0,int 前几单追踪=0);
   void              正止损点追踪止损(string 币种,int magic,double 追踪点数,double 间隔点数,int 零壹多贰空=0,int 前几单追踪=0);
   void              正止损点追踪止多(string 币种,int magic,string 注释,double 追踪点数,double 间隔点数,int 前几单追踪=0);
   void              正止损点追踪止多(string 币种,int magic,double 追踪点数,double 间隔点数,int 前几单追踪=0);
   void              正止损点追踪止空(string 币种,int magic,string 注释,double 追踪点数,double 间隔点数,int 前几单追踪=0);
   void              正止损点追踪止空(string 币种,int magic,double 追踪点数,double 间隔点数,int 前几单追踪=0);
   void              倒止损点追踪止损(string 币种,int magic,string 注释,double 追踪点数,double 间隔点数,int 零壹多贰空=0,int 前几单追踪=0);
   void              倒止损点追踪止损(string 币种,int magic,double 追踪点数,double 间隔点数,int 零壹多贰空=0,int 前几单追踪=0);
   void              倒止损点追踪止多(string 币种,int magic,string 注释,double 追踪点数,double 间隔点数,int 前几单追踪=0);
   void              倒止损点追踪止多(string 币种,int magic,double 追踪点数,double 间隔点数,int 前几单追踪=0);
   void              倒止损点追踪止空(string 币种,int magic,string 注释,double 追踪点数,double 间隔点数,int 前几单追踪=0);
   void              倒止损点追踪止空(string 币种,int magic,double 追踪点数,double 间隔点数,int 前几单追踪=0);
   void              批量画文本(string &value[],int 文本标签X轴,int 文本标签Y轴,color 文本标签颜色=clrYellow,int 文本标签字体大小=10,double 文本标签角度=0,ENUM_ANCHOR_POINT 文本标签锚点=ANCHOR_LEFT_UPPER,ENUM_BASE_CORNER  文本标签角落=CORNER_LEFT_UPPER,string 文本标签字体="楷体",bool 文本标签背景=false,bool 文本标签可选=false);
   void              批量画文本2(string &value[],int 文本标签X轴,int 文本标签Y轴,color 文本标签颜色=clrYellow,int 文本标签字体大小=10,double 文本标签角度=0,ENUM_ANCHOR_POINT 文本标签锚点=ANCHOR_LEFT_UPPER,ENUM_BASE_CORNER  文本标签角落=CORNER_LEFT_UPPER,string 文本标签字体="楷体",bool 文本标签背景=false,bool 文本标签可选=false);
   void              批量画文本3(string &value[],int 文本标签X轴,int 文本标签Y轴,color 文本标签颜色=clrYellow,int 文本标签字体大小=10,double 文本标签角度=0,ENUM_ANCHOR_POINT 文本标签锚点=ANCHOR_LEFT_UPPER,ENUM_BASE_CORNER  文本标签角落=CORNER_LEFT_UPPER,string 文本标签字体="楷体",bool 文本标签背景=false,bool 文本标签可选=false);
   void              批量画按钮(string &value[],int 按钮X轴,int 按钮Y轴,int 按钮宽度,int 按钮高度,color 按钮颜色=clrGreen,int 字体大小=10,color 字体颜色=clrBlack,color 边框颜色=clrBlack,string 按钮字体="楷体",ENUM_BASE_CORNER  按钮角落=CORNER_LEFT_UPPER,bool 按钮背景=false,bool 按钮可选=false,bool 按钮状态=false);
   void              批量画按钮2(string &value[],int 按钮X轴,int 按钮Y轴,int 按钮宽度,int 按钮高度,color 按钮颜色=clrGreen,int 字体大小=10,color 字体颜色=clrBlack,color 边框颜色=clrBlack,string 按钮字体="楷体",ENUM_BASE_CORNER  按钮角落=CORNER_LEFT_UPPER,bool 按钮背景=false,bool 按钮可选=false,bool 按钮状态=false);
   void              批量画按钮3(string &value[],int 按钮X轴,int 按钮Y轴,int 按钮宽度,int 按钮高度,color 按钮颜色=clrGreen,int 字体大小=10,color 字体颜色=clrBlack,color 边框颜色=clrBlack,string 按钮字体="楷体",ENUM_BASE_CORNER  按钮角落=CORNER_LEFT_UPPER,bool 按钮背景=false,bool 按钮可选=false,bool 按钮状态=false);
   //+------------------------------------------------------------------+
   template<typename x>
   double            数组最近值(x &arr[],double price);
   template<typename x>
   double            数组最远值(x &arr[],double price);
    void             关闭next图表(string 币种="");
private:
   datetime          重置EA到期时间;
   double            重置时间,账号,止损,止盈;
   string            延时密码,授权密码,一级密码,二级密码;
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
交易类::交易类()
  {
// 图表设置();
   类成员变量初始化();
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
交易类::~交易类()
  {
// 图表设置还原();
   删除左上角信息();
   删除物件(0,"开多","开空","平多","平空","平指定盈利","水平参考","盈利带亏损");
   删除物件(0,"运行1","运行2","平单","手数","清仓","角度斜率","删除挂单");
   删除物件(0,"BUY","SELL","平空进多","平多进空","手数","平多","平空","一键全平","响应栏");
   for(int i=0; i<20; i++)
     {
      ObjectDelete(0,"文本"+(string)i);
      ObjectDelete(0,"文本2"+(string)i);
      ObjectDelete(0,"文本3"+(string)i);
      ObjectDelete(0,"按钮"+(string)i);
      ObjectDelete(0,"按钮2"+(string)i);
      ObjectDelete(0,"按钮3"+(string)i);
     }
   ObjectDelete(0,"水平"+Symbol()+TimeToString(iTime(Symbol(),PERIOD_D1,0)));
   ObjectDelete(0,"垂直"+Symbol()+TimeToString(iTime(Symbol(),PERIOD_D1,0)));
  }
//+------------------------------------------------------------------+
void 交易类::类成员变量初始化()
  {
   Π大吉大利今晚吃鸡="=== Π.EA VX：My05613828 ===";
   一级密码="=== Π.EA 0206 ===";
   二级密码="=== Π.EA 0622 ===";
   授权密码="请输入授权密码...";
   延时密码="请输入延时密码...";
   重置EA到期时间=D'2999.12.31 23:59:59';
   重置时间=0;
   前缀="Π.EA ";
   账号=0;
   止损=0;
   止盈=0;
   滑点=20;
   倒数=1;
   币种X=Symbol();
   初时初始化();
   累计初始化();
  }
//+------------------------------------------------------------------+
void  交易类::初时初始化()
  {
   初1=0;
   时1=0;
   初2=0;
   时2=0;
   初3=0;
   时3=0;
   初4=0;
   时4=0;
   初5=0;
   时5=0;
//---
   初6=0;
   时6=0;
   初7=0;
   时7=0;
   初8=0;
   时8=0;
   初9=0;
   时9=0;
  }
//+------------------------------------------------------------------+
void  交易类::累计初始化()
  {
   累计=1;
   累计1=1;
   累计2=1;
   累计3=1;
   累计4=1;
   累计5=1;
   累计6=1;
   累计7=1;
   累计8=1;
   累计9=1;
   加=1;
   加1=1;
   加2=1;
   加3=1;
   加4=1;
   加5=1;
   加6=1;
   加7=1;
   加8=1;
   加9=1;
   计=1;
   计1=1;
   计2=1;
   计3=1;
   计4=1;
   计5=1;
   计6=1;
   计7=1;
   计8=1;
   计9=1;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::持仓类型()
  {
   bool 检测=OrderType()==OP_BUY||OrderType()==OP_SELL;
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::挂单类型()
  {
   bool 检测=OrderType()==OP_BUYLIMIT||OrderType()==OP_SELLLIMIT||OrderType()==OP_BUYSTOP||OrderType()==OP_SELLSTOP;
   return 检测;
  }
//+------------------------------------------------------------------+
void          交易类::授权(datetime EA到期时间,long &账号授权数组[],string 程序名称="冻龄男孩",bool 弹窗提醒=true,bool 移除EA=true,bool 删主窗口=false,bool 删子窗口=false,bool 程序名可改=true,bool 授权模拟=true,string 授权账号密码="Π大吉大利今晚吃鸡",string 重置时间密码="Π大吉大利今晚吃鸡")
  {
   long 授权账号=0;
   if(账号检测(账号授权数组)==true)
      授权账号=AccountInfoInteger(ACCOUNT_LOGIN);
   if(返回账户类型()!="模拟")
     {
      密码设置(授权账号密码,重置时间密码);
      if(延时密码=="=== Π.EA 0622 ===")
        {
         重置时间=(double)重置EA到期时间;
         GlobalVariableDel("重置时间");
         GlobalVariableSet("重置时间",重置时间);
        }
      if(GlobalVariableCheck("重置时间")==true)
         EA到期时间=(datetime)GlobalVariableGet("重置时间");
      //----重置客户端账号
      if(授权密码=="=== Π.EA 0206 ===")
        {
         账号=(double)AccountInfoInteger(ACCOUNT_LOGIN);
         GlobalVariableDel("账号");
         GlobalVariableSet("账号", 账号);
        }
      if(GlobalVariableCheck("账号")==true)
         授权账号=(long)GlobalVariableGet("账号");
      //-----
      if(AccountInfoInteger(ACCOUNT_LOGIN)!=授权账号)
        {
         Alert("Π.EA 此账号未授权\n请检查授权密码是否输入错误");
         if(移除EA)
           {
            Sleep(1000);
            ExpertRemove();
           }
         Sleep(1000);
         删除指标(删主窗口,删子窗口);
        }
      if(TimeCurrent()<=EA到期时间&&AccountInfoInteger(ACCOUNT_LOGIN)==授权账号)
        {
         if(MQLInfoString(MQL_PROGRAM_NAME)==程序名称||程序名可改==true)
           {
            if(弹窗提醒)
               Alert("Π.EA 加载成功"+"\n一鼠标点开旧世界;"+"\n俩键盘敲出新乾坤;"+"\nΠ.EA 到期日："+TimeToString(EA到期时间,TIME_DATE|TIME_MINUTES|TIME_SECONDS)+"\n当前服务器时间为："+TimeToString(TimeCurrent())+"\n程序最终编译时间为 "+TimeToString(__DATETIME__));
            Print("Π.EA 加载成功"+"\n一鼠标点开旧世界;"+"\n俩键盘敲出新乾坤;"+"\nΠ.EA 到期日："+TimeToString(EA到期时间,TIME_DATE|TIME_MINUTES|TIME_SECONDS)+"\n当前服务器时间为："+TimeToString(TimeCurrent())+"\n程序最终编译时间为 "+TimeToString(__DATETIME__));
            Sleep(50);
           }
         else
           {
            Alert("Π.EA 请检查程序名称是否修改\n原程序名为:"+程序名称);
            if(移除EA)
              {
               Sleep(1000);
               ExpertRemove();
              }
            Sleep(1000);
            删除指标(删主窗口, 删子窗口);
           }
        }
      //+--------
      if(TimeCurrent()>EA到期时间)
        {
         Alert("EA授权时间到期\n@老顽童 VX：My05613828");
         if(移除EA)
           {
            Sleep(1000);
            ExpertRemove();
           }
         Sleep(1000);
         删除指标(删主窗口, 删子窗口);
        }
     }
//---
   if(授权模拟==true&&返回账户类型()=="模拟")
     {
      if(TimeCurrent()<EA到期时间||Π大吉大利今晚吃鸡=="模拟测试")
         Print("模拟账户 "+(string)AccountInfoInteger(ACCOUNT_LOGIN)+" 授权成功！"+"\n程序最终编译时间为 "+TimeToString(__DATETIME__));
      else
        {
         Alert("EA授权时间到期\n@老顽童 VX：My05613828");
         if(移除EA)
           {
            Sleep(1000);
            ExpertRemove();
           }
         Sleep(1000);
         删除指标(删主窗口, 删子窗口);
        }
     }
  }
//+------------------------------------------------------------------+
void  交易类::授权时间(datetime 有效时间,long &账号授权数组[],bool 加载成功提醒=true,bool 移除EA=true,bool 删除主窗口=false,bool 删除子窗口=false)
  {
   long 授权账号=0;
   if(账号检测(账号授权数组)==true)
      授权账号=AccountInfoInteger(ACCOUNT_LOGIN);
   if(AccountInfoInteger(ACCOUNT_LOGIN)!=授权账号)
     {
      Alert("Π.EA 此账号未授权");
      if(移除EA)
        {
         Sleep(1000);
         ExpertRemove();
        }
      删除指标(删除主窗口,删除子窗口);
     }
   if(TimeCurrent()>有效时间)
     {
      Alert("Π.EA到期，请联系Π.EA VX：My05613828");
      if(移除EA)
         ExpertRemove();
      删除指标(删除主窗口,删除子窗口);
     }
   if(加载成功提醒==true&&TimeCurrent()<有效时间&&AccountInfoInteger(ACCOUNT_LOGIN)==授权账号)
      Alert("Π.EA加载成功！Π.EA VX：My05613828"+"\nΠ.EA 到期时间为 "+TimeToString(有效时间)+"\n当前时间服务器时间为 "+TimeToString(TimeCurrent())+"\n程序最终编译时间为 "+TimeToString(__DATETIME__));
  }
//+------------------------------------------------------------------+
void 交易类::密码设置(string 账号授权密码,string 时间重置密码)
  {
   if(Π大吉大利今晚吃鸡=="大吉大利")
      账号授权密码=一级密码;
   if(Π大吉大利今晚吃鸡=="wamy")
      时间重置密码=二级密码;
   if(Π大吉大利今晚吃鸡=="我爱程雅")
     {
      账号授权密码=一级密码;
      时间重置密码=二级密码;
     }
   授权密码=账号授权密码;
   延时密码=时间重置密码;
  }
//+------------------------------------------------------------------+
int  交易类::K线信息(string 币种,ENUM_TIMEFRAMES  图表周期,int 起始,int 计算数量,MqlRates &K线值信息[])
  {
   int X=CopyRates(币种,图表周期,起始,计算数量,K线值信息);
   return (X);
  };
//+------------------------------------------------------------------+
int 交易类::持仓单数统计(int magic,int 方向)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderType()==方向&&OrderMagicNumber()==magic)
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 交易类::持仓单数统计(string 币种,int magic,int 方向)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic)
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 交易类::持仓单数统计(int magic)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 交易类::持仓单数统计(string 币种,int magic)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 交易类::持仓单数统计(int magic,string 注释,int 方向)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderType()==方向&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 交易类::持仓单数统计(string 币种,int magic,string 注释,int 方向)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 交易类::持仓单数统计(int magic,string 注释)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 交易类::持仓单数统计(string 币种,int magic,string 注释)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
double 交易类::尾单开盘价(string 币种,int magic,string 注释,int 方向)
  {
   int 尾单号=0;
   double  开盘价=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()==尾单号)
                  开盘价=OrderOpenPrice();
              }
           }
        }
     }
   return(开盘价);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::尾单开盘价(string 币种,int magic,int 方向)
  {
   int 尾单号=0;
   double  开盘价=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                  开盘价=OrderOpenPrice();
              }
           }
        }
     }
   return(开盘价);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::尾单开盘价(int magic,int 方向)
  {
   int 尾单号=0;
   double  开盘价=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(OrderTicket()==尾单号)
                  开盘价=OrderOpenPrice();
              }
           }
        }
     }
   return(开盘价);
  }
//+------------------------------------------------------------------+
double 交易类::尾单开盘价(string 币种,int magic,string 注释)
  {
   int 尾单号=0;
   double  开盘价=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()==尾单号)
                  开盘价=OrderOpenPrice();
              }
           }
        }
     }
   return(开盘价);
  }
//+------------------------------------------------------------------+
double 交易类::尾单开盘价(string 币种,int magic)
  {
   int 尾单号=0;
   double  开盘价=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                  开盘价=OrderOpenPrice();
              }
           }
        }
     }
   return(开盘价);
  }
//+------------------------------------------------------------------+
double 交易类::尾单开盘价(int magic)
  {
   int 尾单号=0;
   double  开盘价=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                  开盘价=OrderOpenPrice();
              }
           }
        }
     }
   return(开盘价);
  }
//+------------------------------------------------------------------+
double 交易类::首单开盘价(string 币种,int magic,string 注释,int 方向)
  {
   int 首单号=0;
   double  开盘价=0;
   int 计数=0;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               首单号=OrderTicket();
               计数++;
               if(计数==1)
                  break;
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()==首单号)
                  开盘价=OrderOpenPrice();
              }
           }
        }
     }
   return(开盘价);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::首单开盘价(string 币种,int magic,int 方向)
  {
   int 首单号=0;
   double  开盘价=0;
   int 计数=0;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic)
              {
               首单号=OrderTicket();
               计数++;
               if(计数==1)
                  break;
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic)
              {
               if(OrderTicket()==首单号)
                  开盘价=OrderOpenPrice();
              }
           }
        }
     }
   return(开盘价);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::首单开盘价(int magic,int 方向)
  {
   int 首单号=0;
   double  开盘价=0;
   int 计数=0;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderType()==方向)
              {
               首单号=OrderTicket();
               计数++;
               if(计数==1)
                  break;
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(OrderTicket()==首单号)
                  开盘价=OrderOpenPrice();
              }
           }
        }
     }
   return(开盘价);
  }
//+------------------------------------------------------------------+
double 交易类::首单开盘价(string 币种,int magic,string 注释)
  {
   int 首单号=0;
   double  开盘价=0;
   int 计数=0;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               首单号=OrderTicket();
               计数++;
               if(计数==1)
                  break;
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()==首单号)
                  开盘价=OrderOpenPrice();
              }
           }
        }
     }
   return(开盘价);
  }
//+------------------------------------------------------------------+
double 交易类::首单开盘价(string 币种,int magic)
  {
   int 首单号=0;
   double  开盘价=0;
   int 计数=0;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
              {
               首单号=OrderTicket();
               计数++;
               if(计数==1)
                  break;
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
              {
               if(OrderTicket()==首单号)
                  开盘价=OrderOpenPrice();
              }
           }
        }
     }
   return(开盘价);
  }
//+------------------------------------------------------------------+
double 交易类::首单开盘价(int magic)
  {
   int 首单号=0;
   double  开盘价=0;
   int 计数=0;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               首单号=OrderTicket();
               计数++;
               if(计数==1)
                  break;
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               if(OrderTicket()==首单号)
                  开盘价=OrderOpenPrice();
              }
           }
        }
     }
   return(开盘价);
  }
//+------------------------------------------------------------------+
double 交易类::尾单交易量(string 币种,int magic,string 注释,int 方向)
  {
   int 尾单号=0;
   double  交易量=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()==尾单号)
                  交易量=OrderLots();
              }
           }
        }
     }
   return(交易量);
  }
//--------------------------------------------------
double 交易类::尾单交易量(string 币种,int magic,int 方向)
  {
   int 尾单号=0;
   double  交易量=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                  交易量=OrderLots();
              }
           }
        }
     }
   return(交易量);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::尾单交易量(int magic,int 方向)
  {
   int 尾单号=0;
   double  交易量=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderType()==方向&&OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderType()==方向&&OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                  交易量=OrderLots();
              }
           }
        }
     }
   return(交易量);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::尾单交易量(string 币种,int magic,string 注释)
  {
   int 尾单号=0;
   double  交易量=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()==尾单号)
                  交易量=OrderLots();
              }
           }
        }
     }
   return(交易量);
  }

//+------------------------------------------------------------------+
double 交易类::尾单交易量(string 币种,int magic)
  {
   int 尾单号=0;
   double  交易量=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                  交易量=OrderLots();
              }
           }
        }
     }
   return(交易量);
  }
//------------------------------------------------------
double 交易类::尾单交易量(int magic)
  {
   int 尾单号=0;
   double  交易量=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                  交易量=OrderLots();
              }
           }
        }
     }
   return(交易量);
  }
//------------------------------------------------------
//+------------------------------------------------------------------+
double 交易类::首单交易量(string 币种,int magic,string 注释,int 方向)
  {
   int 首单号=0;
   double  交易量=0;
   int 计数=0;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               首单号=OrderTicket();
               计数++;
               if(计数==1)
                  break;
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()==首单号)
                  交易量=OrderLots();
              }
           }
        }
     }
   return(交易量);
  }
//--------------------------------------------------
double 交易类::首单交易量(string 币种,int magic,int 方向)
  {
   int 首单号=0;
   double  交易量=0;
   int 计数=0;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic)
              {
               首单号=OrderTicket();
               计数++;
               if(计数==1)
                  break;
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic)
              {
               if(OrderTicket()==首单号)
                  交易量=OrderLots();
              }
           }
        }
     }
   return(交易量);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::首单交易量(int magic,int 方向)
  {
   int 首单号=0;
   double  交易量=0;
   int 计数=0;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderType()==方向&&OrderMagicNumber()==magic)
              {
               首单号=OrderTicket();
               计数++;
               if(计数==1)
                  break;
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderType()==方向&&OrderMagicNumber()==magic)
              {
               if(OrderTicket()==首单号)
                  交易量=OrderLots();
              }
           }
        }
     }
   return(交易量);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::首单交易量(string 币种,int magic,string 注释)
  {
   int 首单号=0;
   double  交易量=0;
   int 计数=0;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               首单号=OrderTicket();
               计数++;
               if(计数==1)
                  break;
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()==首单号)
                  交易量=OrderLots();
              }
           }
        }
     }
   return(交易量);
  }

//+------------------------------------------------------------------+
double 交易类::首单交易量(string 币种,int magic)
  {
   int 首单号=0;
   double  交易量=0;
   int 计数=0;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
              {
               首单号=OrderTicket();
               计数++;
               if(计数==1)
                  break;
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
              {
               if(OrderTicket()==首单号)
                  交易量=OrderLots();
              }
           }
        }
     }
   return(交易量);
  }
//------------------------------------------------------
double 交易类::首单交易量(int magic)
  {
   int 首单号=0;
   double  交易量=0;
   int 计数=0;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               首单号=OrderTicket();
               计数++;
               if(计数==1)
                  break;
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               if(OrderTicket()==首单号)
                  交易量=OrderLots();
              }
           }
        }
     }
   return(交易量);
  }
//------------------------------------------------------
double 交易类::尾单盈亏金额(string 币种,int magic,string 注释,int 方向)
  {
   int 尾单号=0;
   double  尾单盈亏金额=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()==尾单号)
                  尾单盈亏金额=OrderProfit()+OrderSwap()+OrderCommission();
              }
           }
        }
     }
   return(尾单盈亏金额);
  }

//+------------------------------------------------------------------+
double 交易类::尾单盈亏金额(string 币种,int magic,int 方向)
  {
   int 尾单号=0;
   double  尾单盈亏金额=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                  尾单盈亏金额=OrderProfit()+OrderSwap()+OrderCommission();
              }
           }
        }
     }
   return(尾单盈亏金额);
  }

//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类::做多(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   magic=魔术幻数(magic);
   if(止损点数>2)
      止损点数=停损(币种,止损点数);
   if(止盈点数>2)
      止盈点数=停损(币种,止盈点数);
   double 止损价格=买价(币种)-止损点数*点值(币种);
   double 止盈价格=买价(币种)+止盈点数*点值(币种);
   if(止损点数==0||止损点数==1||止损点数==2)
      止损价格=0;
   if(止盈点数==0||止盈点数==1||止盈点数==2)
      止盈价格=0;
   int 多=OrderSend(币种,0,手数,买价(币种),滑点,止损价格,止盈价格,前缀+注释,magic,0,Violet);
   if(多<0)
     {
      Print("OrderSend 做多 with error #",GetLastError());
      return 多;
     }
   return 多;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类::做空(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   magic=魔术幻数(magic);
   if(止损点数>2)
      止损点数=停损(币种,止损点数);
   if(止盈点数>2)
      止盈点数=停损(币种,止盈点数);
   double 止损价格=卖价(币种)+止损点数*点值(币种);
   double 止盈价格=卖价(币种)-止盈点数*点值(币种);
   if(止损点数==0||止损点数==1||止损点数==2)
      止损价格=0;
   if(止盈点数==0||止盈点数==1||止盈点数==2)
      止盈价格=0;
   int 空=OrderSend(币种,1,手数,卖价(币种),滑点,止损价格,止盈价格,前缀+注释,magic,0,Violet);
   if(空<0)
     {
      Print("OrderSend 做空 with error #",GetLastError());
      return 空;
     }
   return 空;
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
int 交易类::价格做多(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释)
  {
   magic=魔术幻数(magic);
   止损价格=多最小止损价格(币种,止损价格);
   止盈价格=多最小止盈价格(币种,止盈价格);
   if(止损价格==0)
      止损价格=0;
   if(止盈价格==0)
      止盈价格=0;
   int 多=OrderSend(币种,OP_BUY,手数,买价(币种),滑点,止损价格,止盈价格,前缀+注释,magic,0,Violet);
   if(多<0)
     {
      Print("OrderSend 价格做多 with error #",GetLastError());
      return 多;
     }
   return 多;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类::价格做空(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释)
  {
   magic=魔术幻数(magic);
   止损价格=空最小止损价格(币种,止损价格);
   止盈价格=空最小止盈价格(币种,止盈价格);
   if(止损价格==0)
      止损价格=0;
   if(止盈价格==0)
      止盈价格=0;
   int 空=OrderSend(币种,OP_SELL,手数,卖价(币种),滑点,止损价格,止盈价格,前缀+注释,magic,0,Violet);
   if(空<0)
     {
      Print("OrderSend 价格做空 with error #",GetLastError());
      return 空;
     }
   return 空;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::做多不重复(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   int 多单数=持仓单数统计(币种,magic,OP_BUY);
//---
   if(多单数<1)
      做多(币种,手数,止损点数,止盈点数,magic,注释);
  }
//+------------------------------------------------------------------+
void 交易类::做多不重复带注释(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   int 多单数=持仓单数统计(币种,magic,注释,OP_BUY);
//---
   if(多单数<1)
      做多(币种,手数,止损点数,止盈点数,magic,注释);
  }
//+------------------------------------------------------------------+
void 交易类::做空不重复(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   int 空单数=持仓单数统计(币种,magic,OP_SELL);
//---
   if(空单数<1)
      做空(币种,手数,止损点数,止盈点数,magic,注释);
  }
//+------------------------------------------------------------------+
void 交易类::做空不重复带注释(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   int 空单数=持仓单数统计(币种,magic,注释,OP_SELL);
//---
   if(空单数<1)
      做空(币种,手数,止损点数,止盈点数,magic,注释);
  }
//+------------------------------------------------------------------+
void   交易类:: 一K一单做多(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时1=iTime(币种,图表周期,序号);
   if(初1!=时1)
     {
      做多(币种,手数,止损点数,止盈点数,magic,注释);
      初1=时1;
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::一K一单做空(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时2=iTime(币种,图表周期,序号);
   if(初2!=时2)
     {
      做空(币种,手数,止损点数,止盈点数,magic,注释);
      初2=时2;
     }
  };
//+------------------------------------------------------------------+
void   交易类:: 一K一单做多2(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时3=iTime(币种,图表周期,序号);
   if(初3!=时3)
     {
      做多(币种,手数,止损点数,止盈点数,magic,注释);
      初3=时3;
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::一K一单做空2(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时4=iTime(币种,图表周期,序号);
   if(初4!=时4)
     {
      做空(币种,手数,止损点数,止盈点数,magic,注释);
      初4=时4;
     }
  };
//+------------------------------------------------------------------+
void   交易类:: 一K一单做多3(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时5=iTime(币种,图表周期,序号);
   if(初5!=时5)
     {
      做多(币种,手数,止损点数,止盈点数,magic,注释);
      初5=时5;
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::一K一单做空3(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时6=iTime(币种,图表周期,序号);
   if(初6!=时6)
     {
      做空(币种,手数,止损点数,止盈点数,magic,注释);
      初6=时6;
     }
  };
//+------------------------------------------------------------------+
void   交易类:: 一K一单做多4(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时7=iTime(币种,图表周期,序号);
   if(初7!=时7)
     {
      做多(币种,手数,止损点数,止盈点数,magic,注释);
      初7=时7;
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::一K一单做空4(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时8=iTime(币种,图表周期,序号);
   if(初8!=时8)
     {
      做空(币种,手数,止损点数,止盈点数,magic,注释);
      初8=时8;
     }
  };
//+------------------------------------------------------------------+
void 交易类::一K一单做多不重复带注释(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时7=iTime(币种,图表周期,序号);
   if(初7!=时7)
     {
      做多不重复带注释(币种,手数,止损点数,止盈点数,magic,注释);
      初7=时7;
     }
  }
//+------------------------------------------------------------------+
void 交易类::一K一单做空不重复带注释(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时8=iTime(币种,图表周期,序号);
   if(初8!=时8)
     {
      做空不重复带注释(币种,手数,止损点数,止盈点数,magic,注释);
      初8=时8;
     }
  }
//+------------------------------------------------------------------+
void 交易类::一K一单做多不重复(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时7=iTime(币种,图表周期,序号);
   if(初7!=时7)
     {
      做多不重复(币种,手数,止损点数,止盈点数,magic,注释);
      初7=时7;
     }
  }
//+------------------------------------------------------------------+
void 交易类::一K一单做空不重复(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时8=iTime(币种,图表周期,序号);
   if(初8!=时8)
     {
      做空不重复(币种,手数,止损点数,止盈点数,magic,注释);
      初8=时8;
     }
  }
//+------------------------------------------------------------------+
void   交易类:: 几K一单做多(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时1)
     {
      做多(币种,手数,止损点数,止盈点数,magic,注释);
      时1=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::几K一单做空(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时2)
     {
      做空(币种,手数,止损点数,止盈点数,magic,注释);
      时2=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  };
//+------------------------------------------------------------------+
void   交易类:: 几K一单做多2(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时3)
     {
      做多(币种,手数,止损点数,止盈点数,magic,注释);
      时3=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::几K一单做空2(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时4)
     {
      做空(币种,手数,止损点数,止盈点数,magic,注释);
      时4=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  };
//+------------------------------------------------------------------+
void   交易类:: 几K一单做多3(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时5)
     {
      做多(币种,手数,止损点数,止盈点数,magic,注释);
      时5=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::几K一单做空3(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时6)
     {
      做空(币种,手数,止损点数,止盈点数,magic,注释);
      时6=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  };
//+------------------------------------------------------------------+
void   交易类:: 几K一单做多4(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时7)
     {
      做多(币种,手数,止损点数,止盈点数,magic,注释);
      时7=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::几K一单做空4(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时8)
     {
      做空(币种,手数,止损点数,止盈点数,magic,注释);
      时8=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  };
//+------------------------------------------------------------------+
void 交易类::几K一单做多不重复带注释(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时7)
     {
      做多不重复带注释(币种,手数,止损点数,止盈点数,magic,注释);
      时7=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  }
//+------------------------------------------------------------------+
void 交易类::几K一单做空不重复带注释(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时8)
     {
      做空不重复带注释(币种,手数,止损点数,止盈点数,magic,注释);
      时8=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  }
//+------------------------------------------------------------------+
void 交易类::几K一单做多不重复(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时7)
     {
      做多不重复(币种,手数,止损点数,止盈点数,magic,注释);
      时7=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  }
//+------------------------------------------------------------------+
void 交易类::几K一单做空不重复(string 币种,double 手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时8)
     {
      做空不重复(币种,手数,止损点数,止盈点数,magic,注释);
      时8=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  }
//+------------------------------------------------------------------+
void  交易类:: 拆多(string 币种,double 手数,double 拆单手数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   double c=手数;
   while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&c>=拆单手数)
     {
      做多(币种,手数自适应(币种,拆单手数),止损点数,止盈点数,magic,注释);
      c=c-拆单手数;
     }
   if(c>0)
      做多(币种,手数自适应2(币种,c),止损点数,止盈点数,magic,注释);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void  交易类:: 拆空(string 币种,double 手数,double 拆单手数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   double c=手数;
   while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&c>=拆单手数)
     {
      做空(币种,手数自适应(币种,拆单手数),止损点数,止盈点数,magic,注释);
      c=c-拆单手数;
     }
   if(c>0)
      做空(币种,手数自适应2(币种,c),止损点数,止盈点数,magic,注释);
  }
//+------------------------------------------------------------------+
///------------------------------------------------------
void  交易类:: 一K一单拆多(string 币种,double 手数,double 拆单手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时7=iTime(币种,图表周期,序号);
   if(初7!=时7)
     {
      拆多(币种,手数,拆单手数,止损点数,止盈点数,magic,注释);
      初7=时7;
     }
  }
//+------------------------------------------------------------------+
void  交易类:: 一K一单拆空(string 币种,double 手数,double 拆单手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时8=iTime(币种,图表周期,序号);
   if(初8!=时8)
     {
      拆空(币种,手数,拆单手数,止损点数,止盈点数,magic,注释);
      初8=时8;
     }
  }
//+------------------------------------------------------------------+
///------------------------------------------------------
void  交易类:: 几K一单拆多(string 币种,double 手数,double 拆单手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时7)
     {
      拆多(币种,手数,拆单手数,止损点数,止盈点数,magic,注释);
      时7=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  }
//+------------------------------------------------------------------+
void  交易类:: 几K一单拆空(string 币种,double 手数,double 拆单手数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时8)
     {
      拆空(币种,手数,拆单手数,止损点数,止盈点数,magic,注释);
      时8=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  }
//+------------------------------------------------------------------+
void  交易类:: 拆多(string 币种,double 手数,int 拆单层数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   double c=手数;
   if(拆单层数>=1)
     {
      double 拆单手数=手数自适应(币种,c/拆单层数);
      int 计数=0;
      while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&计数<拆单层数)
        {
         做多(币种,手数自适应(币种,拆单手数),止损点数,止盈点数,magic,注释);
         计数++;
         c=c-拆单手数;
        }
      if(c>0)
         做多(币种,手数自适应2(币种,c),止损点数,止盈点数,magic,注释);
     }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void  交易类:: 拆空(string 币种,double 手数,int 拆单层数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   double c=手数;
   if(拆单层数>=1)
     {
      double 拆单手数=手数自适应(币种,c/拆单层数);
      int 计数=0;
      while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&计数<拆单层数)
        {
         做空(币种,手数自适应(币种,拆单手数),止损点数,止盈点数,magic,注释);
         计数++;
         c=c-拆单手数;
        }
      if(c>0)
         做空(币种,手数自适应2(币种,c),止损点数,止盈点数,magic,注释);
     }
  }
//+------------------------------------------------------------------+
///------------------------------------------------------
void  交易类:: 一K一单拆多(string 币种,double 手数,int 拆单层数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时7=iTime(币种,图表周期,序号);
   if(初7!=时7)
     {
      拆多(币种,手数,拆单层数,止损点数,止盈点数,magic,注释);
      初7=时7;
     }
  }
//+------------------------------------------------------------------+
void  交易类:: 一K一单拆空(string 币种,double 手数,int 拆单层数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时8=iTime(币种,图表周期,序号);
   if(初8!=时8)
     {
      拆空(币种,手数,拆单层数,止损点数,止盈点数,magic,注释);
      初8=时8;
     }
  }
//+------------------------------------------------------------------+
///------------------------------------------------------
void  交易类:: 几K一单拆多(string 币种,double 手数,int 拆单层数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时7)
     {
      拆多(币种,手数,拆单层数,止损点数,止盈点数,magic,注释);
      时7=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  }
//+------------------------------------------------------------------+
void  交易类:: 几K一单拆空(string 币种,double 手数,int 拆单层数,double 止损点数,double 止盈点数,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时8)
     {
      拆空(币种,手数,拆单层数,止损点数,止盈点数,magic,注释);
      时8=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  }
//+------------------------------------------------------------------+
void 交易类::价格做多不重复(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释)
  {
   int 多单数=持仓单数统计(币种,magic,OP_BUY);
//---
   if(多单数<1)
      价格做多(币种,手数,止损价格,止盈价格,magic,注释);
  }
//+------------------------------------------------------------------+
void 交易类::价格做多不重复带注释(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释)
  {
   int 多单数=持仓单数统计(币种,magic,注释,OP_BUY);
//---
   if(多单数<1)
      价格做多(币种,手数,止损价格,止盈价格,magic,注释);
  }
//+------------------------------------------------------------------+
void 交易类::价格做空不重复(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释)
  {
   int 空单数=持仓单数统计(币种,magic,OP_SELL);
//---
   if(空单数<1)
      价格做空(币种,手数,止损价格,止盈价格,magic,注释);
  }
//+------------------------------------------------------------------+
void 交易类::价格做空不重复带注释(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释)
  {
   int 空单数=持仓单数统计(币种,magic,注释,OP_SELL);
//---
   if(空单数<1)
      价格做空(币种,手数,止损价格,止盈价格,magic,注释);
  }
//+------------------------------------------------------------------+
void   交易类:: 价格一K一单做多(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时1=iTime(币种,图表周期,序号);
   if(初1!=时1)
     {
      价格做多(币种,手数,止损价格,止盈价格,magic,注释);
      初1=时1;
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::价格一K一单做空(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时2=iTime(币种,图表周期,序号);
   if(初2!=时2)
     {
      价格做空(币种,手数,止损价格,止盈价格,magic,注释);
      初2=时2;
     }
  };
//+------------------------------------------------------------------+
void   交易类:: 价格一K一单做多2(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时3=iTime(币种,图表周期,序号);
   if(初3!=时3)
     {
      价格做多(币种,手数,止损价格,止盈价格,magic,注释);
      初3=时3;
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::价格一K一单做空2(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时4=iTime(币种,图表周期,序号);
   if(初4!=时4)
     {
      价格做空(币种,手数,止损价格,止盈价格,magic,注释);
      初4=时4;
     }
  };
//+------------------------------------------------------------------+
void   交易类:: 价格一K一单做多3(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时5=iTime(币种,图表周期,序号);
   if(初5!=时5)
     {
      价格做多(币种,手数,止损价格,止盈价格,magic,注释);
      初5=时5;
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::价格一K一单做空3(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时6=iTime(币种,图表周期,序号);
   if(初6!=时6)
     {
      价格做空(币种,手数,止损价格,止盈价格,magic,注释);
      初6=时6;
     }
  };
//+------------------------------------------------------------------+
void   交易类:: 价格一K一单做多4(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时7=iTime(币种,图表周期,序号);
   if(初7!=时7)
     {
      价格做多(币种,手数,止损价格,止盈价格,magic,注释);
      初7=时7;
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::价格一K一单做空4(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时8=iTime(币种,图表周期,序号);
   if(初8!=时8)
     {
      价格做空(币种,手数,止损价格,止盈价格,magic,注释);
      初8=时8;
     }
  };
//+------------------------------------------------------------------+
void 交易类::价格一K一单做多不重复带注释(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时7=iTime(币种,图表周期,序号);
   if(初7!=时7)
     {
      做多不重复带注释(币种,手数,止损价格,止盈价格,magic,注释);
      初7=时7;
     }
  }
//+------------------------------------------------------------------+
void 交易类::价格一K一单做空不重复带注释(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时8=iTime(币种,图表周期,序号);
   if(初8!=时8)
     {
      价格做空不重复带注释(币种,手数,止损价格,止盈价格,magic,注释);
      初8=时8;
     }
  }
//+------------------------------------------------------------------+
void 交易类::价格一K一单做多不重复(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时7=iTime(币种,图表周期,序号);
   if(初7!=时7)
     {
      价格做多不重复(币种,手数,止损价格,止盈价格,magic,注释);
      初7=时7;
     }
  }
//+------------------------------------------------------------------+
void 交易类::价格一K一单做空不重复(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时8=iTime(币种,图表周期,序号);
   if(初8!=时8)
     {
      价格做空不重复(币种,手数,止损价格,止盈价格,magic,注释);
      初8=时8;
     }
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void   交易类:: 价格几K一单做多(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时1)
     {
      价格做多(币种,手数,止损价格,止盈价格,magic,注释);
      时1=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::价格几K一单做空(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时2)
     {
      价格做空(币种,手数,止损价格,止盈价格,magic,注释);
      时2=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  };
//+------------------------------------------------------------------+
void   交易类:: 价格几K一单做多2(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时3)
     {
      价格做多(币种,手数,止损价格,止盈价格,magic,注释);
      时3=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::价格几K一单做空2(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时4)
     {
      价格做空(币种,手数,止损价格,止盈价格,magic,注释);
      时4=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  };
//+------------------------------------------------------------------+
void   交易类:: 价格几K一单做多3(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时5)
     {
      价格做多(币种,手数,止损价格,止盈价格,magic,注释);
      时5=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::价格几K一单做空3(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时6)
     {
      价格做空(币种,手数,止损价格,止盈价格,magic,注释);
      时6=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  };
//+------------------------------------------------------------------+
void   交易类:: 价格几K一单做多4(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时7)
     {
      价格做多(币种,手数,止损价格,止盈价格,magic,注释);
      时7=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::价格几K一单做空4(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时8)
     {
      价格做空(币种,手数,止损价格,止盈价格,magic,注释);
      时8=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  };
//+------------------------------------------------------------------+
void 交易类::价格几K一单做多不重复带注释(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时7)
     {
      做多不重复带注释(币种,手数,止损价格,止盈价格,magic,注释);
      时7=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  }
//+------------------------------------------------------------------+
void 交易类::价格几K一单做空不重复带注释(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时8)
     {
      价格做空不重复带注释(币种,手数,止损价格,止盈价格,magic,注释);
      时8=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  }
//+------------------------------------------------------------------+
void 交易类::价格几K一单做多不重复(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时7)
     {
      价格做多不重复(币种,手数,止损价格,止盈价格,magic,注释);
      时7=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  }
//+------------------------------------------------------------------+
void 交易类::价格几K一单做空不重复(string 币种,double 手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时8)
     {
      价格做空不重复(币种,手数,止损价格,止盈价格,magic,注释);
      时8=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  }
//+------------------------------------------------------------------+
//----
void  交易类:: 价格拆多(string 币种,double 手数,double 拆单手数,double 止损价格,double 止盈价格,int magic,string 注释)
  {
   double c=手数;
   while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&c>=拆单手数)
     {
      价格做多(币种,手数自适应(币种,拆单手数),止损价格,止盈价格,magic,注释);
      c=c-拆单手数;
     }
   if(c>0)
      价格做多(币种,手数自适应2(币种,c),止损价格,止盈价格,magic,注释);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void  交易类:: 价格拆空(string 币种,double 手数,double 拆单手数,double 止损价格,double 止盈价格,int magic,string 注释)
  {
   double c=手数;
   while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&c>=拆单手数)
     {
      价格做空(币种,手数自适应(币种,拆单手数),止损价格,止盈价格,magic,注释);
      c=c-拆单手数;
     }
   if(c>0)
      价格做空(币种,手数自适应2(币种,c),止损价格,止盈价格,magic,注释);
  }
//+------------------------------------------------------------------+
///------------------------------------------------------
void  交易类:: 价格一K一单拆多(string 币种,double 手数,double 拆单手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时7=iTime(币种,图表周期,序号);
   if(初7!=时7)
     {
      double c=手数;
      while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&c>=拆单手数)
        {
         价格做多(币种,手数自适应(币种,拆单手数),止损价格,止盈价格,magic,注释);
         c=c-拆单手数;
        }
      if(c>0)
         价格做多(币种,手数自适应2(币种,c),止损价格,止盈价格,magic,注释);
      初7=时7;
     }
  }
//+------------------------------------------------------------------+
void  交易类:: 价格一K一单拆空(string 币种,double 手数,double 拆单手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时8=iTime(币种,图表周期,序号);
   if(初8!=时8)
     {
      double c=手数;
      while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&c>=拆单手数)
        {
         价格做空(币种,手数自适应(币种,拆单手数),止损价格,止盈价格,magic,注释);
         c=c-拆单手数;
        }
      if(c>0)
         价格做空(币种,手数自适应2(币种,c),止损价格,止盈价格,magic,注释);
      初8=时8;
     }
  }
//+------------------------------------------------------------------+
///------------------------------------------------------
void  交易类:: 价格几K一单拆多(string 币种,double 手数,double 拆单手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时7)
     {
      double c=手数;
      while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&c>=拆单手数)
        {
         价格做多(币种,手数自适应(币种,拆单手数),止损价格,止盈价格,magic,注释);
         c=c-拆单手数;
        }
      if(c>0)
         价格做多(币种,手数自适应2(币种,c),止损价格,止盈价格,magic,注释);
      时7=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  }
//+------------------------------------------------------------------+
void  交易类:: 价格几K一单拆空(string 币种,double 手数,double 拆单手数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时8)
     {
      double c=手数;
      while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&c>=拆单手数)
        {
         价格做空(币种,手数自适应(币种,拆单手数),止损价格,止盈价格,magic,注释);
         c=c-拆单手数;
        }
      if(c>0)
         价格做空(币种,手数自适应2(币种,c),止损价格,止盈价格,magic,注释);
      时8=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  }
//+------------------------------------------------------------------+
//----
void  交易类:: 价格拆多(string 币种,double 手数,int 拆单层数,double 止损价格,double 止盈价格,int magic,string 注释)
  {
   double c=手数;
   if(拆单层数>=1)
     {
      double 拆单手数=手数自适应(币种,c/拆单层数);
      int 计数=0;
      while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&计数<拆单层数)
        {
         价格做多(币种,手数自适应(币种,拆单手数),止损价格,止盈价格,magic,注释);
         计数++;
         c=c-拆单手数;
        }
      if(c>0)
         价格做多(币种,手数自适应2(币种,c),止损价格,止盈价格,magic,注释);
     }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void  交易类::价格拆空(string 币种,double 手数,int 拆单层数,double 止损价格,double 止盈价格,int magic,string 注释)
  {
   double c=手数;
   if(拆单层数>=1)
     {
      double 拆单手数=手数自适应(币种,c/拆单层数);
      int 计数=0;
      while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&计数<拆单层数)
        {
         价格做空(币种,手数自适应(币种,拆单手数),止损价格,止盈价格,magic,注释);
         计数++;
         c=c-拆单手数;
        }
      if(c>0)
         价格做空(币种,手数自适应2(币种,c),止损价格,止盈价格,magic,注释);
     }
  }
//+------------------------------------------------------------------+
///------------------------------------------------------
void  交易类:: 价格一K一单拆多(string 币种,double 手数,int 拆单层数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时7=iTime(币种,图表周期,序号);
   if(初7!=时7)
     {
      价格拆多(币种,手数,拆单层数,止损价格,止盈价格,magic,注释);
      初7=时7;
     }
  }
//+------------------------------------------------------------------+
void  交易类:: 价格一K一单拆空(string 币种,double 手数,int 拆单层数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 序号)
  {
   时8=iTime(币种,图表周期,序号);
   if(初8!=时8)
     {
      价格拆空(币种,手数,拆单层数,止损价格,止盈价格,magic,注释);
      初8=时8;
     }
  }
//+------------------------------------------------------------------+
///------------------------------------------------------
void  交易类:: 价格几K一单拆多(string 币种,double 手数,int 拆单层数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时7)
     {
      价格拆多(币种,手数,拆单层数,止损价格,止盈价格,magic,注释);
      时7=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  }
//+------------------------------------------------------------------+
void  交易类:: 价格几K一单拆空(string 币种,double 手数,int 拆单层数,double 止损价格,double 止盈价格,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 间隔几根=1)
  {
   ulong 实时时间=TimeCurrent();
   if(实时时间>时8)
     {
      价格拆空(币种,手数,拆单层数,止损价格,止盈价格,magic,注释);
      时8=实时时间+间隔几根*PeriodSeconds(图表周期);
     }
  }
//+------------------------------------------------------------------+
bool  交易类::时间判断(string 开始时间,string 结束时间,ulong 参考时间,int 壹服贰电=0,int GMT偏移=0)
  {
   if((开始时间=="0"&&结束时间=="0")||(开始时间==""&&结束时间==""))
      return true;
   if(壹服贰电==1)
      参考时间=TimeCurrent();
   if(壹服贰电==2)
      参考时间=TimeLocal();
   参考时间=参考时间+GMT偏移*3600;
   ulong  开始秒数=StoCL(开始时间,壹服贰电)%86400;
   ulong  结束秒数=StoCL(结束时间,壹服贰电)%86400;
   参考时间=参考时间%86400;
   if(结束秒数<开始秒数)
     {
      if(参考时间>=开始秒数 || 参考时间<结束秒数)
         return(true);
     }
   else
     {
      if(参考时间>=开始秒数 && 参考时间<结束秒数)
         return(true);
     }
   return(false);
  }
////--------------------------------------------------------------
bool  交易类::时间判断(ulong 开始时间,string 结束时间,ulong 参考时间,int 壹服贰电=0,int GMT偏移=0)
  {
   if((开始时间==0&&结束时间=="0")||((string)开始时间==""&&结束时间==""))
      return true;
   if(壹服贰电==1)
      参考时间=TimeCurrent();
   if(壹服贰电==2)
      参考时间=TimeLocal();
   参考时间=参考时间+GMT偏移*3600;
   ulong  开始秒数=开始时间%86400;
   ulong  结束秒数=StoCL(结束时间,壹服贰电)%86400;
   参考时间=参考时间%86400;
   if(结束秒数<开始秒数)
     {
      if(参考时间>=开始秒数 || 参考时间<结束秒数)
         return(true);
     }
   else
     {
      if(参考时间>=开始秒数 && 参考时间<结束秒数)
         return(true);
     }
   return(false);
  }
////--------------------------------------------------------------
bool  交易类::时间判断(string 开始时间,ulong 结束时间,ulong 参考时间,int 壹服贰电=0,int GMT偏移=0)
  {
   if((开始时间=="0"&&结束时间==0)||(开始时间==""&&(string)结束时间==""))
      return true;
   if(壹服贰电==1)
      参考时间=TimeCurrent();
   if(壹服贰电==2)
      参考时间=TimeLocal();
   参考时间=参考时间+GMT偏移*3600;
   ulong  开始秒数=StoCL(开始时间,壹服贰电)%86400;
   ulong  结束秒数=结束时间%86400;
   参考时间=参考时间%86400;
   if(结束秒数<开始秒数)
     {
      if(参考时间>=开始秒数 || 参考时间<结束秒数)
         return(true);
     }
   else
     {
      if(参考时间>=开始秒数 && 参考时间<结束秒数)
         return(true);
     }
   return(false);
  }
////--------------------------------------------------------------
bool  交易类::时间判断(ulong 开始时间,ulong 结束时间,ulong 参考时间,int 壹服贰电=0,int GMT偏移=0)
  {
   if((开始时间==0&&结束时间==0)||(开始时间==EMPTY_VALUE&&结束时间==EMPTY_VALUE))
      return true;
   if(壹服贰电==1)
      参考时间=TimeCurrent();
   if(壹服贰电==2)
      参考时间=TimeLocal();
   参考时间=参考时间+GMT偏移*3600;
   ulong  开始秒数=开始时间%86400;
   ulong  结束秒数=结束时间%86400;
   参考时间=参考时间%86400;
   if(结束秒数<开始秒数)
     {
      if(参考时间>=开始秒数 || 参考时间<结束秒数)
         return(true);
     }
   else
     {
      if(参考时间>=开始秒数 && 参考时间<结束秒数)
         return(true);
     }
   return(false);
  }
////--------------------------------------------------------------
bool 交易类::时间判断(int 开始小时,int 结束小时,ulong 参考时间,int 壹服贰电=0,int GMT偏移=0)
  {
   if((开始小时==0&&结束小时==0)||(开始小时==EMPTY_VALUE&&结束小时==EMPTY_VALUE))
      return true;
   if(壹服贰电==1)
      参考时间=TimeCurrent();
   if(壹服贰电==2)
      参考时间=TimeLocal();
   bool 时间区间=false;
   ulong 服务器时间=参考时间;
   MqlDateTime 当前小时;
   TimeToStruct(服务器时间,当前小时);
//---
   开始小时=开始小时+GMT偏移;
   结束小时=结束小时+GMT偏移;
//---
   if(开始小时>=24)
      开始小时=开始小时-24;
   if(结束小时>=24)
      结束小时=结束小时-24;
//---
   if(开始小时 < 结束小时 && (当前小时.hour<开始小时 || 当前小时.hour>=结束小时))
      时间区间 = false;
   else
      if(开始小时 > 结束小时 && 当前小时.hour<开始小时 && 当前小时.hour>= 结束小时)
         时间区间 = false;
      else
         时间区间 = true;
//---
   return(时间区间);
  }
//+------------------------------------------------------------------+
bool 交易类::时间判断(int 开始小时,int 开始分钟,int 结束小时,int 结束分钟,ulong 参考时间,int 壹服贰电=0,int GMT偏移=0)
  {
   if((开始小时==0&&结束小时==0)||(开始小时==EMPTY_VALUE&&结束小时==EMPTY_VALUE))
      return true;
   if(壹服贰电==1)
      参考时间=TimeCurrent();
   if(壹服贰电==2)
      参考时间=TimeLocal();
   参考时间=参考时间+GMT偏移*3600;
   ulong 开始秒数=3600*开始小时+60*开始分钟;
   ulong 结束秒数=3600*结束小时+60*结束分钟;
   参考时间=参考时间%86400;
   if(结束秒数<开始秒数)
     {
      if(参考时间>=开始秒数 || 参考时间<结束秒数)
         return(true);
     }
   else
     {
      if(参考时间>=开始秒数 && 参考时间<结束秒数)
         return(true);
     }
   return(false);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::买价(string 币种="")
  {
   币种=设置币种(币种);
   double 价=SymbolInfoDouble(币种,SYMBOL_ASK);
   return(价);
  }
//----------
double 交易类::卖价(string 币种="")
  {
   币种=设置币种(币种);
   double 价=SymbolInfoDouble(币种,SYMBOL_BID);
   return(价);
  }
//+------------------------------------------------------------------+
double 交易类::点值(string 币种="")
  {
   币种=设置币种(币种);
   double 点=MarketInfo(币种,MODE_POINT)*系数(币种);
   return(点);
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
double 交易类::最高价(string 币种="",ENUM_TIMEFRAMES 图表周期=PERIOD_CURRENT,int 索引=0)
  {
   币种=设置币种(币种);
   double 价=iHigh(币种,图表周期,索引);
   return(价);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double 交易类::最低价(string 币种="",ENUM_TIMEFRAMES 图表周期=PERIOD_CURRENT,int 索引=0)
  {
   币种=设置币种(币种);
   double 价=iLow(币种,图表周期,索引);
   return(价);
  }
//+------------------------------------------------------------------+
void 交易类::指定盈利平单(string 币种,int magic,string 注释,double 盈利金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(盈利金额>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderCommission()+OrderSwap()+OrderProfit()>盈利金额)
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
                  int 订单号=OrderTicket();
                  switch(OrderType())
                    {
                     case OP_BUY:
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                        if(是否立即反手)
                           做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                     case OP_SELL:
                        result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                        if(是否立即反手)
                           做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定盈利平单(string 币种,int magic,double 盈利金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(盈利金额>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderCommission()+OrderSwap()+OrderProfit()>盈利金额)
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
                  int 订单号=OrderTicket();
                  switch(OrderType())
                    {
                     case OP_BUY:
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                        if(是否立即反手)
                           做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                     case OP_SELL:
                        result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                        if(是否立即反手)
                           做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定盈利平单(int magic,double 盈利金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(盈利金额>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic&&OrderCommission()+OrderSwap()+OrderProfit()>盈利金额)
                 {
                  string 币种=OrderSymbol();
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  switch(OrderType())
                    {
                     case OP_BUY:
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                        if(是否立即反手)
                           做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                     case OP_SELL:
                        result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                        if(是否立即反手)
                           做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定盈利平多(string 币种,int magic,string 注释,double 盈利金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(盈利金额>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderCommission()+OrderSwap()+OrderProfit()>盈利金额)
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
                  int 订单号=OrderTicket();
                  switch(OrderType())
                    {
                     case OP_BUY:
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                        if(是否立即反手)
                           做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定盈利平多(string 币种,int magic,double 盈利金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(盈利金额>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderCommission()+OrderSwap()+OrderProfit()>盈利金额)
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
                  int 订单号=OrderTicket();
                  switch(OrderType())
                    {
                     case OP_BUY:
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                        if(是否立即反手)
                           做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定盈利平多(int magic,double 盈利金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(盈利金额>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic&&OrderCommission()+OrderSwap()+OrderProfit()>盈利金额)
                 {
                  string 币种=OrderSymbol();
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  switch(OrderType())
                    {
                     case OP_BUY:
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                        if(是否立即反手)
                           做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定盈利平空(string 币种,int magic,string 注释,double 盈利金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(盈利金额>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderCommission()+OrderSwap()+OrderProfit()>盈利金额)
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
                  int 订单号=OrderTicket();
                  switch(OrderType())
                    {
                     case OP_SELL:
                        result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                        if(是否立即反手)
                           做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定盈利平空(string 币种,int magic,double 盈利金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(盈利金额>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderCommission()+OrderSwap()+OrderProfit()>盈利金额)
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
                  int 订单号=OrderTicket();
                  switch(OrderType())
                    {
                     case OP_SELL:
                        result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                        if(是否立即反手)
                           做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定盈利平空(int magic,double 盈利金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(盈利金额>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic&&OrderCommission()+OrderSwap()+OrderProfit()>盈利金额)
                 {
                  string 币种=OrderSymbol();
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  switch(OrderType())
                    {
                     case OP_SELL:
                        result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                        if(是否立即反手)
                           做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定亏损平单(string 币种,int magic,string 注释,double 亏损金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(亏损金额<0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderCommission()+OrderSwap()+OrderProfit()<亏损金额)
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
                  int 订单号=OrderTicket();
                  switch(OrderType())
                    {
                     case OP_BUY:
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                        if(是否立即反手)
                           做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                     case OP_SELL:
                        result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                        if(是否立即反手)
                           做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定亏损平单(string 币种,int magic,double 亏损金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(亏损金额<0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderCommission()+OrderSwap()+OrderProfit()<亏损金额)
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
                  int 订单号=OrderTicket();
                  switch(OrderType())
                    {
                     case OP_BUY:
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                        if(是否立即反手)
                           做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                     case OP_SELL:
                        result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                        if(是否立即反手)
                           做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定亏损平单(int magic,double 亏损金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(亏损金额<0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic&&OrderCommission()+OrderSwap()+OrderProfit()<亏损金额)
                 {
                  string 币种=OrderSymbol();
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  switch(OrderType())
                    {
                     case OP_BUY:
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                        if(是否立即反手)
                           做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                     case OP_SELL:
                        result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                        if(是否立即反手)
                           做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::指定亏损平多(string 币种,int magic,string 注释,double 亏损金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(亏损金额<0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderCommission()+OrderSwap()+OrderProfit()<亏损金额)
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
                  int 订单号=OrderTicket();
                  switch(OrderType())
                    {
                     case OP_BUY:
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                        if(是否立即反手)
                           做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定亏损平多(string 币种,int magic,double 亏损金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(亏损金额<0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderCommission()+OrderSwap()+OrderProfit()<亏损金额)
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
                  int 订单号=OrderTicket();
                  switch(OrderType())
                    {
                     case OP_BUY:
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                        if(是否立即反手)
                           做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定亏损平多(int magic,double 亏损金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(亏损金额<0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic&&OrderCommission()+OrderSwap()+OrderProfit()<亏损金额)
                 {
                  string 币种=OrderSymbol();
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  switch(OrderType())
                    {
                     case OP_BUY:
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                        if(是否立即反手)
                           做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::指定亏损平空(string 币种,int magic,string 注释,double 亏损金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(亏损金额<0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderCommission()+OrderSwap()+OrderProfit()<亏损金额)
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
                  int 订单号=OrderTicket();
                  switch(OrderType())
                    {
                     case OP_SELL:
                        result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                        if(是否立即反手)
                           做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定亏损平空(string 币种,int magic,double 亏损金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(亏损金额<0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderCommission()+OrderSwap()+OrderProfit()<亏损金额)
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
                  int 订单号=OrderTicket();
                  switch(OrderType())
                    {
                     case OP_SELL:
                        result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                        if(是否立即反手)
                           做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定亏损平空(int magic,double 亏损金额,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(亏损金额<0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic&&OrderCommission()+OrderSwap()+OrderProfit()<亏损金额)
                 {
                  string 币种=OrderSymbol();
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  switch(OrderType())
                    {
                     case OP_SELL:
                        result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                        if(是否立即反手)
                           做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::启动点浮动追踪止损(string 币种,int magic,double 追踪点数,int 零壹多贰空=0)
  {
   if(追踪点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  追踪点数=停损(币种,追踪点数);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(OrderStopLoss()<卖价(币种)-追踪点数*点值(币种))
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),卖价(币种)-追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(OrderStopLoss()>买价(币种)+追踪点数*点值(币种)||OrderStopLoss()==0.0)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),买价(币种)+追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::启动点追踪止损到开盘价(string 币种,int magic,double 启动点数,double 追踪点数,int 零壹多贰空=0)
  {
   if(启动点数>0&&追踪点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  追踪点数=停损(币种,追踪点数);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(卖价(币种)-OrderOpenPrice()>启动点数*点值(币种)&&OrderStopLoss()<卖价(币种)-追踪点数*点值(币种)&&OrderStopLoss()<OrderOpenPrice())
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),卖价(币种)-追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(OrderOpenPrice()-买价(币种)>启动点数*点值(币种)&&(OrderStopLoss()>买价(币种)+追踪点数*点值(币种)||OrderStopLoss()==0.0)&&OrderStopLoss()>OrderOpenPrice())
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),买价(币种)+追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::启动点追踪止损到开盘价(string 币种,int magic,string 注释,double 启动点数,double 追踪点数,int 零壹多贰空=0)
  {
   if(启动点数>0&&追踪点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  追踪点数=停损(币种,追踪点数);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(卖价(币种)-OrderOpenPrice()>启动点数*点值(币种)&&OrderStopLoss()<卖价(币种)-追踪点数*点值(币种)&&OrderStopLoss()<OrderOpenPrice())
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),卖价(币种)-追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(OrderOpenPrice()-买价(币种)>启动点数*点值(币种)&&(OrderStopLoss()>买价(币种)+追踪点数*点值(币种)||OrderStopLoss()==0.0)&&OrderStopLoss()>OrderOpenPrice())
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),买价(币种)+追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::启动点追踪止损到开盘价(int magic,double 启动点数,double 追踪点数,int 零壹多贰空=0)
  {
   if(启动点数>0&&追踪点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            string 币种=OrderSymbol();
            追踪点数=停损(币种,追踪点数);
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(卖价(币种)-OrderOpenPrice()>启动点数*点值(币种)&&OrderStopLoss()<卖价(币种)-追踪点数*点值(币种)&&OrderStopLoss()<OrderOpenPrice())
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),卖价(币种)-追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(OrderOpenPrice()-买价(币种)>启动点数*点值(币种)&&(OrderStopLoss()>买价(币种)+追踪点数*点值(币种)||OrderStopLoss()==0.0)&&OrderStopLoss()>OrderOpenPrice())
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),买价(币种)+追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::保本(string 币种,int magic,double 保本点数,int 零壹多贰空=0)
  {
   bool 检测=false;
   if(保本点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(卖价(币种)-OrderOpenPrice()>2*保本点数*点值(币种)&&OrderStopLoss()<卖价(币种)-保本点数*点值(币种))
                       {
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),卖价(币种)-保本点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                        检测=true;
                       }
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(OrderOpenPrice()-买价(币种)>2*保本点数*点值(币种)&&(OrderStopLoss()>买价(币种)+保本点数*点值(币种)||OrderStopLoss()==0.0))
                       {
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),买价(币种)+保本点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                        检测=true;
                       }
                    }
                 }
              }
           }
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool               交易类::保本(string 币种,int magic,string 注释,double 启动点数,double 保本点数,int 零壹多贰空=0)
  {
   bool 检测=false;
   if(启动点数>0&&保本点数>0&&保本点数<启动点数)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  double 多盈利点值=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空盈利点值=(OrderOpenPrice()-买价(币种))/点值(币种);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(多盈利点值>启动点数&&OrderStopLoss()<OrderOpenPrice()+保本点数*点值(币种))
                       {
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+保本点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                        检测=true;
                       }
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(空盈利点值>启动点数&&(OrderStopLoss()>OrderOpenPrice()-保本点数*点值(币种)||OrderStopLoss()==0))
                       {
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-保本点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
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
bool              交易类::保本(string 币种,int magic,double 启动点数,double 保本点数,int 零壹多贰空=0)
  {
   bool 检测=false;
   if(启动点数>0&&保本点数>0&&保本点数<启动点数)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  double 多盈利点值=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空盈利点值=(OrderOpenPrice()-买价(币种))/点值(币种);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(多盈利点值>启动点数&&OrderStopLoss()<OrderOpenPrice()+保本点数*点值(币种))
                       {
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+保本点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                        检测=true;
                       }
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(空盈利点值>启动点数&&(OrderStopLoss()>OrderOpenPrice()-保本点数*点值(币种)||OrderStopLoss()==0))
                       {
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-保本点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
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
bool               交易类::保本(int magic,double 启动点数,double 保本点数,int 零壹多贰空=0)
  {
   bool 检测=false;
   if(启动点数>0&&保本点数>0&&保本点数<启动点数)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string 币种=OrderSymbol();
                  double 多盈利点值=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空盈利点值=(OrderOpenPrice()-买价(币种))/点值(币种);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(多盈利点值>启动点数&&OrderStopLoss()<OrderOpenPrice()+保本点数*点值(币种))
                       {
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+保本点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                        检测=true;
                       }
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(空盈利点值>启动点数&&(OrderStopLoss()>OrderOpenPrice()-保本点数*点值(币种)||OrderStopLoss()==0))
                       {
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-保本点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
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
//+------------------------------------------------------------------+
bool 交易类::保多(string 币种,int magic,double 保本点数)
  {
   bool 检测=false;
   if(保本点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  double 多盈利点值=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  if(OrderType()==OP_BUY)
                    {
                     if(多盈利点值>2*保本点数*点值(币种)&&OrderStopLoss()<卖价(币种)-保本点数*点值(币种))
                       {
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),卖价(币种)-保本点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                        检测=true;
                       }
                    }
                 }
              }
           }
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool               交易类::保多(string 币种,int magic,string 注释,double 启动点数,double 保本点数)
  {
   bool 检测=false;
   if(启动点数>0&&保本点数>0&&保本点数<启动点数)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  double 多盈利点值=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  if(OrderType()==OP_BUY)
                    {
                     if(多盈利点值>启动点数&&OrderStopLoss()<OrderOpenPrice()+保本点数*点值(币种))
                       {
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+保本点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
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
bool              交易类::保多(string 币种,int magic,double 启动点数,double 保本点数)
  {
   bool 检测=false;
   if(启动点数>0&&保本点数>0&&保本点数<启动点数)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  double 多盈利点值=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  if(OrderType()==OP_BUY)
                    {
                     if(多盈利点值>启动点数&&OrderStopLoss()<OrderOpenPrice()+保本点数*点值(币种))
                       {
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+保本点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
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
bool               交易类::保多(int magic,double 启动点数,double 保本点数)
  {
   bool 检测=false;
   if(启动点数>0&&保本点数>0&&保本点数<启动点数)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string 币种=OrderSymbol();
                  double 多盈利点值=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  if(OrderType()==OP_BUY)
                    {
                     if(多盈利点值>启动点数&&OrderStopLoss()<OrderOpenPrice()+保本点数*点值(币种))
                       {
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+保本点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
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
//+------------------------------------------------------------------+
bool 交易类::保空(string 币种,int magic,double 保本点数)
  {
   bool 检测=false;
   if(保本点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  保本点数=停损(币种,保本点数);
                  if(OrderType()==OP_SELL)
                    {
                     if(OrderOpenPrice()-买价(币种)>2*保本点数*点值(币种)&&(OrderStopLoss()>买价(币种)+保本点数*点值(币种)||OrderStopLoss()==0.0))
                       {
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),买价(币种)+保本点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                        检测=true;
                       }
                    }
                 }
              }
           }
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool               交易类::保空(string 币种,int magic,string 注释,double 启动点数,double 保本点数)
  {
   bool 检测=false;
   if(启动点数>0&&保本点数>0&&保本点数<启动点数)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  保本点数=停损(币种,保本点数);
                  double 空盈利点值=(OrderOpenPrice()-买价(币种))/点值(币种);
                  if(OrderType()==OP_SELL)
                    {
                     if(空盈利点值>启动点数&&(OrderStopLoss()>OrderOpenPrice()-保本点数*点值(币种)||OrderStopLoss()==0))
                       {
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-保本点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
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
bool              交易类::保空(string 币种,int magic,double 启动点数,double 保本点数)
  {
   bool 检测=false;
   if(启动点数>0&&保本点数>0&&保本点数<启动点数)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  保本点数=停损(币种,保本点数);
                  double 空盈利点值=(OrderOpenPrice()-买价(币种))/点值(币种);
                  if(OrderType()==OP_SELL)
                    {
                     if(空盈利点值>启动点数&&(OrderStopLoss()>OrderOpenPrice()-保本点数*点值(币种)||OrderStopLoss()==0))
                       {
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-保本点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
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
bool               交易类::保空(int magic,double 启动点数,double 保本点数)
  {
   bool 检测=false;
   if(启动点数>0&&保本点数>0&&保本点数<启动点数)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string 币种=OrderSymbol();
                  保本点数=停损(币种,保本点数);
                  double 空盈利点值=(OrderOpenPrice()-买价(币种))/点值(币种);
                  if(OrderType()==OP_SELL)
                    {
                     if(空盈利点值>启动点数&&(OrderStopLoss()>OrderOpenPrice()-保本点数*点值(币种)||OrderStopLoss()==0))
                       {
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-保本点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
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
//+------------------------------------------------------------------+
string 交易类::设置币种(string symbol="")
  {
   if(symbol==""||symbol==NULL)
      symbol=Symbol();
   if(symbol=="1")
      symbol=Symbol();
   if(symbol=="2")
      symbol=OrderSymbol();
   if(symbol=="3")
      symbol=OrderGetString(ORDER_SYMBOL);
   return symbol;
  }
//+------------------------------------------------------------------+
string 交易类::设置注释(string comment="")
  {
   if(comment=="1")
      comment=NULL;
   if(comment=="2")
      comment=OrderComment();
   if(comment=="3")
      comment=OrderGetString(ORDER_COMMENT);
   return comment;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int  交易类:: 魔术幻数(int magic)
  {
   switch(magic)
     {
      case 1:
         magic=NULL;
         break;
      case 2:
         magic=OrderMagicNumber();
         break;
      case 3:
         magic=(int)OrderGetInteger(ORDER_MAGIC);
         break;
      default:
         magic=magic;
         break;
     }
   return(magic);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   交易类::手数自适应(string 币种,double lots)
  {
   NormalizeDouble(lots,3);
   double  手数=lots;
   double  minilots=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN);
//  double  steplots=SymbolInfoDouble(币种,SYMBOL_VOLUME_STEP);
   if(手数<minilots)
      return(0);
   /* else
      {
       double a1=MathFloor(lots/minilots)*minilots;
       a2=a1+MathFloor((lots-a1)/steplots)*steplots;
      }*/
   if(手数>SymbolInfoDouble(币种,SYMBOL_VOLUME_MAX))
      手数=SymbolInfoDouble(币种,SYMBOL_VOLUME_MAX);
   手数=NormalizeDouble(手数,2);
   NormalizeVolume(币种,手数);
   return(手数);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   交易类::手数自适应2(string 币种,double lots)
  {
   NormalizeDouble(lots,3);
   double  手数=lots;
   if(手数==0)
      return(0);
   double  minilots=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN);
//  double  steplots=SymbolInfoDouble(币种,SYMBOL_VOLUME_STEP);
   if(手数<minilots)
      return(minilots);
   /* else
      {
       double a1=MathFloor(lots/minilots)*minilots;
       a2=a1+MathFloor((lots-a1)/steplots)*steplots;
      }*/
   if(手数>SymbolInfoDouble(币种,SYMBOL_VOLUME_MAX))
      手数=SymbolInfoDouble(币种,SYMBOL_VOLUME_MAX);
   手数=NormalizeDouble(手数,2);
   NormalizeVolume(币种,手数);
   return(手数);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   交易类::手数自适应3(string 币种,double lots)
  {
   NormalizeDouble(lots,3);
   double  手数=lots;
   double  minilots=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN);
   double  steplots=SymbolInfoDouble(币种,SYMBOL_VOLUME_STEP);
   if(手数<minilots)
      return(0);
   else
     {
      double a1=MathFloor(lots/minilots)*minilots;
      手数=a1+MathFloor((lots-a1)/steplots)*steplots;
     }
   if(手数>SymbolInfoDouble(币种,SYMBOL_VOLUME_MAX))
      手数=SymbolInfoDouble(币种,SYMBOL_VOLUME_MAX);
   手数=NormalizeDouble(手数,2);
   NormalizeVolume(币种,手数);
   return(手数);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   交易类::手数自适应4(string 币种,double lots)
  {
   NormalizeDouble(lots,3);
   double  手数=lots;
   if(手数==0)
      return(0);
   double  minilots=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN);
   double  steplots=SymbolInfoDouble(币种,SYMBOL_VOLUME_STEP);
   if(手数<minilots)
      return(minilots);
   else
     {
      double a1=MathFloor(lots/minilots)*minilots;
      手数=a1+MathFloor((lots-a1)/steplots)*steplots;
     }
   if(手数>SymbolInfoDouble(币种,SYMBOL_VOLUME_MAX))
      手数=SymbolInfoDouble(币种,SYMBOL_VOLUME_MAX);
   手数=NormalizeDouble(手数,2);
   NormalizeVolume(币种,手数);
   return(手数);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  交易类:: 删除指标(bool 删除主窗口,bool 删除子窗口)
  {
   if(删除主窗口)
     {
      ChartIndicatorDelete(0,0,ChartIndicatorName(0,0,3));
      ChartIndicatorDelete(0,0,ChartIndicatorName(0,0,2));
      ChartIndicatorDelete(0,0,ChartIndicatorName(0,0,1));
      ChartIndicatorDelete(0,0,ChartIndicatorName(0,0,0));
     }
   if(删除子窗口)
     {
      ChartIndicatorDelete(0,2,ChartIndicatorName(0,2,1));
      ChartIndicatorDelete(0,2,ChartIndicatorName(0,2,0));
      ChartIndicatorDelete(0,1,ChartIndicatorName(0,1,1));
      ChartIndicatorDelete(0,1,ChartIndicatorName(0,1,0));
     }
  }
//----------------------------------------------
bool 交易类::币种标识符检测(string 币种,bool 窗口选择,int 警报间隔秒数次数,bool 移除EA,bool 关闭图表)//---Oninit 使用
  {
   bool  m=false;
   for(int i=0; i<SymbolsTotal(窗口选择); i++)
     {
      if(SymbolName(i,窗口选择)==币种)
        {
         m=true;
         break;
        }
     }
   if(m==false)
     {
      int 计数=0;
      if(警报间隔秒数次数>0)
         for(int j=0; j<警报间隔秒数次数&&m==false; j++)
           {
            计数++;
            Alert(币种+"标识符市场未找到，请重新载入"+IntegerToString(计数));
            Sleep(警报间隔秒数次数*1000);
           }
      if(m==false)
        {
         Alert(币种+"标识符市场未找到，请重新载入"+IntegerToString(计数));
         if(移除EA==true)
            ExpertRemove();
         if(关闭图表)
            ChartClose(0);
        }
     }
   return m;
  }
//+------------------------------------------------------------------+
bool 交易类::允许点差检测(string 币种,double 允许点差值)
  {
   double 点差=SymbolInfoDouble(币种,SYMBOL_ASK)-SymbolInfoDouble(币种,SYMBOL_BID);
   bool 点差允许=点差<=允许点差值*点值(币种);
   return(点差允许);
  }
///----------------------------
double 交易类::持仓盈亏统计(string 币种,int  magic,string 注释,int 持仓方向)
  {
   double 总利息=0;
   double 总手续费=0;
   double 总浮亏=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderType()==持仓方向)
              {
               总利息+=OrderSwap();
               总手续费+=OrderCommission();
               总浮亏+=OrderProfit();
              }
           }
        }
     }
   double 总浮=总利息+总手续费+总浮亏;
   return(总浮);
  }
//+------------------------------------------------------------------+
double 交易类::持仓盈亏统计(string 币种,int  magic,int 持仓方向)
  {
   double 总利息=0;
   double 总手续费=0;
   double 总浮亏=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderType()==持仓方向)
              {
               总利息+=OrderSwap();
               总手续费+=OrderCommission();
               总浮亏+=OrderProfit();
              }
           }
        }
     }
   double 总浮=总利息+总手续费+总浮亏;
   return(总浮);
  }
//+------------------------------------------------------------------+
double 交易类::持仓盈亏统计(int  magic,int 持仓方向)
  {
   double 总利息=0;
   double 总手续费=0;
   double 总浮亏=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         string 币种=OrderSymbol();
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderType()==持仓方向)
              {
               总利息+=OrderSwap();
               总手续费+=OrderCommission();
               总浮亏+=OrderProfit();
              }
           }
        }
     }
   double 总浮=总利息+总手续费+总浮亏;
   return(总浮);
  }
//+------------------------------------------------------------------+
double 交易类::持仓盈亏统计(string 币种,int  magic,string 注释)
  {
   double 总利息=0;
   double 总手续费=0;
   double 总浮亏=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               总利息+=OrderSwap();
               总手续费+=OrderCommission();
               总浮亏+=OrderProfit();
              }
           }
        }
     }
   double 总浮=总利息+总手续费+总浮亏;
   return(总浮);
  }
//+------------------------------------------------------------------+
double 交易类::持仓盈亏统计(string 币种,int  magic)
  {
   double 总利息=0;
   double 总手续费=0;
   double 总浮亏=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               总利息+=OrderSwap();
               总手续费+=OrderCommission();
               总浮亏+=OrderProfit();
              }
           }
        }
     }
   double 总浮=总利息+总手续费+总浮亏;
   return(总浮);
  }
//+------------------------------------------------------------------+
double 交易类::持仓盈亏统计(string 币种)
  {
   double 总利息=0;
   double 总手续费=0;
   double 总浮亏=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderSymbol()==币种)
           {
            总利息+=OrderSwap();
            总手续费+=OrderCommission();
            总浮亏+=OrderProfit();
           }
        }
     }
   double 总浮=总利息+总手续费+总浮亏;
   return(总浮);
  }
//+------------------------------------------------------------------+
double 交易类::持仓盈亏统计()
  {
   double 总利息=0;
   double 总手续费=0;
   double 总浮亏=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         总利息+=OrderSwap();
         总手续费+=OrderCommission();
         总浮亏+=OrderProfit();
        }
     }
   double 总浮=总利息+总手续费+总浮亏;
   return(总浮);
  }
//+------------------------------------------------------------------+
double 交易类::持仓盈亏统计(int  magic)
  {
   double 总利息=0;
   double 总手续费=0;
   double 总浮亏=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         string 币种=OrderSymbol();
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               总利息+=OrderSwap();
               总手续费+=OrderCommission();
               总浮亏+=OrderProfit();
              }
           }
        }
     }
   double 总浮=总利息+总手续费+总浮亏;
   return(总浮);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::图表设置还原()
  {
   ChartSetInteger(0,CHART_COLOR_FOREGROUND,clrWhite);
   ChartSetInteger(0,CHART_SHOW_TRADE_LEVELS,true);// 是否隐藏交易水平线
   ChartSetInteger(0,CHART_DRAG_TRADE_LEVELS,true);//  禁止拖动止损止盈线
   ChartSetInteger(0,CHART_COLOR_STOP_LEVEL,clrRed);//改变止损止盈线颜色
   ChartSetInteger(0,CHART_COLOR_GRID,clrLightSlateGray);
   Comment(" ");
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::净持仓均价(string 币种,int magic,string 注释)
  {
   double 多均价=持仓均价(币种,magic,注释,OP_BUY);
   double 空均价=持仓均价(币种,magic,注释,OP_SELL);
   double 多总仓位=持仓仓位统计(币种,magic,注释,OP_BUY);
   double 空总仓位=持仓仓位统计(币种,magic,注释,OP_SELL);
   double 浮亏均价=0;
   if(多总仓位-空总仓位!=0)
      浮亏均价=(多均价*多总仓位-空均价*空总仓位)/(多总仓位-空总仓位);
   return 浮亏均价;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::净持仓均价(string 币种,int magic)
  {
   double 多均价=持仓均价(币种,magic,OP_BUY);
   double 空均价=持仓均价(币种,magic,OP_SELL);
   double 多总仓位=持仓仓位统计(币种,magic,OP_BUY);
   double 空总仓位=持仓仓位统计(币种,magic,OP_SELL);
   double 浮亏均价=0;
   if(多总仓位-空总仓位!=0)
      浮亏均价=(多均价*多总仓位-空均价*空总仓位)/(多总仓位-空总仓位);
   return 浮亏均价;
  }
//+------------------------------------------------------------------+
bool 交易类::净持仓均价平单(string 币种,int magic,string 注释,double 设置平单点数)
  {
   bool 检测=false;
   if(设置平单点数>0)
     {
      double 多均价=持仓均价(币种,magic,注释,OP_BUY);
      double 空均价=持仓均价(币种,magic,注释,OP_SELL);
      double 多总仓位=持仓仓位统计(币种,magic,注释,OP_BUY);
      double 空总仓位=持仓仓位统计(币种,magic,注释,OP_SELL);
      double 浮亏均价=0;
      if(多总仓位-空总仓位!=0)
         浮亏均价=(多均价*多总仓位-空均价*空总仓位)/(多总仓位-空总仓位);
      if(浮亏均价>0&&多总仓位>空总仓位&&卖价(币种)>浮亏均价+设置平单点数*点值(币种))
        {
         平单(币种,magic,注释);
         检测=true;
        }
      if(浮亏均价>0&&空总仓位>多总仓位&&买价(币种)<浮亏均价-设置平单点数*点值(币种))
        {
         平单(币种,magic,注释);
         检测=true;
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::净持仓均价平单(string 币种,int magic,double 设置平单点数)
  {
   bool 检测=false;
   if(设置平单点数>0)
     {
      double 多均价=持仓均价(币种,magic,OP_BUY);
      double 空均价=持仓均价(币种,magic,OP_SELL);
      double 多总仓位=持仓仓位统计(币种,magic,OP_BUY);
      double 空总仓位=持仓仓位统计(币种,magic,OP_SELL);
      double 浮亏均价=0;
      if(多总仓位-空总仓位!=0)
         浮亏均价=(多均价*多总仓位-空均价*空总仓位)/(多总仓位-空总仓位);
      if(浮亏均价>0&&多总仓位>空总仓位&&卖价(币种)>浮亏均价+设置平单点数*点值(币种))
        {
         平单(币种,magic);
         检测=true;
        }
      if(浮亏均价>0&&空总仓位>多总仓位&&买价(币种)<浮亏均价-设置平单点数*点值(币种))
        {
         平单(币种,magic);
         检测=true;
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
double 交易类::持仓均价(string 币种,int magic,int 持仓方向)
  {
   double 持仓均价=0;
   double  总手数开盘价积=0;
   double  持仓总手数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic
               &&OrderType()==持仓方向)
              {
               总手数开盘价积+=OrderOpenPrice()*OrderLots();
               持仓总手数+=OrderLots();
               if(持仓总手数>0)
                  持仓均价=总手数开盘价积/持仓总手数;
              }
           }
        }
     }
   return(持仓均价);
  }
//+------------------------------------------------------------------+
double 交易类::持仓均价(string 币种,int magic,string 注释,int 持仓方向)
  {
   double 持仓均价=0;
   double  总手数开盘价积=0;
   double  持仓总手数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释
               &&OrderType()==持仓方向)
              {
               总手数开盘价积+=OrderOpenPrice()*OrderLots();
               持仓总手数+=OrderLots();
               if(持仓总手数>0)
                  持仓均价=总手数开盘价积/持仓总手数;
              }
           }
        }
     }
   return(持仓均价);
  }
//+------------------------------------------------------------------+
bool 交易类::持仓均价平单(string 币种,int magic,string 注释,int 持仓方向,double 设置平单点数)
  {
   bool 检测=false;
   if(设置平单点数>0)
     {
      double 浮亏均价=持仓均价(币种,magic,注释,持仓方向);
      if(浮亏均价>0&&持仓方向==OP_BUY&&卖价(币种)>浮亏均价+设置平单点数*点值(币种))
        {
         平多(币种,magic,注释);
         检测=true;
        }
      if(浮亏均价>0&&持仓方向==OP_SELL&&买价(币种)<浮亏均价-设置平单点数*点值(币种))
        {
         平空(币种,magic,注释);
         检测=true;
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::持仓均价平单(string 币种,int magic,int 持仓方向,double 设置平单点数)
  {
   bool 检测=false;
   if(设置平单点数>0)
     {
      double 浮亏均价=持仓均价(币种,magic,持仓方向);
      if(浮亏均价>0&&持仓方向==OP_BUY&&卖价(币种)>浮亏均价+设置平单点数*点值(币种))
        {
         平多(币种,magic);
         检测=true;
        }
      if(浮亏均价>0&&持仓方向==OP_SELL&&买价(币种)<浮亏均价-设置平单点数*点值(币种))
        {
         平空(币种,magic);
         检测=true;
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
double 交易类::持仓仓位统计(string 币种,int magic,string 注释,int 持仓方向)
  {
   double  总仓位=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderType()==持仓方向)
               总仓位=总仓位+OrderLots();
           }
        }
     }
   return(总仓位);
  }
//+------------------------------------------------------------------+
double 交易类::持仓仓位统计(string 币种,int magic,int 持仓方向)
  {
   double  总仓位=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderType()==持仓方向)
               总仓位=总仓位+OrderLots();
           }
        }
     }
   return(总仓位);
  }
///-----
double 交易类::持仓仓位统计(int magic,int 持仓方向)
  {
   double  总仓位=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         string 币种=OrderSymbol();
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderType()==持仓方向)
               总仓位=总仓位+OrderLots();
           }
        }
     }
   return(总仓位);
  }
///-----
double 交易类::持仓仓位统计(string 币种,int magic,string 注释)
  {
   double  总仓位=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
               总仓位=总仓位+OrderLots();
           }
        }
     }
   return(总仓位);
  }
//+------------------------------------------------------------------+
double 交易类::持仓仓位统计(string 币种,int magic)
  {
   double  总仓位=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
               总仓位=总仓位+OrderLots();
           }
        }
     }
   return(总仓位);
  }
///-----
double 交易类::持仓仓位统计(int magic)
  {
   double  总仓位=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         string 币种=OrderSymbol();
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
               总仓位=总仓位+OrderLots();
           }
        }
     }
   return(总仓位);
  }
///-----
string  交易类::返回账户类型()
  {
   ENUM_ACCOUNT_TRADE_MODE tradeMode=(ENUM_ACCOUNT_TRADE_MODE)AccountInfoInteger(ACCOUNT_TRADE_MODE);
   string  账户类型="";
   switch(tradeMode)
     {
      case(ACCOUNT_TRADE_MODE_DEMO):
         账户类型="模拟";
         Print("This is a demo account");
         break;
      case(ACCOUNT_TRADE_MODE_CONTEST):
         账户类型="竞争";
         Print("This is a competition account");
         break;
      default:
         账户类型="实盘";
         Print("This is a real account!");
     }
   return 账户类型;
  }
//+------------------------------------------------------------------+
bool 交易类::允许算法检测(int 警报间隔秒数次数,bool 移除EA,bool 关闭图表)//---Oninit 使用
  {
   int 计数=0;
   if(警报间隔秒数次数>0)
      for(int j=0; j<警报间隔秒数次数&&TerminalInfoInteger(TERMINAL_TRADE_ALLOWED)==false; j++)
        {
         计数++;
         Alert("请勾选允许算法交易许可"+IntegerToString(计数));
         Sleep(警报间隔秒数次数*1000);
        }
   if(TerminalInfoInteger(TERMINAL_TRADE_ALLOWED)==false)
     {
      Alert("请勾选允许算法交易许可"+IntegerToString(计数));
      if(移除EA==true)
         ExpertRemove();
      if(关闭图表)
         ChartClose(0);
     }

   return TerminalInfoInteger(TERMINAL_TRADE_ALLOWED)==true;
  }
//+------------------------------------------------------------------+//+------------------------------------------------------------------+
void 交易类::图表设置(bool 隐藏交易水平线=true,bool 禁止拖动止损止盈线=true,color 外框颜色=clrGreen,color 止损止盈颜色=clrAliceBlue,color 网格颜色=clrBlack)
  {
   ChartSetInteger(0,CHART_SHOW_TRADE_LEVELS,隐藏交易水平线);// 是否隐藏交易水平线
   ChartSetInteger(0,CHART_DRAG_TRADE_LEVELS,禁止拖动止损止盈线);//  禁止拖动止损止盈线
   ChartSetInteger(0,CHART_COLOR_FOREGROUND,外框颜色);
   ChartSetInteger(0,CHART_COLOR_STOP_LEVEL,止损止盈颜色);//改变止损止盈线颜色
   ChartSetInteger(0,CHART_COLOR_GRID,网格颜色);
   Comment(" ");
  }
//+------------------------------------------------------------------+
void    交易类::允许账户净值(double 允许账户盈利,double 允许账户亏损,bool 警报弹窗,bool 是否移除EA)
  {
   if(AccountInfoDouble(ACCOUNT_EQUITY)!=0&&允许账户盈利>0)
     {
      if(AccountInfoDouble(ACCOUNT_EQUITY)>允许账户盈利)
        {
         平单();
         Print("账户净值达到设置金额！");
         if(警报弹窗)
            Alert("账户净值达到设置金额！");
         if(是否移除EA)
            ExpertRemove();
        }
     }
   if(AccountInfoDouble(ACCOUNT_EQUITY)!=0&&允许账户亏损!=0)
     {
      if(AccountInfoDouble(ACCOUNT_EQUITY)<允许账户亏损)
        {
         平单();
         Print("账户净值达到设置金额！");
         if(警报弹窗)
            Alert("账户净值达到设置金额！");
         if(是否移除EA)
            ExpertRemove();
        }
     }
  }
//+------------------------------------------------------------------+
void              交易类::跟单平单(int  传入订单号,string 币种,int magic,string 注释,double 传入价格,double 设置误差点值=0.0,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(传入订单号>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&(OrderMagicNumber()==magic||OrderMagicNumber()==传入订单号)&&(OrderComment()==前缀+注释||StringFind(OrderComment(),(string)传入订单号)!=-1))
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
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_BUY&&((传入价格>0&&卖价(币种)>传入价格-设置误差点值*点值(币种))||设置误差点值==0))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                  if(OrderType()==OP_SELL&&((传入价格>0&&买价(币种)<传入价格+设置误差点值*点值(币种))||设置误差点值==0))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+---------------------
void              交易类::模糊跟单平单(int  传入订单号,string 币种,int magic,string 注释,double 传入价格,double 设置误差点值=0.0,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(传入订单号>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&(OrderMagicNumber()==传入订单号||OrderComment()==前缀+注释||StringFind(OrderComment(),(string)传入订单号)!=-1))
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
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_BUY&&((传入价格>0&&卖价(币种)>传入价格-设置误差点值*点值(币种))||设置误差点值==0))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                  if(OrderType()==OP_SELL&&((传入价格>0&&买价(币种)<传入价格+设置误差点值*点值(币种))||设置误差点值==0))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+---------------------
void 交易类::平单(string 币种,int magic,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
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
               int 订单号=OrderTicket();
               switch(OrderType())
                 {
                  case OP_BUY:
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                     break;
                  case OP_SELL:
                     result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                     break;
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::平单(string 币种,int magic,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
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
               int 订单号=OrderTicket();
               switch(OrderType())
                 {
                  case OP_BUY:
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                     break;
                  case OP_SELL:
                     result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                     break;
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::平单(string 币种,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderSymbol()==币种)
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
            int 订单号=OrderTicket();
            switch(OrderType())
              {
               case OP_BUY:
                  result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                  if(是否立即反手)
                     做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                  break;
               case OP_SELL:
                  result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                  if(是否立即反手)
                     做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                  break;
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::平单(int magic,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
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
               int 订单号=OrderTicket();
               switch(OrderType())
                 {
                  case OP_BUY:
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                     break;
                  case OP_SELL:
                     result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                     break;
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::平单(bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
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
         int 订单号=OrderTicket();
         switch(OrderType())
           {
            case OP_BUY:
               result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
               if(是否立即反手)
                  做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
               break;
            case OP_SELL:
               result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
               if(是否立即反手)
                  做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
               break;
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::平多(string 币种,int magic,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
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
               int 订单号=OrderTicket();
               switch(OrderType())
                 {
                  case OP_BUY:
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                     break;
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::平多(string 币种,int magic,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
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
               int 订单号=OrderTicket();
               switch(OrderType())
                 {
                  case OP_BUY:
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                     break;
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//|                                                                  |
void 交易类::平多(string 币种,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderSymbol()==币种)
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
            int 订单号=OrderTicket();
            switch(OrderType())
              {
               case OP_BUY:
                  result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                  if(是否立即反手)
                     做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                  break;
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::平多(int magic,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
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
               int 订单号=OrderTicket();
               switch(OrderType())
                 {
                  case OP_BUY:
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                     break;
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::平多(bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
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
         int 订单号=OrderTicket();
         switch(OrderType())
           {
            case OP_BUY:
               result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
               if(是否立即反手)
                  做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
               break;
           }
        }
     }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void 交易类::平空(string 币种,int magic,string 注释,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
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
               int 订单号=OrderTicket();
               switch(OrderType())
                 {
                  case OP_SELL:
                     result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                     break;
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::平空(string 币种,int magic,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
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
               int 订单号=OrderTicket();
               switch(OrderType())
                 {
                  case OP_SELL:
                     result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                     break;
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::平空(string 币种,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderSymbol()==币种)
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
            int 订单号=OrderTicket();
            switch(OrderType())
              {
               case OP_SELL:
                  result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                  if(是否立即反手)
                     做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                  break;
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::平空(int magic,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
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
               int 订单号=OrderTicket();
               switch(OrderType())
                 {
                  case OP_SELL:
                     result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                     break;
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::平空(bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
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
         int 订单号=OrderTicket();
         switch(OrderType())
           {
            case OP_SELL:
               result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
               if(是否立即反手)
                  做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
               break;
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::订单号平单(int 订单号,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()==订单号)
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
            //int 订单号=OrderTicket();
            switch(OrderType())
              {
               case OP_BUY:
                  result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                  if(是否立即反手)
                     做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                  break;
               case OP_SELL:
                  result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                  if(是否立即反手)
                     做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                  break;
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::订单号平多(int 订单号,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()==订单号)
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
            //int 订单号=OrderTicket();
            switch(OrderType())
              {
               case OP_BUY:
                  result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                  if(是否立即反手)
                     做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                  break;
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::订单号平空(int 订单号,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()==订单号)
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
            //int 订单号=OrderTicket();
            switch(OrderType())
              {
               case OP_SELL:
                  result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                  if(是否立即反手)
                     做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                  break;
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::多价差手数不对等检测(string 币种1,string  币种2,int 币种1多magic,int 币种2空magic,double 允许手数误差最小值,bool 是否开启)
  {
   bool 检测=true;
   if(是否开启)
     {
      double  多仓位总手数1=持仓仓位统计(币种1,币种1多magic,OP_BUY);
      double  空仓位总手数1=持仓仓位统计(币种2,币种2空magic,OP_SELL);
      if(允许手数误差最小值>0&&多仓位总手数1-空仓位总手数1>允许手数误差最小值)
         检测=false;
      if(允许手数误差最小值>0&&空仓位总手数1-多仓位总手数1>允许手数误差最小值)
         检测=false;
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::空价差手数不对等检测(string 币种1,string  币种2,int 币种1空magic,int 币种2多magic,double 允许手数误差最小值,bool 是否开启)
  {
   bool 检测=true;
   if(是否开启)
     {
      double  多仓位总手数3=持仓仓位统计(币种2,币种2多magic,OP_BUY);
      double  空仓位总手数3=持仓仓位统计(币种1,币种1空magic,OP_SELL);
      if(允许手数误差最小值>0&&多仓位总手数3-空仓位总手数3>允许手数误差最小值)
         检测=false;
      if(允许手数误差最小值>0&&空仓位总手数3-多仓位总手数3>允许手数误差最小值)
         检测=false;
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::多价差补单(string 币种1,string  币种2,int 币种1多magic,int 币种2空magic,double 允许手数误差最小值,bool 是否开启,int 延迟检测微秒数)
  {
   if(是否开启)
     {
      Sleep(延迟检测微秒数);
      double 价差=0;
      double 布油买价=SymbolInfoDouble(币种1,SYMBOL_ASK);
      double 美油买价=SymbolInfoDouble(币种2,SYMBOL_ASK);
      double 价差2=0;
      double 布油卖价2=SymbolInfoDouble(币种1,SYMBOL_BID);
      double 美油卖价2=SymbolInfoDouble(币种2,SYMBOL_BID);
      价差=布油买价-美油卖价2;
      价差2=布油卖价2-美油买价;

      double  多仓位总手数1=持仓仓位统计(币种1,币种1多magic,OP_BUY);
      double  空仓位总手数1=持仓仓位统计(币种2,币种2空magic,OP_SELL);

      if(允许手数误差最小值>0&&多仓位总手数1-空仓位总手数1>允许手数误差最小值)
         做空(币种2,手数自适应(币种2,多仓位总手数1-空仓位总手数1),0,0,币种2空magic,"做多价差自检补单"+DoubleToString(价差,小数点(币种2)));
      if(允许手数误差最小值>0&&空仓位总手数1-多仓位总手数1>允许手数误差最小值)
         做多(币种1,手数自适应(币种1,空仓位总手数1-多仓位总手数1),0,0,币种1多magic,"做多价差自检补单"+DoubleToString(价差,小数点(币种1)));
     }
  }
//+------------------------------------------------------------------+
void 交易类::空价差补单(string 币种1,string  币种2,int 币种1空magic,int 币种2多magic,double 允许手数误差最小值,bool 是否开启,int 延迟检测微秒数)
  {
   if(是否开启)
     {
      Sleep(延迟检测微秒数);
      double 价差=0;
      double 布油买价=SymbolInfoDouble(币种1,SYMBOL_ASK);
      double 美油买价=SymbolInfoDouble(币种2,SYMBOL_ASK);
      double 价差2=0;
      double 布油卖价2=SymbolInfoDouble(币种1,SYMBOL_BID);
      double 美油卖价2=SymbolInfoDouble(币种2,SYMBOL_BID);
      价差=布油买价-美油卖价2;
      价差2=布油卖价2-美油买价;

      double  多仓位总手数3=持仓仓位统计(币种2,币种2多magic,OP_BUY);
      double  空仓位总手数3=持仓仓位统计(币种1,币种1空magic,OP_SELL);

      if(允许手数误差最小值>0&&多仓位总手数3-空仓位总手数3>允许手数误差最小值)
         做空(币种1,手数自适应(币种1,多仓位总手数3-空仓位总手数3),0,0,币种1空magic,"做空价差自检补单"+DoubleToString(价差2,小数点(币种1)));
      if(允许手数误差最小值>0&&空仓位总手数3-多仓位总手数3>允许手数误差最小值)
         做多(币种2,手数自适应(币种2,空仓位总手数3-多仓位总手数3),0,0,币种2多magic,"做空价差自检补单"+DoubleToString(价差2,小数点(币种2)));
     }
  }
//----

//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void   交易类:: 平多尾单(string 币种,int magic)
  {
   int 订单序列号=0;
//---
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&& OrderMagicNumber()==magic)
              {
               if(OrderType()==OP_BUY)
                 {
                  if(OrderTicket()>订单序列号)
                     订单序列号=OrderTicket();
                 }
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()==订单序列号)
           {
            if(OrderType()==OP_BUY)
               bool    result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
           }
        }
     }
  };
//+------------------------------------------------------------------+
void  交易类::平空尾单(string 币种,int magic)
  {
   int 订单序列号=0;
//---
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&& OrderMagicNumber()==magic)
              {
               if(OrderType()==OP_SELL)
                 {
                  if(OrderTicket()>订单序列号)
                     订单序列号=OrderTicket();
                 }
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()==订单序列号)
           {
            if(OrderType()==OP_SELL)
               bool     result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool  交易类::总盈利平单(string 币种1,string 币种2,int 币种1Magic,int 币种2Magic,double 盈利金额,bool 截屏吗=false)
  {
   if(盈利金额>0)
     {
      double 总利息=0;
      double 总手续费=0;
      double 总浮亏=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0&&(OrderSymbol()==币种1||OrderSymbol()==币种2))
              {
               int magic1=魔术幻数(币种1Magic);
               int magic2=魔术幻数(币种2Magic);
               if(OrderMagicNumber()==magic1||OrderMagicNumber()==magic2)
                 {
                  总利息+=OrderSwap();
                  总手续费+=OrderCommission();
                  总浮亏+=OrderProfit();
                 }
              }
           }
        }
      double 总浮=总利息+总手续费+总浮亏;
      bool result=false;
      if(总浮>盈利金额)
        {
         for(int j=OrdersTotal()-1; j>=0; j--)
           {
            if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0&&(OrderSymbol()==币种1||OrderSymbol()==币种2))
                 {
                  int magic1=魔术幻数(币种1Magic);
                  int magic2=魔术幻数(币种2Magic);
                  if(OrderMagicNumber()==magic1||OrderMagicNumber()==magic2)
                    {
                     switch(OrderType())
                       {
                        case OP_BUY:
                           平多(币种1,magic1);
                           break;
                        case OP_SELL:
                           平空(币种2,magic2);
                           break;
                       }
                    }
                 }
              }
           }
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool  交易类::总亏损平单(string 币种1,string 币种2,int 币种1Magic,int 币种2Magic,double 亏损金额,bool 截屏吗=false)
  {
   if(亏损金额<0)
     {
      double 总利息=0;
      double 总手续费=0;
      double 总浮亏=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0&&(OrderSymbol()==币种1||OrderSymbol()==币种2))
              {
               int magic1=魔术幻数(币种1Magic);
               int magic2=魔术幻数(币种2Magic);
               if(OrderMagicNumber()==magic1||OrderMagicNumber()==magic2)
                 {
                  总利息+=OrderSwap();
                  总手续费+=OrderCommission();
                  总浮亏+=OrderProfit();
                 }
              }
           }
        }
      double 总浮=总利息+总手续费+总浮亏;
      bool result=false;
      if(总浮<亏损金额)
        {
         for(int j=OrdersTotal()-1; j>=0; j--)
           {
            if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0&&(OrderSymbol()==币种1||OrderSymbol()==币种2))
                 {
                  int magic1=魔术幻数(币种1Magic);
                  int magic2=魔术幻数(币种2Magic);
                  if(OrderMagicNumber()==magic1||OrderMagicNumber()==magic2)
                    {
                     switch(OrderType())
                       {
                        case OP_BUY:
                           平多(币种1,magic1);
                           break;
                        case OP_SELL:
                           平空(币种2,magic2);
                           break;
                       }
                    }
                 }
              }
           }
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::总盈利平单(string 币种1,string 币种2,int 币种1Magic,int 币种2Magic,int 币种1Magic2,int 币种2Magic2,double 盈利金额,bool 截屏吗=false)
  {
   if(盈利金额>0)
     {
      double 总利息=0;
      double 总手续费=0;
      double 总浮亏=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0&&(OrderSymbol()==币种1||OrderSymbol()==币种2))
              {
               int magic1=魔术幻数(币种1Magic);
               int magic2=魔术幻数(币种2Magic);
               int magic3=魔术幻数(币种1Magic2);
               int magic4=魔术幻数(币种2Magic2);
               if(OrderMagicNumber()==magic1||OrderMagicNumber()==magic2||OrderMagicNumber()==magic3||OrderMagicNumber()==magic4)
                 {
                  总利息+=OrderSwap();
                  总手续费+=OrderCommission();
                  总浮亏+=OrderProfit();
                 }
              }
           }
        }
      double 总浮=总利息+总手续费+总浮亏;
      bool result=false;
      if(总浮>盈利金额)
        {
         for(int j=OrdersTotal()-1; j>=0; j--)
           {
            if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0&&(OrderSymbol()==币种1||OrderSymbol()==币种2))
                 {
                  int magic1=魔术幻数(币种1Magic);
                  int magic2=魔术幻数(币种2Magic);
                  int magic3=魔术幻数(币种1Magic2);
                  int magic4=魔术幻数(币种2Magic2);
                  if(OrderMagicNumber()==magic1||OrderMagicNumber()==magic2||OrderMagicNumber()==magic3||OrderMagicNumber()==magic4)
                    {
                     switch(OrderType())
                       {
                        case OP_BUY:
                           平多(币种1,magic1);
                           平多(币种2,magic2);
                           break;
                        case OP_SELL:
                           平空(币种1,magic3);
                           平空(币种2,magic4);
                           break;
                       }
                    }
                 }
              }
           }
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool  交易类::总亏损平单(string 币种1,string 币种2,int 币种1Magic,int 币种2Magic,int 币种1Magic2,int 币种2Magic2,double 亏损金额,bool 截屏吗=false)
  {
   if(亏损金额<0)
     {
      double 总利息=0;
      double 总手续费=0;
      double 总浮亏=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0&&(OrderSymbol()==币种1||OrderSymbol()==币种2))
              {
               int magic1=魔术幻数(币种1Magic);
               int magic2=魔术幻数(币种2Magic);
               int magic3=魔术幻数(币种1Magic2);
               int magic4=魔术幻数(币种2Magic2);
               if(OrderMagicNumber()==magic1||OrderMagicNumber()==magic2||OrderMagicNumber()==magic3||OrderMagicNumber()==magic4)
                 {
                  总利息+=OrderSwap();
                  总手续费+=OrderCommission();
                  总浮亏+=OrderProfit();
                 }
              }
           }
        }
      double 总浮=总利息+总手续费+总浮亏;
      bool result=false;
      if(总浮<亏损金额)
        {
         for(int j=OrdersTotal()-1; j>=0; j--)
           {
            if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0&&(OrderSymbol()==币种1||OrderSymbol()==币种2))
                 {
                  int magic1=魔术幻数(币种1Magic);
                  int magic2=魔术幻数(币种2Magic);
                  int magic3=魔术幻数(币种1Magic2);
                  int magic4=魔术幻数(币种2Magic2);
                  if(OrderMagicNumber()==magic1||OrderMagicNumber()==magic2||OrderMagicNumber()==magic3||OrderMagicNumber()==magic4)
                    {
                     switch(OrderType())
                       {
                        case OP_BUY:
                           平多(币种1,magic1);
                           平多(币种2,magic2);
                           break;
                        case OP_SELL:
                           平空(币种1,magic3);
                           平空(币种2,magic4);
                           break;
                       }
                    }
                 }
              }
           }
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool           交易类::总盈利平单(string 币种,int magic,string 注释,double 总盈利,bool 截屏吗=false)
  {
   if(总盈利>0)
     {
      double  总盈亏=持仓盈亏统计(币种,magic,注释);
      if(总盈亏>=总盈利)
        {
         平单(币种,magic,注释);
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool             交易类::总亏损平单(string 币种,int magic,string 注释,double 总亏损,bool 截屏吗=false)
  {
   if(总亏损<0)
     {
      double  总盈亏=持仓盈亏统计(币种,magic,注释);
      if(总盈亏<=总亏损)
        {
         平单(币种,magic,注释);
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool           交易类::总盈利平单(string 币种,int magic,double 总盈利,bool 截屏吗=false)
  {
   if(总盈利>0)
     {
      double  总盈亏=持仓盈亏统计(币种,magic);
      if(总盈亏>=总盈利)
        {
         平单(币种,magic);
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool           交易类::总亏损平单(string 币种,int magic,double 总亏损,bool 截屏吗=false)
  {
   if(总亏损<0)
     {
      double  总盈亏=持仓盈亏统计(币种,magic);
      if(总盈亏<=总亏损)
        {
         平单(币种,magic);
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool           交易类::总盈利平单(string 币种,double 总盈利,bool 截屏吗=false)
  {
   if(总盈利>0)
     {
      double  总盈亏=持仓盈亏统计(币种);
      if(总盈亏>=总盈利)
        {
         平单(币种);
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool           交易类::总亏损平单(string 币种,double 总亏损,bool 截屏吗=false)
  {
   if(总亏损<0)
     {
      double  总盈亏=持仓盈亏统计(币种);
      if(总盈亏<=总亏损)
        {
         平单(币种);
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool          交易类::总盈利平单(int magic,double 总盈利,bool 截屏吗=false)
  {
   if(总盈利>0)
     {
      double  总盈亏=持仓盈亏统计(magic);
      if(总盈亏>=总盈利)
        {
         平单(magic);
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool           交易类::总亏损平单(int magic,double 总亏损,bool 截屏吗=false)
  {
   if(总亏损<0)
     {
      double  总盈亏=持仓盈亏统计(magic);
      if(总盈亏<=总亏损)
        {
         平单(magic);
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool           交易类::总盈利平单(double 总盈利,bool 截屏吗=false)
  {
   if(总盈利>0)
     {
      double  总盈亏=持仓盈亏统计();
      if(总盈亏>=总盈利)
        {
         平单();
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool           交易类::总亏损平单(double 总亏损,bool 截屏吗=false)
  {
   if(总亏损<0)
     {
      double  总盈亏=持仓盈亏统计();
      if(总盈亏<=总亏损)
        {
         平单();
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool          交易类::总盈利平多(string 币种,int magic,string 注释,double 总盈利,bool 截屏吗=false)
  {
   if(总盈利>0)
     {
      double  总盈亏=持仓盈亏统计(币种,magic,注释,OP_BUY);
      if(总盈亏>=总盈利)
        {
         平多(币种,magic,注释);
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool          交易类::总亏损平多(string 币种,int magic,string 注释,double 总亏损,bool 截屏吗=false)
  {
   if(总亏损<0)
     {
      double  总盈亏=持仓盈亏统计(币种,magic,注释,OP_BUY);
      if(总盈亏<=总亏损)
        {
         平多(币种,magic,注释);
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool         交易类::总盈利平多(string 币种,int magic,double 总盈利,bool 截屏吗=false)
  {
   if(总盈利>0)
     {
      double  总盈亏=持仓盈亏统计(币种,magic,OP_BUY);
      if(总盈亏>=总盈利)
        {
         平多(币种,magic);
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool           交易类::总亏损平多(string 币种,int magic,double 总亏损,bool 截屏吗=false)
  {
   if(总亏损<0)
     {
      double  总盈亏=持仓盈亏统计(币种,magic,OP_BUY);
      if(总盈亏<=总亏损)
        {
         平多(币种,magic);
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool          交易类::总盈利平多(int magic,double 总盈利,bool 截屏吗=false)
  {
   if(总盈利>0)
     {
      double  总盈亏=持仓盈亏统计(magic,OP_BUY);
      if(总盈亏>=总盈利)
        {
         平多(magic);
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool            交易类::总亏损平多(int magic,double 总亏损,bool 截屏吗=false)
  {
   if(总亏损<0)
     {
      double  总盈亏=持仓盈亏统计(magic,OP_BUY);
      if(总盈亏<=总亏损)
        {
         平多(magic);
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool           交易类::总盈利平空(string 币种,int magic,string 注释,double 总盈利,bool 截屏吗=false)
  {
   if(总盈利>0)
     {
      double  总盈亏=持仓盈亏统计(币种,magic,注释,OP_SELL);
      if(总盈亏>=总盈利)
        {
         平空(币种,magic,注释);
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool            交易类::总亏损平空(string 币种,int magic,string 注释,double 总亏损,bool 截屏吗=false)
  {
   if(总亏损<0)
     {
      double  总盈亏=持仓盈亏统计(币种,magic,注释,OP_SELL);
      if(总盈亏<=总亏损)
        {
         平空(币种,magic,注释);
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool           交易类::总盈利平空(string 币种,int magic,double 总盈利,bool 截屏吗=false)
  {
   if(总盈利>0)
     {
      double  总盈亏=持仓盈亏统计(币种,magic,OP_SELL);
      if(总盈亏>=总盈利)
        {
         平空(币种,magic);
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool             交易类::总亏损平空(string 币种,int magic,double 总亏损,bool 截屏吗=false)
  {
   if(总亏损<0)
     {
      double  总盈亏=持仓盈亏统计(币种,magic,OP_SELL);
      if(总盈亏<=总亏损)
        {
         平空(币种,magic);
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool           交易类::总盈利平空(int magic,double 总盈利,bool 截屏吗=false)
  {
   if(总盈利>0)
     {
      double  总盈亏=持仓盈亏统计(magic,OP_SELL);
      if(总盈亏>=总盈利)
        {
         平空(magic);
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
bool            交易类::总亏损平空(int magic,double 总亏损,bool 截屏吗=false)
  {
   if(总亏损<0)
     {
      double  总盈亏=持仓盈亏统计(magic,OP_SELL);
      if(总盈亏<=总亏损)
        {
         平空(magic);
         if(截屏吗)
            截屏();
         return true;
        }
     }
   return false;
  };
//+------------------------------------------------------------------+
//+-----------------------------------------------------------------
void 交易类::多价差盈利金额平单(string 币种1,string  币种2,int 币种1多magic,int 币种2空magic,double 允许手数误差最小值,double 二尾单盈亏金额)
  {
   if(二尾单盈亏金额>0)
     {
      double 布多补仓尾单开盘价=尾单开盘价(币种1,币种1多magic,OP_BUY);
      double 美空补仓尾单开盘价=尾单开盘价(币种2,币种2空magic,OP_SELL);
      double 布多补仓尾单交易量=尾单交易量(币种1,币种1多magic,OP_BUY);
      double 美空补仓尾单交易量=尾单交易量(币种2,币种2空magic,OP_SELL);
      double 布多补仓尾单盈亏金额=尾单盈亏金额(币种1,币种1多magic,OP_BUY);
      double 美空补仓尾单盈亏金额=尾单盈亏金额(币种2,币种2空magic,OP_SELL);
      bool 盈利金额=布多补仓尾单盈亏金额+美空补仓尾单盈亏金额>二尾单盈亏金额*(布多补仓尾单交易量+美空补仓尾单交易量)/2;
      if(二尾单盈亏金额>0&&布多补仓尾单开盘价>0&&美空补仓尾单开盘价>0&&盈利金额)
        {
         if(布多补仓尾单交易量>0&&美空补仓尾单交易量>0&&MathAbs(布多补仓尾单交易量-美空补仓尾单交易量)>允许手数误差最小值)
           {
            Alert("做多价差模式检测到您开启了盈利平单，补仓尾单手数不对等警报！");
            Sleep(1000);
           }
         if(布多补仓尾单交易量>0&&美空补仓尾单交易量>0&&MathAbs(布多补仓尾单交易量-美空补仓尾单交易量)<允许手数误差最小值)
           {
            平多尾单(币种1,币种1多magic);
            平空尾单(币种2,币种2空magic);
            Sleep(50);
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::空价差盈利金额平单(string 币种1,string 币种2,int 币种1空magic,int 币种2多magic,double 允许手数误差最小值,double 二尾单盈亏金额)
  {
   if(二尾单盈亏金额>0)
     {
      double 布空补仓尾单开盘价=尾单开盘价(币种1,币种1空magic,OP_SELL);
      double 美多补仓尾单开盘价=尾单开盘价(币种2,币种2多magic,OP_BUY);
      double 布空补仓尾单交易量=尾单交易量(币种1,币种1空magic,OP_SELL);
      double 美多补仓尾单交易量=尾单交易量(币种2,币种2多magic,OP_BUY);
      double 布空补仓尾单盈亏金额=尾单盈亏金额(币种1,币种1空magic,OP_SELL);
      double 美多补仓尾单盈亏金额=尾单盈亏金额(币种2,币种2多magic,OP_BUY);
      bool 盈利金额=布空补仓尾单盈亏金额+美多补仓尾单盈亏金额>二尾单盈亏金额*(布空补仓尾单交易量+美多补仓尾单交易量)/2;
      if(二尾单盈亏金额>0&&布空补仓尾单开盘价>0&&美多补仓尾单开盘价>0&&盈利金额)
        {
         if(布空补仓尾单交易量>0&&美多补仓尾单交易量>0&&MathAbs(布空补仓尾单交易量-美多补仓尾单交易量)>允许手数误差最小值)
           {
            Alert("做空价差模式检测到您开启了盈利平单，补仓尾单手数不对等警报！");
            Sleep(1000);
           }
         if(布空补仓尾单交易量>0&&美多补仓尾单交易量>0&&MathAbs(布空补仓尾单交易量-美多补仓尾单交易量)<允许手数误差最小值)
           {
            平多尾单(币种2,币种2多magic);
            平空尾单(币种1,币种1空magic);
            Sleep(50);
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+-----------------------------------------------------------------
void 交易类::多价差网格平单(string 币种1,string  币种2,int 币种1多magic,int 币种2空magic,double 允许手数误差最小值,double 网格平尾单持单价差)
  {
   if(网格平尾单持单价差>0)
     {
      double 价差=0;
      double 布油买价=SymbolInfoDouble(币种1,SYMBOL_ASK);
      double 美油买价=SymbolInfoDouble(币种2,SYMBOL_ASK);
      double 价差2=0;
      double 布油卖价2=SymbolInfoDouble(币种1,SYMBOL_BID);
      double 美油卖价2=SymbolInfoDouble(币种2,SYMBOL_BID);
      价差=布油买价-美油卖价2;
      价差2=布油卖价2-美油买价;
      double 布多补仓尾单开盘价=尾单开盘价(币种1,币种1多magic,OP_BUY);
      double 美空补仓尾单开盘价=尾单开盘价(币种2,币种2空magic,OP_SELL);

      double 布多补仓尾单交易量=尾单交易量(币种1,币种1多magic,OP_BUY);
      double 美空补仓尾单交易量=尾单交易量(币种2,币种2空magic,OP_SELL);

      if(网格平尾单持单价差>0&&布多补仓尾单开盘价>0&&美空补仓尾单开盘价>0&&价差2>布多补仓尾单开盘价-美空补仓尾单开盘价+网格平尾单持单价差)
        {
         if(布多补仓尾单交易量>0&&美空补仓尾单交易量>0&&MathAbs(布多补仓尾单交易量-美空补仓尾单交易量)>允许手数误差最小值)
           {
            Alert("做多价差模式检测到您开启了网格平单，网格补仓尾单不对等警报！");
            Sleep(1000);
           }
         if(布多补仓尾单交易量>0&&美空补仓尾单交易量>0&&MathAbs(布多补仓尾单交易量-美空补仓尾单交易量)<允许手数误差最小值)
           {
            平多尾单(币种1,币种1多magic);
            平空尾单(币种2,币种2空magic);
            Sleep(50);
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::空价差网格平单(string 币种1,string 币种2,int 币种1空magic,int 币种2多magic,double 允许手数误差最小值,double 网格平尾单持单价差)
  {
   if(网格平尾单持单价差>0)
     {
      double 价差=0;
      double 布油买价=SymbolInfoDouble(币种1,SYMBOL_ASK);
      double 美油买价=SymbolInfoDouble(币种2,SYMBOL_ASK);
      double 价差2=0;
      double 布油卖价2=SymbolInfoDouble(币种1,SYMBOL_BID);
      double 美油卖价2=SymbolInfoDouble(币种2,SYMBOL_BID);
      价差=布油买价-美油卖价2;
      价差2=布油卖价2-美油买价;
      double 布空补仓尾单开盘价=尾单开盘价(币种1,币种1空magic,OP_SELL);
      double 美多补仓尾单开盘价=尾单开盘价(币种2,币种2多magic,OP_BUY);

      double 布空补仓尾单交易量=尾单交易量(币种1,币种1空magic,OP_SELL);
      double 美多补仓尾单交易量=尾单交易量(币种2,币种2多magic,OP_BUY);

      if(网格平尾单持单价差>0&&布空补仓尾单开盘价>0&&美多补仓尾单开盘价>0&&价差<布空补仓尾单开盘价-美多补仓尾单开盘价-网格平尾单持单价差)
        {
         if(布空补仓尾单交易量>0&&美多补仓尾单交易量>0&&MathAbs(布空补仓尾单交易量-美多补仓尾单交易量)>允许手数误差最小值)
           {
            Alert("做空价差模式检测到您开启了网格平单，网格补仓尾单不对等警报！");
            Sleep(1000);
           }
         if(布空补仓尾单交易量>0&&美多补仓尾单交易量>0&&MathAbs(布空补仓尾单交易量-美多补仓尾单交易量)<允许手数误差最小值)
           {
            平多尾单(币种2,币种2多magic);
            平空尾单(币种1,币种1空magic);
            Sleep(50);
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::报错组件(string a,bool 显示文字吗=true,color 文字颜色=clrGreen)
  {
   if(IsOptimization())
      return;

   int t=GetLastError();
   string 报警;
//+------------------------------------------------------------------+
   if(t!=0)
      switch(t)
        {
         //case 0:报警="错误代码:"+0+"没有错误返回";break;
         //case 1:报警="错误代码:"+1+"没有错误返回但结果不明";break;
         //case 2:报警="错误代码:"+2+"一般错误";break;
         case 3:
            报警="错误代码:3无效交易参量";
            break;
         case 4:
            报警="错误代码:4交易服务器繁忙";
            break;
         case 5:
            报警="错误代码:5客户终端旧版本";
            break;
         case 6:
            报警="错误代码:6没有连接服务器";
            break;
         case 7:
            报警="错误代码:7没有权限";
            break;
         //case 8:报警="错误代码:8请求过于频繁";break;
         case 9:
            报警="错误代码:9交易运行故障";
            break;
         case 64:
            报警="错误代码:64账户禁止";
            break;
         case 65:
            报警="错误代码:65无效账户";
            break;
         // case 128:报警="错误代码:128交易超时";break;
         case 129:
            报警="错误代码:129无效价格";
            break;
         case 130:
            报警="错误代码:130无效停止";
            break;
         case 131:
            报警="错误代码:131无效交易量";
            break;
         case 132:
            报警="错误代码:132市场关闭";
            break;
         case 133:
            报警="错误代码:133交易被禁止";
            break;
         case 134:
            报警="错误代码:134资金不足";
            break;
         case 135:
            报警="错误代码:135价格改变";
            break;
         //case 136:报警="错误代码:136开价";break;
         case 137:
            报警="错误代码:137经纪繁忙";
            break;
         //case 138:报警="错误代码:138重新开价";break;
         case 139:
            报警="错误代码:139定单被锁定";
            break;
         case 140:
            报警="错误代码:140只允许看涨仓位";
            break;
         //case 141:报警="错误代码:141过多请求";break;
         //case 145:报警="错误代码:145因为过于接近市场，修改否定";break;
         //case 146:报警="错误代码:146交易文本已满";break;
         case 147:
            报警="错误代码:147时间周期被经纪否定";
            break;
         case 148:
            报警="错误代码:148开单和挂单总数已被经纪限定";
            break;
         case 149:
            报警="错误代码:149当对冲备拒绝时,打开相对于现有的一个单置";
            break;
         case 150:
            报警="错误代码:150把为反FIFO规定的单子平掉";
            break;
         case 4000:
            报警="错误代码:4000没有错误";
            break;
         case 4001:
            报警="错误代码:4001错误函数指示";
            break;
         case 4002:
            报警="错误代码:4002数组索引超出范围";
            break;
         case 4003:
            报警="错误代码:4003对于调用堆栈储存器函数没有足够内存";
            break;
         case 4004:
            报警="错误代码:4004循环堆栈储存器溢出";
            break;
         case 4005:
            报警="错误代码:4005对于堆栈储存器参量没有内存";
            break;
         case 4006:
            报警="错误代码:4006对于字行参量没有足够内存";
            break;
         case 4007:
            报警="错误代码:4007对于字行没有足够内存";
            break;
         //case 4008:报警="错误代码:4008没有初始字行";break;
         case 4009:
            报警="错误代码:4009在数组中没有初始字串符";
            break;
         case 4010:
            报警="错误代码:4010对于数组没有内存";
            break;
         case 4011:
            报警="错误代码:4011字行过长";
            break;
         case 4012:
            报警="错误代码:4012余数划分为零";
            break;
         case 4013:
            报警="错误代码:4013零划分";
            break;
         case 4014:
            报警="错误代码:4014不明命令";
            break;
         case 4015:
            报警="错误代码:4015错误转换(没有常规错误)";
            break;
         case 4016:
            报警="错误代码:4016没有初始数组";
            break;
         case 4017:
            报警="错误代码:4017禁止调用DLL ";
            break;
         case 4018:
            报警="错误代码:4018数据库不能下载";
            break;
         case 4019:
            报警="错误代码:4019不能调用函数";
            break;
         case 4020:
            报警="错误代码:4020禁止调用智能交易函数";
            break;
         case 4021:
            报警="错误代码:4021对于来自函数的字行没有足够内存";
            break;
         case 4022:
            报警="错误代码:4022系统繁忙 (没有常规错误)";
            break;
         case 4050:
            报警="错误代码:4050无效计数参量函数";
            break;
         case 4051:
            报警="错误代码:4051无效参量值函数";
            break;
         case 4052:
            报警="错误代码:4052字行函数内部错误";
            break;
         case 4053:
            报警="错误代码:4053一些数组错误";
            break;
         case 4054:
            报警="错误代码:4054应用不正确数组";
            break;
         case 4055:
            报警="错误代码:4055自定义指标错误";
            break;
         case 4056:
            报警="错误代码:4056不协调数组";
            break;
         case 4057:
            报警="错误代码:4057整体变量过程错误";
            break;
         case 4058:
            报警="错误代码:4058整体变量未找到";
            break;
         case 4059:
            报警="错误代码:4059测试模式函数禁止";
            break;
         case 4060:
            报警="错误代码:4060没有确认函数";
            break;
         case 4061:
            报警="错误代码:4061发送邮件错误";
            break;
         case 4062:
            报警="错误代码:4062字行预计参量";
            break;
         case 4063:
            报警="错误代码:4063整数预计参量";
            break;
         case 4064:
            报警="错误代码:4064双预计参量";
            break;
         case 4065:
            报警="错误代码:4065数组作为预计参量";
            break;
         case 4066:
            报警="错误代码:4066刷新状态请求历史数据";
            break;
         case 4067:
            报警="错误代码:4067交易函数错误";
            break;
         case 4099:
            报警="错误代码:4099文件结束";
            break;
         case 4100:
            报警="错误代码:4100一些文件错误";
            break;
         case 4101:
            报警="错误代码:4101错误文件名称";
            break;
         case 4102:
            报警="错误代码:4102打开文件过多";
            break;
         case 4103:
            报警="错误代码:4103不能打开文件";
            break;
         case 4104:
            报警="错误代码:4104不协调文件";
            break;
         case 4105:
            报警="错误代码:4105没有选择定单";
            break;
         case 4106:
            报警="错误代码:4106不明货币对";
            break;
         case 4107:
            报警="错误代码:4107无效价格";
            break;
         case 4108:
            报警="错误代码:4108无效定单编码";
            break;
         case 4109:
            报警="错误代码:4109不允许交易";
            break;
         case 4110:
            报警="错误代码:4110不允许长期";
            break;
         case 4111:
            报警="错误代码:4111不允许短期";
            break;
         case 4200:
            报警="错误代码:4200定单已经存在";
            break;
         case 4201:
            报警="错误代码:4201不明定单属性";
            break;
         //case 4202:报警="错误代码:4202定单不存在";break;
         case 4203:
            报警="错误代码:4203不明定单类型";
            break;
         case 4204:
            报警="错误代码:4204没有定单名称";
            break;
         case 4205:
            报警="错误代码:4205定单坐标错误";
            break;
         case 4206:
            报警="错误代码:4206没有指定子窗口";
            break;
         case 4207:
            报警="错误代码:4207定单一些函数错误";
            break;
         case 4250:
            报警="错误代码:4250错误设定发送通知到队列中";
            break;
         case 4251:
            报警="错误代码:4251无效参量- 空字符串传递到SendNotification()函数";
            break;
         case 4252:
            报警="错误代码:4252无效设置发送通知(未指定ID或未启用通知)";
            break;
         case 4253:
            报警="错误代码:4253通知发送过于频繁";
            break;
        }
   if(t!=0)
     {
      while(IsTradeContextBusy())
         Sleep(300);
      RefreshRates();
      Print(a+报警);
      laber(a+报警,文字颜色,显示文字吗);
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::laber(string a,color b, bool 是否显示文字标签)
  {
   if(是否显示文字标签==true)
     {
      ObjectDelete("箭头"+TimeToStr(Time[0],TIME_DATE|TIME_MINUTES)+a);
      ObjectCreate("箭头"+TimeToStr(Time[0],TIME_DATE|TIME_MINUTES)+a,OBJ_TEXT,0,Time[0],Low[0]);
      ObjectSetText("箭头"+TimeToStr(Time[0],TIME_DATE|TIME_MINUTES)+a,a,8,"Times New Roman",b);
     }
  }
//+------------------------------------------------------------------+
void  交易类:: 删除全部物件()
  {
   for(int i=ObjectsTotal()-1; i>=0; i--)
      ObjectDelete(0,ObjectName(i));
   Comment(" ");
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类::限价挂多(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   magic=魔术幻数(magic);
   double 点值=点值(币种);
   double 挂单价格=SymbolInfoDouble(币种,SYMBOL_ASK)-挂单点数*点值(币种);
   if(止损点数>2)
      止损点数=停损(币种,止损点数);
   if(止盈点数>2)
      止盈点数=停损(币种,止盈点数);
   double 止损价格=挂单价格-止损点数*点值;
   double 止盈价格=挂单价格+止盈点数*点值;
   if(止损点数==0||止损点数==1||止损点数==2)
      止损价格=0;
   if(止盈点数==0||止盈点数==1||止盈点数==2)
      止盈价格=0;
   int 多=OrderSend(币种,OP_BUYLIMIT,手数,挂单价格,滑点,止损价格,止盈价格,前缀+注释,magic,0,Violet);
   if(多<0)
     {
      Print("OrderSend 限价挂多 with error #",GetLastError());
      return 多;
     }
   return 多;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类::限价挂空(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   magic=魔术幻数(magic);
   double 点值=点值(币种);
   double 挂单价格=SymbolInfoDouble(币种,SYMBOL_BID)+挂单点数*点值(币种);
   if(止损点数>2)
      止损点数=停损(币种,止损点数);
   if(止盈点数>2)
      止盈点数=停损(币种,止盈点数);
   double 止损价格=挂单价格+止损点数*点值;
   double 止盈价格=挂单价格-止盈点数*点值;
   if(止损点数==0||止损点数==1||止损点数==2)
      止损价格=0;
   if(止盈点数==0||止盈点数==1||止盈点数==2)
      止盈价格=0;
   int 空=OrderSend(币种,OP_SELLLIMIT,手数,挂单价格,滑点,止损价格,止盈价格,前缀+注释,magic,0,Violet);
   if(空<0)
     {
      Print("OrderSend 限价挂空 with error #",GetLastError());
      return 空;
     }
   return 空;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类::突破挂多(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   magic=魔术幻数(magic);
   double 点值=点值(币种);
   double 挂单价格=SymbolInfoDouble(币种,SYMBOL_ASK)+挂单点数*点值(币种);
   if(止损点数>2)
      止损点数=停损(币种,止损点数);
   if(止盈点数>2)
      止盈点数=停损(币种,止盈点数);
   double 止损价格=挂单价格-止损点数*点值;
   double 止盈价格=挂单价格+止盈点数*点值;
   if(止损点数==0||止损点数==1||止损点数==2)
      止损价格=0;
   if(止盈点数==0||止盈点数==1||止盈点数==2)
      止盈价格=0;
   int 多=OrderSend(币种,OP_BUYSTOP,手数,挂单价格,滑点,止损价格,止盈价格,前缀+注释,magic,0,Violet);
   if(多<0)
     {
      Print("OrderSend 突破挂多 with error #",GetLastError());
      return 多;
     }
   return 多;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类::突破挂空(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   magic=魔术幻数(magic);
   double 点值=点值(币种);
   double 挂单价格=SymbolInfoDouble(币种,SYMBOL_BID)-挂单点数*点值(币种);
   if(止损点数>2)
      止损点数=停损(币种,止损点数);
   if(止盈点数>2)
      止盈点数=停损(币种,止盈点数);
   double 止损价格=挂单价格+止损点数*点值;
   double 止盈价格=挂单价格-止盈点数*点值;
   if(止损点数==0||止损点数==1||止损点数==2)
      止损价格=0;
   if(止盈点数==0||止盈点数==1||止盈点数==2)
      止盈价格=0;
   int 空=OrderSend(币种,OP_SELLSTOP,手数,挂单价格,滑点,止损价格,止盈价格,前缀+注释,magic,0,Violet);
   if(空<0)
     {
      Print("OrderSend 突破挂空 with error #",GetLastError());
      return 空;
     }
   return 空;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::删除挂单(string 币种,int magic,int 挂单类型)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderType()==挂单类型)
                  result=OrderDelete(OrderTicket());
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::删除挂单(string 币种,int magic,string 注释,int 挂单类型)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==挂单类型)
                  result=OrderDelete(OrderTicket());
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::删除挂单(string 币种,int magic)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderType()==OP_BUYLIMIT||OrderType()==OP_SELLLIMIT||OrderType()==OP_BUYSTOP||OrderType()==OP_SELLSTOP)
                  result=OrderDelete(OrderTicket());
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::删除挂单(string 币种,int magic,string 注释)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==OP_BUYLIMIT||OrderType()==OP_SELLLIMIT||OrderType()==OP_BUYSTOP||OrderType()==OP_SELLSTOP)
                  result=OrderDelete(OrderTicket());
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::删除挂单()
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderType()==OP_BUYLIMIT||OrderType()==OP_SELLLIMIT||OrderType()==OP_BUYSTOP||OrderType()==OP_SELLSTOP)
            result=OrderDelete(OrderTicket());
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::日盈亏统计(string 币种,int magic,int 哪天,int 方向)
  {
   double  盈亏=0;
   for(int  i=0; i<OrdersHistoryTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(OrderCloseTime()>=iTime(币种,PERIOD_D1,哪天)&&OrderCloseTime()<iTime(币种,PERIOD_D1,哪天)+86400)
                  盈亏=盈亏+OrderProfit()+OrderCommission()+OrderSwap();
              }
           }
        }
     }
   return 盈亏;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::日盈亏统计(string 币种,int magic,int 哪天)
  {
   double  盈亏=0;
   for(int  i=0; i<OrdersHistoryTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderCloseTime()>=iTime(币种,PERIOD_D1,哪天)&&OrderCloseTime()<iTime(币种,PERIOD_D1,哪天)+86400)
                  盈亏=盈亏+OrderProfit()+OrderCommission()+OrderSwap();
              }
           }
        }
     }
   return 盈亏;
  }
//+------------------------------------------------------------------+
double 交易类::历史盈亏统计(string 币种,int magic,ulong 查询时间,int 方向)
  {
   double  盈亏=0;
   for(int  i=0; i<OrdersHistoryTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if((ulong)OrderCloseTime()>=查询时间)
                  盈亏=盈亏+OrderProfit()+OrderCommission()+OrderSwap();
              }
           }
        }
     }
   return 盈亏;
  }
//+------------------------------------------------------------------+
double 交易类::历史盈亏统计(string 币种,int magic,ulong 查询时间)
  {
   double  盈亏=0;
   for(int  i=0; i<OrdersHistoryTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if((ulong)OrderCloseTime()>=查询时间)
                  盈亏=盈亏+OrderProfit()+OrderCommission()+OrderSwap();
              }
           }
        }
     }
   return 盈亏;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::日手数统计(string 币种,int magic,int 哪天,int 方向)
  {
   double  手数=0;
   for(int  i=0; i<OrdersHistoryTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(OrderCloseTime()>=iTime(币种,PERIOD_D1,哪天)&&OrderCloseTime()<iTime(币种,PERIOD_D1,哪天)+86400)
                  手数=手数+OrderLots();
              }
           }
        }
     }
   return 手数;
  }
//+------------------------------------------------------------------+
double 交易类::日手数统计(string 币种,int magic,int 哪天)
  {
   double  手数=0;
   for(int  i=0; i<OrdersHistoryTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderCloseTime()>=iTime(币种,PERIOD_D1,哪天)&&OrderCloseTime()<iTime(币种,PERIOD_D1,哪天)+86400)
                  手数=手数+OrderLots();
              }
           }
        }
     }
   return 手数;
  }
//+------------------------------------------------------------------+
double 交易类::历史手数统计(string 币种,int magic,ulong 查询时间,int 方向)
  {
   double  手数=0;
   for(int  i=0; i<OrdersHistoryTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if((ulong)OrderCloseTime()>=查询时间)
                  手数=手数+OrderLots();
              }
           }
        }
     }
   return 手数;
  }
//+------------------------------------------------------------------+
double 交易类::历史手数统计(string 币种,int magic,ulong 查询时间)
  {
   double  手数=0;
   for(int  i=0; i<OrdersHistoryTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if((ulong)OrderCloseTime()>=查询时间)
                  手数=手数+OrderLots();
              }
           }
        }
     }
   return 手数;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类::日单数统计(string 币种,int magic,int 哪天,int 方向)
  {
   int 单数=0;
   for(int  i=0; i<OrdersHistoryTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(OrderCloseTime()>=iTime(币种,PERIOD_D1,哪天)&&OrderCloseTime()<iTime(币种,PERIOD_D1,哪天)+86400)
                  单数++;
              }
           }
        }
     }
   return 单数;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类::日单数统计(string 币种,int magic,int 哪天)
  {
   int 单数=0;
   for(int  i=0; i<OrdersHistoryTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderCloseTime()>=iTime(币种,PERIOD_D1,哪天)&&OrderCloseTime()<iTime(币种,PERIOD_D1,哪天)+86400)
                  单数++;
              }
           }
        }
     }
   return 单数;
  }
//+------------------------------------------------------------------+
int 交易类::历史单数统计(string 币种,int magic,ulong 查询时间,int 方向)
  {
   int 单数=0;
   for(int  i=0; i<OrdersHistoryTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if((ulong)OrderCloseTime()>=查询时间)
                  单数++;
              }
           }
        }
     }
   return 单数;
  }
//+------------------------------------------------------------------+
int 交易类::历史单数统计(string 币种,int magic,ulong 查询时间)
  {
   int 单数=0;
   for(int  i=0; i<OrdersHistoryTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if((ulong)OrderCloseTime()>=查询时间)
                  单数++;
              }
           }
        }
     }
   return 单数;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类::限价挂多(string 币种,double 手数,double 手数系数,double 距现价点数,double 挂单点数,double 止损点数,double 止盈点数,int 数量,int  magic,string 注释)
  {
   int 计数=0;
   while(计数<数量)
     {
      限价挂多(币种,手数自适应2(币种,手数+计数*手数系数),距现价点数+ 挂单点数*计数,止损点数,止盈点数,magic,注释);
      计数++;
     }
   return(计数);
  };
//+------------------------------------------------------------------+
int  交易类::限价挂空(string 币种,double 手数,double 手数系数,double 距现价点数,double 挂单点数,double 止损点数,double 止盈点数,int 数量,int  magic,string 注释)
  {
   int 计数=0;
   while(计数<数量)
     {
      限价挂空(币种,手数自适应2(币种,手数+计数*手数系数),距现价点数+挂单点数*计数,止损点数,止盈点数,magic,注释);
      计数++;
     }
   return(计数);
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类::突破挂多(string 币种,double 手数,double 手数系数,double 距现价点数,double 挂单点数,double 止损点数,double 止盈点数,int 数量,int  magic,string 注释)
  {
   int 计数=0;
   while(计数<数量)
     {
      突破挂多(币种,手数自适应2(币种,手数+计数*手数系数),距现价点数+ 挂单点数*计数,止损点数,止盈点数,magic,注释);
      计数++;
     }
   return(计数);
  };
//+------------------------------------------------------------------+
int  交易类::突破挂空(string 币种,double 手数,double 手数系数,double 距现价点数,double 挂单点数,double 止损点数,double 止盈点数,int 数量,int  magic,string 注释)
  {
   int 计数=0;
   while(计数<数量)
     {
      突破挂空(币种,手数自适应2(币种,手数+计数*手数系数),距现价点数+挂单点数*计数,止损点数,止盈点数,magic,注释);
      计数++;
     }
   return(计数);
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::限价挂多不重复(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int  magic,string 注释)
  {
   int 计数= 挂单单数统计(币种,magic,OP_BUYLIMIT);
   if(计数<1)
      限价挂多(币种,手数自适应2(币种,手数),挂单点数,止损点数,止盈点数,magic,注释);
  };
//+------------------------------------------------------------------+
void 交易类::  限价挂空不重复(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int  magic,string 注释)
  {
   int 计数= 挂单单数统计(币种,magic,OP_SELLLIMIT);
   if(计数<1)
      限价挂空(币种,手数自适应2(币种,手数),挂单点数,止损点数,止盈点数,magic,注释);
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::限价挂多不重复带注释(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int  magic,string 注释)
  {
   int 计数= 挂单单数统计(币种,magic,注释,OP_BUYLIMIT);
   if(计数<1)
      限价挂多(币种,手数自适应2(币种,手数),挂单点数,止损点数,止盈点数,magic,注释);
  };
//+------------------------------------------------------------------+
void   交易类::限价挂空不重复带注释(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int  magic,string 注释)
  {
   int 计数= 挂单单数统计(币种,magic,注释,OP_SELLLIMIT);
   if(计数<1)
      限价挂空(币种,手数自适应2(币种,手数),挂单点数,止损点数,止盈点数,magic,注释);
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::突破挂多不重复(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int  magic,string 注释)
  {
   int 计数= 挂单单数统计(币种,magic,OP_BUYSTOP);
   if(计数<1)
      突破挂多(币种,手数自适应2(币种,手数),挂单点数,止损点数,止盈点数,magic,注释);
  };
//+------------------------------------------------------------------+
void   交易类::突破挂空不重复(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int  magic,string 注释)
  {
   int 计数= 挂单单数统计(币种,magic,OP_SELLSTOP);
   if(计数<1)
      突破挂空(币种,手数自适应2(币种,手数),挂单点数,止损点数,止盈点数,magic,注释);
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::突破挂多不重复带注释(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int  magic,string 注释)
  {
   int 计数=挂单单数统计(币种,magic,注释,OP_BUYSTOP);
   if(计数<1)
      突破挂多(币种,手数自适应2(币种,手数),挂单点数,止损点数,止盈点数,magic,注释);
  };
//+------------------------------------------------------------------+
void   交易类::突破挂空不重复带注释(string 币种,double 手数,double 挂单点数,double 止损点数,double 止盈点数,int  magic,string 注释)
  {
   int 计数= 挂单单数统计(币种,magic,注释,OP_SELLSTOP);
   if(计数<1)
      突破挂空(币种,手数自适应2(币种,手数),挂单点数,止损点数,止盈点数,magic,注释);
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::修改限价多挂单(string 币种,int magic,string 注释,double 挂单点数,double 止损点数, double 止盈点数)
  {
   if(止损点数>2)
      止损点数=停损(币种,止损点数);
   if(止盈点数>2)
      止盈点数=停损(币种,止盈点数);
   double 进场价格=买价(币种)-挂单点数*点值(币种);
   double 止损价格=进场价格-止损点数*点值(币种);
   double 止盈价格=进场价格+止盈点数*点值(币种);
   if(止损点数==0||止损点数==1||止损点数==2)
      止损价格=0;
   if(止盈点数==0||止盈点数==1||止盈点数==2)
      止盈价格=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==OP_BUYLIMIT&&OrderOpenPrice()!=进场价格)
                  bool result=OrderModify(OrderTicket(),进场价格,止损价格,止盈价格,OrderExpiration(),CLR_NONE);
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::修改限价多挂单(string 币种,int magic,double 挂单点数,double 止损点数, double 止盈点数)
  {
   if(止损点数>2)
      止损点数=停损(币种,止损点数);
   if(止盈点数>2)
      止盈点数=停损(币种,止盈点数);
   double 进场价格=买价(币种)-挂单点数*点值(币种);
   double 止损价格=进场价格-止损点数*点值(币种);
   double 止盈价格=进场价格+止盈点数*点值(币种);
   if(止损点数==0||止损点数==1||止损点数==2)
      止损价格=0;
   if(止盈点数==0||止盈点数==1||止盈点数==2)
      止盈价格=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderType()==OP_BUYLIMIT&&OrderOpenPrice()!=进场价格)
                  bool result=OrderModify(OrderTicket(),进场价格,止损价格,止盈价格,OrderExpiration(),CLR_NONE);
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::修改限价空挂单(string 币种,int magic,string 注释,double 挂单点数,double 止损点数, double 止盈点数)
  {
   if(止损点数>2)
      止损点数=停损(币种,止损点数);
   if(止盈点数>2)
      止盈点数=停损(币种,止盈点数);
   double 进场价格=卖价(币种)+挂单点数*点值(币种);
   double 止损价格=进场价格+止损点数*点值(币种);
   double 止盈价格=进场价格-止盈点数*点值(币种);
   if(止损点数==0||止损点数==1||止损点数==2)
      止损价格=0;
   if(止盈点数==0||止盈点数==1||止盈点数==2)
      止盈价格=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==OP_SELLLIMIT&&OrderOpenPrice()!=进场价格)
                  bool result=OrderModify(OrderTicket(),进场价格,止损价格,止盈价格,OrderExpiration(),CLR_NONE);
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::修改限价空挂单(string 币种,int magic,double 挂单点数,double 止损点数, double 止盈点数)
  {
   if(止损点数>2)
      止损点数=停损(币种,止损点数);
   if(止盈点数>2)
      止盈点数=停损(币种,止盈点数);
   double 进场价格=卖价(币种)+挂单点数*点值(币种);
   double 止损价格=进场价格+止损点数*点值(币种);
   double 止盈价格=进场价格-止盈点数*点值(币种);
   if(止损点数==0||止损点数==1||止损点数==2)
      止损价格=0;
   if(止盈点数==0||止盈点数==1||止盈点数==2)
      止盈价格=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderType()==OP_SELLLIMIT&&OrderOpenPrice()!=进场价格)
                  bool result=OrderModify(OrderTicket(),进场价格,止损价格,止盈价格,OrderExpiration(),CLR_NONE);
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::修改突破多挂单(string 币种,int magic,string 注释,double 挂单点数,double 止损点数, double 止盈点数)
  {
   if(止损点数>2)
      止损点数=停损(币种,止损点数);
   if(止盈点数>2)
      止盈点数=停损(币种,止盈点数);
   double 进场价格=买价(币种)+挂单点数*点值(币种);
   double 止损价格=进场价格-止损点数*点值(币种);
   double 止盈价格=进场价格+止盈点数*点值(币种);
   if(止损点数==0||止损点数==1||止损点数==2)
      止损价格=0;
   if(止盈点数==0||止盈点数==1||止盈点数==2)
      止盈价格=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==OP_BUYSTOP&&OrderOpenPrice()!=进场价格)
                  bool result=OrderModify(OrderTicket(),进场价格,止损价格,止盈价格,OrderExpiration(),CLR_NONE);
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::修改突破多挂单(string 币种,int magic,double 挂单点数,double 止损点数, double 止盈点数)
  {
   if(止损点数>2)
      止损点数=停损(币种,止损点数);
   if(止盈点数>2)
      止盈点数=停损(币种,止盈点数);
   double 进场价格=买价(币种)+挂单点数*点值(币种);
   double 止损价格=进场价格-止损点数*点值(币种);
   double 止盈价格=进场价格+止盈点数*点值(币种);
   if(止损点数==0||止损点数==1||止损点数==2)
      止损价格=0;
   if(止盈点数==0||止盈点数==1||止盈点数==2)
      止盈价格=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderType()==OP_BUYSTOP&&OrderOpenPrice()!=进场价格)
                  bool result=OrderModify(OrderTicket(),进场价格,止损价格,止盈价格,OrderExpiration(),CLR_NONE);
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::修改突破空挂单(string 币种,int magic,string 注释,double 挂单点数,double 止损点数, double 止盈点数)
  {
   if(止损点数>2)
      止损点数=停损(币种,止损点数);
   if(止盈点数>2)
      止盈点数=停损(币种,止盈点数);
   double 进场价格=卖价(币种)-挂单点数*点值(币种);
   double 止损价格=进场价格+止损点数*点值(币种);
   double 止盈价格=进场价格-止盈点数*点值(币种);
   if(止损点数==0||止损点数==1||止损点数==2)
      止损价格=0;
   if(止盈点数==0||止盈点数==1||止盈点数==2)
      止盈价格=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==OP_SELLSTOP&&OrderOpenPrice()!=进场价格)
                  bool result=OrderModify(OrderTicket(),进场价格,止损价格,止盈价格,OrderExpiration(),CLR_NONE);
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::修改突破空挂单(string 币种,int magic,double 挂单点数,double 止损点数, double 止盈点数)
  {
   if(止损点数>2)
      止损点数=停损(币种,止损点数);
   if(止盈点数>2)
      止盈点数=停损(币种,止盈点数);
   double 进场价格=卖价(币种)-挂单点数*点值(币种);
   double 止损价格=进场价格+止损点数*点值(币种);
   double 止盈价格=进场价格-止盈点数*点值(币种);
   if(止损点数==0||止损点数==1||止损点数==2)
      止损价格=0;
   if(止盈点数==0||止盈点数==1||止盈点数==2)
      止盈价格=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderType()==OP_SELLSTOP&&OrderOpenPrice()!=进场价格)
                  bool result=OrderModify(OrderTicket(),进场价格,止损价格,止盈价格,OrderExpiration(),CLR_NONE);
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  交易类::点差值(string 币种)
  {
   double 点差值=SymbolInfoDouble(币种,SYMBOL_ASK)-SymbolInfoDouble(币种,SYMBOL_BID);
   return(点差值/点值(币种));
  }
//+------------------------------------------------------------------+
double  交易类::限制点差值(string 币种,double 设置允许点差值)
  {
   bool 检测=false;
   检测=SymbolInfoInteger(币种,SYMBOL_SPREAD)<设置允许点差值;
   if(设置允许点差值==0)
      检测=true;
   return(检测);
  }
//+------------------------------------------------------------------+
double  交易类::限制点差值之外(string 币种,double 设置允许点差值)
  {
   bool 检测=false;
   检测=SymbolInfoInteger(币种,SYMBOL_SPREAD)>设置允许点差值;
   if(设置允许点差值==0)
      检测=true;
   return(检测);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::优势多加单点值(string 币种,int  magic,string 注释,double 优势点数)
  {
   if(优势点数<0)
      Alert("优势点数应>0");
   if(优势点数==0)
      return true;
   if(优势点数<0)
      return false;
   if(优势点数==1.0)
      优势点数=点差值(币种);
   double 开盘价=尾单开盘价(币种,magic,注释,OP_BUY);
   bool 多判断1=买价(币种)<开盘价-优势点数*点值(币种);
   bool 多判断2=开盘价==0;
   bool 多判断=多判断1+多判断2;
   return(多判断);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::优势空加单点值(string 币种,int  magic,string 注释,double 优势点数)
  {
   if(优势点数<0)
      Alert("优势点数应>0");
   if(优势点数==0)
      return true;
   if(优势点数<0)
      return false;
   if(优势点数==1.0)
      优势点数=点差值(币种);
   double 开盘价=尾单开盘价(币种,magic,注释,OP_SELL);
   bool 空判断1=卖价(币种)>开盘价+优势点数*点值(币种);
   bool 空判断2=开盘价==0;
   bool 空判断=空判断1+空判断2;
   return(空判断);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::优势加单点值(string 币种,int  magic,string 注释,int 持仓方向,double 优势点数)
  {
   if(优势点数<0)
      Alert("优势点数应>0");
   if(优势点数==0)
      return true;
   if(优势点数<0)
      return false;
   if(优势点数==1.0)
      优势点数=点差值(币种);
   double 开盘价=尾单开盘价(币种,magic,注释,持仓方向);
   bool 多判断=持仓方向==OP_BUY&&开盘价>0&&买价(币种)<开盘价-优势点数*点值(币种);
   if(多判断)
      return (true);
   bool 空判断=持仓方向==OP_SELL&&开盘价>0&&卖价(币种)>开盘价+优势点数*点值(币种);
   if(空判断)
      return(true);
   return(false);
  }
//+------------------------------------------------------------------+
bool 交易类::优势加单点值(string 币种,int  magic,string 注释,double 优势点数)
  {
   if(优势点数<0)
      Alert("优势点数应>0");
   if(优势点数==0)
      return true;
   if(优势点数<0)
      return false;
   if(优势点数==1.0)
      优势点数=点差值(币种);
   int 方向=尾单持仓方向(币种,magic,注释);
   double 开盘价=尾单开盘价(币种,magic,注释,方向);
   bool 多判断=方向==OP_BUY&&开盘价>0&&买价(币种)<开盘价-优势点数*点值(币种);
   if(多判断)
      return(true);
   bool 空判断=方向==OP_SELL&&开盘价>0&&卖价(币种)>开盘价+优势点数*点值(币种);
   if(空判断)
      return(true);
   return(false);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::优势多加单点值(string 币种,int  magic,double 优势点数)
  {
   if(优势点数<0)
      Alert("优势点数应>0");
   if(优势点数==0)
      return true;
   if(优势点数<0)
      return false;
   if(优势点数==1.0)
      优势点数=点差值(币种);
   double 开盘价=尾单开盘价(币种,magic,OP_BUY);
   bool 多判断1=买价(币种)<开盘价-优势点数*点值(币种);
   bool 多判断2=开盘价==0;
   bool 多判断=多判断1+多判断2;
   return(多判断);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::优势空加单点值(string 币种,int  magic,double 优势点数)
  {
   if(优势点数<0)
      Alert("优势点数应>0");
   if(优势点数==0)
      return true;
   if(优势点数<0)
      return false;
   if(优势点数==1.0)
      优势点数=点差值(币种);
   double 开盘价=尾单开盘价(币种,magic,OP_SELL);
   bool 空判断1=卖价(币种)>开盘价+优势点数*点值(币种);
   bool 空判断2=开盘价==0;
   bool 空判断=空判断1+空判断2;
   return(空判断);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::优势加单点值(string 币种,int  magic,int 持仓方向,double 优势点数)
  {
   if(优势点数<0)
      Alert("优势点数应>0");
   if(优势点数==0)
      return true;
   if(优势点数<0)
      return false;
   if(优势点数==1.0)
      优势点数=点差值(币种);
   double 开盘价=尾单开盘价(币种,magic,持仓方向);
   bool 多判断=持仓方向==OP_BUY&&开盘价>0&&买价(币种)<开盘价-优势点数*点值(币种);
   if(多判断)
      return (true);
   bool 空判断=持仓方向==OP_SELL&&开盘价>0&&卖价(币种)>开盘价+优势点数*点值(币种);
   if(空判断)
      return(true);
   return(false);
  }
//+------------------------------------------------------------------+
bool 交易类::优势加单点值(string 币种,int  magic,double 优势点数)
  {
   if(优势点数<0)
      Alert("优势点数应>0");
   if(优势点数==0)
      return true;
   if(优势点数<0)
      return false;
   if(优势点数==1.0)
      优势点数=点差值(币种);
   int 方向=尾单持仓方向(币种,magic);
   double 开盘价=尾单开盘价(币种,magic,方向);
   bool 多判断=方向==OP_BUY&&开盘价>0&&买价(币种)<开盘价-优势点数*点值(币种);
   if(多判断)
      return (true);
   bool 空判断=方向==OP_SELL&&开盘价>0&&卖价(币种)>开盘价+优势点数*点值(币种);
   if(空判断)
      return(true);
   return(false);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::劣势多加单点值(string 币种,int  magic,string 注释,double 劣势点数)
  {
   if(劣势点数<0)
      Alert("劣势点数应>0");
   if(劣势点数==0)
      return true;
   if(劣势点数<0)
      return false;
   if(劣势点数==1.0)
      劣势点数=点差值(币种);
   double 开盘价=尾单开盘价(币种,magic,注释,OP_BUY);
   bool 多判断1=买价(币种)>开盘价+劣势点数*点值(币种);
   bool 多判断2=开盘价==0;
   bool 多判断=多判断1+多判断2;
   return(多判断);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::劣势空加单点值(string 币种,int  magic,string 注释,double 劣势点数)
  {
   if(劣势点数<0)
      Alert("劣势点数应>0");
   if(劣势点数==0)
      return true;
   if(劣势点数<0)
      return false;
   if(劣势点数==1.0)
      劣势点数=点差值(币种);
   double 开盘价=尾单开盘价(币种,magic,注释,OP_SELL);
   bool 空判断1=卖价(币种)<开盘价-劣势点数*点值(币种);
   bool 空判断2=开盘价==0;
   bool 空判断=空判断1+空判断2;
   return(空判断);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::劣势加单点值(string 币种,int  magic,string 注释,int 持仓方向,double 劣势点数)
  {
   if(劣势点数<0)
      Alert("劣势点数应>0");
   if(劣势点数==0)
      return true;
   if(劣势点数<0)
      return false;
   if(劣势点数==1.0)
      劣势点数=点差值(币种);
   double 开盘价=尾单开盘价(币种,magic,注释,持仓方向);
   bool 多判断=持仓方向==OP_BUY&&开盘价>0&&买价(币种)>开盘价+劣势点数*点值(币种);
   if(多判断)
      return (true);
   bool 空判断=持仓方向==OP_SELL&&开盘价>0&&卖价(币种)<开盘价-劣势点数*点值(币种);
   if(空判断)
      return(true);
   return (false);
  }
//+------------------------------------------------------------------+
bool 交易类::劣势加单点值(string 币种,int  magic,string 注释,double 劣势点数)
  {
   if(劣势点数<0)
      Alert("劣势点数应>0");
   if(劣势点数==0)
      return true;
   if(劣势点数<0)
      return false;
   if(劣势点数==1.0)
      劣势点数=点差值(币种);
   int 方向=尾单持仓方向(币种,magic,注释);
   double 开盘价=尾单开盘价(币种,magic,注释,方向);
   bool 多判断=方向==OP_BUY&&开盘价>0&&买价(币种)>开盘价+劣势点数*点值(币种);
   if(多判断)
      return (true);
   bool 空判断=方向==OP_SELL&&开盘价>0&&卖价(币种)<开盘价-劣势点数*点值(币种);
   if(空判断)
      return(true);
   return(false);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::劣势多加单点值(string 币种,int  magic,double 劣势点数)
  {
   if(劣势点数<0)
      Alert("劣势点数应>0");
   if(劣势点数==0)
      return true;
   if(劣势点数<0)
      return false;
   if(劣势点数==1.0)
      劣势点数=点差值(币种);
   double 开盘价=尾单开盘价(币种,magic,OP_BUY);
   bool 多判断1=买价(币种)>开盘价+劣势点数*点值(币种);
   bool 多判断2=开盘价==0;
   bool 多判断=多判断1+多判断2;
   return(多判断);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::劣势空加单点值(string 币种,int  magic,double 劣势点数)
  {
   if(劣势点数<0)
      Alert("劣势点数应>0");
   if(劣势点数==0)
      return true;
   if(劣势点数<0)
      return false;
   if(劣势点数==1.0)
      劣势点数=点差值(币种);
   double 开盘价=尾单开盘价(币种,magic,OP_SELL);
   bool 空判断1=卖价(币种)<开盘价-劣势点数*点值(币种);
   bool 空判断2=开盘价==0;
   bool 空判断=空判断1+空判断2;
   return(空判断);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::劣势加单点值(string 币种,int  magic,int 持仓方向,double 劣势点数)
  {
   if(劣势点数<0)
      Alert("劣势点数应>0");
   if(劣势点数==0)
      return true;
   if(劣势点数<0)
      return false;
   if(劣势点数==1.0)
      劣势点数=点差值(币种);
   double 开盘价=尾单开盘价(币种,magic,持仓方向);
   bool 多判断=持仓方向==OP_BUY&&开盘价>0&&买价(币种)>开盘价+劣势点数*点值(币种);
   if(多判断)
      return (true);
   bool 空判断=持仓方向==OP_SELL&&开盘价>0&&卖价(币种)<开盘价-劣势点数*点值(币种);
   if(空判断)
      return(true);
   return(false);
  }
//+------------------------------------------------------------------+
bool 交易类::劣势加单点值(string 币种,int  magic,double 劣势点数)
  {
   if(劣势点数<0)
      Alert("劣势点数应>0");
   if(劣势点数==0)
      return true;
   if(劣势点数<0)
      return false;
   if(劣势点数==1.0)
      劣势点数=点差值(币种);
   int 方向=尾单持仓方向(币种,magic);
   double 开盘价=尾单开盘价(币种,magic,方向);
   bool 多判断=方向==OP_BUY&&开盘价>0&&买价(币种)>开盘价+劣势点数*点值(币种);
   if(多判断)
      return (true);
   bool 空判断=方向==OP_SELL&&开盘价>0&&卖价(币种)<开盘价-劣势点数*点值(币种);
   if(空判断)
      return(true);
   return(false);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类::尾单持仓方向(string 币种,int magic)
  {
   int 尾单号=0;
   int 返回方向=99;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                  返回方向=OrderType();
              }
           }
        }
     }
   return(返回方向);
  }
//+------------------------------------------------------------------+
int 交易类::尾单持仓方向(string 币种,int magic,string 注释)
  {
   int 尾单号=0;
   int  返回方向=99;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()==尾单号)
                  返回方向=OrderType();
              }
           }
        }
     }
   return(返回方向);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类::首单持仓方向(string 币种,int magic)
  {
   int 首单号=0;
   int 返回方向=99;
   int 计数=0;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
              {
               首单号=OrderTicket();
               计数++;
               if(计数==1)
                  break;
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
              {
               首单号=OrderTicket();
               计数++;
               if(计数==1)
                  break;
              }
           }
        }
     }
   return(返回方向);
  }
//+------------------------------------------------------------------+
int 交易类::首单持仓方向(string 币种,int magic,string 注释)
  {
   int 首单号=0;
   int  返回方向=99;
   int 计数=0;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               首单号=OrderTicket();
               计数++;
               if(计数==1)
                  break;
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()==首单号)
                  返回方向=OrderType();
              }
           }
        }
     }
   return(返回方向);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::倒数历史盈亏(string 币种,int magic,ulong 查询时间,int 方向,int 倒数第几)
  {
   double  盈亏=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if((ulong)OrderCloseTime()>=查询时间)
                 {
                  盈亏=OrderProfit()+OrderCommission()+OrderSwap();
                  计数++;
                  if(计数==倒数第几)
                     break;
                 }
              }
           }
        }
     }
   return 盈亏;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::倒数历史手数(string 币种,int magic,ulong 查询时间,int 方向,int 倒数第几)
  {
   double  手数=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if((ulong)OrderCloseTime()>=查询时间)
                 {
                  手数=OrderLots();
                  计数++;
                  if(计数==倒数第几)
                     break;
                 }
              }
           }
        }
     }
   return 手数;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::倒数历史盈亏(string 币种,int magic,ulong 查询时间,int 倒数第几)
  {
   double  盈亏=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if((ulong)OrderCloseTime()>=查询时间)
                 {
                  盈亏=OrderProfit()+OrderCommission()+OrderSwap();
                  计数++;
                  if(计数==倒数第几)
                     break;
                 }
              }
           }
        }
     }
   return 盈亏;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::倒数历史手数(string 币种,int magic,ulong 查询时间,int 倒数第几)
  {
   double  手数=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if((ulong)OrderCloseTime()>=查询时间)
                 {
                  手数=OrderLots();
                  计数++;
                  if(计数==倒数第几)
                     break;
                 }
              }
           }
        }
     }
   return 手数;
  }
//+------------------------------------------------------------------+
double 交易类::倒数方向(string 币种,int magic,ulong 查询时间,int 倒数第几)
  {
   int 返回方向=99;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if((ulong)OrderCloseTime()>=查询时间)
                 {
                  返回方向=OrderType();
                  计数++;
                  if(计数==倒数第几)
                     break;
                 }
              }
           }
        }
     }
   return 返回方向;
  }
//+------------------------------------------------------------------+                                                            |
string  交易类::获取物件string值(string 名称)
  {
   string 内容=ObjectGetString(0,名称,OBJPROP_TEXT);
   return 内容;
  }
//+------------------------------------------------------------------+
double  交易类::获取物件double值(string 名称)
  {
   string 内容=ObjectGetString(0,名称,OBJPROP_TEXT);
   return StringToDouble(内容);
  }
//+------------------------------------------------------------------+
double  交易类::获取物件指定时间价格(string 名称,datetime 时间=1,int 修饰符=0)
  {
   if(时间==1)
      时间=TimeCurrent();
   double 返回值=ObjectGetValueByTime(0,名称,时间,修饰符);
   return 返回值;
  }
//+------------------------------------------------------------------+
datetime  交易类::获取物件指定价格时间(string 名称,double 价格=0,int 修饰符=0)
  {
   datetime 返回值=ObjectGetTimeByValue(0,名称,价格,修饰符);
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::K线穿越某值(string 币种,ENUM_TIMEFRAMES 图表周期,int 向上穿越还是向下,int 开高低收,int 序号,double 某值1,double 某值0)//---1向上2 向下穿越
  {
   bool 检测=false;
   if(向上穿越还是向下==1&&序号>=0)
     {
      if(开高低收==0)
         检测=iOpen(币种,图表周期,序号+1)<某值1&&iOpen(币种,图表周期,序号)>某值0;
      if(开高低收==1)
         检测=iHigh(币种,图表周期,序号+1)<某值1&&iHigh(币种,图表周期,序号)>某值0;
      if(开高低收==2)
         检测=iLow(币种,图表周期,序号+1)<某值1&&iLow(币种,图表周期,序号)>某值0;
      if(开高低收==3)
         检测=iClose(币种,图表周期,序号+1)<某值1&&iClose(币种,图表周期,序号)>某值0;
     }
   if(向上穿越还是向下==2&&序号>=0)
     {
      if(开高低收==0)
         检测=iOpen(币种,图表周期,序号+1)>某值1&&iOpen(币种,图表周期,序号)<某值0;
      if(开高低收==1)
         检测=iHigh(币种,图表周期,序号+1)>某值1&&iHigh(币种,图表周期,序号)<某值0;
      if(开高低收==2)
         检测=iLow(币种,图表周期,序号+1)>某值1&&iLow(币种,图表周期,序号)<某值0;
      if(开高低收==3)
         检测=iClose(币种,图表周期,序号+1)>某值1&&iClose(币种,图表周期,序号)<某值0;
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::K线极值穿越某值(string 币种,ENUM_TIMEFRAMES 图表周期,int 向上穿越还是向下,int 开高低收,int 序号,double 某值1,double 某值0)//---1向上2 向下穿越
  {
   bool 检测=false;
   if(向上穿越还是向下==1&&序号>=0)
     {
      if(开高低收==0)
         检测=iHigh(币种,图表周期,序号+1)<某值1&&iOpen(币种,图表周期,序号)>某值0;
      if(开高低收==1)
         检测=iHigh(币种,图表周期,序号+1)<某值1&&iHigh(币种,图表周期,序号)>某值0;
      if(开高低收==2)
         检测=iHigh(币种,图表周期,序号+1)<某值1&&iLow(币种,图表周期,序号)>某值0;
      if(开高低收==3)
         检测=iHigh(币种,图表周期,序号+1)<某值1&&iClose(币种,图表周期,序号)>某值0;
     }
   if(向上穿越还是向下==2&&序号>=0)
     {
      if(开高低收==0)
         检测=iLow(币种,图表周期,序号+1)>某值1&&iOpen(币种,图表周期,序号)<某值0;
      if(开高低收==1)
         检测=iLow(币种,图表周期,序号+1)>某值1&&iHigh(币种,图表周期,序号)<某值0;
      if(开高低收==2)
         检测=iLow(币种,图表周期,序号+1)>某值1&&iLow(币种,图表周期,序号)<某值0;
      if(开高低收==3)
         检测=iLow(币种,图表周期,序号+1)>某值1&&iClose(币种,图表周期,序号)<某值0;
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::穿越某值(int 向上穿越还是向下,int 序号,double &数组[],double 某值1,double 某值0)//---1向上2 向下穿越
  {
   bool 检测=false;
   if(向上穿越还是向下==1&&序号>=0)
     {
      检测=数组[序号+1]<某值1&&数组[序号]>某值0;
     }
   if(向上穿越还是向下==2&&序号>=0)
     {
      检测=数组[序号+1]>某值1&&数组[序号]<某值0;
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::允许持仓单数(string 币种,int magic,int 持仓方向,int 限制单数)
  {
   int  单数=持仓单数统计(币种,magic,持仓方向);
   bool 检测=单数<限制单数;
   return(检测);
  };
//+------------------------------------------------------------------+
bool 交易类::允许持仓单数(string 币种,int magic,string 注释,int 持仓方向,int 限制单数)
  {
   int  单数=持仓单数统计(币种,magic,注释,持仓方向);
   bool 检测=单数<限制单数;
   return(检测);
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::允许持仓仓位(string 币种,int  magic,int  持仓方向,double 交易量限制)
  {
   double 仓位= 持仓仓位统计(币种,magic, 持仓方向);
//---
   bool 检测=仓位<交易量限制||交易量限制==0.0;
   return(检测);
  };

//+------------------------------------------------------------------+
bool 交易类::允许持仓总仓位(string 币种,int  magic,double 交易量限制)
  {
   double 仓位= 持仓仓位统计(币种,magic,OP_BUY)+持仓仓位统计(币种,magic,OP_SELL);
//---
   bool 检测=仓位<交易量限制||交易量限制==0.0;
   return(检测);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void  交易类::锁多仓(string 币种,int magic,double 止损点数,double 止盈点数,int 锁仓Magic,string 锁仓注释)
  {
   double 多仓=持仓仓位统计(币种,magic,OP_BUY);
   double 空仓=持仓仓位统计(币种,magic,OP_SELL);
   if(多仓-空仓>0)
      做空(币种,手数自适应(币种,多仓-空仓),止损点数,止盈点数,锁仓Magic,锁仓注释);
  }
//+------------------------------------------------------------------+
void 交易类::锁空仓(string 币种,int magic,double 止损点数,double 止盈点数,int 锁仓Magic,string 锁仓注释)
  {
   double 多仓=持仓仓位统计(币种,magic,OP_BUY);
   double 空仓=持仓仓位统计(币种,magic,OP_SELL);
   if(空仓-多仓>0)
      做多(币种,手数自适应(币种,空仓-多仓),止损点数,止盈点数,锁仓Magic,锁仓注释);
  }
//+------------------------------------------------------------------+
void 交易类::锁全仓(string 币种,int magic,double 止损点数,double 止盈点数,int 锁仓Magic,string 锁仓注释)
  {
   double 多仓=持仓仓位统计(币种,magic,OP_BUY);
   double 空仓=持仓仓位统计(币种,magic,OP_SELL);
   if(多仓-空仓>0)
      做空(币种,手数自适应(币种,多仓-空仓),止损点数,止盈点数,锁仓Magic,锁仓注释);
   if(空仓-多仓>0)
      做多(币种,手数自适应(币种,空仓-多仓),止损点数,止盈点数,锁仓Magic,锁仓注释);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  交易类::锁多仓(string 币种,int magic,string 注释,double 止损点数,double 止盈点数,int 锁仓Magic,string 锁仓注释)
  {
   double 多仓=持仓仓位统计(币种,magic,注释,OP_BUY);
   double 空仓=持仓仓位统计(币种,magic,注释,OP_SELL);
   if(多仓-空仓>0)
      做空(币种,手数自适应(币种,多仓-空仓),止损点数,止盈点数,锁仓Magic,锁仓注释);
  }
//+------------------------------------------------------------------+
void 交易类::锁空仓(string 币种,int magic,string 注释,double 止损点数,double 止盈点数,int 锁仓Magic,string 锁仓注释)
  {
   double 多仓=持仓仓位统计(币种,magic,注释,OP_BUY);
   double 空仓=持仓仓位统计(币种,magic,注释,OP_SELL);
   if(空仓-多仓>0)
      做多(币种,手数自适应(币种,空仓-多仓),止损点数,止盈点数,锁仓Magic,锁仓注释);
  }
//+------------------------------------------------------------------+
void 交易类::锁全仓(string 币种,int magic,string 注释,double 止损点数,double 止盈点数,int 锁仓Magic,string 锁仓注释)
  {
   double 多仓=持仓仓位统计(币种,magic,注释,OP_BUY);
   double 空仓=持仓仓位统计(币种,magic,注释,OP_SELL);
   if(多仓-空仓>0)
      做空(币种,手数自适应(币种,多仓-空仓),止损点数,止盈点数,锁仓Magic,锁仓注释);
   if(空仓-多仓>0)
      做多(币种,手数自适应(币种,空仓-多仓),止损点数,止盈点数,锁仓Magic,锁仓注释);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::允许账户属性值(ENUM_ACCOUNT_INFO_DOUBLE double账户属性值,double 允许值)
  {
   bool 检测=AccountInfoDouble(double账户属性值)>允许值;
   if(允许值==0||AccountInfoDouble(double账户属性值)==0.0)
      检测=true;
   return 检测;
  }
//+------------------------------------------------------------------+
void             交易类::订单号修改止损止盈(int 订单号,double 止损点数,double 止盈点数,int 零壹多贰空=0)
  {
   if(止损点数>0||止盈点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()==订单号)
              {
               string 币种=OrderSymbol();
               if(止损点数>2)
                  止损点数=停损(币种,止损点数);
               double  多止损价格=OrderOpenPrice()-止损点数*点值(币种);
               double  空止损价格=OrderOpenPrice()+止损点数*点值(币种);
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
                  止盈点数=停损(币种,止盈点数);
               double  多止盈价格=OrderOpenPrice()+止盈点数*点值(币种);
               double  空止盈价格=OrderOpenPrice()-止盈点数*点值(币种);
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
               if(OrderType()==OP_BUY&&(OrderStopLoss()!=OrderOpenPrice()-止损点数*点值(币种)||OrderTakeProfit()!=OrderOpenPrice()+止盈点数*点值(币种))&&(零壹多贰空==0||零壹多贰空==1))
                  bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),多止损价格,多止盈价格,OrderExpiration(),CLR_NONE);
               if(OrderType()==OP_SELL&&(OrderStopLoss()!=OrderOpenPrice()+止损点数*点值(币种)||OrderTakeProfit()!=OrderOpenPrice()-止盈点数*点值(币种))&&(零壹多贰空==0||零壹多贰空==2))
                  bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),空止损价格,空止盈价格,OrderExpiration(),CLR_NONE);
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void             交易类::订单号价格修改止损止盈(int 订单号,double 止损价格,double 止盈价格,int 零壹多贰空=0)
  {
   if(止损价格>0||止盈价格>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()==订单号)
              {
               string 币种=OrderSymbol();
               double  多止损价格=止损价格;
               double  空止损价格=止损价格;
               if(止损价格==1)
                 {
                  多止损价格=0;
                  空止损价格=0;
                 }
               if(止损价格==2||止损价格==0)
                 {
                  多止损价格=OrderStopLoss();
                  空止损价格=OrderStopLoss();
                 }
               double  多止盈价格=止盈价格;
               double  空止盈价格=止盈价格;
               if(止盈价格==1)
                 {
                  多止盈价格=0;
                  空止盈价格=0;
                 }
               if(止盈价格==2||止盈价格==0)
                 {
                  多止盈价格=OrderTakeProfit();
                  空止盈价格=OrderTakeProfit();
                 }
               if(OrderType()==OP_BUY&&(OrderStopLoss()!=止损价格||OrderTakeProfit()!=止盈价格)&&(零壹多贰空==0||零壹多贰空==1))
                  bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),多止损价格,多止盈价格,OrderExpiration(),CLR_NONE);
               if(OrderType()==OP_SELL&&(OrderStopLoss()!=止损价格||OrderTakeProfit()!=止盈价格)&&(零壹多贰空==0||零壹多贰空==2))
                  bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),空止损价格,空止盈价格,OrderExpiration(),CLR_NONE);
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void             交易类::无限制订单号价格修改止损止盈(int 订单号,double 止损价格,double 止盈价格,int 零壹多贰空=0)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()==订单号)
           {
            if(OrderType()==OP_BUY&&(OrderStopLoss()!=止损价格||OrderTakeProfit()!=止盈价格)&&(零壹多贰空==0||零壹多贰空==1))
               bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),止损价格,止盈价格,OrderExpiration(),CLR_NONE);
            if(OrderType()==OP_SELL&&(OrderStopLoss()!=止损价格||OrderTakeProfit()!=止盈价格)&&(零壹多贰空==0||零壹多贰空==2))
               bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),止损价格,止盈价格,OrderExpiration(),CLR_NONE);
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             交易类::修改止损止盈(string 币种,int magic,string 注释,double 止损点数,double 止盈点数,int 零壹多贰空=0)
  {
   if(止损点数>0||止盈点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  if(止损点数>2)
                     止损点数=停损(币种,止损点数);
                  double  多止损价格=OrderOpenPrice()-止损点数*点值(币种);
                  double  空止损价格=OrderOpenPrice()+止损点数*点值(币种);
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
                     止盈点数=停损(币种,止盈点数);
                  double  多止盈价格=OrderOpenPrice()+止盈点数*点值(币种);
                  double  空止盈价格=OrderOpenPrice()-止盈点数*点值(币种);
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
                  if(OrderType()==OP_BUY&&(OrderStopLoss()!=OrderOpenPrice()-止损点数*点值(币种)||OrderTakeProfit()!=OrderOpenPrice()+止盈点数*点值(币种))&&(零壹多贰空==0||零壹多贰空==1))
                     bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),多止损价格,多止盈价格,OrderExpiration(),CLR_NONE);
                  if(OrderType()==OP_SELL&&(OrderStopLoss()!=OrderOpenPrice()+止损点数*点值(币种)||OrderTakeProfit()!=OrderOpenPrice()-止盈点数*点值(币种))&&(零壹多贰空==0||零壹多贰空==2))
                     bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),空止损价格,空止盈价格,OrderExpiration(),CLR_NONE);

                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void             交易类::修改止损止盈(string 币种,int magic,double 止损点数,double 止盈点数,int 零壹多贰空=0)
  {
   if(止损点数>0||止盈点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(止损点数>2)
                     止损点数=停损(币种,止损点数);
                  double  多止损价格=OrderOpenPrice()-止损点数*点值(币种);
                  double  空止损价格=OrderOpenPrice()+止损点数*点值(币种);
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
                     止盈点数=停损(币种,止盈点数);
                  double  多止盈价格=OrderOpenPrice()+止盈点数*点值(币种);
                  double  空止盈价格=OrderOpenPrice()-止盈点数*点值(币种);
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
                  if(OrderType()==OP_BUY&&(OrderStopLoss()!=OrderOpenPrice()-止损点数*点值(币种)||OrderTakeProfit()!=OrderOpenPrice()+止盈点数*点值(币种))&&(零壹多贰空==0||零壹多贰空==1))
                     bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),多止损价格,多止盈价格,OrderExpiration(),CLR_NONE);
                  if(OrderType()==OP_SELL&&(OrderStopLoss()!=OrderOpenPrice()+止损点数*点值(币种)||OrderTakeProfit()!=OrderOpenPrice()-止盈点数*点值(币种))&&(零壹多贰空==0||零壹多贰空==2))
                     bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),空止损价格,空止盈价格,OrderExpiration(),CLR_NONE);

                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void             交易类::修改止损止盈(int magic,double 止损点数,double 止盈点数,int 零壹多贰空=0)
  {
   if(止损点数>0||止盈点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string 币种=OrderSymbol();
                  if(止损点数>2)
                     止损点数=停损(币种,止损点数);
                  double  多止损价格=OrderOpenPrice()-止损点数*点值(币种);
                  double  空止损价格=OrderOpenPrice()+止损点数*点值(币种);
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
                     止盈点数=停损(币种,止盈点数);
                  double  多止盈价格=OrderOpenPrice()+止盈点数*点值(币种);
                  double  空止盈价格=OrderOpenPrice()-止盈点数*点值(币种);
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
                  if(OrderType()==OP_BUY&&(OrderStopLoss()!=OrderOpenPrice()-止损点数*点值(币种)||OrderTakeProfit()!=OrderOpenPrice()+止盈点数*点值(币种))&&(零壹多贰空==0||零壹多贰空==1))
                     bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),多止损价格,多止盈价格,OrderExpiration(),CLR_NONE);
                  if(OrderType()==OP_SELL&&(OrderStopLoss()!=OrderOpenPrice()+止损点数*点值(币种)||OrderTakeProfit()!=OrderOpenPrice()-止盈点数*点值(币种))&&(零壹多贰空==0||零壹多贰空==2))
                     bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),空止损价格,空止盈价格,OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void             交易类::修改止损(string 币种,int magic,string 注释,double 止损点数,int 零壹多贰空=0)
  {
   if(止损点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  if(止损点数>2)
                     止损点数=停损(币种,止损点数);
                  double  多止损价格=OrderOpenPrice()-止损点数*点值(币种);
                  double  空止损价格=OrderOpenPrice()+止损点数*点值(币种);
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
                  if(OrderType()==OP_BUY&&OrderStopLoss()!=OrderOpenPrice()-止损点数*点值(币种)&&(零壹多贰空==0||零壹多贰空==1))
                     bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),多止损价格,OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                  if(OrderType()==OP_SELL&&OrderStopLoss()!=OrderOpenPrice()+止损点数*点值(币种)&&(零壹多贰空==0||零壹多贰空==2))
                     bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),空止损价格,OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             交易类::修改止损(string 币种,int magic,double 止损点数,int 零壹多贰空=0)
  {
   if(止损点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(止损点数>2)
                     止损点数=停损(币种,止损点数);
                  double  多止损价格=OrderOpenPrice()-止损点数*点值(币种);
                  double  空止损价格=OrderOpenPrice()+止损点数*点值(币种);
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
                  if(OrderType()==OP_BUY&&OrderStopLoss()!=OrderOpenPrice()-止损点数*点值(币种)&&(零壹多贰空==0||零壹多贰空==1))
                     bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),多止损价格,OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                  if(OrderType()==OP_SELL&&OrderStopLoss()!=OrderOpenPrice()+止损点数*点值(币种)&&(零壹多贰空==0||零壹多贰空==2))
                     bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),空止损价格,OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void             交易类::修改止损(int magic,double 止损点数,int 零壹多贰空=0)
  {
   if(止损点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string 币种=OrderSymbol();
                  if(止损点数>2)
                     止损点数=停损(币种,止损点数);
                  double  多止损价格=OrderOpenPrice()-止损点数*点值(币种);
                  double  空止损价格=OrderOpenPrice()+止损点数*点值(币种);
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
                  if(OrderType()==OP_BUY&&OrderStopLoss()!=OrderOpenPrice()-止损点数*点值(币种)&&(零壹多贰空==0||零壹多贰空==1))
                     bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),多止损价格,OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                  if(OrderType()==OP_SELL&&OrderStopLoss()!=OrderOpenPrice()+止损点数*点值(币种)&&(零壹多贰空==0||零壹多贰空==2))
                     bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),空止损价格,OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void             交易类::修改止盈(string 币种,int magic,string 注释,double 止盈点数,int 零壹多贰空=0)
  {
   if(止盈点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  if(止盈点数>2)
                     止盈点数=停损(币种,止盈点数);
                  double  多止盈价格=OrderOpenPrice()+止盈点数*点值(币种);
                  double  空止盈价格=OrderOpenPrice()-止盈点数*点值(币种);
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
                  if(OrderType()==OP_BUY&&OrderTakeProfit()!=OrderOpenPrice()+止盈点数*点值(币种)&&(零壹多贰空==0||零壹多贰空==1))
                     bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderStopLoss(),多止盈价格,OrderExpiration(),CLR_NONE);
                  if(OrderType()==OP_SELL&&OrderTakeProfit()!=OrderOpenPrice()-止盈点数*点值(币种)&&(零壹多贰空==0||零壹多贰空==2))
                     bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderStopLoss(),空止盈价格,OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             交易类::修改止盈(string 币种,int magic,double 止盈点数,int 零壹多贰空=0)
  {
   if(止盈点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(止盈点数>2)
                     止盈点数=停损(币种,止盈点数);
                  double  多止盈价格=OrderOpenPrice()+止盈点数*点值(币种);
                  double  空止盈价格=OrderOpenPrice()-止盈点数*点值(币种);
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
                  if(OrderType()==OP_BUY&&OrderTakeProfit()!=OrderOpenPrice()+止盈点数*点值(币种)&&(零壹多贰空==0||零壹多贰空==1))
                     bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderStopLoss(),多止盈价格,OrderExpiration(),CLR_NONE);
                  if(OrderType()==OP_SELL&&OrderTakeProfit()!=OrderOpenPrice()-止盈点数*点值(币种)&&(零壹多贰空==0||零壹多贰空==2))
                     bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderStopLoss(),空止盈价格,OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             交易类::修改止盈(int magic,double 止盈点数,int 零壹多贰空=0)
  {
   if(止盈点数>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string 币种=OrderSymbol();
                  if(止盈点数>2)
                     止盈点数=停损(币种,止盈点数);
                  double  多止盈价格=OrderOpenPrice()+止盈点数*点值(币种);
                  double  空止盈价格=OrderOpenPrice()-止盈点数*点值(币种);
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
                  if(OrderType()==OP_BUY&&OrderTakeProfit()!=OrderOpenPrice()+止盈点数*点值(币种)&&(零壹多贰空==0||零壹多贰空==1))
                     bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderStopLoss(),多止盈价格,OrderExpiration(),CLR_NONE);
                  if(OrderType()==OP_SELL&&OrderTakeProfit()!=OrderOpenPrice()-止盈点数*点值(币种)&&(零壹多贰空==0||零壹多贰空==2))
                     bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderStopLoss(),空止盈价格,OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void          交易类::订单号折仓(int 订单号,double 折仓手数,double 减仓比例)
  {
   if(减仓比例>0&&减仓比例<=1)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()==订单号)
              {
               string 币种=OrderSymbol();
               if(OrderType()==OP_BUY)
                 {
                  if(折仓手数==0)
                     折仓手数=OrderLots();
                  折仓手数=手数自适应(币种,折仓手数*减仓比例);
                  if(折仓手数>OrderLots())
                     折仓手数=OrderLots();
                  bool    result=OrderClose(OrderTicket(),折仓手数,卖价(币种),滑点,Yellow);
                 }
               if(OrderType()==OP_SELL)
                 {
                  if(折仓手数==0)
                     折仓手数=OrderLots();
                  折仓手数=手数自适应(币种,折仓手数*减仓比例);
                  if(折仓手数>OrderLots())
                     折仓手数=OrderLots();
                  bool    result=OrderClose(OrderTicket(),折仓手数,买价(币种),滑点,Yellow);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void          交易类::订单号折多(int 订单号,double 折仓手数,double 减仓比例)
  {
   if(减仓比例>0&&减仓比例<=1)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()==订单号)
              {
               string 币种=OrderSymbol();
               if(OrderType()==OP_BUY)
                 {
                  if(折仓手数==0)
                     折仓手数=OrderLots();
                  折仓手数=手数自适应(币种,折仓手数*减仓比例);
                  if(折仓手数>OrderLots())
                     折仓手数=OrderLots();
                  bool    result=OrderClose(OrderTicket(),折仓手数,卖价(币种),滑点,Yellow);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void          交易类::订单号折空(int 订单号,double 折仓手数,double 减仓比例)
  {
   if(减仓比例>0&&减仓比例<=1)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()==订单号)
              {
               string 币种=OrderSymbol();
               if(OrderType()==OP_SELL)
                 {
                  if(折仓手数==0)
                     折仓手数=OrderLots();
                  折仓手数=手数自适应(币种,折仓手数*减仓比例);
                  if(折仓手数>OrderLots())
                     折仓手数=OrderLots();
                  bool    result=OrderClose(OrderTicket(),折仓手数,买价(币种),滑点,Yellow);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void          交易类::   跟单折仓(int  传入订单号,string 币种,int magic,string 注释,double 传入价格,double 设置误差点值,double 进出手数差,double 折仓手数,double 减仓比例,ulong 对方时间,ulong 己方时间)
  {
   if(传入订单号>0&&减仓比例>0&&减仓比例<=1)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&(OrderMagicNumber()==magic||OrderMagicNumber()==传入订单号)&&(OrderComment()==前缀+注释||StringFind(OrderComment(),(string)传入订单号)!=-1))
                 {
                  if(对方时间>己方时间&&OrderType()==OP_BUY&&((传入价格>0&&卖价(币种)>传入价格-设置误差点值*点值(币种))||设置误差点值==0)&&OrderLots()>进出手数差)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,卖价(币种),滑点,Yellow);
                    }
                  if(对方时间>己方时间&&OrderType()==OP_SELL&&((传入价格>0&&买价(币种)<传入价格+设置误差点值*点值(币种))||设置误差点值==0)&&OrderLots()>进出手数差)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,买价(币种),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void          交易类::   模糊跟单折仓(int  传入订单号,string 币种,int magic,string 注释,double 传入价格,double 设置误差点值,double 进出手数差,double 折仓手数,double 减仓比例,ulong 对方时间,ulong 己方时间)
  {
   if(传入订单号>0&&减仓比例>0&&减仓比例<=1)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&(OrderMagicNumber()==传入订单号||OrderComment()==前缀+注释||StringFind(OrderComment(),(string)传入订单号)!=-1))
                 {
                  if(对方时间>己方时间&&OrderType()==OP_BUY&&((传入价格>0&&卖价(币种)>传入价格-设置误差点值*点值(币种))||设置误差点值==0)&&OrderLots()>进出手数差)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,卖价(币种),滑点,Yellow);
                    }
                  if(对方时间>己方时间&&OrderType()==OP_SELL&&((传入价格>0&&买价(币种)<传入价格+设置误差点值*点值(币种))||设置误差点值==0)&&OrderLots()>进出手数差)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,买价(币种),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void          交易类::折仓(string 币种,int magic,string 注释,double 折仓手数,double 减仓比例,bool 开启只折一次=false)
  {
   if(减仓比例>0&&减仓比例<=1)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  if(开启只折一次&&历史订单ID含订单号检测(OrderComment(),OrderOpenTime()))
                     continue;
                  if(OrderType()==OP_BUY)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,卖价(币种),滑点,Yellow);
                    }
                  if(OrderType()==OP_SELL)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,买价(币种),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void          交易类::折仓(string 币种,int magic,double 折仓手数,double 减仓比例,bool 开启只折一次=false)
  {
   if(减仓比例>0&&减仓比例<=1)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(开启只折一次&&历史订单ID含订单号检测(OrderComment(),OrderOpenTime()))
                     continue;
                  if(OrderType()==OP_BUY)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,卖价(币种),滑点,Yellow);
                    }
                  if(OrderType()==OP_SELL)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,买价(币种),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void          交易类::折仓(int magic,double 折仓手数,double 减仓比例,bool 开启只折一次=false)
  {
   if(减仓比例>0&&减仓比例<=1)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  if(开启只折一次&&历史订单ID含订单号检测(OrderComment(),OrderOpenTime()))
                     continue;
                  if(OrderType()==OP_BUY)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(OrderSymbol(),折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,卖价(OrderSymbol()),滑点,Yellow);
                    }
                  if(OrderType()==OP_SELL)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(OrderSymbol(),折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,买价(OrderSymbol()),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void          交易类::折多仓(string 币种,int magic,string 注释,double 折仓手数,double 减仓比例,bool 开启只折一次=false)
  {
   if(减仓比例>0&&减仓比例<=1)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  if(开启只折一次&&历史订单ID含订单号检测(OrderComment(),OrderOpenTime()))
                     continue;
                  if(OrderType()==OP_BUY)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,卖价(币种),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void          交易类::折多仓(string 币种,int magic,double 折仓手数,double 减仓比例,bool 开启只折一次=false)
  {
   if(减仓比例>0&&减仓比例<=1)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(开启只折一次&&历史订单ID含订单号检测(OrderComment(),OrderOpenTime()))
                     continue;
                  if(OrderType()==OP_BUY)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,卖价(币种),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void          交易类::折多仓(int magic,double 折仓手数,double 减仓比例,bool 开启只折一次=false)
  {
   if(减仓比例>0&&减仓比例<=1)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  if(开启只折一次&&历史订单ID含订单号检测(OrderComment(),OrderOpenTime()))
                     continue;
                  string 币种=OrderSymbol();
                  if(OrderType()==OP_BUY)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,卖价(币种),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void          交易类::折空仓(string 币种,int magic,string 注释,double 折仓手数,double 减仓比例,bool 开启只折一次=false)
  {
   if(减仓比例>0&&减仓比例<=1)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  if(开启只折一次&&历史订单ID含订单号检测(OrderComment(),OrderOpenTime()))
                     continue;
                  if(OrderType()==OP_SELL)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,买价(币种),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void            交易类::折空仓(string 币种,int magic,double 折仓手数,double 减仓比例,bool 开启只折一次=false)
  {
   if(减仓比例>0&&减仓比例<=1)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(开启只折一次&&历史订单ID含订单号检测(OrderComment(),OrderOpenTime()))
                     continue;
                  if(OrderType()==OP_SELL)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,买价(币种),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void            交易类::折空仓(int magic,double 折仓手数,double 减仓比例,bool 开启只折一次=false)
  {
   if(减仓比例>0&&减仓比例<=1)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  if(开启只折一次&&历史订单ID含订单号检测(OrderComment(),OrderOpenTime()))
                     continue;
                  string 币种=OrderSymbol();
                  if(OrderType()==OP_SELL)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,买价(币种),滑点,Yellow);
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
double 交易类::系数(string symbol,bool 国际点差自适应=true)
  {
   double 系数=1;
   if(
      MarketInfo(symbol,MODE_DIGITS)==3
      || MarketInfo(symbol,MODE_DIGITS)==5
      || (StringFind(symbol,"XAU",0)==0 && MarketInfo(symbol,MODE_DIGITS)==2)
      ||(StringFind(symbol,"GOLD",0)==0&&MarketInfo(symbol,MODE_DIGITS)==2)
      ||(StringFind(symbol,"Gold",0)==0&&MarketInfo(symbol,MODE_DIGITS)==2)
      || (StringFind(symbol,"USD_GLD",0)==0 && MarketInfo(symbol,MODE_DIGITS)==2)
   )
      系数=10;

   if(StringFind(symbol,"XAU",0)==0 && MarketInfo(symbol,MODE_DIGITS)==3)
      系数=100;
   if(StringFind(symbol,"GOLD",0)==0 && MarketInfo(symbol,MODE_DIGITS)==3)
      系数=100;
   if(StringFind(symbol,"Gold",0)==0 && MarketInfo(symbol,MODE_DIGITS)==3)
      系数=100;
   if(StringFind(symbol,"USD_GLD",0)==0 && MarketInfo(symbol,MODE_DIGITS)==3)
      系数=100;
   系数=系数*0.1;
   if(StringFind(AccountInfoString(ACCOUNT_SERVER),"Exness")!=-1||StringFind(AccountInfoString(ACCOUNT_SERVER),"EXNESS")!=-1||StringFind(AccountInfoString(ACCOUNT_SERVER),"exness")!=-1)
      系数=系数*0.1;
   if(国际点差自适应==false)
      return(1);

   return(系数);
  }
//+------------------------------------------------------------------+
double 交易类::历史持仓尾单手数(string 币种,int magic,string 注释,int 方向,int 倒数第几=1)
  {
   double  手数=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&持仓类型()&&OrderType()==方向)
              {
               手数=OrderLots();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 手数;
  }
//+------------------------------------------------------------------+
double 交易类::历史持仓尾单手数(string 币种,int magic,int 方向,int 倒数第几=1)
  {
   double  手数=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&持仓类型()&&OrderType()==方向)
              {
               手数=OrderLots();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 手数;
  }
//+------------------------------------------------------------------+
double 交易类::历史持仓尾单手数(string 币种,int magic,string 注释,int 倒数第几=1)
  {
   double  手数=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&持仓类型())
              {
               手数=OrderLots();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 手数;
  }
//+------------------------------------------------------------------+
double 交易类::历史持仓尾单手数(string 币种,int magic,int 倒数第几=1)
  {
   double  手数=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&持仓类型())
              {
               手数=OrderLots();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 手数;
  }
//+------------------------------------------------------------------+
double 交易类::历史持仓尾单盈亏(string 币种,int magic,string 注释,int 方向,int 倒数第几=1)
  {
   double  盈亏=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&持仓类型()&&OrderType()==方向)
              {
               盈亏=OrderProfit()+OrderCommission()+OrderSwap();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 盈亏;
  }
//+------------------------------------------------------------------+
ulong 交易类::历史持仓尾单时间订单号带方向(string 币种,int magic,string 注释,int 方向,int 壹开贰收叁订单号=2,int 倒数第几=1)
  {
   ulong 尾时=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&持仓类型()&&OrderType()==方向)
              {
               if(壹开贰收叁订单号==1)
                  尾时=OrderOpenTime();
               if(壹开贰收叁订单号==2)
                  尾时=OrderCloseTime();
               if(壹开贰收叁订单号==3)
                  尾时=OrderTicket();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 尾时;
  }
//+------------------------------------------------------------------+
double 交易类::历史持仓尾单盈亏(string 币种,int magic,string 注释,int 倒数第几=1)
  {
   double  盈亏=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&持仓类型())
              {
               盈亏=OrderProfit()+OrderCommission()+OrderSwap();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 盈亏;
  }
//+------------------------------------------------------------------+
ulong 交易类::历史持仓尾单时间订单号(string 币种,int magic,string 注释,int 壹开贰收叁订单号=2,int 倒数第几=1)
  {
   ulong 尾时=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&持仓类型())
              {
               if(壹开贰收叁订单号==1)
                  尾时=OrderOpenTime();
               if(壹开贰收叁订单号==2)
                  尾时=OrderCloseTime();
               if(壹开贰收叁订单号==3)
                  尾时=OrderTicket();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 尾时;
  }
//+------------------------------------------------------------------+
double 交易类::历史持仓尾单盈亏(string 币种,int magic,int 方向,int 倒数第几=1)
  {
   double  盈亏=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&持仓类型()&&OrderType()==方向)
              {
               盈亏=OrderProfit()+OrderCommission()+OrderSwap();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 盈亏;
  }
//+------------------------------------------------------------------+
ulong 交易类::历史持仓尾单时间订单号带方向(string 币种,int magic,int 方向,int 壹开贰收叁订单号=2,int 倒数第几=1)
  {
   ulong 尾时=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&持仓类型()&&OrderType()==方向)
              {
               if(壹开贰收叁订单号==1)
                  尾时=OrderOpenTime();
               if(壹开贰收叁订单号==2)
                  尾时=OrderCloseTime();
               if(壹开贰收叁订单号==3)
                  尾时=OrderTicket();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 尾时;
  }
//+------------------------------------------------------------------+
double 交易类::历史持仓尾单盈亏(string 币种,int magic,int 倒数第几=1)
  {
   double  盈亏=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&持仓类型())
              {
               盈亏=OrderProfit()+OrderCommission()+OrderSwap();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 盈亏;
  }
//+------------------------------------------------------------------+
double 交易类::历史持仓尾单开收止损止盈价(string 币种,int magic,string 注释,int 方向,int 壹开贰收止损止盈=2,int 倒数第几=1)
  {
   double 尾价=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&持仓类型()&&OrderComment()==前缀+注释&&OrderType()==方向)
              {
               if(壹开贰收止损止盈==1)
                  尾价=OrderOpenPrice();
               if(壹开贰收止损止盈==2)
                  尾价=OrderClosePrice();
               if(壹开贰收止损止盈==3)
                  尾价=OrderStopLoss();
               if(壹开贰收止损止盈==4)
                  尾价=OrderTakeProfit();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 尾价;
  }
//+------------------------------------------------------------------+
double 交易类::历史持仓尾单开收止损止盈价(string 币种,int magic,string 注释,int 壹开贰收止损止盈=2,int 倒数第几=1)
  {
   double 尾价=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&持仓类型()&&OrderComment()==前缀+注释)
              {
               if(壹开贰收止损止盈==1)
                  尾价=OrderOpenPrice();
               if(壹开贰收止损止盈==2)
                  尾价=OrderClosePrice();
               if(壹开贰收止损止盈==3)
                  尾价=OrderStopLoss();
               if(壹开贰收止损止盈==4)
                  尾价=OrderTakeProfit();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 尾价;
  }
//+------------------------------------------------------------------+
double 交易类::历史持仓尾单开收止损止盈价(string 币种,int magic,int 方向,int 壹开贰收止损止盈=2,int 倒数第几=1)
  {
   double 尾价=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&持仓类型()&&OrderType()==方向)
              {
               if(壹开贰收止损止盈==1)
                  尾价=OrderOpenPrice();
               if(壹开贰收止损止盈==2)
                  尾价=OrderClosePrice();
               if(壹开贰收止损止盈==3)
                  尾价=OrderStopLoss();
               if(壹开贰收止损止盈==4)
                  尾价=OrderTakeProfit();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 尾价;
  }
//+------------------------------------------------------------------+
double 交易类::历史持仓尾单开收止损止盈价(string 币种,int magic,int 壹开贰收止损止盈=2,int 倒数第几=1)
  {
   double 尾价=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&持仓类型())
              {
               if(壹开贰收止损止盈==1)
                  尾价=OrderOpenPrice();
               if(壹开贰收止损止盈==2)
                  尾价=OrderClosePrice();
               if(壹开贰收止损止盈==3)
                  尾价=OrderStopLoss();
               if(壹开贰收止损止盈==4)
                  尾价=OrderTakeProfit();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 尾价;
  }
//+------------------------------------------------------------------+
ulong 交易类::历史持仓尾单时间订单号(string 币种,int magic,int 壹开贰收叁订单号=2,int 倒数第几=1)
  {
   ulong 尾时=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&持仓类型())
              {
               if(壹开贰收叁订单号==1)
                  尾时=OrderOpenTime();
               if(壹开贰收叁订单号==2)
                  尾时=OrderCloseTime();
               if(壹开贰收叁订单号==3)
                  尾时=OrderTicket();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 尾时;
  }
//+------------------------------------------------------------------+
ulong 交易类::历史尾单时间订单号带方向(string 币种,int magic,string 注释,int 方向,int 壹开贰收叁订单号=2,int 倒数第几=1)
  {
   ulong 尾时=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderType()==方向)
              {
               if(壹开贰收叁订单号==1)
                  尾时=OrderOpenTime();
               if(壹开贰收叁订单号==2)
                  尾时=OrderCloseTime();
               if(壹开贰收叁订单号==3)
                  尾时=OrderTicket();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 尾时;
  }
//+------------------------------------------------------------------+
ulong 交易类::历史尾单时间订单号(string 币种,int magic,string 注释,int 壹开贰收叁订单号=2,int 倒数第几=1)
  {
   ulong 尾时=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(壹开贰收叁订单号==1)
                  尾时=OrderOpenTime();
               if(壹开贰收叁订单号==2)
                  尾时=OrderCloseTime();
               if(壹开贰收叁订单号==3)
                  尾时=OrderTicket();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 尾时;
  }
//+------------------------------------------------------------------+
ulong 交易类::历史尾单时间订单号带方向(string 币种,int magic,int 方向,int 壹开贰收叁订单号=2,int 倒数第几=1)
  {
   ulong 尾时=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(壹开贰收叁订单号==1)
                  尾时=OrderOpenTime();
               if(壹开贰收叁订单号==2)
                  尾时=OrderCloseTime();
               if(壹开贰收叁订单号==3)
                  尾时=OrderTicket();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 尾时;
  }
//+------------------------------------------------------------------+
ulong 交易类::历史尾单时间订单号(string 币种,int magic,int 壹开贰收叁订单号=2,int 倒数第几=1)
  {
   ulong 尾时=0;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(壹开贰收叁订单号==1)
                  尾时=OrderOpenTime();
               if(壹开贰收叁订单号==2)
                  尾时=OrderCloseTime();
               if(壹开贰收叁订单号==3)
                  尾时=OrderTicket();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 尾时;
  }
//+------------------------------------------------------------------+
int 交易类::历史持仓尾单方向(string 币种,int magic,string 注释,int 倒数第几=1)
  {
   int 返回方向=99;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&持仓类型())
              {
               返回方向=OrderType();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 返回方向;
  }
//+------------------------------------------------------------------+
int 交易类::历史持仓尾单方向(string 币种,int magic,int 倒数第几=1)
  {
   int 返回方向=99;
   int 计数=0;
   for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY))
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&持仓类型())
              {
               返回方向=OrderType();
               计数++;
               if(计数==倒数第几)
                  break;
              }
           }
        }
     }
   return 返回方向;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::持仓有单返回false(string 币种,int magic,int 多空都=2)
  {
   bool 检测=true;
   int  多单数=持仓单数统计(币种,magic,OP_BUY);
   int  空单数=持仓单数统计(币种,magic,OP_SELL);
   if(多空都==0&&多单数>0)
      检测=false;
   if(多空都==1&&空单数>0)
      检测=false;
   if(多空都==2&&多单数+空单数>0)
      检测=false;
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::持仓有单返回false(string 币种,int magic,string 注释,int 多空都=2)
  {
   bool 检测=true;
   int  多单数=持仓单数统计(币种,magic,注释,OP_BUY);
   int  空单数=持仓单数统计(币种,magic,注释,OP_SELL);
   if(多空都==0&&多单数>0)
      检测=false;
   if(多空都==1&&空单数>0)
      检测=false;
   if(多空都==2&&多单数+空单数>0)
      检测=false;
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------
bool 交易类::周末时间(int set_weekend,string weekend_time="22:50",int 一服二电=1)
  {
   long 参考时间=TimeCurrent();
   if(一服二电==2)
      参考时间=TimeLocal();
   bool day=返回一周的每天(参考时间)==set_weekend;
   if(day&&(ulong)参考时间>StoCL(weekend_time,一服二电))
      return true;
   return false;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类::返回一周的每天(datetime aTime)
  {
   MqlDateTime stm;
   TimeToStruct(aTime,stm);
   return(stm.day_of_week);
  }
//+------------------------------------------------------------------+
bool 交易类::阴阳判断(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,int 一阴二阳)
  {
   bool  检测=false;
   if(一阴二阳==1&&iClose(币种,图表周期,序号)<iOpen(Symbol(),图表周期,序号))
      检测=true;
   if(一阴二阳==2&&iClose(币种,图表周期,序号)>iOpen(Symbol(),图表周期,序号))
      检测=true;
   return 检测;
  }
//---
//+------------------------------------------------------------------+
bool 交易类::二阴阳判断(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,int 一阴二阳)
  {
   bool  检测=false;
   if(一阴二阳==1&&iClose(币种,图表周期,序号+1)<iOpen(Symbol(),图表周期,序号+1)&&iClose(币种,图表周期,序号)<iOpen(Symbol(),图表周期,序号))
      检测=true;
   if(一阴二阳==2&&iClose(币种,图表周期,序号+1)>iOpen(Symbol(),图表周期,序号+1)&&iClose(币种,图表周期,序号)>iOpen(Symbol(),图表周期,序号))
      检测=true;
   return 检测;
  }
//-------
bool 交易类::三阴阳判断(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,int 一阴二阳)
  {
   bool  检测=false;
   if(一阴二阳==1&&iClose(币种,图表周期,序号+2)<iOpen(Symbol(),图表周期,序号+2)&&iClose(币种,图表周期,序号+1)<iOpen(Symbol(),图表周期,序号+1)&&iClose(币种,图表周期,序号)<iOpen(Symbol(),图表周期,序号))
      检测=true;
   if(一阴二阳==2&&iClose(币种,图表周期,序号+2)>iOpen(Symbol(),图表周期,序号+2)&&iClose(币种,图表周期,序号+1)>iOpen(Symbol(),图表周期,序号+1)&&iClose(币种,图表周期,序号)>iOpen(Symbol(),图表周期,序号))
      检测=true;

   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::二连阴阳判断(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,int 一阴二阳)
  {
   bool  检测=false;
   if(一阴二阳==1&&iClose(币种,图表周期,序号+2)>iOpen(Symbol(),图表周期,序号+2)&&iClose(币种,图表周期,序号+1)<iOpen(Symbol(),图表周期,序号+1)&&iClose(币种,图表周期,序号)<iOpen(Symbol(),图表周期,序号)&&iClose(币种,图表周期,序号)<iClose(币种,图表周期,序号+1))
      检测=true;
   if(一阴二阳==2&&iClose(币种,图表周期,序号+2)<iOpen(Symbol(),图表周期,序号+2)&&iClose(币种,图表周期,序号+1)>iOpen(Symbol(),图表周期,序号+1)&&iClose(币种,图表周期,序号)>iOpen(Symbol(),图表周期,序号)&&iClose(币种,图表周期,序号)>iClose(币种,图表周期,序号+1))
      检测=true;
   return 检测;
  }
//-------
bool 交易类::三连阴阳判断(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,int 一阴二阳)
  {
   bool  检测=false;
   if(一阴二阳==1&&iClose(币种,图表周期,序号+3)>iOpen(Symbol(),图表周期,序号+3)&&iClose(币种,图表周期,序号+2)<iOpen(Symbol(),图表周期,序号+2)&&iClose(币种,图表周期,序号+1)<iOpen(Symbol(),图表周期,序号+1)&&iClose(币种,图表周期,序号)<iOpen(Symbol(),图表周期,序号)
      &&iClose(币种,图表周期,序号)<iClose(币种,图表周期,序号+1)&&iClose(币种,图表周期,序号+1)<iClose(币种,图表周期,序号+2))
      检测=true;
   if(一阴二阳==2&&iClose(币种,图表周期,序号+3)<iOpen(Symbol(),图表周期,序号+3)&&iClose(币种,图表周期,序号+2)>iOpen(Symbol(),图表周期,序号+2)&&iClose(币种,图表周期,序号+1)>iOpen(Symbol(),图表周期,序号+1)&&iClose(币种,图表周期,序号)>iOpen(Symbol(),图表周期,序号)
      &&iClose(币种,图表周期,序号)>iClose(币种,图表周期,序号+1)&&iClose(币种,图表周期,序号+1)>iClose(币种,图表周期,序号+2))
      检测=true;
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::可连续二连阴阳判断(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,int 一阴二阳)
  {
   bool  检测=false;
   if(一阴二阳==1&&iClose(币种,图表周期,序号+1)<iOpen(Symbol(),图表周期,序号+1)&&iClose(币种,图表周期,序号)<iOpen(Symbol(),图表周期,序号)&&iClose(币种,图表周期,序号)<iClose(币种,图表周期,序号+1))
      检测=true;
   if(一阴二阳==2&&iClose(币种,图表周期,序号+1)>iOpen(Symbol(),图表周期,序号+1)&&iClose(币种,图表周期,序号)>iOpen(Symbol(),图表周期,序号)&&iClose(币种,图表周期,序号)>iClose(币种,图表周期,序号+1))
      检测=true;
   return 检测;
  }
//-------
bool 交易类::可连续三连阴阳判断(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,int 一阴二阳)
  {
   bool  检测=false;
   if(一阴二阳==1&&iClose(币种,图表周期,序号+2)<iOpen(Symbol(),图表周期,序号+2)&&iClose(币种,图表周期,序号+1)<iOpen(Symbol(),图表周期,序号+1)&&iClose(币种,图表周期,序号)<iOpen(Symbol(),图表周期,序号)
      &&iClose(币种,图表周期,序号)<iClose(币种,图表周期,序号+1)&&iClose(币种,图表周期,序号+1)<iClose(币种,图表周期,序号+2))
      检测=true;
   if(一阴二阳==2&&iClose(币种,图表周期,序号+2)>iOpen(Symbol(),图表周期,序号+2)&&iClose(币种,图表周期,序号+1)>iOpen(Symbol(),图表周期,序号+1)&&iClose(币种,图表周期,序号)>iOpen(Symbol(),图表周期,序号)
      &&iClose(币种,图表周期,序号)>iClose(币种,图表周期,序号+1)&&iClose(币种,图表周期,序号+1)>iClose(币种,图表周期,序号+2))
      检测=true;
   return 检测;
  }
//+------------------------------------------------------------------+
void  交易类::返回金死叉值(double&小值[],double &大值[],double&金死叉值[],int 计算数量,int 一金二死选择)
  {
   ArrayResize(金死叉值,计算数量);
   int 计算根数=0;
   int 小值数=ArraySize(小值);
   int 大值数=ArraySize(大值);
   if(小值数<=大值数)
      计算根数=小值数;
   else
      计算根数=大值数;
   int  计数=0;
   for(int i=0; i<计算根数; i++)
     {
      if(非空值检测(小值[i])&&非空值检测(小值[i+1])&&非空值检测(大值[i])&&非空值检测(大值[i+1]))
        {
         if(计数>计算数量-1)
            break;
         bool 金叉=小值[i+1]<大值[i+1]&&小值[i]>大值[i];
         bool 死叉=小值[i+1]>大值[i+1]&&小值[i]<大值[i];
         if(金叉&&一金二死选择==1)
           {
            金死叉值[计数]=大值[i];
            计数++;
           }
         if(死叉&&一金二死选择==2)
           {
            金死叉值[计数]=大值[i];
            计数++;
           }
        }
     }
  }
//+------------------------------------------------------------------+
void  交易类::返回金死叉值(double&小值[],double &大值[],double&金死叉值[][2],int 计算数量,int 一金二死选择)
  {
   ArrayResize(金死叉值,计算数量);
   int 计算根数=0;
   int 小值数=ArraySize(小值);
   int 大值数=ArraySize(大值);
   if(小值数<=大值数)
      计算根数=小值数;
   else
      计算根数=大值数;
   int  计数=0;
   for(int i=0; i<计算根数; i++)
     {
      if(非空值检测(小值[i])&&非空值检测(小值[i+1])&&非空值检测(大值[i])&&非空值检测(大值[i+1]))
        {
         if(计数>计算数量-1)
            break;
         bool 金叉=小值[i+1]<大值[i+1]&&小值[i]>大值[i];
         bool 死叉=小值[i+1]>大值[i+1]&&小值[i]<大值[i];
         if(金叉&&一金二死选择==1)
           {
            金死叉值[计数][0]=大值[i];
            金死叉值[计数][1]=i;
            计数++;
           }
         if(死叉&&一金二死选择==2)
           {
            金死叉值[计数][0]=大值[i];
            金死叉值[计数][1]=i;
            计数++;
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::返回金死叉值(string 币种,ENUM_TIMEFRAMES 图表周期,double&小值[],double &大值[],double&金死叉值[][3],int 计算数量,int 一金二死选择)
  {
   ArrayResize(金死叉值,计算数量);
   int 计算根数=0;
   int 小值数=ArraySize(小值);
   int 大值数=ArraySize(大值);
   if(小值数<=大值数)
      计算根数=小值数;
   else
      计算根数=大值数;
   int  计数=0;
   for(int i=0; i<计算根数; i++)
     {
      if(非空值检测(小值[i])&&非空值检测(小值[i+1])&&非空值检测(大值[i])&&非空值检测(大值[i+1]))
        {
         if(计数>计算数量-1)
            break;
         bool 金叉=小值[i+1]<大值[i+1]&&小值[i]>大值[i];
         bool 死叉=小值[i+1]>大值[i+1]&&小值[i]<大值[i];
         if(金叉&&一金二死选择==1)
           {
            金死叉值[计数][0]=大值[i];
            金死叉值[计数][1]=i;
            金死叉值[计数][2]=(double)iTime(币种,图表周期,i);
            计数++;
           }
         if(死叉&&一金二死选择==2)
           {
            金死叉值[计数][0]=大值[i];
            金死叉值[计数][1]=i;
            金死叉值[计数][2]=(double)iTime(币种,图表周期,i);
            计数++;
           }
        }
     }
  }
//+------------------------------------------------------------------+
bool   交易类::金死叉检测(double 小1,double 大1,double 小0,double 大0,int 壹金贰死)
  {
   bool 检测=false;
   if(非空值检测(小1)&&非空值检测(大1)&&非空值检测(小0)&&非空值检测(大0))
     {
      bool 金叉=小1<大1&&小0>大0;
      bool 死叉=小1>大1&&小0<大0;
      if(金叉&&壹金贰死==1)
         检测=true;
      if(死叉&&壹金贰死==2)
         检测=true;
     }
   return 检测;
  }
//+------------------------------------------------------------------+
double 交易类::LV(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始位置,int 计算数量,int 开高低收)
  {
   double low[];
   ArrayResize(low,计算数量);
   if(开高低收==0)
      CopyOpen(币种,图表周期,起始位置,计算数量,low);
   if(开高低收==1)
      CopyHigh(币种,图表周期,起始位置,计算数量,low);
   if(开高低收==2)
      CopyLow(币种,图表周期,起始位置,计算数量,low);
   if(开高低收==3)
      CopyClose(币种,图表周期,起始位置,计算数量,low);
   double min =999999999;
   for(int i=0; i<ArraySize(low); i++)
     {
      if(low[i]<min)
         min=low[i];
     }
   return min;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::HV(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始位置,int 计算数量,int 开高低收)
  {
   double high[];
   ArrayResize(high,计算数量);
   if(开高低收==0)
      CopyOpen(币种,图表周期,起始位置,计算数量,high);
   if(开高低收==1)
      CopyHigh(币种,图表周期,起始位置,计算数量,high);
   if(开高低收==2)
      CopyLow(币种,图表周期,起始位置,计算数量,high);
   if(开高低收==3)
      CopyClose(币种,图表周期,起始位置,计算数量,high);
   double max =-999999999;
   for(int i=0; i<ArraySize(high); i++)
     {
      if(high[i]>max)
         max=high[i];
     }
   return max;
  }
//+------------------------------------------------------------------+
double iMAOnArrayMql4(double &Array[],int total,int iMAPeriod,int ma_shift,ENUM_MA_METHOD ma_method,int shift,int M=1)
  {
   double buf[];
   if(total>0&&total<=iMAPeriod)
      return(0);
   if(total==0)
      total=ArraySize(Array);
   if(ArrayResize(buf,total)<0)
      return(0);
   switch(ma_method)
     {
      case MODE_SMA:
        {
         double sum=0;
         int  i,pos=total-1;
         for(i=1; i<iMAPeriod; i++,pos--)
            sum+=Array[pos];
         while(pos>=0)
           {
            sum+=Array[pos];
            buf[pos]=sum/iMAPeriod;
            sum-=Array[pos+iMAPeriod-1];
            pos--;
           }
         return (buf[shift+ma_shift]);
        }
      case MODE_EMA:
        {
         double pr=2.0/(iMAPeriod+1);
         int pos=total-2;
         while(pos>=0)
           {
            if(pos==total-2)
               buf[pos+1]=Array[pos+1];
            buf[pos]=Array[pos]*pr+buf[pos+1]*(1-pr);
            pos--;
           }
         return (buf[shift+ma_shift]);
        }
      case MODE_SMMA:
        {
         if(M>=iMAPeriod)
            M=iMAPeriod-1;
         double sum=0;
         int  i,k,pos;
         pos=total-iMAPeriod;
         while(pos>=0)
           {
            if(pos==total-iMAPeriod)
              {
               for(i=0,k=pos; i<iMAPeriod; i++,k++)
                 {
                  sum+=Array[k];
                  buf[k]=0;
                 }
              }
            else
               sum=buf[pos+1]*(iMAPeriod-M)+M*Array[pos];
            buf[pos]=sum/iMAPeriod;
            pos--;
           }
         return (buf[shift+ma_shift]);
        }
      case MODE_LWMA:
        {
         double sum=0.0,lsum=0.0;
         double price;
         int i,weight=0,pos=total-1;
         for(i=1; i<=iMAPeriod; i++,pos--)
           {
            price=Array[pos];
            sum+=price*i;
            lsum+=price;
            weight+=i;
           }
         pos++;
         i=pos+iMAPeriod;
         while(pos>=0)
           {
            buf[pos]=sum/weight;
            if(pos==0)
               break;
            pos--;
            i--;
            price=Array[pos];
            sum=sum-lsum+price*iMAPeriod;
            lsum-=Array[i];
            lsum+=price;
           }
         return (buf[shift+ma_shift]);
        }
      default :
         return (0);
     }
   return (0);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int  交易类::价格限价挂多(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   if(挂单价格>0)
     {
      magic=魔术幻数(magic);
      double 点值=点值(币种);
      if(止损点数>2)
         止损点数=停损(币种,止损点数);
      if(止盈点数>2)
         止盈点数=停损(币种,止盈点数);
      double 止损价格=挂单价格-止损点数*点值;
      double 止盈价格=挂单价格+止盈点数*点值;
      if(止损点数==0||止损点数==1||止损点数==2)
         止损价格=0;
      if(止盈点数==0||止盈点数==1||止盈点数==2)
         止盈价格=0;
      int 多=OrderSend(币种,OP_BUYLIMIT,手数,挂单价格,滑点,止损价格,止盈价格,前缀+注释,magic,0,Violet);
      if(多<0)
        {
         Print("OrderSend 价格限价挂多 with error #",GetLastError());
         return 多;
        }
      return 多;
     }
   return -1;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int  交易类::价格限价挂空(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   if(挂单价格>0)
     {
      magic=魔术幻数(magic);
      double 点值=点值(币种);
      if(止损点数>2)
         止损点数=停损(币种,止损点数);
      if(止盈点数>2)
         止盈点数=停损(币种,止盈点数);
      double 止损价格=挂单价格+止损点数*点值;
      double 止盈价格=挂单价格-止盈点数*点值;
      if(止损点数==0||止损点数==1||止损点数==2)
         止损价格=0;
      if(止盈点数==0||止盈点数==1||止盈点数==2)
         止盈价格=0;
      int 空=OrderSend(币种,OP_SELLLIMIT,手数,挂单价格,滑点,止损价格,止盈价格,前缀+注释,magic,0,Violet);
      if(空<0)
        {
         Print("OrderSend 价格限价挂空 with error #",GetLastError());
         return 空;
        }
      return 空;
     }
   return -1;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int  交易类::价格突破挂多(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   if(挂单价格>0)
     {
      magic=魔术幻数(magic);
      double 点值=点值(币种);
      if(止损点数>2)
         止损点数=停损(币种,止损点数);
      if(止盈点数>2)
         止盈点数=停损(币种,止盈点数);
      double 止损价格=挂单价格-止损点数*点值;
      double 止盈价格=挂单价格+止盈点数*点值;
      if(止损点数==0||止损点数==1||止损点数==2)
         止损价格=0;
      if(止盈点数==0||止盈点数==1||止盈点数==2)
         止盈价格=0;
      int 多=OrderSend(币种,OP_BUYSTOP,手数,挂单价格,滑点,止损价格,止盈价格,前缀+注释,magic,0,Violet);
      if(多<0)
        {
         Print("OrderSend 价格突破挂多 with error #",GetLastError());
         return 多;
        }
      return 多;
     }
   return -1;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类::价格突破挂空(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   if(挂单价格>0)
     {
      magic=魔术幻数(magic);
      double 点值=点值(币种);
      if(止损点数>2)
         止损点数=停损(币种,止损点数);
      if(止盈点数>2)
         止盈点数=停损(币种,止盈点数);
      double 止损价格=挂单价格+止损点数*点值;
      double 止盈价格=挂单价格-止盈点数*点值;
      if(止损点数==0||止损点数==1||止损点数==2)
         止损价格=0;
      if(止盈点数==0||止盈点数==1||止盈点数==2)
         止盈价格=0;
      int 空=OrderSend(币种,OP_SELLSTOP,手数,挂单价格,滑点,止损价格,止盈价格,前缀+注释,magic,0,Violet);
      if(空<0)
        {
         Print("OrderSend 价格突破挂空 with error #",GetLastError());
         return 空;
        }
      return 空;
     }
   return -1;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::价格修改限价多挂单(string 币种,int magic,string 注释,double 进场价格,double 止损点数, double 止盈点数)
  {
   if(进场价格>0)
     {
      if(止损点数>2)
         止损点数=停损(币种,止损点数);
      if(止盈点数>2)
         止盈点数=停损(币种,止盈点数);
      double 止损价格=进场价格-止损点数*点值(币种);
      double 止盈价格=进场价格+止盈点数*点值(币种);
      if(止损点数==0||止损点数==1||止损点数==2)
         止损价格=0;
      if(止盈点数==0||止盈点数==1||止盈点数==2)
         止盈价格=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderOpenPrice()!=进场价格)
                 {
                  if(OrderType()==OP_BUYLIMIT&&OrderOpenPrice()!=进场价格)
                     bool result=OrderModify(OrderTicket(),进场价格,止损价格,止盈价格,OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::价格修改限价空挂单(string 币种,int magic,string 注释,double 进场价格,double 止损点数, double 止盈点数)
  {
   if(进场价格>0)
     {
      if(止损点数>2)
         止损点数=停损(币种,止损点数);
      if(止盈点数>2)
         止盈点数=停损(币种,止盈点数);
      double 止损价格=进场价格+止损点数*点值(币种);
      double 止盈价格=进场价格-止盈点数*点值(币种);
      if(止损点数==0||止损点数==1||止损点数==2)
         止损价格=0;
      if(止盈点数==0||止盈点数==1||止盈点数==2)
         止盈价格=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderOpenPrice()!=进场价格)
                 {
                  if(OrderType()==OP_SELLLIMIT&&OrderOpenPrice()!=进场价格)
                     bool result=OrderModify(OrderTicket(),进场价格,止损价格,止盈价格,OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::价格修改突破多挂单(string 币种,int magic,string 注释,double 进场价格,double 止损点数, double 止盈点数)
  {
   if(进场价格>0)
     {
      if(止损点数>2)
         止损点数=停损(币种,止损点数);
      if(止盈点数>2)
         止盈点数=停损(币种,止盈点数);
      double 止损价格=进场价格-止损点数*点值(币种);
      double 止盈价格=进场价格+止盈点数*点值(币种);
      if(止损点数==0||止损点数==1||止损点数==2)
         止损价格=0;
      if(止盈点数==0||止盈点数==1||止盈点数==2)
         止盈价格=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderOpenPrice()!=进场价格)
                 {
                  if(OrderType()==OP_BUYSTOP&&OrderOpenPrice()!=进场价格)
                     bool result=OrderModify(OrderTicket(),进场价格,止损价格,止盈价格,OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::价格修改突破空挂单(string 币种,int magic,string 注释,double 进场价格,double 止损点数, double 止盈点数)
  {
   if(进场价格>0)
     {
      if(止损点数>2)
         止损点数=停损(币种,止损点数);
      if(止盈点数>2)
         止盈点数=停损(币种,止盈点数);
      double 止损价格=进场价格+止损点数*点值(币种);
      double 止盈价格=进场价格-止盈点数*点值(币种);
      if(止损点数==0||止损点数==1||止损点数==2)
         止损价格=0;
      if(止盈点数==0||止盈点数==1||止盈点数==2)
         止盈价格=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderOpenPrice()!=进场价格)
                 {
                  if(OrderType()==OP_SELLSTOP&&OrderOpenPrice()!=进场价格)
                     bool result=OrderModify(OrderTicket(),进场价格,止损价格,止盈价格,OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::价格修改限价多挂单(string 币种,int magic,double 进场价格,double 止损点数, double 止盈点数)
  {
   if(进场价格>0)
     {
      if(止损点数>2)
         止损点数=停损(币种,止损点数);
      if(止盈点数>2)
         止盈点数=停损(币种,止盈点数);
      double 止损价格=进场价格-止损点数*点值(币种);
      double 止盈价格=进场价格+止盈点数*点值(币种);
      if(止损点数==0||止损点数==1||止损点数==2)
         止损价格=0;
      if(止盈点数==0||止盈点数==1||止盈点数==2)
         止盈价格=0;

      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderOpenPrice()!=进场价格)
                 {
                  if(OrderType()==OP_BUYLIMIT&&OrderOpenPrice()!=进场价格)
                     bool result=OrderModify(OrderTicket(),进场价格,止损价格,止盈价格,OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::价格修改限价空挂单(string 币种,int magic,double 进场价格,double 止损点数, double 止盈点数)
  {
   if(进场价格>0)
     {
      if(止损点数>2)
         止损点数=停损(币种,止损点数);
      if(止盈点数>2)
         止盈点数=停损(币种,止盈点数);
      double 止损价格=进场价格+止损点数*点值(币种);
      double 止盈价格=进场价格-止盈点数*点值(币种);
      if(止损点数==0||止损点数==1||止损点数==2)
         止损价格=0;
      if(止盈点数==0||止盈点数==1||止盈点数==2)
         止盈价格=0;

      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderOpenPrice()!=进场价格)
                 {
                  if(OrderType()==OP_SELLLIMIT&&OrderOpenPrice()!=进场价格)
                     bool result=OrderModify(OrderTicket(),进场价格,止损价格,止盈价格,OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::价格修改突破多挂单(string 币种,int magic,double 进场价格,double 止损点数, double 止盈点数)
  {
   if(进场价格>0)
     {
      if(止损点数>2)
         止损点数=停损(币种,止损点数);
      if(止盈点数>2)
         止盈点数=停损(币种,止盈点数);
      double 止损价格=进场价格-止损点数*点值(币种);
      double 止盈价格=进场价格+止盈点数*点值(币种);
      if(止损点数==0||止损点数==1||止损点数==2)
         止损价格=0;
      if(止盈点数==0||止盈点数==1||止盈点数==2)
         止盈价格=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderOpenPrice()!=进场价格)
                 {
                  if(OrderType()==OP_BUYSTOP&&OrderOpenPrice()!=进场价格)
                     bool result=OrderModify(OrderTicket(),进场价格,止损价格,止盈价格,OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::价格修改突破空挂单(string 币种,int magic,double 进场价格,double 止损点数, double 止盈点数)
  {
   if(进场价格>0)
     {
      if(止损点数>2)
         止损点数=停损(币种,止损点数);
      if(止盈点数>2)
         止盈点数=停损(币种,止盈点数);
      double 止损价格=进场价格+止损点数*点值(币种);
      double 止盈价格=进场价格-止盈点数*点值(币种);
      if(止损点数==0||止损点数==1||止损点数==2)
         止损价格=0;
      if(止盈点数==0||止盈点数==1||止盈点数==2)
         止盈价格=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderOpenPrice()!=进场价格)
                 {
                  if(OrderType()==OP_SELLSTOP&&OrderOpenPrice()!=进场价格)
                     bool result=OrderModify(OrderTicket(),进场价格,止损价格,止盈价格,OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类:: 删除左上角信息()
  {
   删除物件(0,"左文1","左文2","左文3","左文4","左文5","左文6","左文7","左文8","左文9");
   删除物件(0,"左文11","左文12","左文13","左文14","左文15","左文16","左文17","左文18","左文19");
   删除物件(0,"右文1","右文2","右文3","右文4","右文5","右文6","右文7","右文8","右文9");
   删除物件(0,"右文11","右文12","右文13","右文14","右文15","右文16","右文17","右文18","右文19");
   删除物件(0,"左文0","右文0","左文10","左文20","右文10","右文20");
   删除物件(0,"统计1","统计2","统计3","统计4","统计5","统计6","统计7","日期");
   删除物件(0,"名称0","名称10","名称19","名称20");
   删除物件(0,"名称1","名称2","名称3","名称4","名称5","名称6","名称7","名称8","名称9");
   删除物件(0,"名称11","名称12","名称13","名称14","名称15","名称16","名称17","名称18");
   Comment("");
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void   交易类::删除物件(long 窗口,string 名称1,string 名称2="",string 名称3="",string 名称4="",string 名称5="",string 名称6="",string 名称7="",string 名称8="",string 名称9="")
  {
   ObjectDelete(窗口,名称1);
   ObjectDelete(窗口,名称2);
   ObjectDelete(窗口,名称3);
   ObjectDelete(窗口,名称4);
   ObjectDelete(窗口,名称5);
   ObjectDelete(窗口,名称6);
   ObjectDelete(窗口,名称7);
   ObjectDelete(窗口,名称8);
   ObjectDelete(窗口,名称9);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::数组取值重新排序(string 币种,ENUM_TIMEFRAMES 图表周期, double &传入数组[],double &传出数组[][4],int 计算数量)
  {
//---
   ArrayResize(传出数组,计算数量);
   int 计数=0;
   for(int i=0; i<ArraySize(传入数组); i++)
     {
      if(ArraySize(传入数组)>计算数量-1&&计数>计算数量-1)
         break;
      if(传入数组[i]==0||传入数组[i]==EMPTY_VALUE)
         传出数组[计数][3]=0.0;
      else
        {
         传出数组[计数][0]=传入数组[i];
         传出数组[计数][1]=i;
         传出数组[计数][2]=(double)iTime(币种,图表周期,i);
         if(传入数组[i]<=iLow(币种,图表周期,i)&&传入数组[i]<iLow(币种,图表周期,i+1))
            传出数组[计数][3]=1.0;
         if(传入数组[i]>=iHigh(币种,图表周期,i)&&传入数组[i]>iHigh(币种,图表周期,i+1))
            传出数组[计数][3]=2.0;
         计数++;
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::数组取值重新排序(string 币种,ENUM_TIMEFRAMES 图表周期, double &传入数组[],double &传出数组[][3],int 计算数量)
  {
//---
   ArrayResize(传出数组,计算数量);
   int 计数=0;
   for(int i=0; i<ArraySize(传入数组); i++)
     {
      if(ArraySize(传入数组)>计算数量-1&&计数>计算数量-1)
         break;
      if(传入数组[i]!=0&&传入数组[i]!=EMPTY_VALUE)
        {
         传出数组[计数][0]=传入数组[i];
         传出数组[计数][1]=i;
         传出数组[计数][2]=(double)iTime(币种,图表周期,i);
         计数++;
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::数组取值重新排序(double &传入数组[],double &传出数组[][2],int 计算数量)
  {
//---
   ArrayResize(传出数组,计算数量);
   int 计数=0;
   for(int i=0; i<ArraySize(传入数组); i++)
     {
      if(ArraySize(传入数组)>计算数量-1&&计数>计算数量-1)
         break;
      if(传入数组[i]!=0&&传入数组[i]!=EMPTY_VALUE)
        {
         传出数组[计数][0]=传入数组[i];
         传出数组[计数][1]=i;
         计数++;
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::数组取值重新排序(double &传入数组[],double &传出数组[],int 计算数量)
  {
//---
   ArrayResize(传出数组,计算数量);
   int 计数=0;
   for(int i=0; i<ArraySize(传入数组); i++)
     {
      if(ArraySize(传入数组)>计算数量-1&&计数>计算数量-1)
         break;
      if(传入数组[i]!=0&&传入数组[i]!=EMPTY_VALUE)
        {
         传出数组[计数]=传入数组[i];
         计数++;
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::字符串含小时检测(string 遍历字符串,string 分隔符,string &返回数组[],ulong 参考时间,int 壹服贰电=0,int GMT偏移=0)
  {
   bool  返回判断=false;
   if(壹服贰电==1)
      参考时间=TimeCurrent();
   if(壹服贰电==2)
      参考时间=TimeLocal();
   MqlDateTime 当前小时;
   TimeToStruct(参考时间,当前小时);
   int 长度=StringSplit(遍历字符串,StringGetCharacter(分隔符,0),返回数组);
   for(int i=0; i<ArraySize(返回数组)-1; i++)
     {
      返回判断= 返回数组[i]==IntegerToString(当前小时.hour+GMT偏移);
      if(返回判断==true)
         break;
     }
   return 返回判断;
  }
//+------------------------------------------------------------------+
bool 交易类::字符串含币种检测(string 遍历字符串,string 分隔符,string &返回数组[],bool 窗口选择,int 警报间隔秒数次数,bool 移除EA,bool 关闭图表)
  {
   bool  返回判断=false;
   int 长度=StringSplit(遍历字符串,StringGetCharacter(分隔符,0),返回数组);
   for(int i=0; i<ArraySize(返回数组)-1; i++)
     {
      返回判断=币种标识符检测(返回数组[i],窗口选择,警报间隔秒数次数,移除EA,关闭图表);
      if(返回判断==false)
        {
         Print(" 字符串组里有币种标识符输入错误！！！ 或者 窗口市场中未添加此币种！！！");
         break;
        }
     }
   return 返回判断;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类::分隔号拆分字符串(string 遍历字符串,string 分隔符,string &返回数组[])
  {
   int 长度=StringSplit(遍历字符串,StringGetCharacter(分隔符,0),返回数组);
   return 长度;
  }
//+------------------------------------------------------------------+
string 交易类::返回拆分的子字符串(string 遍历字符串,string 分隔符,string &返回数组[])
  {
   int 长度=StringSplit(遍历字符串,StringGetCharacter(分隔符,0),返回数组);
   static int 计数=0;
   string 币种=返回数组[计数];
   计数++;
   if(计数>ArraySize(返回数组)-1)
     {
      Print("===一轮遍历结束===");
      计数=0;
     }
   return 币种;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string  交易类::返回市场币种(bool 窗口选择,int 从第几循环)
  {
   string 币种a=NULL;
   if(从第几循环<1)
      从第几循环=1;
   static int 倒数y=1;
   if(倒数y>=SymbolsTotal(窗口选择))
     {
      Print("============一轮结束===========");
      倒数y=从第几循环;
     }
   for(int i=SymbolsTotal(窗口选择)-倒数y; i>=0; i--)
     {
      币种a=SymbolName(i,窗口选择);
      if(币种a!=NULL)
         break;
     }
   倒数y++;
   return(币种a);
  }
//+------------------------------------------------------------------+
string  交易类::市场币种(bool 窗口选择,int 倒数第几)
  {
   if(倒数第几<1)
      倒数第几=1;
   static int 倒数x=倒数第几;
   string 币种b="";
   for(int i=SymbolsTotal(窗口选择)-倒数x; i>=0; i--)
     {
      币种b=SymbolName(i,窗口选择);
      倒数x++;
      if(倒数x>=SymbolsTotal(窗口选择))
         break;
      Print(币种b);
     }
   Print("==结束==");
   return(币种b);
  }
//+------------------------------------------------------------------+
string    交易类:: 币种选择(string 币种,int 当前市场所有)
  {
   if(当前市场所有==0)
      币种=Symbol();
   if(当前市场所有==1)
      币种=返回市场币种(true,1);
   if(当前市场所有==2)
      币种=返回市场币种(false,1);
   return 币种;
  }
//+---------------------------------------------------------------+
ulong 交易类::尾单开盘时间(string 币种,int magic,string 注释,int 方向)
  {
   int 尾单号=0;
   ulong  开盘时间=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()==尾单号)
                  开盘时间=OrderOpenTime();
              }
           }
        }
     }
   return(开盘时间);
  }
//-----
ulong 交易类::尾单开盘时间(string 币种,int magic,string 注释)
  {
   int 尾单号=0;
   ulong  开盘时间=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()==尾单号)
                  开盘时间=OrderOpenTime();
              }
           }
        }
     }
   return(开盘时间);
  }
//-----
//+------------------------------------------------------------------+
ulong 交易类::尾单开盘时间(string 币种,int magic,int 方向)
  {
   int 尾单号=0;
   ulong  开盘时间=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                  开盘时间=OrderOpenTime();
              }
           }
        }
     }
   return(开盘时间);
  }
//+------------------------------------------------------------------+
ulong 交易类::尾单开盘时间(string 币种,int magic)
  {
   int 尾单号=0;
   ulong  开盘时间=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                  开盘时间=OrderOpenTime();
              }
           }
        }
     }
   return(开盘时间);
  }
//+------------------------------------------------------------------+
int  交易类::返回尾单号(string 币种,int magic,string 注释,int 方向,int 第几=1)
  {
   int 订单序列号=0;
   int 总单量=OrdersTotal();
   int 计数=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               订单序列号=OrderTicket();
               计数++;
               if(计数==第几)
                  break;
              }
           }
        }
     }
   return 订单序列号;
  }
//+------------------------------------------------------------------+
int  交易类::返回尾单号(string 币种,int magic,int 方向,int 第几=1)
  {
   int 订单序列号=0;
   int 总单量=OrdersTotal();
   int 计数=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic)
              {
               订单序列号=OrderTicket();
               计数++;
               if(计数==第几)
                  break;
              }
           }
        }
     }
   return 订单序列号;
  }
//+------------------------------------------------------------------+
int  交易类::返回尾单号(string 币种,int magic,string 注释,int 第几=1)
  {
   int 订单序列号=0;
   int 总单量=OrdersTotal();
   int 计数=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               订单序列号=OrderTicket();
               计数++;
               if(计数==第几)
                  break;
              }
           }
        }
     }
   return 订单序列号;
  }
//+------------------------------------------------------------------+
int  交易类::返回尾单号(string 币种,int magic,int 第几=1)
  {
   int 订单序列号=0;
   int 总单量=OrdersTotal();
   int 计数=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
              {
               订单序列号=OrderTicket();
               计数++;
               if(计数==第几)
                  break;
              }
           }
        }
     }
   return 订单序列号;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int  交易类::返回首单号(string 币种,int magic,string 注释,int 方向,int 第几=1)
  {
   int 订单序列号=0;
   int 总单量=OrdersTotal();
   int 计数=0;
   for(int i=0; i<总单量; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               订单序列号=OrderTicket();
               计数++;
               if(计数==第几)
                  break;
              }
           }
        }
     }
   return 订单序列号;
  }
//+------------------------------------------------------------------+
int  交易类::返回首单号(string 币种,int magic,int 方向,int 第几=1)
  {
   int 订单序列号=0;
   int 总单量=OrdersTotal();
   int 计数=0;
   for(int i=0; i<总单量; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic)
              {
               订单序列号=OrderTicket();
               计数++;
               if(计数==第几)
                  break;
              }
           }
        }
     }
   return 订单序列号;
  }
//+------------------------------------------------------------------+
int  交易类::返回首单号(string 币种,int magic,string 注释,int 第几=1)
  {
   int 订单序列号=0;
   int 总单量=OrdersTotal();
   int 计数=0;
   for(int i=0; i<总单量; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               订单序列号=OrderTicket();
               计数++;
               if(计数==第几)
                  break;
              }
           }
        }
     }
   return 订单序列号;
  }
//+------------------------------------------------------------------+
int  交易类::返回首单号(string 币种,int magic,int 第几=1)
  {
   int 订单序列号=0;
   int 总单量=OrdersTotal();
   int 计数=0;
   for(int i=0; i<总单量; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
              {
               订单序列号=OrderTicket();
               计数++;
               if(计数==第几)
                  break;
              }
           }
        }
     }
   return 订单序列号;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::持仓时间平单(int magic,int 距开盘时间平仓秒数)
  {
   if(距开盘时间平仓秒数>0)
     {
      for(int j=OrdersTotal()-1; j>=0; j--)
        {
         if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  if(TimeCurrent()>OrderOpenTime()+距开盘时间平仓秒数)
                    {
                     if(OrderType()==OP_BUY)
                        bool  result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),20,Yellow);
                     if(OrderType()==OP_SELL)
                        bool  result2=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),20,Red);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::持仓时间平单(string 币种,int magic,int 距开盘时间平仓秒数)
  {
   if(距开盘时间平仓秒数>0)
     {
      for(int j=OrdersTotal()-1; j>=0; j--)
        {
         if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(TimeCurrent()>OrderOpenTime()+距开盘时间平仓秒数)
                    {
                     if(OrderType()==OP_BUY)
                        bool  result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                     if(OrderType()==OP_SELL)
                        bool  result2=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::持仓时间平单(string 币种,int magic,string 注释,int 距开盘时间平仓秒数)
  {
   if(距开盘时间平仓秒数>0)
     {
      for(int j=OrdersTotal()-1; j>=0; j--)
        {
         if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  if(TimeCurrent()>OrderOpenTime()+距开盘时间平仓秒数)
                    {
                     if(OrderType()==OP_BUY)
                        bool  result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                     if(OrderType()==OP_SELL)
                        bool  result2=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::持仓时间平多(int magic,int 距开盘时间平仓秒数)
  {
   if(距开盘时间平仓秒数>0)
     {
      for(int j=OrdersTotal()-1; j>=0; j--)
        {
         if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  if(TimeCurrent()>OrderOpenTime()+距开盘时间平仓秒数)
                    {
                     if(OrderType()==OP_BUY)
                        bool  result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),20,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::持仓时间平多(string 币种,int magic,int 距开盘时间平仓秒数)
  {
   if(距开盘时间平仓秒数>0)
     {
      for(int j=OrdersTotal()-1; j>=0; j--)
        {
         if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(TimeCurrent()>OrderOpenTime()+距开盘时间平仓秒数)
                    {
                     if(OrderType()==OP_BUY)
                        bool  result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::持仓时间平多(string 币种,int magic,string 注释,int 距开盘时间平仓秒数)
  {
   if(距开盘时间平仓秒数>0)
     {
      for(int j=OrdersTotal()-1; j>=0; j--)
        {
         if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  if(TimeCurrent()>OrderOpenTime()+距开盘时间平仓秒数)
                    {
                     if(OrderType()==OP_BUY)
                        bool  result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::持仓时间平空(int magic,int 距开盘时间平仓秒数)
  {
   if(距开盘时间平仓秒数>0)
     {
      for(int j=OrdersTotal()-1; j>=0; j--)
        {
         if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  if(TimeCurrent()>OrderOpenTime()+距开盘时间平仓秒数)
                    {
                     if(OrderType()==OP_SELL)
                        bool  result2=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),20,Red);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::持仓时间平空(string 币种,int magic,int 距开盘时间平仓秒数)
  {
   if(距开盘时间平仓秒数>0)
     {
      for(int j=OrdersTotal()-1; j>=0; j--)
        {
         if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(TimeCurrent()>OrderOpenTime()+距开盘时间平仓秒数)
                    {
                     if(OrderType()==OP_SELL)
                        bool  result2=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::持仓时间平空(string 币种,int magic,string 注释,int 距开盘时间平仓秒数)
  {
   if(距开盘时间平仓秒数>0)
     {
      for(int j=OrdersTotal()-1; j>=0; j--)
        {
         if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  if(TimeCurrent()>OrderOpenTime()+距开盘时间平仓秒数)
                    {
                     if(OrderType()==OP_SELL)
                        bool  result2=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::区间K线最高价(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始位置,int 计算数量,int 开高低收,double &区间高价[],bool 是否倒序=true)
  {
   倒序数组(区间高价,是否倒序);
   if(开高低收==0)
      CopyOpen(币种,图表周期,起始位置,计算数量,区间高价);
   if(开高低收==1)
      CopyHigh(币种,图表周期,起始位置,计算数量,区间高价);
   if(开高低收==2)
      CopyLow(币种,图表周期,起始位置,计算数量,区间高价);
   if(开高低收==3)
      CopyClose(币种,图表周期,起始位置,计算数量,区间高价);
   int   最高价下标=ArrayMaximum(区间高价);
   double 最高价=0;
   if(最高价下标!=-1)
      最高价=iHigh(币种,图表周期,最高价下标);
   return 最高价;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double  交易类::区间K线最高价(string 币种,ENUM_TIMEFRAMES 图表周期,datetime 起始时间,int 计算数量,int 开高低收,double &区间高价[],bool 是否倒序=true)
  {
   倒序数组(区间高价,是否倒序);
   if(开高低收==0)
      CopyOpen(币种,图表周期,起始时间,计算数量,区间高价);
   if(开高低收==1)
      CopyHigh(币种,图表周期,起始时间,计算数量,区间高价);
   if(开高低收==2)
      CopyLow(币种,图表周期,起始时间,计算数量,区间高价);
   if(开高低收==3)
      CopyClose(币种,图表周期,起始时间,计算数量,区间高价);
   int   最高价下标=ArrayMaximum(区间高价);
   double 最高价=0;
   if(最高价下标!=-1)
      最高价=iHigh(币种,图表周期,最高价下标);
   return 最高价;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double 交易类:: 区间K线最高价(string 币种,ENUM_TIMEFRAMES 图表周期,datetime 起始时间,datetime 结束时间,int 开高低收,double &区间高价[],bool 是否倒序=true)
  {
   倒序数组(区间高价,是否倒序);
   if(开高低收==0)
      CopyOpen(币种,图表周期,起始时间,结束时间,区间高价);
   if(开高低收==1)
      CopyHigh(币种,图表周期,起始时间,结束时间,区间高价);
   if(开高低收==2)
      CopyLow(币种,图表周期,起始时间,结束时间,区间高价);
   if(开高低收==3)
      CopyClose(币种,图表周期,起始时间,结束时间,区间高价);
   int   最高价下标=ArrayMaximum(区间高价);
   double 最高价=0;
   if(最高价下标!=-1)
      最高价=iHigh(币种,图表周期,最高价下标);
   return 最高价;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double   交易类::区间K线最低价(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始位置,int 计算数量,int 开高低收,double &区间低价[],bool 是否倒序=true)
  {
   倒序数组(区间低价,是否倒序);
   if(开高低收==0)
      CopyOpen(币种,图表周期,起始位置,计算数量,区间低价);
   if(开高低收==1)
      CopyHigh(币种,图表周期,起始位置,计算数量,区间低价);
   if(开高低收==2)
      CopyLow(币种,图表周期,起始位置,计算数量,区间低价);
   if(开高低收==3)
      CopyClose(币种,图表周期,起始位置,计算数量,区间低价);
   int 最低价下标 =ArrayMinimum(区间低价);
   double 最低价=0;
   if(最低价下标!=-1)
      最低价=iLow(币种,图表周期,最低价下标);
   return 最低价;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double   交易类::区间K线最低价(string 币种,ENUM_TIMEFRAMES 图表周期,datetime 起始时间,int 计算数量,int 开高低收,double &区间低价[],bool 是否倒序=true)
  {
   倒序数组(区间低价,是否倒序);
   if(开高低收==0)
      CopyOpen(币种,图表周期,起始时间,计算数量,区间低价);
   if(开高低收==1)
      CopyHigh(币种,图表周期,起始时间,计算数量,区间低价);
   if(开高低收==2)
      CopyLow(币种,图表周期,起始时间,计算数量,区间低价);
   if(开高低收==3)
      CopyClose(币种,图表周期,起始时间,计算数量,区间低价);
   int 最低价下标 =ArrayMinimum(区间低价);
   double 最低价=0;
   if(最低价下标!=-1)
      最低价=iLow(币种,图表周期,最低价下标);
   return 最低价;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double 交易类:: 区间K线最低价(string 币种,ENUM_TIMEFRAMES 图表周期,datetime 起始时间,datetime 结束时间,int 开高低收,double &区间低价[],bool 是否倒序=true)
  {
   倒序数组(区间低价,是否倒序);
   if(开高低收==0)
      CopyOpen(币种,图表周期,起始时间,结束时间,区间低价);
   if(开高低收==1)
      CopyHigh(币种,图表周期,起始时间,结束时间,区间低价);
   if(开高低收==2)
      CopyLow(币种,图表周期,起始时间,结束时间,区间低价);
   if(开高低收==3)
      CopyClose(币种,图表周期,起始时间,结束时间,区间低价);
   int 最低价下标 =ArrayMinimum(区间低价);
   double 最低价=0;
   if(最低价下标!=-1)
      最低价=iLow(币种,图表周期,最低价下标);
   return 最低价;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double 交易类:: 数组最大值(double &区间[],int 起始=0,int 结束=WHOLE_ARRAY)
  {
   double 返回值=0;
   int 下标=ArrayMaximum(区间,起始,结束);
   if(下标!=-1)
      返回值=区间[下标];
   return 返回值;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double  交易类:: 数组最小值(double &区间[],int 起始=0,int 结束=WHOLE_ARRAY)
  {
   double 返回值=0;
   int 下标=ArrayMinimum(区间,起始,结束);
   if(下标!=-1)
      返回值=区间[下标];
   return 返回值;
  }
//------
double  交易类::数组平均中值(double &区间[],int 起始=0,int 结束=WHOLE_ARRAY)
  {
   double 返回值=(数组最小值(区间,起始,结束)+数组最大值(区间,起始,结束))/2;
   return 返回值;
  }
//+------------------------------------------------------------------+
double 交易类:: 数组差价(double &区间[],int 起始=0,int 结束=WHOLE_ARRAY)
  {
   double 返回值=0;
   int 下标1=ArrayMaximum(区间,起始,结束);
   int 下标2=ArrayMinimum(区间,起始,结束);
   if(下标1!=-1&&下标2!=-1)
      返回值=区间[下标1]-区间[下标2];
   return 返回值;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double 交易类::  数组差点值(double &区间[],string 币种,int 起始=0,int 结束=WHOLE_ARRAY)
  {
   double 差点值=0;
   int 下标1=ArrayMaximum(区间,起始,结束);
   int 下标2=ArrayMinimum(区间,起始,结束);
   if(下标1!=-1&&下标2!=-1)
      差点值=(区间[下标1]-区间[下标2])/SymbolInfoDouble(币种,SYMBOL_POINT);
   return(差点值);
  }
//+------------------------------------------------------------------+
bool 交易类::  允许数组差点值(double &区间[],string 币种,double 设置允许点值,int 起始=0,int 结束=WHOLE_ARRAY)
  {
   double 差点值=数组差点值(区间,币种,起始,结束);
   bool 在差点值之内=差点值>0&&差点值<设置允许点值;
   if(设置允许点值==0)
      在差点值之内=true;
   return(在差点值之内);
  }
//+------------------------------------------------------------------+
double 交易类:: 差价(double A,double B)
  {
   return(A-B);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double 交易类:: 差价绝对值(double A,double B)
  {
   return(MathAbs(A-B));
  }
//----------------------
//----------------------
double 交易类::价点值(string 币种,double A)
  {
   double 价点值=0;
   if(A>0&&SymbolInfoDouble(币种,SYMBOL_POINT)>0)
      价点值=A/SymbolInfoDouble(币种,SYMBOL_POINT);
   return(MathAbs(价点值));
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double 交易类::  差点值(string 币种,double A,double B)
  {
   double 差点值=0;
   if(A>0&&B>0&&SymbolInfoDouble(币种,SYMBOL_POINT)>0)
      差点值=A/SymbolInfoDouble(币种,SYMBOL_POINT)-B/SymbolInfoDouble(币种,SYMBOL_POINT);
   return(MathAbs(差点值));
  }
//----
double 交易类::  差点值(string 币种1,double A,string 币种2,double B)
  {
   double 差点值=0;
   if(A>0&&B>0&&SymbolInfoDouble(币种1,SYMBOL_POINT)>0&&SymbolInfoDouble(币种2,SYMBOL_POINT)>0)
      差点值=A/SymbolInfoDouble(币种1,SYMBOL_POINT)-B/SymbolInfoDouble(币种2,SYMBOL_POINT);
   return(MathAbs(差点值));
  }
//----
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double 交易类::  在差点值之内(string 币种,double A,double B,double 设置允许点值)
  {
   bool 检测=false;
   if(A>0&&B>0&&SymbolInfoDouble(币种,SYMBOL_POINT)>0)
     {
      double 差点值=A/SymbolInfoDouble(币种,SYMBOL_POINT)-B/SymbolInfoDouble(币种,SYMBOL_POINT);
      检测=MathAbs(差点值)<设置允许点值;
     }
   if(设置允许点值==0)
      检测=true;
   return(检测);
  }
//----
double 交易类::  在差点值之内(string 币种1,double A,string 币种2,double B,double 设置允许点值)
  {
   bool 检测=false;
   if(A>0&&B>0&&SymbolInfoDouble(币种1,SYMBOL_POINT)>0&&SymbolInfoDouble(币种2,SYMBOL_POINT)>0)
     {
      double 差点值=A/SymbolInfoDouble(币种1,SYMBOL_POINT)-B/SymbolInfoDouble(币种2,SYMBOL_POINT);
      检测=MathAbs(差点值)<设置允许点值;
     }
   if(设置允许点值==0)
      检测=true;
   return(检测);
  }
//----
double 交易类::允许最小手数(string  币种)
  {
   return(SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN));
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double 交易类::允许最大手数(string  币种)
  {
   return(SymbolInfoDouble(币种,SYMBOL_VOLUME_MAX));
  }
//+------------------------------------------------------------------+
void 交易类::追踪平单(string 币种,int magic,string 注释,double 启动点数,double 追踪点数,double 百分比=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      if(百分比>0&&百分比<=1)
         追踪点数=0;
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  if(OrderType()==OP_BUY)
                    {
                     double 区间高价[];
                     double   最高价=区间K线最高价(币种,PERIOD_M1,OrderOpenTime(),TimeCurrent(),1,区间高价);
                     double 多最大盈利点=(最高价-OrderOpenPrice())/点值(币种);
                     double 多实时点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                     if(最高价>0&&多最大盈利点>启动点数&&多实时点数<多最大盈利点-追踪点数-多最大盈利点*百分比)
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                    }
                  if(OrderType()==OP_SELL)
                    {
                     double 区间低价[];
                     double      最低价=区间K线最低价(币种,PERIOD_M1,OrderOpenTime(),TimeCurrent(),2,区间低价);
                     double 空最大盈利点=(OrderOpenPrice()-最低价)/点值(币种);
                     double 空实时点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                     if(最低价>0&&空最大盈利点>启动点数&&空实时点数<空最大盈利点-追踪点数-空最大盈利点*百分比)
                        result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::追踪平单(string 币种,int magic,double 启动点数,double 追踪点数,double 百分比=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      if(百分比>0&&百分比<=1)
         追踪点数=0;
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(OrderType()==OP_BUY)
                    {
                     double 区间高价[];
                     double   最高价=区间K线最高价(币种,PERIOD_M1,OrderOpenTime(),TimeCurrent(),1,区间高价);
                     double 多最大盈利点=(最高价-OrderOpenPrice())/点值(币种);
                     double 多实时点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                     if(最高价>0&&多最大盈利点>启动点数&&多实时点数<多最大盈利点-追踪点数-多最大盈利点*百分比)
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                    }
                  if(OrderType()==OP_SELL)
                    {
                     double 区间低价[];
                     double      最低价=区间K线最低价(币种,PERIOD_M1,OrderOpenTime(),TimeCurrent(),2,区间低价);
                     double 空最大盈利点=(OrderOpenPrice()-最低价)/点值(币种);
                     double 空实时点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                     if(最低价>0&&空最大盈利点>启动点数&&空实时点数<空最大盈利点-追踪点数-空最大盈利点*百分比)
                        result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::追踪平单(int magic,double 启动点数,double 追踪点数,double 百分比=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      if(百分比>0&&百分比<=1)
         追踪点数=0;
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string    币种=OrderSymbol();
                  if(OrderType()==OP_BUY)
                    {
                     double 区间高价[];
                     double   最高价=区间K线最高价(币种,PERIOD_M1,OrderOpenTime(),TimeCurrent(),1,区间高价);
                     double 多最大盈利点=(最高价-OrderOpenPrice())/点值(币种);
                     double 多实时点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                     if(最高价>0&&多最大盈利点>启动点数&&多实时点数<多最大盈利点-追踪点数-多最大盈利点*百分比)
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                    }
                  if(OrderType()==OP_SELL)
                    {
                     double 区间低价[];
                     double      最低价=区间K线最低价(币种,PERIOD_M1,OrderOpenTime(),TimeCurrent(),2,区间低价);
                     double 空最大盈利点=(OrderOpenPrice()-最低价)/点值(币种);
                     double 空实时点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                     if(最低价>0&&空最大盈利点>启动点数&&空实时点数<空最大盈利点-追踪点数-空最大盈利点*百分比)
                        result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
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
void 交易类::追踪平多(string 币种,int magic,string 注释,double 启动点数,double 追踪点数,double 百分比=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      if(百分比>0&&百分比<=1)
         追踪点数=0;
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  if(OrderType()==OP_BUY)
                    {
                     double 区间高价[];
                     double   最高价=区间K线最高价(币种,PERIOD_M1,OrderOpenTime(),TimeCurrent(),1,区间高价);
                     double 多最大盈利点=(最高价-OrderOpenPrice())/点值(币种);
                     double 多实时点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                     if(最高价>0&&多最大盈利点>启动点数&&多实时点数<多最大盈利点-追踪点数-多最大盈利点*百分比)
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::追踪平多(string 币种,int magic,double 启动点数,double 追踪点数,double 百分比=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      if(百分比>0&&百分比<=1)
         追踪点数=0;
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(OrderType()==OP_BUY)
                    {
                     double 区间高价[];
                     double   最高价=区间K线最高价(币种,PERIOD_M1,OrderOpenTime(),TimeCurrent(),1,区间高价);
                     double 多最大盈利点=(最高价-OrderOpenPrice())/点值(币种);
                     double 多实时点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                     if(最高价>0&&多最大盈利点>启动点数&&多实时点数<多最大盈利点-追踪点数-多最大盈利点*百分比)
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::追踪平多(int magic,double 启动点数,double 追踪点数,double 百分比=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      if(百分比>0&&百分比<=1)
         追踪点数=0;
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string    币种=OrderSymbol();
                  if(OrderType()==OP_BUY)
                    {
                     double 区间高价[];
                     double   最高价=区间K线最高价(币种,PERIOD_M1,OrderOpenTime(),TimeCurrent(),1,区间高价);
                     double 多最大盈利点=(最高价-OrderOpenPrice())/点值(币种);
                     double 多实时点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                     if(最高价>0&&多最大盈利点>启动点数&&多实时点数<多最大盈利点-追踪点数-多最大盈利点*百分比)
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::追踪平空(string 币种,int magic,string 注释,double 启动点数,double 追踪点数,double 百分比=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      if(百分比>0&&百分比<=1)
         追踪点数=0;
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  if(OrderType()==OP_SELL)
                    {
                     double 区间低价[];
                     double      最低价=区间K线最低价(币种,PERIOD_M1,OrderOpenTime(),TimeCurrent(),2,区间低价);
                     double 空最大盈利点=(OrderOpenPrice()-最低价)/点值(币种);
                     double 空实时点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                     if(最低价>0&&空最大盈利点>启动点数&&空实时点数<空最大盈利点-追踪点数-空最大盈利点*百分比)
                        result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::追踪平空(string 币种,int magic,double 启动点数,double 追踪点数,double 百分比=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      if(百分比>0&&百分比<=1)
         追踪点数=0;
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(OrderType()==OP_SELL)
                    {
                     double 区间低价[];
                     double      最低价=区间K线最低价(币种,PERIOD_M1,OrderOpenTime(),TimeCurrent(),2,区间低价);
                     double 空最大盈利点=(OrderOpenPrice()-最低价)/点值(币种);
                     double 空实时点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                     if(最低价>0&&空最大盈利点>启动点数&&空实时点数<空最大盈利点-追踪点数-空最大盈利点*百分比)
                        result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::追踪平空(int magic,double 启动点数,double 追踪点数,double 百分比=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      if(百分比>0&&百分比<=1)
         追踪点数=0;
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string    币种=OrderSymbol();
                  if(OrderType()==OP_SELL)
                    {
                     double 区间低价[];
                     double      最低价=区间K线最低价(币种,PERIOD_M1,OrderOpenTime(),TimeCurrent(),2,区间低价);
                     double 空最大盈利点=(OrderOpenPrice()-最低价)/点值(币种);
                     double 空实时点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                     if(最低价>0&&空最大盈利点>启动点数&&空实时点数<空最大盈利点-追踪点数-空最大盈利点*百分比)
                        result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool  交易类::区间k线极值在差点值内检测(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始位置,int 结束位置,int 开高低收1,int 开高低收2,double 设置允许点值)
  {
   double 区间高价[],区间低价[];
   double      最高价=区间K线最高价(币种,图表周期,起始位置,结束位置,开高低收1,区间高价);
   double      最低价=区间K线最低价(币种,图表周期,起始位置,结束位置,开高低收2,区间低价);
   bool        检测=在差点值之内(币种,最高价,最低价,设置允许点值);
   if(设置允许点值==0)
      检测=true;
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::实体极值百分比检测(string 币种,ENUM_TIMEFRAMES 图表周期,double 最高价,double 最低价,int 序号,int 一阴二阳,double 大于设定百分比通过)
  {
   bool 检测=false;
   double 差点值百分比=0;
   if(一阴二阳==1&&差点值(币种,iOpen(币种,图表周期,序号),最高价)!=0&&iOpen(币种,图表周期,序号)<最高价&&iClose(币种,图表周期,序号)>最低价)
      差点值百分比=差点值(币种,iClose(币种,图表周期,序号),iOpen(币种,图表周期,序号))/差点值(币种,iOpen(币种,图表周期,序号),最高价);
//----
   if(一阴二阳==2&&差点值(币种,iOpen(币种,图表周期,序号),最低价)!=0&&iOpen(币种,图表周期,序号)>最低价&&iClose(币种,图表周期,序号)<最高价)
      差点值百分比=差点值(币种,iClose(币种,图表周期,序号),iOpen(币种,图表周期,序号))/差点值(币种,iOpen(币种,图表周期,序号),最低价);
   if(差点值百分比>0&&差点值百分比>大于设定百分比通过)
      检测=true;
   if(大于设定百分比通过==0)
      检测=true;
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::实体极值刷新百分比检测(string 币种,ENUM_TIMEFRAMES 图表周期,double 最高价,double 最低价,int 序号,int 一阴二阳,double 大于设定百分比通过)
  {
   bool 检测=false;
   double 差点值百分比=0;
   if(一阴二阳==1&&差点值(币种,iOpen(币种,图表周期,序号),最高价)!=0&&iOpen(币种,图表周期,序号)<最高价&&iClose(币种,图表周期,序号)>最低价&&iHigh(币种,图表周期,序号+1)==最高价)
      差点值百分比=差点值(币种,iClose(币种,图表周期,序号),iOpen(币种,图表周期,序号))/差点值(币种,iOpen(币种,图表周期,序号),最高价);
//----
   if(一阴二阳==2&&差点值(币种,iOpen(币种,图表周期,序号),最低价)!=0&&iOpen(币种,图表周期,序号)>最低价&&iClose(币种,图表周期,序号)<最高价&&iLow(币种,图表周期,序号+1)==最低价)
      差点值百分比=差点值(币种,iClose(币种,图表周期,序号),iOpen(币种,图表周期,序号))/差点值(币种,iOpen(币种,图表周期,序号),最低价);
   if(差点值百分比>0&&差点值百分比>大于设定百分比通过)
      检测=true;
   if(大于设定百分比通过==0)
      检测=true;
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::非区间收阳百分比(string 币种,ENUM_TIMEFRAMES 图表周期,ENUM_SERIESMODE 最高价价格类型,ENUM_SERIESMODE 最低价格类型,int 序号,int 区间根数,ENUM_TIMEFRAMES 阳图表周期,double 阳百分比,double 设置允许区间点值)
  {
   double  最高价= 数据.求区间最高价(币种,图表周期,最高价价格类型,序号+1,区间根数);
   double  最低价= 数据.求区间最低价(币种,图表周期,最低价格类型,序号+1,区间根数);
   bool 非区间收阳=阴阳判断(币种,图表周期,序号,2)*实体极值百分比检测(币种,阳图表周期,最高价,最低价,序号,2,阳百分比)*!在差点值之内(币种,最高价,最低价,设置允许区间点值);
   return 非区间收阳;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::非区间收阴百分比(string 币种,ENUM_TIMEFRAMES 图表周期,ENUM_SERIESMODE 最高价价格类型,ENUM_SERIESMODE 最低价格类型,int 序号,int 区间根数,ENUM_TIMEFRAMES 阴图表周期,double 阴百分比,double 设置允许区间点值)
  {
   double  最高价= 数据.求区间最高价(币种,图表周期,最高价价格类型,序号+1,区间根数);
   double  最低价= 数据.求区间最低价(币种,图表周期,最低价格类型,序号+1,区间根数);
   bool 非区间收阴=阴阳判断(币种,图表周期,序号,1)*实体极值百分比检测(币种,阴图表周期,最高价,最低价,序号,1,阴百分比)*!在差点值之内(币种,最高价,最低价,设置允许区间点值);
   return 非区间收阴;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::区间收阳百分比(string 币种,ENUM_TIMEFRAMES 图表周期,ENUM_SERIESMODE 最高价价格类型,ENUM_SERIESMODE 最低价格类型,int 序号,int 区间根数,ENUM_TIMEFRAMES 阳图表周期,double 阳百分比,double 设置允许区间点值)
  {
   double  最高价= 数据.求区间最高价(币种,图表周期,最高价价格类型,序号+1,区间根数);
   double  最低价= 数据.求区间最低价(币种,图表周期,最低价格类型,序号+1,区间根数);
   bool 非区间收阳=阴阳判断(币种,图表周期,序号,2)*实体极值百分比检测(币种,阳图表周期,最高价,最低价,序号,2,阳百分比)*在差点值之内(币种,最高价,最低价,设置允许区间点值);
   return 非区间收阳;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::区间收阴百分比(string 币种,ENUM_TIMEFRAMES 图表周期,ENUM_SERIESMODE 最高价价格类型,ENUM_SERIESMODE 最低价格类型,int 序号,int 区间根数,ENUM_TIMEFRAMES 阴图表周期,double 阴百分比,double 设置允许区间点值)
  {
   double  最高价= 数据.求区间最高价(币种,图表周期,最高价价格类型,序号+1,区间根数);
   double  最低价= 数据.求区间最低价(币种,图表周期,最低价格类型,序号+1,区间根数);
   bool 非区间收阴=阴阳判断(币种,图表周期,序号,1)*实体极值百分比检测(币种,阴图表周期,最高价,最低价,序号,1,阴百分比)*在差点值之内(币种,最高价,最低价,设置允许区间点值);
   return 非区间收阴;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::非区间刷新收阳百分比(string 币种,ENUM_TIMEFRAMES 图表周期,ENUM_SERIESMODE 最高价价格类型,ENUM_SERIESMODE 最低价格类型,int 序号,int 区间根数,ENUM_TIMEFRAMES 阳图表周期,double 阳百分比,double 设置允许区间点值)
  {
   double  最高价= 数据.求区间最高价(币种,图表周期,最高价价格类型,序号+1,区间根数);
   double  最低价= 数据.求区间最低价(币种,图表周期,最低价格类型,序号+1,区间根数);
   bool 非区间收阳=阴阳判断(币种,图表周期,序号,2)*实体极值刷新百分比检测(币种,阳图表周期,最高价,最低价,序号,2,阳百分比)*!在差点值之内(币种,最高价,最低价,设置允许区间点值);
   return 非区间收阳;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::非区间刷新收阴百分比(string 币种,ENUM_TIMEFRAMES 图表周期,ENUM_SERIESMODE 最高价价格类型,ENUM_SERIESMODE 最低价格类型,int 序号,int 区间根数,ENUM_TIMEFRAMES 阴图表周期,double 阴百分比,double 设置允许区间点值)
  {
   double  最高价= 数据.求区间最高价(币种,图表周期,最高价价格类型,序号+1,区间根数);
   double  最低价= 数据.求区间最低价(币种,图表周期,最低价格类型,序号+1,区间根数);
   bool 非区间收阴=阴阳判断(币种,图表周期,序号,1)*实体极值刷新百分比检测(币种,阴图表周期,最高价,最低价,序号,1,阴百分比)*!在差点值之内(币种,最高价,最低价,设置允许区间点值);
   return 非区间收阴;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::区间刷新收阳百分比(string 币种,ENUM_TIMEFRAMES 图表周期,ENUM_SERIESMODE 最高价价格类型,ENUM_SERIESMODE 最低价格类型,int 序号,int 区间根数,ENUM_TIMEFRAMES 阳图表周期,double 阳百分比,double 设置允许区间点值)
  {
   double  最高价= 数据.求区间最高价(币种,图表周期,最高价价格类型,序号+1,区间根数);
   double  最低价= 数据.求区间最低价(币种,图表周期,最低价格类型,序号+1,区间根数);
   bool 非区间收阳=阴阳判断(币种,图表周期,序号,2)*实体极值刷新百分比检测(币种,阳图表周期,最高价,最低价,序号,2,阳百分比)*在差点值之内(币种,最高价,最低价,设置允许区间点值);
   return 非区间收阳;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::区间刷新收阴百分比(string 币种,ENUM_TIMEFRAMES 图表周期,ENUM_SERIESMODE 最高价价格类型,ENUM_SERIESMODE 最低价格类型,int 序号,int 区间根数,ENUM_TIMEFRAMES 阴图表周期,double 阴百分比,double 设置允许区间点值)
  {
   double  最高价= 数据.求区间最高价(币种,图表周期,最高价价格类型,序号+1,区间根数);
   double  最低价= 数据.求区间最低价(币种,图表周期,最低价格类型,序号+1,区间根数);
   bool 非区间收阴=阴阳判断(币种,图表周期,序号,1)*实体极值刷新百分比检测(币种,阴图表周期,最高价,最低价,序号,1,阴百分比)*在差点值之内(币种,最高价,最低价,设置允许区间点值);
   return 非区间收阴;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::  在差点值之外(string 币种1,double A,string 币种2,double B,double 设置允许点值)
  {
   bool 检测=false;
   if(A>0&&B>0)
     {
      double 差点值=A/SymbolInfoDouble(币种1,SYMBOL_POINT)-B/SymbolInfoDouble(币种2,SYMBOL_POINT);
      检测=MathAbs(差点值)>设置允许点值;
     }
   if(设置允许点值==0)
      检测=true;
   return(检测);
  }
//----
double 交易类::  在差点值之外(string 币种,double A,double B,double 设置允许点值)
  {
   bool 检测=false;
   if(A>0&&B>0)
     {
      double 差点值=(A-B)/SymbolInfoDouble(币种,SYMBOL_POINT);
      检测=MathAbs(差点值)>设置允许点值;
     }
   if(设置允许点值==0)
      检测=true;
   return(检测);
  }
//----
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ENUM_TIMEFRAMES 交易类::  索引返回图表周期(int 索引)
  {
   if(索引>9||索引<0)
      索引=0;
   ENUM_TIMEFRAMES 周期=PERIOD_CURRENT;
   周期=(ENUM_TIMEFRAMES)索引;
   return 周期;
  }
//+------------------------------------------------------------------+
ENUM_TIMEFRAMES  交易类:: 索引累计返回图表周期(int 累计到循环周期)
  {
   static int 累计x=1;
   if(累计x>9||累计x<0||累计x>累计到循环周期)
      累计x=1;
   ENUM_TIMEFRAMES 周期=PERIOD_CURRENT;
   周期=(ENUM_TIMEFRAMES)累计x;
   累计x++;
   return 周期;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::总盈利平单休息多少秒(string 币种,int magic,string 注释,double 盈利金额,int 休息秒数=0)
  {
   bool 检测=false;
   if(盈利金额>0)
     {
      double  总盈亏=持仓盈亏统计(币种,magic,注释);
      if(总盈亏>盈利金额)
        {
         平单(币种,magic,注释);
         Sleep(休息秒数*1000);
         if(休息秒数==0)
            检测=true;
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::总盈利平单休息多少秒(string 币种,int magic,double 盈利金额,int 休息秒数=0)
  {
   bool 检测=false;
   if(盈利金额>0)
     {
      double  总盈亏=持仓盈亏统计(币种,magic);
      if(总盈亏>盈利金额)
        {
         平单(币种,magic);
         Sleep(休息秒数*1000);
         if(休息秒数==0)
            检测=true;
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::总盈利平单休息多少秒(int magic,double 盈利金额,int 休息秒数=0)
  {
   bool 检测=false;
   if(盈利金额>0)
     {
      double  总盈亏=持仓盈亏统计(magic);
      if(总盈亏>盈利金额)
        {
         平单(magic);
         Sleep(休息秒数*1000);
         if(休息秒数==0)
            检测=true;
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::总亏损平单休息多少秒(string 币种,int magic,string 注释,double 亏损金额,int 休息秒数=0)
  {
   bool 检测=false;
   if(亏损金额<0)
     {
      double  总盈亏=持仓盈亏统计(币种,magic,注释);
      if(总盈亏<亏损金额)
        {
         平单(币种,magic,注释);
         Sleep(休息秒数*1000);
         if(休息秒数==0)
            检测=true;
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::总亏损平单休息多少秒(string 币种,int magic,double 亏损金额,int 休息秒数=0)
  {
   bool 检测=false;
   if(亏损金额<0)
     {
      double  总盈亏=持仓盈亏统计(币种,magic);
      if(总盈亏<亏损金额)
        {
         平单(币种,magic);
         Sleep(休息秒数*1000);
         if(休息秒数==0)
            检测=true;
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::总亏损平单休息多少秒(int magic,double 亏损金额,int 休息秒数=0)
  {
   bool 检测=false;
   if(亏损金额<0)
     {
      double  总盈亏=持仓盈亏统计(magic);
      if(总盈亏<亏损金额)
        {
         平单(magic);
         Sleep(休息秒数*1000);
         if(休息秒数==0)
            检测=true;
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::画按钮编辑框返其值(string 按钮名称,string 编辑框名称,string  按钮内容,string 编辑框内容,int 一按二编辑,int 按妞字号=12,int 编辑框字=12, int 平移=0,int 下移=0,bool 背景隐藏=true)
  {
   double 返回值=0;
   图形.画按钮(按钮名称,0,10+平移,90+下移,100,25,CORNER_LEFT_UPPER,按钮内容,clrBlue,clrBlack,clrWhite,"楷体",按妞字号,背景隐藏,false,false);
   图形.画编辑框(编辑框名称,0,110+平移,90+下移,100,25,false,CORNER_LEFT_UPPER,编辑框内容,clrAliceBlue,clrGreen,clrBlack,"楷体",编辑框字,ALIGN_CENTER,背景隐藏,false,false);
   if(一按二编辑==1)
      返回值=(double)ObjectGetString(0,按钮名称,OBJPROP_TEXT);
   if(一按二编辑==2)
      返回值=(double) ObjectGetString(0,编辑框名称,OBJPROP_TEXT);
   return 返回值;
  }
//+------------------------------------------------------------------+
void 交易类::左上角信息展示(string 信息,int 字号=15,int 平移=0,int 下移=0,color 按钮颜色=clrWhite,color 边框颜色=clrGreen,color 字体颜色=clrBlack,bool 背景隐藏=true)
  {
   图形.画按钮("名称0",0,10,100+下移,150+平移,30,CORNER_LEFT_UPPER,信息,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
  }
//+------------------------------------------------------------------+
void 交易类::左上角信息展示(string 信息1,string 信息2,int 字号=15,int 平移=0,int 下移=0,color 按钮颜色=clrWhite,color 边框颜色=clrGreen,color 字体颜色=clrBlack,bool 背景隐藏=true)
  {
   图形.画按钮("名称1",0,10,100+下移,150+平移,30,CORNER_LEFT_UPPER,信息1,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
   图形.画按钮("名称2",0,10,130+下移,150+平移,30,CORNER_LEFT_UPPER,信息2,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
  }
//+------------------------------------------------------------------+
void 交易类::左上角信息展示(string 信息1,string 信息2,string 信息3,int 字号=15,int 平移=0,int 下移=0,color 按钮颜色=clrWhite,color 边框颜色=clrGreen,color 字体颜色=clrBlack,bool 背景隐藏=true)
  {
   图形.画按钮("名称3",0,10,100+下移,150+平移,30,CORNER_LEFT_UPPER,信息1,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
   图形.画按钮("名称4",0,10,130+下移,150+平移,30,CORNER_LEFT_UPPER,信息2,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
   图形.画按钮("名称5",0,10,160+下移,150+平移,30,CORNER_LEFT_UPPER,信息3,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
  }
//+------------------------------------------------------------------+
void 交易类::左上角信息展示(string 信息1,string 信息2,string 信息3,string 信息4,int 字号=15,int 平移=0,int 下移=0,color 按钮颜色=clrWhite,color 边框颜色=clrGreen,color 字体颜色=clrBlack,bool 背景隐藏=true)
  {
   图形.画按钮("名称6",0,10,100+下移,150+平移,30,CORNER_LEFT_UPPER,信息1,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
   图形.画按钮("名称7",0,10,130+下移,150+平移,30,CORNER_LEFT_UPPER,信息2,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
   图形.画按钮("名称8",0,10,160+下移,150+平移,30,CORNER_LEFT_UPPER,信息3,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
   图形.画按钮("名称9",0,10,190+下移,150+平移,30,CORNER_LEFT_UPPER,信息4,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
  }
//+------------------------------------------------------------------+
void 交易类::左上角信息展示(string 信息1,string 信息2,string 信息3,string 信息4,string 信息5,int 字号=15,int 平移=0,int 下移=0,color 按钮颜色=clrWhite,color 边框颜色=clrGreen,color 字体颜色=clrBlack,bool 背景隐藏=true)
  {
   图形.画按钮("名称10",0,10,100+下移,150+平移,30,CORNER_LEFT_UPPER,信息1,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
   图形.画按钮("名称11",0,10,130+下移,150+平移,30,CORNER_LEFT_UPPER,信息2,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
   图形.画按钮("名称12",0,10,160+下移,150+平移,30,CORNER_LEFT_UPPER,信息3,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
   图形.画按钮("名称13",0,10,190+下移,150+平移,30,CORNER_LEFT_UPPER,信息4,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
   图形.画按钮("名称14",0,10,220+下移,150+平移,30,CORNER_LEFT_UPPER,信息5,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
  }
//+------------------------------------------------------------------+
void 交易类::左上角信息展示(string 信息1,string 信息2,string 信息3,string 信息4,string 信息5,string 信息6,int 字号=15,int 平移=0,int 下移=0,color 按钮颜色=clrWhite,color 边框颜色=clrGreen,color 字体颜色=clrBlack,bool 背景隐藏=true)
  {
   图形.画按钮("名称15",0,10,100+下移,150+平移,30,CORNER_LEFT_UPPER,信息1,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
   图形.画按钮("名称16",0,10,130+下移,150+平移,30,CORNER_LEFT_UPPER,信息2,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
   图形.画按钮("名称17",0,10,160+下移,150+平移,30,CORNER_LEFT_UPPER,信息3,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
   图形.画按钮("名称18",0,10,190+下移,150+平移,30,CORNER_LEFT_UPPER,信息4,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
   图形.画按钮("名称19",0,10,220+下移,150+平移,30,CORNER_LEFT_UPPER,信息5,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
   图形.画按钮("名称20",0,10,250+下移,150+平移,30,CORNER_LEFT_UPPER,信息6,按钮颜色,边框颜色,字体颜色,"楷体",字号,背景隐藏,false,false);
  }
//+------------------------------------------------------------------+
void   交易类::删除物件(int 窗口=0)
  {
   ObjectsDeleteAll(0,窗口,OBJ_BUTTON);//删按钮
   ObjectsDeleteAll(0,窗口,OBJ_BITMAP);// 删位图
   ObjectsDeleteAll(0,窗口,OBJ_BITMAP_LABEL);//删位图标签
   ObjectsDeleteAll(0,窗口,OBJ_EDIT);//  删编辑框
   ObjectsDeleteAll(0,窗口,OBJ_RECTANGLE_LABEL); //删矩形
   ObjectsDeleteAll(0,窗口,OBJ_LABEL);//  删文本标签
   ObjectsDeleteAll(0,窗口,OBJ_ARROW);//删箭头
   ObjectsDeleteAll(0,窗口,OBJ_FIBO);//---删斐波那契
   ObjectsDeleteAll(0,窗口,OBJ_ARROW_RIGHT_PRICE);//--删右价格标签
   ObjectsDeleteAll(0,窗口,OBJ_TREND);//--趋势
   ObjectsDeleteAll(0,窗口,OBJ_VLINE);//-垂直
   ObjectsDeleteAll(0,窗口,OBJ_HLINE);//-水平
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void   交易类::删除物件(int  窗口,ENUM_OBJECT 物件类型1=OBJ_ARROW,ENUM_OBJECT 物件类型2=OBJ_ARROW,ENUM_OBJECT 物件类型3 =OBJ_ARROW,ENUM_OBJECT 物件类型4= OBJ_ARROW,ENUM_OBJECT 物件类型5= OBJ_ARROW,ENUM_OBJECT 物件类型6 =OBJ_ARROW,ENUM_OBJECT 物件类型7= OBJ_ARROW,ENUM_OBJECT 物件类型8 =OBJ_ARROW,ENUM_OBJECT 物件类型9 =OBJ_ARROW)
  {
   ObjectsDeleteAll(0,窗口,物件类型1);
   ObjectsDeleteAll(0,窗口,物件类型2);
   ObjectsDeleteAll(0,窗口,物件类型3);
   ObjectsDeleteAll(0,窗口,物件类型4);
   ObjectsDeleteAll(0,窗口,物件类型5);
   ObjectsDeleteAll(0,窗口,物件类型6);
   ObjectsDeleteAll(0,窗口,物件类型7);
   ObjectsDeleteAll(0,窗口,物件类型8);
   ObjectsDeleteAll(0,窗口,物件类型9);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void   交易类::删除全部物件(int  窗口,ENUM_OBJECT 物件类型1=OBJ_ARROW,ENUM_OBJECT 物件类型2=OBJ_ARROW,ENUM_OBJECT 物件类型3 =OBJ_ARROW,ENUM_OBJECT 物件类型4= OBJ_ARROW,ENUM_OBJECT 物件类型5= OBJ_ARROW,ENUM_OBJECT 物件类型6 =OBJ_ARROW,ENUM_OBJECT 物件类型7= OBJ_ARROW,ENUM_OBJECT 物件类型8 =OBJ_ARROW,ENUM_OBJECT 物件类型9 =OBJ_ARROW)
  {
   ObjectsDeleteAll(0,窗口,物件类型1);
   ObjectsDeleteAll(0,窗口,物件类型2);
   ObjectsDeleteAll(0,窗口,物件类型3);
   ObjectsDeleteAll(0,窗口,物件类型4);
   ObjectsDeleteAll(0,窗口,物件类型5);
   ObjectsDeleteAll(0,窗口,物件类型6);
   ObjectsDeleteAll(0,窗口,物件类型7);
   ObjectsDeleteAll(0,窗口,物件类型8);
   ObjectsDeleteAll(0,窗口,物件类型9);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::删除文件(int 位置=0,string 文件名称1="",string 文件名称2="",string 文件名称3="",string 文件名称4="",string 文件名称5="",string 文件名称6="",string 文件名称7="",string 文件名称8="",string 文件名称9="")
  {
   FileDelete(文件名称1+".csv",位置);
   FileDelete(文件名称2+".csv",位置);
   FileDelete(文件名称3+".csv",位置);
   FileDelete(文件名称4+".csv",位置);
   FileDelete(文件名称5+".csv",位置);
   FileDelete(文件名称6+".csv",位置);
   FileDelete(文件名称7+".csv",位置);
   FileDelete(文件名称8+".csv",位置);
   FileDelete(文件名称9+".csv",位置);
  }
//+------------------------------------------------------------------
//+------------------------------------------------------------------+
void 交易类::信息写入文件夹(string 文件名,int 写入次数,string 间隔符,string 写入信息1,string 写入信息2="",string 写入信息3="",string 写入信息4="",string 写入信息5="",string 写入信息6="",string 写入信息7="",string 写入信息8="",string 写入信息9="",string 写入信息10="",string 写入信息11="",string 写入信息12="",string 写入信息13="",string 写入信息14="",string 写入信息15="")
  {
   int h;
   for(int i=0; i<写入次数 && !IsStopped(); i++) // 尝试若干次
     {
      h=FileOpen(文件名+".csv",FILE_READ|FILE_WRITE|FILE_REWRITE|FILE_SHARE_READ|FILE_ANSI|FILE_CSV,StringGetCharacter(间隔符,0));
      if(h!=INVALID_HANDLE)  // 文件打开成功
        {
         FileSeek(h,0,SEEK_END);
         FileWrite(h,写入信息1,写入信息2,写入信息3,写入信息4,写入信息5,写入信息6,写入信息7,写入信息8,写入信息9,写入信息10,写入信息11,写入信息12,写入信息13,写入信息14,写入信息15);
         FileClose(h); // 写入文件
         Sleep(1);// 加入暂停为其它程序让行
        }
     }
  }
//---------------
//+------------------------------------------------------------------+
bool 交易类:: 读取文件至数组(string 文件名,string 间隔符,结构体 & 数组[])
  {
   ResetLastError();
   int h1=FileOpen(文件名+".csv",FILE_READ|FILE_ANSI|FILE_CSV,StringGetCharacter(间隔符,0));
   if(h1==INVALID_HANDLE)
     {
      int ErrNum=GetLastError();
      printf("打开文件错误 %s # %i",文件名+".csv",ErrNum);
      return(false);
     }
   int lcnt=0; // 计算行数的变量
   int fcnt=0; // 计算行内字段数的变量
   while(!FileIsEnding(h1))
     {
      string str=FileReadString(h1);
      // 新行 (结构数组的新元素)
      if(lcnt>=ArraySize(数组))  // 结构数组完整填充
        {
         ArrayResize(数组,ArraySize(数组)+1024); // 增加 1024 个元素的数组大小
        }
      ArrayResize(数组[lcnt].成员,64);// 改变结构的数组大小
      数组[lcnt].成员[0]=str; // 分配第一个字段值
      // 开始读取行内其它字段
      fcnt=1; // 直到行数组中的一个元素被占用
      while(!FileIsLineEnding(h1))  // 读取行内剩余字段
        {
         str=FileReadString(h1);
         if(fcnt>=ArraySize(数组[lcnt].成员))  // 字段数组完整填充
           {
            ArrayResize(数组[lcnt].成员,ArraySize(数组[lcnt].成员)+64); // 数组增加 64 个元素大小
           }
         数组[lcnt].成员[fcnt]=str; // 分配下一个字段值
         fcnt++; // 增加行计数器
        }
      ArrayResize(数组[lcnt].成员,fcnt); // 根据实际字段数量更改字段数组的大小
      lcnt++; // 增加行计数器
     }
   ArrayResize(数组,lcnt); // 根据实际行数更改结构 (行) 数组
   FileClose(h1);
   return(true);
  }


///--------
bool 交易类::ReadFileToArrayCSV(string 文件名,string 间隔符,SLine & Lines[])
  {
   ResetLastError();
   int h=FileOpen(文件名+".csv",FILE_READ|FILE_ANSI|FILE_CSV,StringGetCharacter(间隔符,0));
   if(h==INVALID_HANDLE)
     {
      int ErrNum=GetLastError();
      printf("打开文件错误 %s # %i",文件名+".csv",ErrNum);
      return(false);
     }
   int lcnt=0; // 计算行数的变量
   int fcnt=0; // 计算行内字段数的变量
   while(!FileIsEnding(h))
     {
      string str=FileReadString(h);
      // 新行 (结构数组的新元素)
      if(lcnt>=ArraySize(Lines))  // 结构数组完整填充
        {
         ArrayResize(Lines,ArraySize(Lines)+1024); // 增加 1024 个元素的数组大小
        }
      ArrayResize(Lines[lcnt].field,64);// 改变结构的数组大小
      Lines[lcnt].field[0]=str; // 分配第一个字段值
      // 开始读取行内其它字段
      fcnt=1; // 直到行数组中的一个元素被占用
      while(!FileIsLineEnding(h))  // 读取行内剩余字段
        {
         str=FileReadString(h);
         if(fcnt>=ArraySize(Lines[lcnt].field))  // 字段数组完整填充
           {
            ArrayResize(Lines[lcnt].field,ArraySize(Lines[lcnt].field)+64); // 数组增加 64 个元素大小
           }
         Lines[lcnt].field[fcnt]=str; // 分配下一个字段值
         fcnt++; // 增加行计数器
        }
      ArrayResize(Lines[lcnt].field,fcnt); // 根据实际字段数量更改字段数组的大小
      lcnt++; // 增加行计数器
     }
   ArrayResize(Lines,lcnt); // 根据实际行数更改结构 (行) 数组
   FileClose(h);
   return(true);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  交易类::读取数组文件至数组(string 文件名,string 间隔符,结构体 & 动态数组[],double &值数组[],int 成员序号)
  {
   if(!读取文件至数组(文件名,间隔符,动态数组))
      Print("读取数据至数组错误！");
   else
     {
      for(int i=0; i<ArraySize(动态数组); i++)
        {
         for(int j=0; j<ArraySize(动态数组[i].成员); j++)
            值数组[i]=(double)动态数组[i].成员[成员序号];
        }
     }
  }
//+------------------------------------------------------------------+
string  交易类::读取数组内容(string 文件名,string 间隔符,int 数列序号,int 成员序号, 结构体 & 动态数组[])
  {
// 结构体 动态数组[];
   string 值="";
   if(!读取文件至数组(文件名,间隔符,动态数组))
      Print("读取数据至数组错误！");
   else
      值=动态数组[数列序号].成员[成员序号];
   return(值);
  }
//------
string  交易类::读取数组内容2(string 文件名,string 间隔符,int 数列序号,int 成员序号, SLine & lines[])
  {
//   SLine    lines[];
   string 值="";
   if(!ReadFileToArrayCSV(文件名,间隔符,lines))
      Print("读取数据至数组错误！");
   else
      值=lines[数列序号].field[成员序号];
   return(值);
  }
//+------------------------------------------------------------------+
string  交易类::读取数组内容(string 文件名,string 间隔符,int 成员序号, 结构体 & 动态数组[])
  {
// 结构体 动态数组[];
   string 值="";
   if(!读取文件至数组(文件名,间隔符,动态数组))
      Print("读取数据至数组错误！");
   else
     {
      for(int i=0; i<ArraySize(动态数组); i++)
        {
         for(int j=0; j<ArraySize(动态数组[i].成员); j++)
            值=动态数组[i].成员[成员序号];
        }
     }
   return(值);
  }

//+------------------------------------------------------------------+
string  交易类::读取数组内容2(string 文件名,string 间隔符,int 成员序号, SLine & lines[])
  {
//   SLine    lines[];
   string 值="";
   if(!ReadFileToArrayCSV(文件名,间隔符,lines))
      Print("读取数据至数组错误！");
   else
     {
      for(int i=0; i<ArraySize(lines); i++)
        {
         for(int j=0; j<ArraySize(lines[i].field); j++)
            值=lines[i].field[成员序号];
        }
     }
   return(值);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------
int 交易类:: 读取文件非空判断(string 文件名,string 间隔符,int 非空判断)
  {
   非空判断=0;
   int h=FileOpen(文件名+".csv",FILE_READ|FILE_SHARE_READ|FILE_ANSI|FILE_CSV,StringGetCharacter(间隔符,0));
   if(h==INVALID_HANDLE)
      Alert("打开文件错误");
   Print("=== 开始 ===");
   while(!FileIsEnding(h))
     {
      string str=FileReadString(h);
      Print(str);
      if(FileIsLineEnding(h))
        {
         Print("---");
         if(str!=" ")
            非空判断=1;
         else
            非空判断=2;
        }
     }
   FileClose(h);
   return(非空判断);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::复制文件(string 原文件名, string 现文件名,int 起始位置=0,int 结束位置=FILE_COMMON)
  {
//---把文件复制到公用文件夹
   if(!FileCopy(原文件名+".csv",起始位置,现文件名+".csv",结束位置|FILE_REWRITE))
     {
      //Print("文件复制错误");
      Sleep(1);
     }
  }
//+------------------------------------------------------------------+
bool 交易类::文件是否存在(string 文件名,int 位置=0)
  {
   bool 文件是否存在= FileIsExist(文件名+".csv",位置);
   return(文件是否存在);
  }
//+------------------------------------------------------------------+
void 交易类::读取文件(string 文件名,string 间隔符)
  {
   int hd=FileOpen(文件名+".csv",FILE_READ|FILE_WRITE|FILE_REWRITE|FILE_SHARE_READ|FILE_SHARE_WRITE|FILE_ANSI|FILE_CSV,StringGetCharacter(间隔符,0));
   if(hd==INVALID_HANDLE)
     {
      Alert("打开文件错误");
      return;
     }
   Print("=== 开始 ===");
   while(!FileIsEnding(hd))
     {
      string str=FileReadString(hd);
      Print(str);
      if(FileIsLineEnding(hd))
        {
         Print("---");
        }
     }
   FileClose(hd);
  }
///---------------
void 交易类::消息盒子(string 提示内容,string 表头,bool  移除EA,string 提醒内容)
  {
   int zhi= MessageBox(表头,提示内容,0x00000004);
   if(zhi==6&&移除EA)
      ExpertRemove();
   else
      Alert(提醒内容);
  }
//+------------------------------------------------------------------+
double  交易类::多尾单马丁手数(string 币种,int magic,string 注释,double 初始下单手数,double 手数系数,bool 倍投开启)
  {
   double  持单数量=持仓单数统计(币种, magic,注释,OP_BUY);
   double  尾单手数= 尾单交易量(币种, magic,注释,OP_BUY);
   if(持单数量==0)
      累计1=1;
   if(倍投开启&&持单数量==0)
      尾单手数=0;
   if(倍投开启&&持单数量>=1)
      初始下单手数=0;
   double 返回手数=初始下单手数+手数系数*尾单手数;
   累计1++;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  交易类::空尾单马丁手数(string 币种,int magic,string 注释,double 初始下单手数,double 手数系数,bool 倍投开启)
  {
   double  持单数量=持仓单数统计(币种, magic,注释,OP_SELL);
   double  尾单手数= 尾单交易量(币种, magic,注释,OP_SELL);
   if(持单数量==0)
      累计2=1;
   if(倍投开启&&持单数量==0)
      尾单手数=0;
   if(倍投开启&&持单数量>=1)
      初始下单手数=0;
   double 返回手数=初始下单手数+手数系数*尾单手数;
   累计2++;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  交易类::多尾单马丁手数(string 币种,int magic,double 初始下单手数,double 手数系数,bool 倍投开启)
  {
   double  持单数量=持仓单数统计(币种,magic,OP_BUY);
   double  尾单手数= 尾单交易量(币种, magic,OP_BUY);
   if(持单数量==0)
      累计3=1;
   if(倍投开启&&持单数量==0)
      尾单手数=0;
   if(倍投开启&&持单数量>=1)
      初始下单手数=0;
   double 返回手数=初始下单手数+手数系数*尾单手数;
   累计3++;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
double  交易类::空尾单马丁手数(string 币种,int magic,double 初始下单手数,double 手数系数,bool 倍投开启)
  {
   double  持单数量=持仓单数统计(币种, magic,OP_SELL);
   double  尾单手数= 尾单交易量(币种, magic,OP_SELL);
   if(持单数量==0)
      累计4=1;
   if(倍投开启&&持单数量==0)
      尾单手数=0;
   if(倍投开启&&持单数量>=1)
      初始下单手数=0;
   double 返回手数=初始下单手数+手数系数*尾单手数;
   累计4++;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
double  交易类::多马丁手数(string 币种,int magic,string 注释,double 初始下单手数,double 手数系数,double 等差)
  {
   double  持单数量=持仓单数统计(币种, magic,注释,OP_BUY);
   static double 累计A=1;
   if(持单数量==0)
     {
      累计A=1;
      累计5=1;
     }
   double 返回手数=初始下单手数*手数系数*累计A;
   累计A=累计A+等差;
   累计5++;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
double  交易类::空马丁手数(string 币种,int magic,string 注释,double 初始下单手数,double 手数系数,double 等差)
  {
   double  持单数量=持仓单数统计(币种, magic,注释,OP_SELL);
   static double 累计B=1;
   if(持单数量==0)
     {
      累计B=1;
      累计6=1;
     }
   double 返回手数=初始下单手数*手数系数*累计B;
   累计B=累计B+等差;
   累计6++;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  交易类::多马丁手数(string 币种,int magic,double 初始下单手数,double 手数系数,double 等差)
  {
   double  持单数量=持仓单数统计(币种, magic,OP_BUY);
   static double 累计C=1;
   if(持单数量==0)
     {
      累计C=1;
      累计7=1;
     }
   double 返回手数=初始下单手数*手数系数*累计C;
   累计C=累计C+等差;
   累计7++;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  交易类::空马丁手数(string 币种,int magic,double 初始下单手数,double 手数系数,double 等差)
  {
   double  持单数量=持仓单数统计(币种, magic,OP_SELL);
   static double 累计D=1;
   if(持单数量==0)
     {
      累计D=1;
      累计8=1;
     }
   double 返回手数=初始下单手数*手数系数*累计D;
   累计D=累计D+等差;
   累计8++;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  交易类::尾单马丁手数(string 币种,int magic,string 注释,int 持仓方向,double 初始下单手数,double 手数系数,bool 倍投开启)
  {
   double  持单数量=持仓单数统计(币种, magic,注释,持仓方向);
   double  尾单手数= 尾单交易量(币种, magic,注释, 持仓方向);
   if(持单数量==0)
      计1=1;
   if(倍投开启&&持单数量==0)
      尾单手数=0;
   if(倍投开启&&持单数量>=1)
      初始下单手数=0;
   double 返回手数=初始下单手数+手数系数*尾单手数;
   计1++;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  交易类::尾单马丁手数(string 币种,int magic,int 持仓方向,double 初始下单手数,double 手数系数,bool 倍投开启)
  {
   double  持单数量=持仓单数统计(币种, magic, 持仓方向);
   double  尾单手数= 尾单交易量(币种, magic, 持仓方向);
   if(持单数量==0)
      计2=1;
   if(倍投开启&&持单数量==0)
      尾单手数=0;
   if(倍投开启&&持单数量>=1)
      初始下单手数=0;
   double 返回手数=初始下单手数+手数系数*尾单手数;
   计2++;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  交易类::尾单马丁手数(string 币种,int magic,string 注释,double 初始下单手数,double 手数系数,bool 倍投开启)
  {
   double  持单数量=持仓单数统计(币种, magic,注释);
   double  尾单手数= 尾单交易量(币种, magic,注释);
   if(持单数量==0)
      计3=1;
   if(倍投开启&&持单数量==0)
      尾单手数=0;
   if(倍投开启&&持单数量>=1)
      初始下单手数=0;
   double 返回手数=初始下单手数+手数系数*尾单手数;
   计3++;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  交易类::尾单马丁手数(string 币种,int magic,double 初始下单手数,double 手数系数,bool 倍投开启)
  {
   double  持单数量=持仓单数统计(币种,magic);
   double  尾单手数=尾单交易量(币种, magic);
   if(持单数量==0)
      计4=1;
   if(倍投开启&&持单数量==0)
      尾单手数=0;
   if(倍投开启&&持单数量>=1)
      初始下单手数=0;
   double 返回手数=初始下单手数+手数系数*尾单手数;
   计4++;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
double  交易类::马丁手数(string 币种,int magic,string 注释,int 持仓方向,double 初始下单手数,double 手数系数,double 等差)
  {
   double  持单数量=持仓单数统计(币种, magic,注释,持仓方向);
   static double 累计E=1;
   if(持单数量==0)
     {
      累计E=1;
      计5=1;
     }
   double 返回手数=初始下单手数*手数系数*累计E;
   累计E=累计E+等差;
   计5++;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  交易类::马丁手数(string 币种,int magic,int 持仓方向,double 初始下单手数,double 手数系数,double 等差)
  {
   double  持单数量=持仓单数统计(币种, magic, 持仓方向);
   static double 累计F=1;
   if(持单数量==0)
     {
      累计F=1;
      计6=1;
     }
   double 返回手数=初始下单手数*手数系数*累计F;
   累计F=累计F+等差;
   计6++;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
double  交易类::马丁手数(string 币种,int magic,string 注释,double 初始下单手数,double 手数系数,double 等差)
  {
   double  持单数量=持仓单数统计(币种, magic,注释);
   static double 累计G=1;
   if(持单数量==0)
     {
      累计G=1;
      计7=1;
     }
   double 返回手数=初始下单手数*手数系数*累计G;
   累计G=累计G+等差;
   计7++;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  交易类::马丁手数(string 币种,int magic,double 初始下单手数,double 手数系数,double 等差)
  {
   double  持单数量=持仓单数统计(币种, magic);
   static double 累计H=1;
   if(持单数量==0)
     {
      累计H=1;
      计8=1;
     }
   double 返回手数=初始下单手数*手数系数*累计H;
   累计H=累计H+等差;
   计8++;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
void 交易类::终端消息推送(long 推送频率秒数,string 信息)
  {
   static ulong  计时1=0;
   if(推送频率秒数<6)
      推送频率秒数=6;
   if((ulong)TimeCurrent()>计时1+6)
     {
      SendNotification(信息);
      计时1=(ulong)TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::终端消息推送(long 推送频率秒数,string 信息1,string 信息2)
  {
   static ulong  计时1=0;
   if(推送频率秒数<6)
      推送频率秒数=6;
   if((ulong)TimeCurrent()>计时1+6)
     {
      SendNotification(信息1+" "+信息2);
      计时1=(ulong)TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::终端消息推送(long 推送频率秒数,string 信息1,string 信息2,string 信息3)
  {
   static ulong  计时1=0;
   if(推送频率秒数<6)
      推送频率秒数=6;
   if((ulong)TimeCurrent()>计时1+6)
     {
      SendNotification(信息1+" "+信息2+" "+信息3);
      计时1=(ulong)TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::终端消息推送2(long 推送频率秒数,string 信息)
  {
   static ulong  计时2=0;
   if(推送频率秒数<6)
      推送频率秒数=6;
   if((ulong)TimeCurrent()>计时2+6)
     {
      SendNotification(信息);
      计时2=(ulong)TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::终端消息推送2(long 推送频率秒数,string 信息1,string 信息2)
  {
   static ulong  计时2=0;
   if(推送频率秒数<6)
      推送频率秒数=6;
   if((ulong)TimeCurrent()>计时2+6)
     {
      SendNotification(信息1+" "+信息2);
      计时2=(ulong)TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::终端消息推送2(long 推送频率秒数,string 信息1,string 信息2,string 信息3)
  {
   static ulong  计时2=0;
   if(推送频率秒数<6)
      推送频率秒数=6;
   if((ulong)TimeCurrent()>计时2+6)
     {
      SendNotification(信息1+" "+信息2+" "+信息3);
      计时2=(ulong)TimeCurrent();
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string 交易类::尾单注释(string 币种,int magic,int 方向)
  {
   int 尾单号=0;
   string 注释=NULL;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderType()==方向
               &&OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderType()==方向
               &&OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                  注释=OrderComment();
              }
           }
        }
     }
   return(注释);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string 交易类::尾单注释(int magic,int 方向)
  {
   int 尾单号=0;
   string 注释=NULL;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(OrderTicket()==尾单号)
                  注释=OrderComment();
              }
           }
        }
     }
   return(注释);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string 交易类::尾单注释(string 币种,int magic)
  {
   int 尾单号=0;
   string 注释=NULL;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                  注释=OrderComment();
              }
           }
        }
     }
   return(注释);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string 交易类::尾单注释(int magic)
  {
   int 尾单号=0;
   string 注释=NULL;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                  注释=OrderComment();
              }
           }
        }
     }
   return(注释);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string 交易类::挂单尾单注释(string 币种,int magic,int 方向)
  {
   int 尾单号=0;
   string 注释=NULL;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderType()==方向
               &&OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderType()==方向
               &&OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                  注释=OrderComment();
              }
           }
        }
     }
   return(注释);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string 交易类::挂单尾单注释(int magic,int 方向)
  {
   int 尾单号=0;
   string 注释=NULL;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(OrderTicket()==尾单号)
                  注释=OrderComment();
              }
           }
        }
     }
   return(注释);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string 交易类::挂单尾单注释(string 币种,int magic)
  {
   int 尾单号=0;
   string 注释=NULL;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                  注释=OrderComment();
              }
           }
        }
     }
   return(注释);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string 交易类::挂单尾单注释(int magic)
  {
   int 尾单号=0;
   string 注释=NULL;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                  注释=OrderComment();
              }
           }
        }
     }
   return(注释);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::净持仓均价平单休息多少秒(string 币种,int magic,string 注释,double 设置平单点数,int 休息秒数=0)
  {
   bool 检测=false;
   if(设置平单点数>0)
     {
      double 多均价=持仓均价(币种,magic,注释,OP_BUY);
      double 空均价=持仓均价(币种,magic,注释,OP_SELL);
      double 多总仓位=持仓仓位统计(币种,magic,注释,OP_BUY);
      double 空总仓位=持仓仓位统计(币种,magic,注释,OP_SELL);
      double 浮亏均价=0;
      if(多总仓位-空总仓位!=0)
         浮亏均价=(多均价*多总仓位-空均价*空总仓位)/(多总仓位-空总仓位);
      if(浮亏均价>0&&多总仓位>空总仓位&&卖价(币种)>浮亏均价+设置平单点数*点值(币种))
        {
         平单(币种,magic,注释);
         if(休息秒数==0)
            检测=true;
        }
      if(浮亏均价>0&&空总仓位>多总仓位&&买价(币种)<浮亏均价-设置平单点数*点值(币种))
        {
         平单(币种,magic,注释);
         if(休息秒数==0)
            检测=true;
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::净持仓均价平单休息多少秒(string 币种,int magic,double 设置平单点数,int 休息秒数=0)
  {
   bool 检测=false;
   if(设置平单点数>0)
     {
      double 多均价=持仓均价(币种,magic,OP_BUY);
      double 空均价=持仓均价(币种,magic,OP_SELL);
      double 多总仓位=持仓仓位统计(币种,magic,OP_BUY);
      double 空总仓位=持仓仓位统计(币种,magic,OP_SELL);
      double 浮亏均价=0;
      if(多总仓位-空总仓位!=0)
         浮亏均价=(多均价*多总仓位-空均价*空总仓位)/(多总仓位-空总仓位);
      if(浮亏均价>0&&多总仓位>空总仓位&&卖价(币种)>浮亏均价+设置平单点数*点值(币种))
        {
         平单(币种,magic);
         if(休息秒数==0)
            检测=true;
        }
      if(浮亏均价>0&&空总仓位>多总仓位&&买价(币种)<浮亏均价-设置平单点数*点值(币种))
        {
         平单(币种,magic);
         if(休息秒数==0)
            检测=true;
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
void  交易类::价格限价挂多不重复(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   int 挂单数=挂单单数统计(币种,magic,OP_BUYLIMIT);
   if(挂单数<1)
      价格限价挂多(币种,手数,挂单价格,止损点数,止盈点数,magic,注释);
  }
//+------------------------------------------------------------------+
void  交易类::价格限价挂空不重复(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   int 挂单数=挂单单数统计(币种,magic,OP_SELLLIMIT);
   if(挂单数<1)
      价格限价挂空(币种,手数,挂单价格,止损点数,止盈点数,magic,注释);
  }
//+------------------------------------------------------------------+
void  交易类::价格突破挂多不重复(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   int 挂单数=挂单单数统计(币种,magic,OP_BUYSTOP);
   if(挂单数<1)
      价格突破挂多(币种,手数,挂单价格,止损点数,止盈点数,magic,注释);
  }
//+------------------------------------------------------------------+
void  交易类::价格突破挂空不重复(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   int 挂单数=挂单单数统计(币种,magic,OP_SELLSTOP);
   if(挂单数<1)
      价格突破挂空(币种,手数,挂单价格,止损点数,止盈点数,magic,注释);
  }
//+------------------------------------------------------------------+
void  交易类::价格限价挂多不重复带注释(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   int 挂单数=挂单单数统计(币种,magic,注释,OP_BUYLIMIT);
   if(挂单数<1)
      价格限价挂多(币种,手数,挂单价格,止损点数,止盈点数,magic,注释);
  }
//+------------------------------------------------------------------+
void  交易类::价格限价挂空不重复带注释(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   int 挂单数=挂单单数统计(币种,magic,注释,OP_SELLLIMIT);
   if(挂单数<1)
      价格限价挂空(币种,手数,挂单价格,止损点数,止盈点数,magic,注释);
  }
//+------------------------------------------------------------------+
void  交易类::价格突破挂多不重复带注释(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   int 挂单数=挂单单数统计(币种,magic,注释,OP_BUYSTOP);
   if(挂单数<1)
      价格突破挂多(币种,手数,挂单价格,止损点数,止盈点数,magic,注释);
  }
//+------------------------------------------------------------------+
void  交易类::价格突破挂空不重复带注释(string 币种,double 手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   int 挂单数=挂单单数统计(币种,magic,注释,OP_SELLSTOP);
   if(挂单数<1)
      价格突破挂空(币种,手数,挂单价格,止损点数,止盈点数,magic,注释);
  }
//-----------------------------
//+------------------------------------------------------------------+
int 交易类::挂单单数统计(string 币种,int magic,int 方向)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic)
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 交易类::挂单单数统计(string 币种,int magic)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic)
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 交易类::挂单单数统计(int magic)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 交易类::挂单单数统计(string 币种,int magic,string 注释,int 方向)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderType()==方向&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
int 交易类::挂单单数统计(string 币种,int magic,string 注释)
  {
   int  总单数=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种
               &&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
               总单数++;
           }
        }
     }
   return(总单数);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类::挂单尾单方向(string 币种,int magic,string 注释)
  {
   int 尾单号=-1;
   int 返回方向=99;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()==尾单号)
                  返回方向=OrderType();
              }
           }
        }
     }
   return(返回方向);
  }
//+------------------------------------------------------------------+
int 交易类::挂单尾单方向(string 币种,int magic)
  {
   int 尾单号=-1;
   int 返回方向=99;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                  返回方向=OrderType();
              }
           }
        }
     }
   return(返回方向);
  }
//+------------------------------------------------------------------+
int 交易类::挂单尾单方向(int magic)
  {
   int 尾单号=-1;
   int 返回方向=99;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                  返回方向=OrderType();
              }
           }
        }
     }
   return(返回方向);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::返回挂单尾单属性值(string 币种,int magic,string 注释,int 方向,int 一价二量三损四盈五时=1)
  {
   int 尾单号=-1;
   double 尾单属性值=NULL;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderType()==方向)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderType()==方向)
              {
               if(OrderTicket()==尾单号)
                 {
                  if(一价二量三损四盈五时==1)
                     尾单属性值=OrderOpenPrice();
                  if(一价二量三损四盈五时==2)
                     尾单属性值=OrderLots();
                  if(一价二量三损四盈五时==3)
                     尾单属性值=OrderStopLoss();
                  if(一价二量三损四盈五时==4)
                     尾单属性值=OrderTakeProfit();
                  if(一价二量三损四盈五时==5)
                     尾单属性值=(double)OrderOpenTime();
                  if(一价二量三损四盈五时==6)
                     尾单属性值=OrderProfit();
                 }

              }
           }
        }
     }
   return(尾单属性值);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::返回挂单尾单属性值(string 币种,int magic,int 方向,int 一价二量三损四盈五时=1)
  {
   int 尾单号=-1;
   double 尾单属性值=NULL;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(OrderTicket()==尾单号)
                 {
                  if(一价二量三损四盈五时==1)
                     尾单属性值=OrderOpenPrice();
                  if(一价二量三损四盈五时==2)
                     尾单属性值=OrderLots();
                  if(一价二量三损四盈五时==3)
                     尾单属性值=OrderStopLoss();
                  if(一价二量三损四盈五时==4)
                     尾单属性值=OrderTakeProfit();
                  if(一价二量三损四盈五时==5)
                     尾单属性值=(double)OrderOpenTime();
                  if(一价二量三损四盈五时==6)
                     尾单属性值=OrderProfit();
                 }

              }
           }
        }
     }
   return(尾单属性值);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::返回挂单尾单属性值(int magic,int 方向,int 一价二量三损四盈五时=1)
  {
   int 尾单号=-1;
   double 尾单属性值=NULL;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(OrderTicket()==尾单号)
                 {
                  if(一价二量三损四盈五时==1)
                     尾单属性值=OrderOpenPrice();
                  if(一价二量三损四盈五时==2)
                     尾单属性值=OrderLots();
                  if(一价二量三损四盈五时==3)
                     尾单属性值=OrderStopLoss();
                  if(一价二量三损四盈五时==4)
                     尾单属性值=OrderTakeProfit();
                  if(一价二量三损四盈五时==5)
                     尾单属性值=(double)OrderOpenTime();
                  if(一价二量三损四盈五时==6)
                     尾单属性值=OrderProfit();
                 }
              }
           }
        }
     }
   return(尾单属性值);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::返回挂单尾单属性值(string 币种,int magic,string 注释,int 一价二量三损四盈五时=1)
  {
   int 尾单号=-1;
   double 尾单属性值=NULL;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderTicket()==尾单号)
                 {
                  if(一价二量三损四盈五时==1)
                     尾单属性值=OrderOpenPrice();
                  if(一价二量三损四盈五时==2)
                     尾单属性值=OrderLots();
                  if(一价二量三损四盈五时==3)
                     尾单属性值=OrderStopLoss();
                  if(一价二量三损四盈五时==4)
                     尾单属性值=OrderTakeProfit();
                  if(一价二量三损四盈五时==5)
                     尾单属性值=(double)OrderOpenTime();
                  if(一价二量三损四盈五时==6)
                     尾单属性值=OrderProfit();
                 }

              }
           }
        }
     }
   return(尾单属性值);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::返回挂单尾单属性值(string 币种,int magic,int 一价二量三损四盈五时=1)
  {
   int 尾单号=-1;
   double 尾单属性值=NULL;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                 {
                  if(一价二量三损四盈五时==1)
                     尾单属性值=OrderOpenPrice();
                  if(一价二量三损四盈五时==2)
                     尾单属性值=OrderLots();
                  if(一价二量三损四盈五时==3)
                     尾单属性值=OrderStopLoss();
                  if(一价二量三损四盈五时==4)
                     尾单属性值=OrderTakeProfit();
                  if(一价二量三损四盈五时==5)
                     尾单属性值=(double)OrderOpenTime();
                  if(一价二量三损四盈五时==6)
                     尾单属性值=OrderProfit();
                 }

              }
           }
        }
     }
   return(尾单属性值);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::返回挂单尾单属性值(int magic,int 一价二量三损四盈五时=1)
  {
   int 尾单号=-1;
   double 尾单属性值=NULL;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               if(OrderTicket()==尾单号)
                 {
                  if(一价二量三损四盈五时==1)
                     尾单属性值=OrderOpenPrice();
                  if(一价二量三损四盈五时==2)
                     尾单属性值=OrderLots();
                  if(一价二量三损四盈五时==3)
                     尾单属性值=OrderStopLoss();
                  if(一价二量三损四盈五时==4)
                     尾单属性值=OrderTakeProfit();
                  if(一价二量三损四盈五时==5)
                     尾单属性值=(double)OrderOpenTime();
                  if(一价二量三损四盈五时==6)
                     尾单属性值=OrderProfit();
                 }

              }
           }
        }
     }
   return(尾单属性值);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::净持仓追踪平单(string 币种,int  magic,string 注释,double 启动点数,double 追踪点数,double 百分比=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      if(百分比>0&&百分比<=1)
         追踪点数=0;
      double 多均价=持仓均价(币种,magic,注释,OP_BUY);
      double 空均价=持仓均价(币种,magic,注释,OP_SELL);
      double 多总仓位=持仓仓位统计(币种,magic,注释,OP_BUY);
      double 空总仓位=持仓仓位统计(币种,magic,注释,OP_SELL);
      double 浮亏均价=0;
      if(多总仓位-空总仓位!=0)
         浮亏均价=(多均价*多总仓位-空均价*空总仓位)/(多总仓位-空总仓位);
      if(浮亏均价>0&&多总仓位>空总仓位)
        {
         int    尾单号=返回尾单号(币种,magic,注释);
         datetime     尾单开盘时间=订单号返回开盘时间(尾单号);
         double 区间高价[];
         double      最高价=区间K线最高价(币种,PERIOD_M1,尾单开盘时间,TimeCurrent(),1,区间高价);
         double 多最大盈利点=(最高价-浮亏均价)/点值(币种);
         double 多实时点数=(卖价(币种)-浮亏均价)/点值(币种);
         if(最高价>0&&多最大盈利点>启动点数&&多实时点数<多最大盈利点-追踪点数-多最大盈利点*百分比)
            平单(币种,magic,注释);
        }
      if(浮亏均价>0&&空总仓位>多总仓位)
        {
         int  尾单号=返回尾单号(币种,magic,注释);
         datetime    尾单开盘时间=订单号返回开盘时间(尾单号);
         double 区间低价[];
         double      最低价=区间K线最低价(币种,PERIOD_M1,尾单开盘时间,TimeCurrent(),2,区间低价);
         double 空最大盈利点=(浮亏均价-最低价)/点值(币种);
         double 空实时点数=(浮亏均价-买价(币种))/点值(币种);
         if(最低价>0&&空最大盈利点>启动点数&&空实时点数<空最大盈利点-追踪点数-空最大盈利点*百分比)
            平单(币种,magic,注释);
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::净持仓追踪平单(string 币种,int  magic,double 启动点数,double 追踪点数,double 百分比=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      if(百分比>0&&百分比<=1)
         追踪点数=0;
      double 多均价=持仓均价(币种,magic,OP_BUY);
      double 空均价=持仓均价(币种,magic,OP_SELL);
      double 多总仓位=持仓仓位统计(币种,magic,OP_BUY);
      double 空总仓位=持仓仓位统计(币种,magic,OP_SELL);
      double 浮亏均价=0;
      if(多总仓位-空总仓位!=0)
         浮亏均价=(多均价*多总仓位-空均价*空总仓位)/(多总仓位-空总仓位);
      if(浮亏均价>0&&多总仓位>空总仓位)
        {
         int    尾单号=返回尾单号(币种,magic);
         datetime   尾单开盘时间=订单号返回开盘时间(尾单号);
         double 区间高价[];
         double      最高价=区间K线最高价(币种,PERIOD_M1,尾单开盘时间,TimeCurrent(),1,区间高价);
         double 多最大盈利点=(最高价-浮亏均价)/点值(币种);
         double 多实时点数=(卖价(币种)-浮亏均价)/点值(币种);
         if(最高价>0&&多最大盈利点>启动点数&&多实时点数<多最大盈利点-追踪点数-多最大盈利点*百分比)
            平单(币种,magic);
        }
      if(浮亏均价>0&&空总仓位>多总仓位)
        {
         int    尾单号=返回尾单号(币种,magic);
         datetime    尾单开盘时间=订单号返回开盘时间(尾单号);
         double 区间低价[];
         double      最低价=区间K线最低价(币种,PERIOD_M1,尾单开盘时间,TimeCurrent(),2,区间低价);
         double 空最大盈利点=(浮亏均价-最低价)/点值(币种);
         double 空实时点数=(浮亏均价-买价(币种))/点值(币种);
         if(最低价>0&&空最大盈利点>启动点数&&空实时点数<空最大盈利点-追踪点数-空最大盈利点*百分比)
            平单(币种,magic);
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
datetime  交易类::订单号返回开盘时间(int 订单号)
  {
   datetime  开盘时间=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0&&OrderTicket()==订单号)
            开盘时间=OrderOpenTime();
        }
     }
   return(开盘时间);
  }
//----------------
ulong  交易类::订单号返回挂单开盘时间(int 订单号)
  {
   ulong 开盘时间=0;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0&&OrderTicket()==订单号)
            开盘时间=OrderOpenTime();
        }
     }
   return(开盘时间);
  }
//----------------
double 交易类::订单号返回属性值(int 订单号,int 一价二量三损四盈五时=1)
  {
   double 属性值=NULL;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0&&OrderTicket()==订单号)
           {
            if(一价二量三损四盈五时==1)
               属性值=OrderOpenPrice();
            if(一价二量三损四盈五时==2)
               属性值=OrderLots();
            if(一价二量三损四盈五时==3)
               属性值=OrderStopLoss();
            if(一价二量三损四盈五时==4)
               属性值=OrderTakeProfit();
            if(一价二量三损四盈五时==5)
               属性值=(double)OrderOpenTime();
            if(一价二量三损四盈五时==6)
               属性值=OrderProfit();
            if(一价二量三损四盈五时==7)
               属性值=OrderSwap();
           }
        }
     }
   return(属性值);
  }
//+------------------------------------------------------------------+
double 交易类::订单号返回挂单属性值(int 订单号,int 一价二量三损四盈五时=1)
  {
   double 属性值=NULL;
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&挂单类型())
        {
         if(OrderTicket()>0&&OrderTicket()==订单号)
           {
            if(一价二量三损四盈五时==1)
               属性值=OrderOpenPrice();
            if(一价二量三损四盈五时==2)
               属性值=OrderLots();
            if(一价二量三损四盈五时==3)
               属性值=OrderStopLoss();
            if(一价二量三损四盈五时==4)
               属性值=OrderTakeProfit();
            if(一价二量三损四盈五时==5)
               属性值=(double)OrderOpenTime();
            if(一价二量三损四盈五时==6)
               属性值=OrderProfit();
           }
        }
     }
   return(属性值);
  }
//+------------------------------------------------------------------+
void 交易类::净值回调平单(string 币种,int magic,double 账户盈利金额,double 保护利润)
  {
   if(账户盈利金额>0&&保护利润>0&&保护利润<账户盈利金额)
     {
      static bool 净检=false;
      static double 初账户净值=AccountInfoDouble(ACCOUNT_EQUITY);
      if(AccountInfoDouble(ACCOUNT_EQUITY)>初账户净值+账户盈利金额)
         净检=true;
      bool 净值保护=净检==true&&AccountInfoDouble(ACCOUNT_EQUITY)<初账户净值+保护利润;
      if(净值保护)
        {
         平单(币种,magic);
         删除挂单(币种,magic);
         ExpertRemove();
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::净值回调平单(string 币种,int magic,string 注释,double 账户盈利金额,double 保护利润)
  {
   if(账户盈利金额>0&&保护利润>0&&保护利润<账户盈利金额)
     {
      static bool 净检=false;
      static double 初账户净值=AccountInfoDouble(ACCOUNT_EQUITY);
      if(AccountInfoDouble(ACCOUNT_EQUITY)>初账户净值+账户盈利金额)
         净检=true;
      bool 净值保护=净检==true&&AccountInfoDouble(ACCOUNT_EQUITY)<初账户净值+保护利润;
      if(净值保护)
        {
         平单(币种,magic,注释);
         删除挂单(币种,magic,注释);
         ExpertRemove();
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::空值不显示(int 缓冲区=0,int 缓冲区1=0,int 缓冲区2=0,int 缓冲区3=0,int 缓冲区4=0,int 缓冲区5=0,int 缓冲区6=0,int 缓冲区7=0,int 缓冲区8=0)
  {
   PlotIndexSetDouble(缓冲区,PLOT_EMPTY_VALUE,EMPTY_VALUE);
   PlotIndexSetDouble(缓冲区,PLOT_EMPTY_VALUE,0);

   PlotIndexSetDouble(缓冲区1,PLOT_EMPTY_VALUE,EMPTY_VALUE);
   PlotIndexSetDouble(缓冲区1,PLOT_EMPTY_VALUE,0);
   PlotIndexSetDouble(缓冲区2,PLOT_EMPTY_VALUE,EMPTY_VALUE);
   PlotIndexSetDouble(缓冲区2,PLOT_EMPTY_VALUE,0);
   PlotIndexSetDouble(缓冲区3,PLOT_EMPTY_VALUE,EMPTY_VALUE);
   PlotIndexSetDouble(缓冲区3,PLOT_EMPTY_VALUE,0);
   PlotIndexSetDouble(缓冲区4,PLOT_EMPTY_VALUE,EMPTY_VALUE);
   PlotIndexSetDouble(缓冲区4,PLOT_EMPTY_VALUE,0);
   PlotIndexSetDouble(缓冲区5,PLOT_EMPTY_VALUE,EMPTY_VALUE);
   PlotIndexSetDouble(缓冲区5,PLOT_EMPTY_VALUE,0);
   PlotIndexSetDouble(缓冲区6,PLOT_EMPTY_VALUE,EMPTY_VALUE);
   PlotIndexSetDouble(缓冲区6,PLOT_EMPTY_VALUE,0);
   PlotIndexSetDouble(缓冲区7,PLOT_EMPTY_VALUE,EMPTY_VALUE);
   PlotIndexSetDouble(缓冲区7,PLOT_EMPTY_VALUE,0);
   PlotIndexSetDouble(缓冲区8,PLOT_EMPTY_VALUE,EMPTY_VALUE);
   PlotIndexSetDouble(缓冲区8,PLOT_EMPTY_VALUE,0);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::双币种开盘时间同步检测(string 币种1,string 币种2,bool 币种窗口,int 警报提示间隔秒数,ENUM_TIMEFRAMES 图表周期,bool 打印提示)
  {
   bool 检测=false;
   bool    币种1检测=币种标识符检测(币种1,币种窗口,警报提示间隔秒数,false,false);
   bool    币种2检测=币种标识符检测(币种2,币种窗口,警报提示间隔秒数,false,false);
   if(币种1检测&&币种2检测)
     {
      if(打印提示)
        {
         if(iTime(币种1,图表周期,0)>iTime(币种2,图表周期,0))
            Print(币种2+"开盘延后");
         if(iTime(币种1,图表周期,0)<iTime(币种2,图表周期,0))
            Print(币种1+"开盘延后");
        }
      if(iTime(币种1,图表周期,0)==iTime(币种2,图表周期,0))
         检测=true;
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//----
bool         交易类::双币种手数检测(string 币种1,double 手数1,string 币种2,double 手数2,int 警报间隔秒数次数,bool 移除EA,bool 关闭图表)
  {
   bool  手数检测1=允许手数检测(币种1,手数1);
   bool  手数检测2=允许手数检测(币种2,手数2);
   bool  手数检测3=手数检测1+手数检测2;
   int 计数=0;
   if(警报间隔秒数次数>0)
      for(int j=0; j<警报间隔秒数次数&&手数检测3==false; j++)
        {
         计数++;
         Alert(币种1+"或者"+币种2+" 手数<最小值或>最大值"+IntegerToString(计数));
         Sleep(警报间隔秒数次数*1000);
        }
   if(手数检测3==false)
     {
      Alert(币种1+"或者"+币种2+" 手数<最小值或>最大值"+IntegerToString(计数));
      if(移除EA==true)
         ExpertRemove();
      if(关闭图表)
         ChartClose(0);
     }
   return 手数检测3;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool  交易类:: 允许手数检测(string 币种,double 手数)
  {
   bool 手数检测=false;
   手数检测=手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)||手数<=SymbolInfoDouble(币种,SYMBOL_VOLUME_MAX);
   return 手数检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::多价差手数不对等平尾单(string 币种1,string  币种2,int 币种1多magic,int 币种2空magic,double 允许手数误差最小值,bool 是否开启)
  {
   if(是否开启)
     {
      double  多仓位总手数1=持仓仓位统计(币种1,币种1多magic,OP_BUY);
      double  空仓位总手数1=持仓仓位统计(币种2,币种2空magic,OP_SELL);
      if(允许手数误差最小值>0&&多仓位总手数1-空仓位总手数1>允许手数误差最小值)
         平多尾单(币种1,币种1多magic);
      if(允许手数误差最小值>0&&空仓位总手数1-多仓位总手数1>允许手数误差最小值)
         平空尾单(币种2,币种2空magic);
     }
  }
//+------------------------------------------------------------------+
void 交易类::空价差手数不对等平尾单(string 币种1,string  币种2,int 币种1空magic,int 币种2多magic,double 允许手数误差最小值,bool 是否开启)
  {
   if(是否开启)
     {
      double  多仓位总手数3=持仓仓位统计(币种2,币种2多magic,OP_BUY);
      double  空仓位总手数3=持仓仓位统计(币种1,币种1空magic,OP_SELL);
      if(允许手数误差最小值>0&&多仓位总手数3-空仓位总手数3>允许手数误差最小值)
         平多尾单(币种2,币种2多magic);
      if(允许手数误差最小值>0&&空仓位总手数3-多仓位总手数3>允许手数误差最小值)
         平空尾单(币种1,币种1空magic);
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+-----------------------------------------------------------------
void 交易类::多价差手数不对等折尾单(string 币种1,string  币种2,int 币种1多magic,int 币种2空magic,double 允许手数误差最小值,bool 是否开启)
  {
   if(是否开启)
     {
      double  多仓位总手数1=持仓仓位统计(币种1,币种1多magic,OP_BUY);
      double  空仓位总手数1=持仓仓位统计(币种2,币种2空magic,OP_SELL);
      if(允许手数误差最小值>0&&多仓位总手数1-空仓位总手数1>允许手数误差最小值)
         折多尾单(币种1,币种1多magic,多仓位总手数1-空仓位总手数1,1);
      if(允许手数误差最小值>0&&空仓位总手数1-多仓位总手数1>允许手数误差最小值)
         折空尾单(币种2,币种2空magic,空仓位总手数1-多仓位总手数1,1);
     }
  }
//+------------------------------------------------------------------+
void 交易类::空价差手数不对等折尾单(string 币种1,string  币种2,int 币种1空magic,int 币种2多magic,double 允许手数误差最小值,bool 是否开启)
  {
   if(是否开启)
     {
      double  多仓位总手数3=持仓仓位统计(币种2,币种2多magic,OP_BUY);
      double  空仓位总手数3=持仓仓位统计(币种1,币种1空magic,OP_SELL);
      if(允许手数误差最小值>0&&多仓位总手数3-空仓位总手数3>允许手数误差最小值)
         折多尾单(币种2,币种2多magic,多仓位总手数3-空仓位总手数3,1);
      if(允许手数误差最小值>0&&空仓位总手数3-多仓位总手数3>允许手数误差最小值)
         折空尾单(币种1,币种1空magic,空仓位总手数3-多仓位总手数3,1);
     }
  }
//+------------------------------------------------------------------+
void   交易类:: 折多尾单(string 币种,int magic,double 折仓手数,double 减仓比例)
  {
   int 尾单号=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderType()==OP_BUY)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderTicket()==尾单号)
              {
               if(OrderType()==OP_BUY)
                  折多仓(币种,magic,折仓手数,减仓比例);
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
void  交易类::折空尾单(string 币种,int magic,double 折仓手数,double 减仓比例)
  {
   int 尾单号=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderType()==OP_SELL)
              {
               if(OrderTicket()>尾单号)
                  尾单号=OrderTicket();
              }
           }
        }
     }
   for(int j=OrdersTotal()-1; j>=0; j--)
     {
      if(OrderSelect(j,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderTicket()==尾单号)
              {
               if(OrderType()==OP_SELL)
                  折空仓(币种,magic,折仓手数,减仓比例);
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double    交易类::多最小止损价格(string 币种,double 传入价格,double 参考价格=0)
  {
   if(参考价格==0)
      参考价格=买价(币种);
   double 价格=传入价格;
   if(价格>0&&价格>参考价格-(double)SymbolInfoInteger(币种,SYMBOL_TRADE_STOPS_LEVEL)*点值(币种))
      价格=参考价格-(double)SymbolInfoInteger(币种,SYMBOL_TRADE_STOPS_LEVEL)*点值(币种);
   return(价格);
  }
//+------------------------------------------------------------------+
double    交易类::多最小止盈价格(string 币种,double 传入价格,double 参考价格=0)
  {
   if(参考价格==0)
      参考价格=买价(币种);
   double 价格=传入价格;
   if(价格>0&&价格<参考价格+(double)SymbolInfoInteger(币种,SYMBOL_TRADE_STOPS_LEVEL)*点值(币种))
      价格=参考价格+(double)SymbolInfoInteger(币种,SYMBOL_TRADE_STOPS_LEVEL)*点值(币种);
   return(价格);
  }
//+------------------------------------------------------------------+
double    交易类::空最小止损价格(string 币种,double 传入价格,double 参考价格=0)
  {
   if(参考价格==0)
      参考价格=卖价(币种);
   double 价格=传入价格;
   if(价格>0&&价格<参考价格+(double)SymbolInfoInteger(币种,SYMBOL_TRADE_STOPS_LEVEL)*点值(币种))
      价格=参考价格+(double)SymbolInfoInteger(币种,SYMBOL_TRADE_STOPS_LEVEL)*点值(币种);
   return(价格);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double    交易类::空最小止盈价格(string 币种,double 传入价格,double 参考价格=0)
  {
   if(参考价格==0)
      参考价格=卖价(币种);
   double 价格=传入价格;
   if(价格>0&&价格>参考价格-(double)SymbolInfoInteger(币种,SYMBOL_TRADE_STOPS_LEVEL)*点值(币种))
      价格=参考价格-(double)SymbolInfoInteger(币种,SYMBOL_TRADE_STOPS_LEVEL)*点值(币种);
   return(价格);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double    交易类::停损(string 币种,double 设置点数X)
  {
   double 点数=设置点数X;
   if(点数>2&&点数<(double)SymbolInfoInteger(币种,SYMBOL_TRADE_STOPS_LEVEL))
      点数=(double)SymbolInfoInteger(币种,SYMBOL_TRADE_STOPS_LEVEL);
   return(点数);
  }
//+------------------------------------------------------------------+
double    交易类::凝结(string 币种,double 设置点数X)
  {
   double 点数=设置点数X;
   if(点数>2&&点数<(double)SymbolInfoInteger(币种,SYMBOL_TRADE_FREEZE_LEVEL))
      点数=(double)SymbolInfoInteger(币种,SYMBOL_TRADE_FREEZE_LEVEL);
   return(点数);
  }
//+------------------------------------------------------------------+
bool 交易类::顶底分型(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,int 一顶二底)
  {
   bool  检测=false;
   if(一顶二底==1&&iClose(币种,图表周期,序号)<iOpen(币种,图表周期,序号)&&iHigh(币种,图表周期,序号)<iClose(币种,图表周期,序号+1)&&iClose(币种,图表周期,序号)<iLow(币种,图表周期,序号+2)
      &&iClose(币种,图表周期,序号+1)>iOpen(币种,图表周期,序号+1)&&iLow(币种,图表周期,序号+1)>iOpen(币种,图表周期,序号+2)&&iClose(币种,图表周期,序号+1)>iClose(币种,图表周期,序号+2)
      &&iClose(币种,图表周期,序号+2)>iOpen(币种,图表周期,序号+2)&&iHigh(币种,图表周期,序号+2)>iOpen(币种,图表周期,序号+1)&&iHigh(币种,图表周期,序号+2)>iHigh(币种,图表周期,序号)
     )
      检测=true;
   if(一顶二底==2&&iClose(币种,图表周期,序号)>iOpen(币种,图表周期,序号)&&iLow(币种,图表周期,序号)>iClose(币种,图表周期,序号+1)&&iClose(币种,图表周期,序号)>iHigh(币种,图表周期,序号+2)
      &&iClose(币种,图表周期,序号+1)<iOpen(币种,图表周期,序号+1)&&iHigh(币种,图表周期,序号+1)<iOpen(币种,图表周期,序号+2)&&iClose(币种,图表周期,序号+1)<iClose(币种,图表周期,序号+2)
      &&iClose(币种,图表周期,序号+2)<iOpen(币种,图表周期,序号+2)&&iLow(币种,图表周期,序号+2)>iClose(币种,图表周期,序号+1)&&iLow(币种,图表周期,序号+2)<iLow(币种,图表周期,序号)
     )
      检测=true;
   return 检测;
  }
//+------------------------------------------------------------------+
string 交易类::DayOfWeek(const datetime time)
  {
   MqlDateTime dt;
   string day="";
   TimeToStruct(time,dt);
   switch(dt.day_of_week)
     {
      case 0:
         day=EnumToString(SUNDAY);
         break;
      case 1:
         day=EnumToString(MONDAY);
         break;
      case 2:
         day=EnumToString(TUESDAY);
         break;
      case 3:
         day=EnumToString(WEDNESDAY);
         break;
      case 4:
         day=EnumToString(THURSDAY);
         break;
      case 5:
         day=EnumToString(FRIDAY);
         break;
      default:
         day=EnumToString(SATURDAY);
         break;
     }
//---
   return day;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::非空值检测(double  传入值)
  {
   bool 检测=传入值!=0&&传入值!=EMPTY_VALUE;
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::空值检测(double  传入值)
  {
   bool 检测=传入值==0||传入值==EMPTY_VALUE;
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::计数取模检测(int 传入计数,int 取模层级)
  {
   bool 检测=false;
   static int  计x=0;
   if(传入计数==0||传入计数==1)
      计x=0;
   if(取模层级>0&&传入计数>0&&传入计数!=计x&&传入计数%取模层级==0)
     {
      检测=true;
      计x=传入计数;
     }
   if(取模层级==0)
      检测=true;
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::计数取模检测2(int 传入计数,int 取模层级)
  {
   bool 检测=false;
   static int  计y=0;
   if(传入计数==0||传入计数==1)
      计y=0;
   if(取模层级>0&&传入计数>0&&传入计数!=计y&&传入计数%取模层级==0)
     {
      检测=true;
      计y=传入计数;
     }
   if(取模层级==0)
      检测=true;
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::计数取模检测3(int 传入计数,int 取模层级)
  {
   bool 检测=false;
   static int  计z=0;
   if(传入计数==0||传入计数==1)
      计z=0;
   if(取模层级>0&&传入计数>0&&传入计数!=计z&&传入计数%取模层级==0)
     {
      检测=true;
      计z=传入计数;
     }
   if(取模层级==0)
      检测=true;
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::计数取模检测4(int 传入计数,int 取模层级)
  {
   bool 检测=false;
   static int  计u=0;
   if(传入计数==0||传入计数==1)
      计u=0;
   if(取模层级>0&&传入计数>0&&传入计数!=计u&&传入计数%取模层级==0)
     {
      检测=true;
      计u=传入计数;
     }
   if(取模层级==0)
      检测=true;
   return 检测;
  }
//+------------------------------------------------------------------+
//-------------------------------------------------------------------
double  交易类::区间均价(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始,int  计算数量,int 开高低收)
  {
   double 总价=0;
   if(计算数量>0)
     {
      if(开高低收==0)
         for(int i=起始; i<计算数量; i++)
            总价+=iOpen(币种,图表周期,i);
      if(开高低收==1)
         for(int i=起始; i<计算数量; i++)
            总价+=iHigh(币种,图表周期,i);
      if(开高低收==2)
         for(int i=起始; i<计算数量; i++)
            总价+=iLow(币种,图表周期,i);
      if(开高低收==3)
         for(int i=起始; i<计算数量; i++)
            总价+=iClose(币种,图表周期,i);
     }
   return(总价/(计算数量-起始));
  }
//+------------------------------------------------------------------+
double   交易类::区间均价差价(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始,int  计算数量,int 开高低收1,int 开高低收2)
  {
   double  均价1=区间均价(币种,图表周期,起始,计算数量,开高低收1);
   double  均价2=区间均价(币种, 图表周期,起始, 计算数量,开高低收2);
   return(均价1-均价2);
  }
//+------------------------------------------------------------------+
double 交易类:: 区间均值差价点值(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始,int  计算数量,int 开高低收1,int 开高低收2)
  {
   double 区间均值差价绝对值=MathAbs(区间均价差价(币种, 图表周期, 起始, 计算数量,开高低收1, 开高低收2));
   return(区间均值差价绝对值/点值(币种));
  }
//+------------------------------------------------------------------+
double 交易类:: 允许区间均值差价点值(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始,int  计算数量,int 开高低收1,int 开高低收2,double 设置允许点值)
  {
   double 区间均值差价绝对值=MathAbs(区间均价差价(币种, 图表周期, 起始, 计算数量,开高低收1, 开高低收2));
   return(区间均值差价绝对值/点值(币种)<设置允许点值);
  }
//+------------------------------------------------------------------+
bool 交易类::K线大于均价检测(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始,int  计算数量,int 开高低收,int 序号)
  {
   bool  检测=false;
   double  均价=区间均价(币种,图表周期,起始,计算数量,开高低收);
   if(开高低收==0)
      if(iOpen(币种,图表周期,序号)>均价)
         检测=true;
      else
         检测=false;
   if(开高低收==1)
      if(iHigh(币种,图表周期,序号)>均价)
         检测=true;
      else
         检测=false;
   if(开高低收==2)
      if(iLow(币种,图表周期,序号)>均价)
         检测=true;
      else
         检测=false;
   if(开高低收==3)
      if(iClose(币种,图表周期,序号)>均价)
         检测=true;
      else
         检测=false;
   return(检测);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::K线小于均价检测(string 币种,ENUM_TIMEFRAMES 图表周期,int 起始,int  计算数量,int 开高低收,int 序号)
  {
   bool  检测=false;
   double  均价=区间均价(币种,图表周期,起始,计算数量,开高低收);
   if(开高低收==0)
      if(iOpen(币种,图表周期,序号)<均价)
         检测=true;
      else
         检测=false;
   if(开高低收==1)
      if(iHigh(币种,图表周期,序号)<均价)
         检测=true;
      else
         检测=false;
   if(开高低收==2)
      if(iLow(币种,图表周期,序号)<均价)
         检测=true;
      else
         检测=false;
   if(开高低收==3)
      if(iClose(币种,图表周期,序号)<均价)
         检测=true;
      else
         检测=false;
   return(检测);
  }
//+------------------------------------------------------------------+
bool 交易类::区间底背离(string 币种,ENUM_TIMEFRAMES 图表周期,double &zigzag[][4],int 限定根数=20,int 序号=0,int 低收=3,bool 不时测=true)
  {
   int 上序0=(int)zigzag[序号][1];
   int 上序1=(int)zigzag[序号+1][1];
   double 上值0=zigzag[序号][0];
   double 上值1=zigzag[序号+1][0];
   double 上低0=iClose(币种,图表周期,上序0);
   double 上低1=iClose(币种,图表周期,上序1);
   ulong 上时=(ulong)zigzag[0][2];
   if(低收==2)
     {
      上低0=iLow(币种,图表周期,上序0);
      上低1=iLow(币种,图表周期,上序1);
     }
   bool  底背离=上序1-上序0<限定根数&&上值0>上值1&&上低0<上低1&&(上时==iTime(币种,图表周期,序号)||不时测);
   return 底背离;
  }
//+------------------------------------------------------------------+
bool 交易类::区间顶背离(string 币种,ENUM_TIMEFRAMES 图表周期,double &zigzag[][4],int 限定根数=20,int 序号=0,int 低收=3,bool 不时测=true)
  {
   int 下序0=(int)zigzag[序号][1];
   int 下序1=(int)zigzag[序号+1][1];
   double 下值0=zigzag[序号][0];
   double 下值1=zigzag[序号+1][0];
   double 下低0=iClose(币种,图表周期,下序0);
   double 下低1=iClose(币种,图表周期,下序1);
   ulong 下时=(ulong)zigzag[0][2];
   if(低收==2)
     {
      下低0=iHigh(币种,图表周期,下序0);
      下低1=iHigh(币种,图表周期,下序1);
     }
   bool  顶背离=下序1-下序0<限定根数&&下值0<下值1&&下低0>下低1&&(下时==iTime(币种,图表周期,序号)||不时测);
   return 顶背离;
  }
//+------------------------------------------------------------------+
bool 交易类::区间底背离(string 币种,ENUM_TIMEFRAMES 图表周期,double &zigzag[][3],int 限定根数=20,int 序号=0,int 低收=3,bool 不时测=true)
  {
   int 上序0=(int)zigzag[序号][1];
   int 上序1=(int)zigzag[序号+1][1];
   double 上值0=zigzag[序号][0];
   double 上值1=zigzag[序号+1][0];
   double 上低0=iClose(币种,图表周期,上序0);
   double 上低1=iClose(币种,图表周期,上序1);
   ulong 上时=(ulong)zigzag[0][2];
   if(低收==2)
     {
      上低0=iLow(币种,图表周期,上序0);
      上低1=iLow(币种,图表周期,上序1);
     }
   bool  底背离=上序1-上序0<限定根数&&上值0>上值1&&上低0<上低1&&(上时==iTime(币种,图表周期,序号)||不时测);
   return 底背离;
  }
//+------------------------------------------------------------------+
bool 交易类::区间顶背离(string 币种,ENUM_TIMEFRAMES 图表周期,double &zigzag[][3],int 限定根数=20,int 序号=0,int 低收=3,bool 不时测=true)
  {
   int 下序0=(int)zigzag[序号][1];
   int 下序1=(int)zigzag[序号+1][1];
   double 下值0=zigzag[序号][0];
   double 下值1=zigzag[序号+1][0];
   double 下低0=iClose(币种,图表周期,下序0);
   double 下低1=iClose(币种,图表周期,下序1);
   ulong 下时=(ulong)zigzag[0][2];
   if(低收==2)
     {
      下低0=iHigh(币种,图表周期,下序0);
      下低1=iHigh(币种,图表周期,下序1);
     }
   bool  顶背离=下序1-下序0<限定根数&&下值0<下值1&&下低0>下低1&&(下时==iTime(币种,图表周期,序号)||不时测);
   return 顶背离;
  }
//+------------------------------------------------------------------+
double 交易类::持仓最大仓位(string 币种,int magic,string 注释,int 方向)
  {
   double 最大仓位=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderType()==方向)
              {
               if(OrderLots()>最大仓位)
                  最大仓位= OrderLots();
              }
           }
        }
     }
   return 最大仓位;
  }
//+------------------------------------------------------------------+
double 交易类::持仓最大仓位(string 币种,int magic,int 方向)
  {
   double 最大仓位=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(OrderLots()>最大仓位)
                  最大仓位= OrderLots();
              }
           }
        }
     }
   return 最大仓位;
  }
//+------------------------------------------------------------------+
double 交易类::持仓最大仓位(int magic,int 方向)
  {
   double 最大仓位=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(OrderLots()>最大仓位)
                  最大仓位= OrderLots();
              }
           }
        }
     }
   return 最大仓位;
  }
//+------------------------------------------------------------------+
double 交易类::持仓最大仓位(string 币种,int magic,string 注释)
  {
   double 最大仓位=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderLots()>最大仓位)
                  最大仓位= OrderLots();
              }
           }
        }
     }
   return 最大仓位;
  }
//+------------------------------------------------------------------+
double 交易类::持仓最大仓位(string 币种,int magic)
  {
   double 最大仓位=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderLots()>最大仓位)
                  最大仓位= OrderLots();
              }
           }
        }
     }
   return 最大仓位;
  }
//+------------------------------------------------------------------+
double 交易类::持仓最大仓位(int magic)
  {
   double 最大仓位=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               if(OrderLots()>最大仓位)
                  最大仓位= OrderLots();
              }
           }
        }
     }
   return 最大仓位;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   交易类::比例手数(string 币种,int magic,string 注释,double 输入手数,ENUM_ACCOUNT_INFO_DOUBLE 净值或者可用保证金,int 允许单数,int 多或者空,double 自定义百分比,double 手数补偿系数=1)
  {
   double 手数=输入手数;
   if(持仓单数统计(币种,magic,注释,多或者空)<=允许单数)
     {
      if(自定义百分比>0)
         手数=AccountInfoDouble(净值或者可用保证金)*0.001*自定义百分比*手数补偿系数;
     }
   手数=手数自适应(币种,手数);
   return 手数;
  }
//+------------------------------------------------------------------+
double   交易类::比例手数(string 币种,int magic,string 注释,double 输入手数,ENUM_ACCOUNT_INFO_DOUBLE 净值或者可用保证金,int 允许单数,double  自定义百分比,double 手数补偿系数=1)
  {
   double 手数=输入手数;
   if(持仓单数统计(币种,magic,注释,0)+持仓单数统计(币种,magic,注释,1)<=允许单数)
     {
      if(自定义百分比>0)
         手数=AccountInfoDouble(净值或者可用保证金)*0.001*自定义百分比*手数补偿系数;
     }
   手数=手数自适应(币种,手数);
   return 手数;
  }
//+------------------------------------------------------------------+
double   交易类::比例手数(string 币种,int magic,double 输入手数,ENUM_ACCOUNT_INFO_DOUBLE 净值或者可用保证金,int 允许单数,int 多或者空,double  自定义百分比,double 手数补偿系数=1)
  {
   double 手数=输入手数;
   if(持仓单数统计(币种,magic,多或者空)<=允许单数)
     {
      if(自定义百分比>0)
         手数=AccountInfoDouble(净值或者可用保证金)*0.001*自定义百分比*手数补偿系数;
     }
   手数=手数自适应(币种,手数);
   return 手数;
  }
//+------------------------------------------------------------------+
double   交易类::比例手数(string 币种,int magic,double 输入手数,ENUM_ACCOUNT_INFO_DOUBLE 净值或者可用保证金,int 允许单数,double  自定义百分比,double 手数补偿系数=1)
  {
   double 手数=输入手数;
   if(持仓单数统计(币种,magic,OP_BUY)+持仓单数统计(币种,magic,OP_SELL)<=允许单数)
     {
      if(自定义百分比>0)
         手数=AccountInfoDouble(净值或者可用保证金)*0.001*自定义百分比*手数补偿系数;
     }
   手数=手数自适应(币种,手数);
   return 手数;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   交易类::比例手数(double 输入手数,ENUM_ACCOUNT_INFO_DOUBLE 净值或者可用保证金,double  自定义百分比,double 手数补偿系数=1)
  {
   double 手数=输入手数;
   if(自定义百分比>0)
      手数=AccountInfoDouble(净值或者可用保证金)*0.001*自定义百分比*手数补偿系数;
   手数=NormalizeDouble(手数,2);
   return 手数;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//-------------------------------------
double 交易类::返回日刷新比较值(double 输入值,double 比较值,int 大小)
  {
   if(大小==2)
     {
      if(TimeCurrent()==iTime(Symbol(),PERIOD_D1,0)+60*61)
         比较值=-999999999;
      if(输入值>比较值)
         比较值=输入值;
     }
   if(大小==1)
     {
      if(TimeCurrent()==iTime(Symbol(),PERIOD_D1,0)+60*61)
         比较值=-999999999;
      if(输入值<比较值)
         比较值=输入值;
     }
   return 比较值;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double 交易类::返回历史比较值(double 输入值,double 比较值,int 大小)
  {
   if(大小==2)
     {
      if(输入值>比较值)
         比较值=输入值;
     }
   if(大小==1)
     {
      if(输入值<比较值)
         比较值=输入值;
     }
   return 比较值;
  }
//--------

//+------------------------------------------------------------------+
double 交易类::formatlots(string symbol,double lots)
  {
   double a=0;
   double minilots=SymbolInfoDouble(symbol,SYMBOL_VOLUME_MIN);
   double steplots=SymbolInfoDouble(symbol,SYMBOL_VOLUME_STEP);
   if(lots<minilots)
      return(0);
   else
     {
      double a1=MathFloor(lots/minilots)*minilots;
      a=a1+MathFloor((lots-a1)/steplots)*steplots;
     }
   return(a);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::返回所需保证金(string 币种,double 手数)//---
  {
   /*  double 需要多少保证金=0;
     double 品种杠杆=0;
     if(AccountMargin()!=0)
        品种杠杆=AccountEquity()/AccountMargin();
     double 账户杠杆=AccountLeverage();
     double 合约量=SymbolInfoDouble(币种,SYMBOL_TRADE_CONTRACT_SIZE);
     double 初始保证金=MarketInfo(币种,MODE_MARGININIT);
     double 报价量=MarketInfo(币种,MODE_TICKSIZE);
     double 报价值=MarketInfo(币种,MODE_TICKVALUE);
     int 保证金计算方式 =(int)MarketInfo(币种,MODE_MARGINCALCMODE);//计算模式，
     if(保证金计算方式==0&&品种杠杆!=0) //外汇 Forex 计算模式
        需要多少保证金=手数*合约量/(账户杠杆*品种杠杆);
     if(保证金计算方式==1&&品种杠杆!=0) //差价合约 CFD 计算模式
        需要多少保证金=手数*合约量*买卖价格*品种杠杆;
     if(保证金计算方式==2&&品种杠杆!=0) //期货 Futures 计算模式
        需要多少保证金=手数*初始保证金*品种杠杆;
     if(保证金计算方式==3&&品种杠杆!=0) //差价合约_指数 CFD——Index 计算模式
        需要多少保证金=手数*合约量*买卖价格/(报价量*报价值*品种杠杆);
     if(保证金计算方式==4&&品种杠杆!=0) //差价合约_放大比率 CFD——Leverage 计算模式  有些M4暂时没有
        需要多少保证金=手数*合约量*买卖价格/(账户杠杆*品种杠杆);*/
   double  需要多少保证金=手数*MarketInfo(币种,MODE_MARGINREQUIRED);
   return 需要多少保证金;
  }
//+------------------------------------------------------------------+
bool 交易类:: 保证金百分比限制(string 币种,double 手数,double 限制百分比=0,ENUM_ACCOUNT_INFO_DOUBLE 净值或者可用保证金=ACCOUNT_MARGIN_FREE)//---仅用于黄金
  {
   bool 检测=false;
   if(返回所需保证金(币种,手数)>0)
      检测=AccountInfoDouble(净值或者可用保证金)/返回所需保证金(币种,手数)>限制百分比/100;
   if(限制百分比==0||AccountInfoDouble(净值或者可用保证金)==0)
      检测=true;
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::截屏(string 图片名称="-1",int 宽度=1600,int 高度=900,ENUM_ALIGN_MODE align_mode=ALIGN_RIGHT)
  {
   图形.画编辑框("截屏日期1",0, 220,60,200,20,false,CORNER_RIGHT_UPPER,TimeToString(TimeCurrent(),TIME_DATE|TIME_MINUTES|TIME_SECONDS),clrBlack, clrBlack,clrAliceBlue,"楷体",15,1,true,false,false);
   图形.画编辑框("截屏日期2",0, 220,80,200,20,false,CORNER_RIGHT_UPPER,TimeToString(TimeLocal(),TIME_DATE|TIME_MINUTES|TIME_SECONDS),clrBlack, clrBlack,clrAliceBlue,"楷体",15,1,true,false,false);
   if(图片名称=="-1")
      图片名称=Symbol()+" "+TimeToString(TimeCurrent(),TIME_DATE|TIME_MINUTES|TIME_SECONDS);
   if(图片名称=="-2")
      图片名称=Symbol()+" "+TimeToString(TimeLocal(),TIME_DATE|TIME_MINUTES|TIME_SECONDS);
   if(图片名称=="-3")
      图片名称=TimeToString(TimeCurrent(),TIME_DATE|TIME_MINUTES|TIME_SECONDS);
   if(图片名称=="-4")
      图片名称=TimeToString(TimeLocal(),TIME_DATE|TIME_MINUTES|TIME_SECONDS);
   if(图片名称=="-5")
      图片名称=图片名称+" "+TimeToString(TimeCurrent(),TIME_DATE|TIME_MINUTES|TIME_SECONDS);
   if(图片名称=="-6")
      图片名称=图片名称+" "+TimeToString(TimeLocal(),TIME_DATE|TIME_MINUTES|TIME_SECONDS);
   字符串替换(图片名称,",",".");
   bool 检测= ChartScreenShot(0,图片名称,宽度,高度,align_mode);
   ObjectDelete(0,"截屏日期1");
   ObjectDelete(0,"截屏日期2");
   return 检测;
  }
//+------------------------------------------------------------------+
void 交易类::字符串替换(string &图片名称,string 搜索子内容,string 替换内容)
  {
   StringReplace(图片名称,"\\",".");
   StringReplace(图片名称,"/",".");
   StringReplace(图片名称,":",".");
   StringReplace(图片名称,"*",".");
   StringReplace(图片名称,"?",".");
   StringReplace(图片名称,"\"",".");
   StringReplace(图片名称,"<",".");
   StringReplace(图片名称,">",".");
   StringReplace(图片名称,"|",".");
   StringReplace(图片名称,搜索子内容,替换内容);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::首单优势多加单点值(string 币种,int  magic,string 注释,double 优势点数)
  {
   if(优势点数<0)
      Alert("优势点数应>0");
   if(优势点数==0)
      return true;
   if(优势点数<0)
      return false;
   if(优势点数==1.0)
      优势点数=点差值(币种);
   double 开盘价=首单开盘价(币种,magic,注释,OP_BUY);
   bool 多判断1=买价(币种)<开盘价-优势点数*点值(币种);
   bool 多判断2=开盘价==0;
   bool 多判断=多判断1+多判断2;
   return(多判断);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::首单优势空加单点值(string 币种,int  magic,string 注释,double 优势点数)
  {
   if(优势点数<0)
      Alert("优势点数应>0");
   if(优势点数==0)
      return true;
   if(优势点数<0)
      return false;
   if(优势点数==1.0)
      优势点数=点差值(币种);
   double 开盘价=首单开盘价(币种,magic,注释,OP_SELL);
   bool 空判断1=卖价(币种)>开盘价+优势点数*点值(币种);
   bool 空判断2=开盘价==0;
   bool 空判断=空判断1+空判断2;
   return(空判断);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::首单优势加单点值(string 币种,int  magic,string 注释,int 持仓方向,double 优势点数)
  {
   if(优势点数<0)
      Alert("优势点数应>0");
   if(优势点数==0)
      return true;
   if(优势点数<0)
      return false;
   if(优势点数==1.0)
      优势点数=点差值(币种);
   double 开盘价=首单开盘价(币种,magic,注释,持仓方向);
   bool 多判断=持仓方向==OP_BUY&&开盘价>0&&买价(币种)<开盘价-优势点数*点值(币种);
   if(多判断)
      return (true);
   bool 空判断=持仓方向==OP_SELL&&开盘价>0&&卖价(币种)>开盘价+优势点数*点值(币种);
   if(空判断)
      return(true);
   return(false);
  }
//+------------------------------------------------------------------+
bool 交易类::首单优势加单点值(string 币种,int  magic,string 注释,double 优势点数)
  {
   if(优势点数<0)
      Alert("优势点数应>0");
   if(优势点数==0)
      return true;
   if(优势点数<0)
      return false;
   if(优势点数==1.0)
      优势点数=点差值(币种);
   int 方向=首单持仓方向(币种,magic,注释);
   double 开盘价=首单开盘价(币种,magic,注释,方向);
   bool 多判断=方向==OP_BUY&&开盘价>0&&买价(币种)<开盘价-优势点数*点值(币种);
   if(多判断)
      return (true);
   bool 空判断=方向==OP_SELL&&开盘价>0&&卖价(币种)>开盘价+优势点数*点值(币种);
   if(空判断)
      return(true);
   return(false);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::首单优势多加单点值(string 币种,int  magic,double 优势点数)
  {
   if(优势点数<0)
      Alert("优势点数应>0");
   if(优势点数==0)
      return true;
   if(优势点数<0)
      return false;
   if(优势点数==1.0)
      优势点数=点差值(币种);
   double 开盘价=首单开盘价(币种,magic,OP_BUY);
   bool 多判断1=买价(币种)<开盘价-优势点数*点值(币种);
   bool 多判断2=开盘价==0;
   bool 多判断=多判断1+多判断2;
   return(多判断);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::首单优势空加单点值(string 币种,int  magic,double 优势点数)
  {
   if(优势点数<0)
      Alert("优势点数应>0");
   if(优势点数==0)
      return true;
   if(优势点数<0)
      return false;
   if(优势点数==1.0)
      优势点数=点差值(币种);
   double 开盘价=首单开盘价(币种,magic,OP_SELL);
   bool 空判断1=卖价(币种)>开盘价+优势点数*点值(币种);
   bool 空判断2=开盘价==0;
   bool 空判断=空判断1+空判断2;
   return(空判断);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::首单优势加单点值(string 币种,int  magic,int 持仓方向,double 优势点数)
  {
   if(优势点数<0)
      Alert("优势点数应>0");
   if(优势点数==0)
      return true;
   if(优势点数<0)
      return false;
   if(优势点数==1.0)
      优势点数=点差值(币种);
   double 开盘价=首单开盘价(币种,magic,持仓方向);
   bool 多判断=持仓方向==OP_BUY&&开盘价>0&&买价(币种)<开盘价-优势点数*点值(币种);
   if(多判断)
      return (true);
   bool 空判断=持仓方向==OP_SELL&&开盘价>0&&卖价(币种)>开盘价+优势点数*点值(币种);
   if(空判断)
      return(true);
   return(false);
  }
//+------------------------------------------------------------------+
bool 交易类::首单优势加单点值(string 币种,int  magic,double 优势点数)
  {
   if(优势点数<0)
      Alert("优势点数应>0");
   if(优势点数==0)
      return true;
   if(优势点数<0)
      return false;
   if(优势点数==1.0)
      优势点数=点差值(币种);
   int 方向=首单持仓方向(币种,magic);
   double 开盘价=首单开盘价(币种,magic,方向);
   bool 多判断=方向==OP_BUY&&开盘价>0&&买价(币种)<开盘价-优势点数*点值(币种);
   if(多判断)
      return (true);
   bool 空判断=方向==OP_SELL&&开盘价>0&&卖价(币种)>开盘价+优势点数*点值(币种);
   if(空判断)
      return(true);
   return(false);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::首单劣势多加单点值(string 币种,int  magic,string 注释,double 劣势点数)
  {
   if(劣势点数<0)
      Alert("劣势点数应>0");
   if(劣势点数==0)
      return true;
   if(劣势点数<0)
      return false;
   if(劣势点数==1.0)
      劣势点数=点差值(币种);
   double 开盘价=首单开盘价(币种,magic,注释,OP_BUY);
   bool 多判断1=买价(币种)>开盘价+劣势点数*点值(币种);
   bool 多判断2=开盘价==0;
   bool 多判断=多判断1+多判断2;
   return(多判断);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::首单劣势空加单点值(string 币种,int  magic,string 注释,double 劣势点数)
  {
   if(劣势点数<0)
      Alert("劣势点数应>0");
   if(劣势点数==0)
      return true;
   if(劣势点数<0)
      return false;
   if(劣势点数==1.0)
      劣势点数=点差值(币种);
   double 开盘价=首单开盘价(币种,magic,注释,OP_SELL);
   bool 空判断1=卖价(币种)<开盘价-劣势点数*点值(币种);
   bool 空判断2=开盘价==0;
   bool 空判断=空判断1+空判断2;
   return(空判断);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::首单劣势加单点值(string 币种,int  magic,string 注释,int 持仓方向,double 劣势点数)
  {
   if(劣势点数<0)
      Alert("劣势点数应>0");
   if(劣势点数==0)
      return true;
   if(劣势点数<0)
      return false;
   if(劣势点数==1.0)
      劣势点数=点差值(币种);
   double 开盘价=首单开盘价(币种,magic,注释,持仓方向);
   bool 多判断=持仓方向==OP_BUY&&开盘价>0&&买价(币种)>开盘价+劣势点数*点值(币种);
   if(多判断)
      return (true);

   bool 空判断=持仓方向==OP_SELL&&开盘价>0&&卖价(币种)<开盘价-劣势点数*点值(币种);
   if(空判断)
      return(true);
   return(false);
  }
//+------------------------------------------------------------------+
bool 交易类::首单劣势加单点值(string 币种,int  magic,string 注释,double 劣势点数)
  {
   if(劣势点数<0)
      Alert("劣势点数应>0");
   if(劣势点数==0)
      return true;
   if(劣势点数<0)
      return false;
   if(劣势点数==1.0)
      劣势点数=点差值(币种);
   int 方向=首单持仓方向(币种,magic,注释);
   double 开盘价=首单开盘价(币种,magic,注释,方向);
   bool 多判断=方向==OP_BUY&&开盘价>0&&买价(币种)>开盘价+劣势点数*点值(币种);
   if(多判断)
      return (true);

   bool 空判断=方向==OP_SELL&&开盘价>0&&卖价(币种)<开盘价-劣势点数*点值(币种);
   if(空判断)
      return(true);
   return(false);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::首单劣势多加单点值(string 币种,int  magic,double 劣势点数)
  {
   if(劣势点数<0)
      Alert("劣势点数应>0");
   if(劣势点数==0)
      return true;
   if(劣势点数<0)
      return false;
   if(劣势点数==1.0)
      劣势点数=点差值(币种);
   double 开盘价=首单开盘价(币种,magic,OP_BUY);
   bool 多判断1=买价(币种)>开盘价+劣势点数*点值(币种);
   bool 多判断2=开盘价==0;
   bool 多判断=多判断1+多判断2;
   return(多判断);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::首单劣势空加单点值(string 币种,int  magic,double 劣势点数)
  {
   if(劣势点数<0)
      Alert("劣势点数应>0");
   if(劣势点数==0)
      return true;
   if(劣势点数<0)
      return false;
   if(劣势点数==1.0)
      劣势点数=点差值(币种);
   double 开盘价=首单开盘价(币种,magic,OP_SELL);
   bool 空判断1=卖价(币种)<开盘价-劣势点数*点值(币种);
   bool 空判断2=开盘价==0;
   bool 空判断=空判断1+空判断2;
   return(空判断);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::首单劣势加单点值(string 币种,int  magic,int 持仓方向,double 劣势点数)
  {
   if(劣势点数<0)
      Alert("劣势点数应>0");
   if(劣势点数==0)
      return true;
   if(劣势点数<0)
      return false;
   if(劣势点数==1.0)
      劣势点数=点差值(币种);
   double 开盘价=首单开盘价(币种,magic,持仓方向);
   bool 多判断=持仓方向==OP_BUY&&开盘价>0&&买价(币种)>开盘价+劣势点数*点值(币种);
   if(多判断)
      return (true);
   bool 空判断=持仓方向==OP_SELL&&开盘价>0&&卖价(币种)<开盘价-劣势点数*点值(币种);
   if(空判断)
      return(true);
   return(false);
  }
//+------------------------------------------------------------------+
bool 交易类::首单劣势加单点值(string 币种,int  magic,double 劣势点数)
  {
   if(劣势点数<0)
      Alert("劣势点数应>0");
   if(劣势点数==0)
      return true;
   if(劣势点数<0)
      return false;
   if(劣势点数==1.0)
      劣势点数=点差值(币种);
   int 方向=首单持仓方向(币种,magic);
   double 开盘价=首单开盘价(币种,magic,方向);
   bool 多判断=方向==OP_BUY&&开盘价>0&&买价(币种)>开盘价+劣势点数*点值(币种);
   if(多判断)
      return (true);
   bool 空判断=方向==OP_SELL&&开盘价>0&&卖价(币种)<开盘价-劣势点数*点值(币种);
   if(空判断)
      return(true);
   return(false);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::向上加单点值(string 币种,double 参考价格,double 买卖价格,double 加单点数)
  {
   if(加单点数<0)
      Alert("加单点数>0");
   if(加单点数==0)
      return true;
   if(加单点数<0)
      return false;
   if(加单点数==1.0)
      加单点数=点差值(币种);
   bool 判断=参考价格==0||买卖价格>参考价格+加单点数*点值(币种);
   return(判断);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::向下加单点值(string 币种,double 参考价格,double 买卖价格,double 加单点数)
  {
   if(加单点数<0)
      Alert("加单点数>0");
   if(加单点数==0)
      return true;
   if(加单点数<0)
      return false;
   if(加单点数==1.0)
      加单点数=点差值(币种);
   bool 判断=参考价格==0||买卖价格<参考价格-加单点数*点值(币种);
   return(判断);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::持仓最高价(string 币种,int magic,string 注释,int 方向)
  {
   double 最高价格=-9999999999;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderType()==方向)
              {
               if(OrderOpenPrice()>最高价格)
                  最高价格= OrderOpenPrice();
              }
           }
        }
     }
   return 最高价格;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::持仓最高价(string 币种,int magic,int 方向)
  {
   double 最高价格=-9999999999;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(OrderOpenPrice()>最高价格)
                  最高价格= OrderOpenPrice();
              }
           }
        }
     }
   return 最高价格;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::持仓最高价(int magic,int 方向)
  {
   double 最高价格=-9999999999;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(OrderOpenPrice()>最高价格)
                  最高价格= OrderOpenPrice();
              }
           }
        }
     }
   return 最高价格;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::持仓最高价(string 币种,int magic,string 注释)
  {
   double 最高价格=-9999999999;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderOpenPrice()>最高价格)
                  最高价格= OrderOpenPrice();
              }
           }
        }
     }
   return 最高价格;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::持仓最高价(string 币种,int magic)
  {
   double 最高价格=-9999999999;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderOpenPrice()>最高价格)
                  最高价格= OrderOpenPrice();
              }
           }
        }
     }
   return 最高价格;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::持仓最高价(int magic)
  {
   double 最高价格=-9999999999;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               if(OrderOpenPrice()>最高价格)
                  最高价格= OrderOpenPrice();
              }
           }
        }
     }
   return 最高价格;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::持仓最低价(string 币种,int magic,string 注释,int 方向)
  {
   double 最低价格=9999999999;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderType()==方向)
              {
               if(OrderOpenPrice()<最低价格)
                  最低价格= OrderOpenPrice();
              }
           }
        }
     }
   return 最低价格;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::持仓最低价(string 币种,int magic,int 方向)
  {
   double 最低价格=9999999999;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(OrderOpenPrice()<最低价格)
                  最低价格= OrderOpenPrice();
              }
           }
        }
     }
   return 最低价格;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::持仓最低价(int magic,int 方向)
  {
   double 最低价格=9999999999;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic&&OrderType()==方向)
              {
               if(OrderOpenPrice()<最低价格)
                  最低价格= OrderOpenPrice();
              }
           }
        }
     }
   return 最低价格;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::持仓最低价(string 币种,int magic,string 注释)
  {
   double 最低价格=9999999999;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderOpenPrice()<最低价格)
                  最低价格= OrderOpenPrice();
              }
           }
        }
     }
   return 最低价格;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::持仓最低价(string 币种,int magic)
  {
   double 最低价格=9999999999;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderOpenPrice()<最低价格)
                  最低价格= OrderOpenPrice();
              }
           }
        }
     }
   return 最低价格;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::持仓最低价(int magic)
  {
   double 最低价格=9999999999;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               if(OrderOpenPrice()<最低价格)
                  最低价格= OrderOpenPrice();
              }
           }
        }
     }
   return 最低价格;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::指定点值平单(string 币种,int magic,string 注释,double 指定点数,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(指定点数>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  double 多实时点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空实时点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_BUY&&多实时点数>指定点数)
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                  if(OrderType()==OP_SELL&&空实时点数>指定点数)
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定点值平单(string 币种,int magic,double 指定点数,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(指定点数>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  double 多实时点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空实时点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_BUY&&多实时点数>指定点数)
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                  if(OrderType()==OP_SELL&&空实时点数>指定点数)
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }

                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定点值平单(int magic,double 指定点数,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(指定点数>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string 币种=OrderSymbol();
                  double 多实时点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空实时点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_BUY&&多实时点数>指定点数)
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                  if(OrderType()==OP_SELL&&空实时点数>指定点数)
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
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
void 交易类::指定点值平多(string 币种,int magic,string 注释,double 指定点数,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(指定点数>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  double 多实时点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_BUY&&多实时点数>指定点数)
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定点值平多(string 币种,int magic,double 指定点数,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(指定点数>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  double 多实时点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_BUY&&多实时点数>指定点数)
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定点值平多(int magic,double 指定点数,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(指定点数>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string 币种=OrderSymbol();
                  double 多实时点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_BUY&&多实时点数>指定点数)
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::指定点值平空(string 币种,int magic,string 注释,double 指定点数,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(指定点数>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  double 空实时点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_SELL&&空实时点数>指定点数)
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定点值平空(string 币种,int magic,double 指定点数,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(指定点数>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  double 空实时点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_SELL&&空实时点数>指定点数)
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::指定点值平空(int magic,double 指定点数,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(指定点数>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string 币种=OrderSymbol();
                  double 空实时点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_SELL&&空实时点数>指定点数)
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::账号检测(const long &adn[])
  {
   bool 检测=false;
   for(int i=0; i<ArraySize(adn); i++)
     {
      if(AccountInfoInteger(ACCOUNT_LOGIN)==adn[i])
         检测=true;
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//--- 获取点值：变化1点1手的盈亏
double 交易类::getTickValue(string input_symbol)
  {
   double tick_value =SymbolInfoDouble(input_symbol, SYMBOL_TRADE_TICK_VALUE);//1点的价值
   long calc_model =SymbolInfoInteger(input_symbol, SYMBOL_TRADE_CALC_MODE);//计算模式，
   if(calc_model==1) //CFD模式的点值计算模式
     {
      double contract_size =SymbolInfoDouble(input_symbol, SYMBOL_TRADE_CONTRACT_SIZE);      //合约大小
      double tick_size =SymbolInfoDouble(input_symbol, SYMBOL_TRADE_TICK_SIZE);      //最小价格改变
      tick_value =contract_size * tick_size;
     }
   return tick_value;
  }
//+------------------------------------------------------------------+
void 交易类::坐标(double 横坐标=1,datetime 纵坐标=1)
  {
   if(横坐标==1)
      横坐标=iOpen(Symbol(),PERIOD_D1,0);
   if(纵坐标==1)
      纵坐标=iTime(Symbol(),PERIOD_D1,0);
   if(横坐标)
      新图.画水平线("水平"+Symbol()+TimeToString(纵坐标),0,横坐标);
   if(纵坐标)
      新图.画垂直线("垂直"+Symbol()+TimeToString(纵坐标),0,纵坐标);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::左上角文字(string 信息1,int 下移=0,color 颜色=clrYellow)
  {
   图形.画文本标签("左文0",0,20,100+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息1,"楷体",10,颜色,false,false);
  }
//+------------------------------------------------------------------+
void 交易类::左上角文字(string 信息1,string 信息2,int 下移=0,color 颜色=clrYellow)
  {
   图形.画文本标签("左文1",0,20,100+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息1,"楷体",10,颜色,false,false);
   图形.画文本标签("左文2",0,20,120+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息2,"楷体",10,颜色,false,false);
  }
//+------------------------------------------------------------------+
void 交易类::左上角文字(string 信息1,string 信息2,string 信息3,int 下移=0,color 颜色=clrYellow)
  {
   图形.画文本标签("左文3",0,20,100+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息1,"楷体",10,颜色,false,false);
   图形.画文本标签("左文4",0,20,120+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息2,"楷体",10,颜色,false,false);
   图形.画文本标签("左文5",0,20,140+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息3,"楷体",10,颜色,false,false);
  }
//+------------------------------------------------------------------+
void 交易类::左上角文字(string 信息1,string 信息2,string 信息3,string 信息4,int 下移=0,color 颜色=clrYellow)
  {
   图形.画文本标签("左文6",0,20,100+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息1,"楷体",10,颜色,false,false);
   图形.画文本标签("左文7",0,20,120+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息2,"楷体",10,颜色,false,false);
   图形.画文本标签("左文8",0,20,140+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息3,"楷体",10,颜色,false,false);
   图形.画文本标签("左文9",0,20,160+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息4,"楷体",10,颜色,false,false);
  }
//+------------------------------------------------------------------+
void 交易类::左上角文字(string 信息1,string 信息2,string 信息3,string 信息4,string 信息5,int 下移=0,color 颜色=clrYellow)
  {
   图形.画文本标签("左文10",0,20,100+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息1,"楷体",10,颜色,false,false);
   图形.画文本标签("左文11",0,20,120+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息2,"楷体",10,颜色,false,false);
   图形.画文本标签("左文12",0,20,140+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息3,"楷体",10,颜色,false,false);
   图形.画文本标签("左文13",0,20,160+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息4,"楷体",10,颜色,false,false);
   图形.画文本标签("左文14",0,20,180+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息5,"楷体",10,颜色,false,false);
  }
//+------------------------------------------------------------------+
void 交易类::左上角文字(string 信息1,string 信息2,string 信息3,string 信息4,string 信息5,string 信息6,int 下移=0,color 颜色=clrYellow)
  {
   图形.画文本标签("左文15",0,20,100+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息1,"楷体",10,颜色,false,false);
   图形.画文本标签("左文16",0,20,120+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息2,"楷体",10,颜色,false,false);
   图形.画文本标签("左文17",0,20,140+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息3,"楷体",10,颜色,false,false);
   图形.画文本标签("左文18",0,20,160+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息4,"楷体",10,颜色,false,false);
   图形.画文本标签("左文19",0,20,180+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息5,"楷体",10,颜色,false,false);
   图形.画文本标签("左文20",0,20,200+下移,ANCHOR_LEFT_UPPER,CORNER_LEFT_UPPER,0,信息6,"楷体",10,颜色,false,false);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::右上角文字(string 信息1,int 下移=0,color 颜色=clrYellow)
  {
   图形.画文本标签("右文0",0,20,100+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息1,"楷体",10,颜色,false,false);
  }
//+------------------------------------------------------------------+
void 交易类::右上角文字(string 信息1,string 信息2,int 下移=0,color 颜色=clrYellow)
  {
   图形.画文本标签("右文1",0,20,100+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息1,"楷体",10,颜色,false,false);
   图形.画文本标签("右文2",0,20,120+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息2,"楷体",10,颜色,false,false);
  }
//+------------------------------------------------------------------+
void 交易类::右上角文字(string 信息1,string 信息2,string 信息3,int 下移=0,color 颜色=clrYellow)
  {
   图形.画文本标签("右文3",0,20,100+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息1,"楷体",10,颜色,false,false);
   图形.画文本标签("右文4",0,20,120+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息2,"楷体",10,颜色,false,false);
   图形.画文本标签("右文5",0,20,140+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息3,"楷体",10,颜色,false,false);
  }
//+------------------------------------------------------------------+
void 交易类::右上角文字(string 信息1,string 信息2,string 信息3,string 信息4,int 下移=0,color 颜色=clrYellow)
  {
   图形.画文本标签("右文6",0,20,100+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息1,"楷体",10,颜色,false,false);
   图形.画文本标签("右文7",0,20,120+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息2,"楷体",10,颜色,false,false);
   图形.画文本标签("右文8",0,20,140+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息3,"楷体",10,颜色,false,false);
   图形.画文本标签("右文9",0,20,160+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息4,"楷体",10,颜色,false,false);
  }
//+------------------------------------------------------------------+
void 交易类::右上角文字(string 信息1,string 信息2,string 信息3,string 信息4,string 信息5,int 下移=0,color 颜色=clrYellow)
  {
   图形.画文本标签("右文10",0,20,100+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息1,"楷体",10,颜色,false,false);
   图形.画文本标签("右文11",0,20,120+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息2,"楷体",10,颜色,false,false);
   图形.画文本标签("右文12",0,20,140+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息3,"楷体",10,颜色,false,false);
   图形.画文本标签("右文13",0,20,160+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息4,"楷体",10,颜色,false,false);
   图形.画文本标签("右文14",0,20,180+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息5,"楷体",10,颜色,false,false);
  }
//+------------------------------------------------------------------+
void 交易类::右上角文字(string 信息1,string 信息2,string 信息3,string 信息4,string 信息5,string 信息6,int 下移=0,color 颜色=clrYellow)
  {
   图形.画文本标签("右文15",0,20,100+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息1,"楷体",10,颜色,false,false);
   图形.画文本标签("右文16",0,20,120+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息2,"楷体",10,颜色,false,false);
   图形.画文本标签("右文17",0,20,140+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息3,"楷体",10,颜色,false,false);
   图形.画文本标签("右文18",0,20,160+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息4,"楷体",10,颜色,false,false);
   图形.画文本标签("右文19",0,20,180+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息5,"楷体",10,颜色,false,false);
   图形.画文本标签("右文20",0,20,200+下移,ANCHOR_RIGHT_UPPER,CORNER_RIGHT_UPPER,0,信息6,"楷体",10,颜色,false,false);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
/*
计算平均值u=(x1+x2+…+xn)/n
计算方差s²=((x1-u)^2 +(x2-u)^2 +…+(xn-u)^2)/n
计算标准差σ=sqrt(s²)
*/
//--- 求平均值
double 交易类::平均值(double &x[], int len)
  {
   double 平均值=0;
   if(len>0)
     {
      double sum = 0;
      for(int i = 0; i < len; i++)  // 求和
         sum += x[i];
      平均值= sum/len; // 得到平均值
     }
   return 平均值;
  }
//--- 求方差
double 交易类::方差(double &x[], int len)
  {
   double 方差=0;
   if(len>0)
     {
      double average =平均值(x, len);
      double sum=0;
      for(int i = 0; i < len; i++)  // 求和
         sum += pow(x[i]-average, 2);
      方差= sum/len; // 得到方差值
     }
   return 方差;
  }
//---标准差
double 交易类::标准差(double &x[], int len)
  {
   double 标准差=0;
   if(len>0)
     {
      double variance = 方差(x, len);
      标准差= sqrt(variance); // 得到标准差
     }
   return 标准差;
  }
/*
if(NULL != x)
{
    delete[] x;
    x = NULL;
}
*/
//+------------------------------------------------------------------+
double 交易类:: 账户盈亏百分之几()
  {
   double 盈亏百分之几=0;
   if(AccountInfoDouble(ACCOUNT_BALANCE)>0)
      盈亏百分之几= (AccountInfoDouble(ACCOUNT_EQUITY)-AccountInfoDouble(ACCOUNT_BALANCE))/AccountInfoDouble(ACCOUNT_BALANCE);
   return 盈亏百分之几;
  }
//+------------------------------------------------------------------+
bool 交易类:: 允许账户盈利百分之几(double 设置允许账户盈利百分之几=0,bool 警报弹窗=false,bool 是否移除EA=false)
  {
   bool 检测=false;
   if(设置允许账户盈利百分之几==0)
      return true;
   if(设置允许账户盈利百分之几>0&&账户盈亏百分之几()>设置允许账户盈利百分之几)
     {
      平单();
      删除挂单();
      Print("账户盈利百分之几达到设置！");
      if(警报弹窗)
         Alert("账户盈利百分之几达到设置！");
      if(是否移除EA)
         ExpertRemove();
      检测=true;
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool  交易类::允许账户亏损百分之几(double 设置允许账户亏损百分之几=0,bool 警报弹窗=false,bool 是否移除EA=false)
  {
   bool 检测=false;
   if(设置允许账户亏损百分之几==0)
      return true;
   if(设置允许账户亏损百分之几<0&&账户盈亏百分之几()<设置允许账户亏损百分之几)
     {
      平单();
      删除挂单();
      Print("账户亏损百分之几达到设置！");
      if(警报弹窗)
         Alert("账户亏损百分之几达到设置！");
      if(是否移除EA)
         ExpertRemove();
      检测=true;
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类:: 持仓盈亏百分之几(string 币种,int  magic)
  {
   double 盈亏百分之几=0;
   if(AccountInfoDouble(ACCOUNT_BALANCE)>0)
      盈亏百分之几=持仓盈亏统计(币种,magic)/AccountInfoDouble(ACCOUNT_BALANCE);
   return 盈亏百分之几;
  }
//+------------------------------------------------------------------+
bool 交易类:: 允许持仓盈利百分之几(string 币种,int  magic,double 设置允许持仓盈利百分之几=0,bool 警报弹窗=false,bool 是否移除EA=false)
  {
   bool 检测=false;
   if(设置允许持仓盈利百分之几==0)
      return true;
   if(设置允许持仓盈利百分之几>0&&持仓盈亏百分之几(币种,magic)>设置允许持仓盈利百分之几)
     {
      平单(币种,magic);
      删除挂单(币种,magic);
      Print("账户盈利百分之几达到设置！");
      if(警报弹窗)
         Alert("账户盈利百分之几达到设置！");
      if(是否移除EA)
         ExpertRemove();
      检测=true;
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool  交易类::允许持仓亏损百分之几(string 币种,int  magic,double 设置允许持仓亏损百分之几=0,bool 警报弹窗=false,bool 是否移除EA=false)
  {
   bool 检测=false;
   if(设置允许持仓亏损百分之几==0)
      return true;
   if(设置允许持仓亏损百分之几<0&&持仓盈亏百分之几(币种,magic)<设置允许持仓亏损百分之几)
     {
      平单(币种,magic);
      删除挂单(币种,magic);
      Print("账户亏损百分之几达到设置！");
      if(警报弹窗)
         Alert("账户亏损百分之几达到设置！");
      if(是否移除EA)
         ExpertRemove();
      检测=true;
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::正序标准差(int 遍历序号,const double &样本数组[],const double &样本均价[],int 选中样本个数)
  {
   double 标准差=0.0;
   if(遍历序号>=选中样本个数)
     {
      for(int f=0; f<选中样本个数; f++)
         标准差+=MathPow(样本数组[遍历序号-f]-样本均价[遍历序号],2);//---方差
      标准差=MathSqrt(标准差/选中样本个数);
     }
   return(标准差);
  }
//+------------------------------------------------------------------+----------------------------------------------------------------+
double 交易类::倒序标准差(int 遍历序号,const double &样本数组[],const double &样本均价[],int 选中样本个数)
  {
   double 标准差=0.0;
   if(遍历序号>=0)
     {
      for(int f=0; f<选中样本个数; f++)
         标准差+=MathPow(样本数组[遍历序号+f]-样本均价[遍历序号],2);//---方差
      标准差=MathSqrt(标准差/选中样本个数);
     }
   return(标准差);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int  交易类::copyrates(string 币种,ENUM_TIMEFRAMES 图表周期,MqlRates &rates[],int 计算数量,int 起始位置=0)
  {
   int copied=CopyRates(币种,图表周期,起始位置,计算数量,rates);
   return copied;
  }
//+------------------------------------------------------------------+
int  交易类::copyrates(string 币种,ENUM_TIMEFRAMES 图表周期,MqlRates &rates[],int 计算数量,datetime 起始时间=0)
  {
   int copied=CopyRates(币种,图表周期,起始时间,计算数量,rates);
   return copied;
  }
//+------------------------------------------------------------------+
int  交易类::copyrates(string 币种,ENUM_TIMEFRAMES 图表周期,MqlRates &rates[],datetime 结束时间,datetime 起始时间=0)
  {
   int copied=CopyRates(币种,图表周期,起始时间,结束时间,rates);
   return copied;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
template<typename x>
void 交易类::倒序数组(x &传入数组[],bool 是否倒序)
  {
   /*if(ArrayIsDynamic(传入数组))
     {*/
   if(ArrayGetAsSeries(传入数组)==false)
      ArraySetAsSeries(传入数组,是否倒序);
   /* }*/
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void 交易类::持仓信息统计(string 币种,int magic,int 下移1=110,int 壹左贰右=1,color 颜色=clrYellow)
  {
   int 多单数=持仓单数统计(币种,magic,OP_BUY);
   double 多手数=持仓仓位统计(币种,magic,OP_BUY);
   double 多盈亏=持仓盈亏统计(币种,magic,OP_BUY);
   double 多均价=持仓均价(币种,magic,OP_BUY);
//-----
   int 空单数=持仓单数统计(币种,magic,OP_SELL);
   double 空手数=持仓仓位统计(币种,magic,OP_SELL);
   double 空盈亏=持仓盈亏统计(币种,magic,OP_SELL);
   double 空均价=持仓均价(币种,magic,OP_SELL);
//----
   int 总单数=持仓单数统计(币种,magic);
   double 总手数=持仓仓位统计(币种,magic);
   double 总盈亏=持仓盈亏统计(币种,magic);
   double 净均价=净持仓均价(币种,magic);
   if(壹左贰右!=2)
      左上角文字("多单数 "+(string)多单数+" 多手数 "+DoubleToString(多手数,3)+"  多盈亏  "+DoubleToString(多盈亏,小数点(币种)),"空单数 "+(string)空单数+" 空手数 "+DoubleToString(空手数,3)+"  空盈亏  "
                      +DoubleToString(空盈亏,小数点(币种)),"总单数 "+(string)总单数+" 总手数 "+DoubleToString(总手数,3)+"  总盈亏  "+DoubleToString(总盈亏,小数点(币种)),
                      "//-多均价 "+DoubleToString(多均价,小数点(币种))+" //-空均价 "+DoubleToString(空均价,小数点(币种)),"//------净均价 "+DoubleToString(净均价,小数点(币种)),下移1,颜色);
   else
      右上角文字("多单数 "+(string)多单数+" 多手数 "+DoubleToString(多手数,3)+"  多盈亏  "+DoubleToString(多盈亏,小数点(币种)),"空单数 "+(string)空单数+" 空手数 "+DoubleToString(空手数,3)+"  空盈亏  "
                      +DoubleToString(空盈亏,小数点(币种)),"总单数 "+(string)总单数+" 总手数 "+DoubleToString(总手数,3)+"  总盈亏  "+DoubleToString(总盈亏,小数点(币种)),
                      "//-多均价 "+DoubleToString(多均价,小数点(币种))+" //-空均价 "+DoubleToString(空均价,小数点(币种)),"//------净均价 "+DoubleToString(净均价,小数点(币种)),下移1,颜色);
  }
//+------------------------------------------------------------------+
void 交易类::持仓信息统计(int magic,int 下移1=110,int 壹左贰右=1,color 颜色=clrYellow)
  {
   int 多单数=持仓单数统计(magic,OP_BUY);
   double 多手数=持仓仓位统计(magic,OP_BUY);
   double 多盈亏=持仓盈亏统计(magic,OP_BUY);
//-----
   int 空单数=持仓单数统计(magic,OP_SELL);
   double 空手数=持仓仓位统计(magic,OP_SELL);
   double 空盈亏=持仓盈亏统计(magic,OP_SELL);
//----
   int 总单数=持仓单数统计(magic);
   double 总手数=持仓仓位统计(magic);
   double 总盈亏=持仓盈亏统计(magic);
   if(壹左贰右!=2)
      左上角文字("多单数 "+(string)多单数+" 多手数 "+DoubleToString(多手数,3)+"  多盈亏  "+DoubleToString(多盈亏,小数点(Symbol())),"空单数 "+(string)空单数+" 空手数 "+DoubleToString(空手数,3)+"  空盈亏  "
                      +DoubleToString(空盈亏,小数点(Symbol())),"总单数 "+(string)总单数+" 总手数 "+DoubleToString(总手数,3)+"  总盈亏  "+DoubleToString(总盈亏,小数点(Symbol())),下移1,颜色);

   else
      右上角文字("多单数 "+(string)多单数+" 多手数 "+DoubleToString(多手数,3)+"  多盈亏  "+DoubleToString(多盈亏,小数点(Symbol())),"空单数 "+(string)空单数+" 空手数 "+DoubleToString(空手数,3)+"  空盈亏  "
                      +DoubleToString(空盈亏,小数点(Symbol())),"总单数 "+(string)总单数+" 总手数 "+DoubleToString(总手数,3)+"  总盈亏  "+DoubleToString(总盈亏,小数点(Symbol())),下移1,颜色);
  }
//+------------------------------------------------------------------+
double  交易类::马丁手数(string 币种,double 传入手数,double 递增手数=0,double 手数系数=1,bool 倍投开启=false)
  {
   double 返回手数=传入手数;
   if(传入手数>0)
     {
      if(倍投开启)
         递增手数=0;
      返回手数=递增手数+手数系数*传入手数;
     }
   if(传入手数==0)
      返回手数=递增手数;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   交易类::历史总盈亏平推手数(string 币种,int magic,double 传入初始手数,bool 盈亏信号检测,double 递增手数=0,double 手数系数=1,bool 倍投开启=false)
  {
   double 手数=传入初始手数;
   int 总单数=持仓单数统计(币种,magic);
   if(盈亏信号检测&&总单数==0)
     {
      手数=历史持仓尾单手数(币种,magic,0,1);
      手数=马丁手数(币种,手数,递增手数,手数系数,倍投开启);
     }
//---
   if(总单数>0)
      手数=尾单交易量(币种,magic);
   return 手数;
  }
//+------------------------------------------------------------------+
//---
void   交易类::自定义面板(bool 是否画待运行1=true,bool 是否画待运行2=true,int 下移=30,int 平移=0)
  {
   if(是否画待运行1)
      新图.画按钮("运行1",0,10+平移,60+下移,50,30,"待运行",clrAliceBlue,10,0,0,"楷体",0);
   if(是否画待运行2)
      新图.画按钮("运行2",0,10+平移,100+下移,50,30,"待运行",clrAliceBlue,10,0,0,"楷体",0);
   新图.画按钮("开多",0,120+平移,60+下移,50,30,"开多",clrYellowGreen,10,0,0,"楷体",0);
   新图.画按钮("开空",0,120+平移,100+下移,50,30,"开空",clrRed,12,0,0,"楷体",0);
   新图.画按钮("平多",0,65+平移,60+下移,50,30,"平多",clrRed,12,0,0,"楷体",0);
   新图.画按钮("平空",0,65+平移,100+下移,50,30,"平空",clrYellowGreen,12,0,0,"楷体",0);
//---
   新图.画按钮("平单",0,10+平移,140+下移,50,25,"全平",clrRed,11,0,0,"楷体",0);
   新图.画按钮("平指定盈利",0,65+平移,140+下移,50,25,"平盈利",clrRed,12,0,0,"楷体",0);
   新图.画编辑框("手数",0,120+平移,140+下移,50,25,"0.01",10,false,clrBlack,clrWhite,clrBlack,0);
   新图.画按钮("清仓",0,10+平移,180+下移,40,25,"清仓",clrRed,11,0,0,"楷体",0);
   新图.画按钮("盈利带亏损",0,50+平移,180+下移,70,25,"盈利带亏损",clrYellowGreen,9,0,0,"楷体",0);
   新图.画按钮("删除挂单",0,120+平移,180+下移,50,25,"删除挂单",clrYellowGreen,9,0,0,"楷体",0);
  }
//----
void   交易类::自定义面板2(bool 是否画待运行1=true,bool 是否画待运行2=true,int 下移=0,int 平移=0)
  {
//--
   新图.画按钮("删除挂单",0,150+平移,80+下移,60,25,"删除挂单",clrYellowGreen,10,0,0,"楷体",0);
   新图.画按钮("盈利带亏损",0,70+平移,80+下移,80,25,"盈利带亏损",clrYellowGreen,10,0,0,"楷体",0);
   新图.画按钮("清仓",0,10+平移,80+下移,60,25,"清仓",clrRed,12,0,0,"楷体",0);
   新图.画按钮("平单",0,10+平移,120+下移,60,25,"全平",clrRed,12,0,0,"楷体",0);
   新图.画按钮("平指定盈利",0,70+平移,120+下移,80,25,"平指定盈利",clrRed,10,0,0,"楷体",0);
   新图.画编辑框("手数",0,150+平移,120+下移,60,25,"0.01",10,false,clrBlack,clrWhite,clrBlack,0);
   if(是否画待运行1)
      新图.画按钮("运行1",0,10+平移,160+下移,50,30,"待运行",clrAliceBlue,10,0,0,"楷体",0);
   if(是否画待运行2)
      新图.画按钮("运行2",0,10+平移,260+下移,50,30,"待运行",clrAliceBlue,10,0,0,"楷体",0);
   新图.画按钮("平多",0,105+平移,160+下移,50,30,"平多",clrRed,12,0,0,"楷体",0);
   新图.画按钮("开多",0,160+平移,160+下移,50,30,"开多",clrYellowGreen,12,0,0,"楷体",0);
   新图.画按钮("平空",0,105+平移,260+下移,50,30,"平空",clrYellowGreen,12,0,0,"楷体",0);
   新图.画按钮("开空",0,160+平移,260+下移,50,30,"开空",clrRed,12,0,0,"楷体",0);
  }
//+------------------------------------------------------------------+
void 交易类::自定义面板辅助实现(string 币种,int magic,double 止损点数,double 止盈点数,const int id,const string sparam)
  {
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="运行1")
     {
      if(新图.状态检测(0,"运行1")==false)
        {
         ObjectSetString(0,"运行1",OBJPROP_TEXT,"待运行");
         ObjectSetInteger(0,"运行1",OBJPROP_BGCOLOR,clrAliceBlue);
        }
      if(新图.状态检测(0,"运行1")==true)
        {
         ObjectSetString(0,"运行1",OBJPROP_TEXT,"运行中");
         ObjectSetInteger(0,"运行1",OBJPROP_BGCOLOR,clrGreen);
        }
     }
//---
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="运行2")
     {
      if(新图.状态检测(0,"运行2")==false)
        {
         ObjectSetString(0,"运行2",OBJPROP_TEXT,"待运行");
         ObjectSetInteger(0,"运行2",OBJPROP_BGCOLOR,clrAliceBlue);
        }
      if(新图.状态检测(0,"运行2")==true)
        {
         ObjectSetString(0,"运行2",OBJPROP_TEXT,"运行中");
         ObjectSetInteger(0,"运行2",OBJPROP_BGCOLOR,clrGreen);
        }
     }
   int 多单数=持仓单数统计(币种,magic,OP_BUY);
   int 空单数=持仓单数统计(币种,magic,OP_SELL);
   double 手数=获取物件double值("手数");
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平多")
      平多(币种,magic);
//---
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平空")
      平空(币种,magic);

   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="开多")
      做多(币种,手数自适应2(币种,手数),止损点数,止盈点数,magic,"面板开多buy "+string(多单数+1));
//---
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="开空")
      做空(币种,手数自适应2(币种,手数),止损点数,止盈点数,magic,"面板开空sell "+string(空单数+1));
//---
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平单")
      平单(币种,magic);
//---------
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平指定盈利")
      指定盈利平单(币种,magic,手数);//--手数即是金额
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="清仓")
      平单();
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="清仓")
      平单();
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="删除挂单")
      删除挂单(币种,magic);
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="盈利带亏损")
     {
      double 平总盈利=盈利金额由大到小平单(手数,币种,magic);
      设置金额由小到大平亏损(平总盈利,币种,magic);
     }
  }
//--
bool 交易类::物件文本检测(string 物件名="运行1",string 现物件名="运行中")
  {
   bool  检测=获取物件string值(物件名)==现物件名;
   return 检测;
  }
//+------------------------------------------------------------------+
void   交易类::自定义面板3(bool 是否画响应栏=true,int 字号15=10,int 向左平移=0,int 上下平移=0,ENUM_BASE_CORNER 角落=CORNER_RIGHT_UPPER)
  {
//--
   图形.画按钮("BUY",0,380+向左平移,30+上下平移,80,38,角落,"BUY",clrRed,clrBlack,clrWhite,"楷体",字号15,false,false,false);
   图形.画按钮("SELL",0,380+向左平移,72+上下平移,80,38,角落,"SELL",clrGreen,clrBlack,clrWhite,"楷体",字号15,false,false,false);
   图形.画按钮("平空进多",0,308+向左平移,30+上下平移,80,38,角落,"平空进多",clrBlue,clrBlack,clrWhite,"楷体",字号15,false,false,false);
   图形.画按钮("平多进空",0,308+向左平移,72+上下平移,80,38,角落,"平多进空",clrBlue,clrBlack,clrWhite,"楷体",字号15,false,false,false);
   图形.画编辑框("手数",0,226+向左平移,30+上下平移,45,80,false,角落,"0.01",clrDarkGray,clrWhite,clrBlack,"楷体",10,ALIGN_CENTER,false,false,false);
   图形.画按钮("平多",0,180+向左平移,30+上下平移,80,38,角落,"平多",clrGreen,clrBlack,clrWhite,"楷体",字号15,false,false,false);
   图形.画按钮("平空",0,180+向左平移,72+上下平移,80,38,角落,"平空",clrRed,clrBlack,clrWhite,"楷体",字号15,false,false,false);
   图形.画按钮("一键全平",0,100+向左平移,72+上下平移,80,40,角落,"一键全平",clrRed,clrBlack,clrWhite,"楷体",字号15,false,false,false);
   图形.画按钮("清仓",0,100+向左平移,30+上下平移,80,40,角落,"清仓",clrRed,clrBlack,clrWhite,"楷体",字号15,false,false,false);
   if(是否画响应栏)
      图形.画编辑框("响应栏",0,379+向左平移,112,278,20,false,角落,"财货浑浑如泉源，汸汸如河海",clrAliceBlue,clrYellow,clrBlack,"楷体",12,ALIGN_CENTER,false,false,false);
  }
//+------------------------------------------------------------------+
void 交易类::自定义面板辅助实现3(string 币种,int magic,double 止损点数,double 止盈点数,const int id,const string sparam)
  {
   double 手数=StringToDouble(ObjectGetString(0,"手数",OBJPROP_TEXT));
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="BUY")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"BUY "+币种+" "+(string)手数);
      做多(币种,手数,止损点数,止盈点数,magic,"面板buy"+币种+" "+(string)手数);
     }
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="SELL")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"SELL "+币种+" "+(string)手数);
      做空(币种,手数,止损点数,止盈点数,magic,"面板sell"+币种+" "+(string)手数);
     }
//---一键全平
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="一键全平")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"一键全平 "+币种);
      平单(币种,magic);
     }
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="清仓")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"清仓 all");
      平单();
     }
//---
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="清仓")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"清仓 all");
      平单();
     }
//- -- 平多 平空
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平多")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"平多 "+币种);
      平多(币种,magic);
     }
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平空")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"平空 "+币种);
      平空(币种,magic);
     }
//平空  平多 全平 清仓
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平空进多")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"平空进多 "+币种+" "+(string)手数);
      平空(币种,magic);
      做多(币种,手数,止损点数,止盈点数,magic,"面板buy"+币种+" "+(string)手数);
     }
//---
   if(id==CHARTEVENT_OBJECT_CLICK&&sparam=="平多进空")
     {
      ObjectSetString(0,"响应栏",OBJPROP_TEXT,"平多进空 "+币种+" "+(string)手数);
      平多(币种,magic);
      做空(币种,手数,止损点数,止盈点数,magic,"面板sell"+币种+" "+(string)手数);
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::持单数自定义列表(string 币种,int magic,int 方向,double 初始值=0,string 列表1="",string 列表2="",string 列表3="",string 列表4="",string 列表5="",string 列表6="",string 列表7="",bool 不检测方向开启=false)
  {
//---加单列表
   int 单数=持仓单数统计(币种,magic,方向);
   if(不检测方向开启)
      单数=持仓单数统计(币种,magic);
   double 返回值=初始值;
   string 列表组1[],列表组2[],列表组3[],列表组4[],列表组5[],列表组6[],列表组7[];
   int K1=分隔号拆分字符串(列表1,",",列表组1);
   int K2=分隔号拆分字符串(列表2,",",列表组2);
   int K3=分隔号拆分字符串(列表3,",",列表组3);
   int K4=分隔号拆分字符串(列表4,",",列表组4);
   int K5=分隔号拆分字符串(列表5,",",列表组5);
   int K6=分隔号拆分字符串(列表6,",",列表组6);
   int K7=分隔号拆分字符串(列表7,",",列表组7);
//-------
   int 组7=K1+K2+K3+K4+K5+K6+K7;
   int 组6=K1+K2+K3+K4+K5+K6;
   int 组5=K1+K2+K3+K4+K5;
   int 组4=K1+K2+K3+K4;
   int 组3=K1+K2+K3;
   int 组2=K1+K2;
   int 组1=K1;
//----
   if(单数<组1)
      返回值=(double)列表组1[单数];
   if(单数>=组1&&单数<组2)
      返回值=(double)列表组2[单数-组1];
   if(单数>=组2&&单数<组3)
      返回值=(double)列表组3[单数-组2];
   if(单数>=组3&&单数<组4)
      返回值=(double)列表组4[单数-组3];
   if(单数>=组4&&单数<组5)
      返回值=(double)列表组5[单数-组4];
   if(单数>=组5&&单数<组6)
      返回值=(double)列表组6[单数-组5];
   if(单数>=组6&&单数<组7)
      返回值=(double)列表组7[单数-组6];
   if(单数>组7&&返回值==0)
      返回值=初始值;
   return 返回值;
//-------------
//---
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::自定义列表(int 计数,double 初始值=0,string 列表1="",string 列表2="",string 列表3="",string 列表4="",string 列表5="",string 列表6="",string 列表7="")
  {
//---列表
   int 单数=计数;
   double 返回值=初始值;
   string 列表组1[],列表组2[],列表组3[],列表组4[],列表组5[],列表组6[],列表组7[];
   int K1=分隔号拆分字符串(列表1,",",列表组1);
   int K2=分隔号拆分字符串(列表2,",",列表组2);
   int K3=分隔号拆分字符串(列表3,",",列表组3);
   int K4=分隔号拆分字符串(列表4,",",列表组4);
   int K5=分隔号拆分字符串(列表5,",",列表组5);
   int K6=分隔号拆分字符串(列表6,",",列表组6);
   int K7=分隔号拆分字符串(列表7,",",列表组7);
//-------
   int 组7=K1+K2+K3+K4+K5+K6+K7;
   int 组6=K1+K2+K3+K4+K5+K6;
   int 组5=K1+K2+K3+K4+K5;
   int 组4=K1+K2+K3+K4;
   int 组3=K1+K2+K3;
   int 组2=K1+K2;
   int 组1=K1;
//----
   if(单数<组1)
      返回值=(double)列表组1[单数];
   if(单数>=组1&&单数<组2)
      返回值=(double)列表组2[单数-组1];
   if(单数>=组2&&单数<组3)
      返回值=(double)列表组3[单数-组2];
   if(单数>=组3&&单数<组4)
      返回值=(double)列表组4[单数-组3];
   if(单数>=组4&&单数<组5)
      返回值=(double)列表组5[单数-组4];
   if(单数>=组5&&单数<组6)
      返回值=(double)列表组6[单数-组5];
   if(单数>=组6&&单数<组7)
      返回值=(double)列表组7[单数-组6];
   if(单数>组7&&返回值==0)
      返回值=初始值;
   return 返回值;
//-------------
//---
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double 交易类::区间回调比例价格(double 高价,double 低价,int 壹上贰下=1,double 比例=0.618)
  {
   double 返回值618=0;
   if(高价>0&&低价>0&&比例>0&&比例<1)
     {
      if(壹上贰下==1)
         返回值618=高价-(高价-低价)*比例;
      if(壹上贰下==2)
         返回值618=高价-(高价-低价)*(1-比例);
     }
   return 返回值618;
  }
//+------------------------------------------------------------------+
bool 交易类::物件不存在(string 物件名称,int 查找窗口=0)
  {
   bool 检测=ObjectFind(查找窗口,物件名称)<0;
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::物件存在(string 物件名称,int 查找窗口=0)
  {
   bool 检测=ObjectFind(查找窗口,物件名称)>=0;
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::指定盈利比例平单(string 币种,int magic,string 注释,double 盈利比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(盈利比例>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
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
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_BUY&&卖价(币种)>OrderOpenPrice()*(1+盈利比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                  if(OrderType()==OP_SELL&&买价(币种)<OrderOpenPrice()*(1-盈利比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::指定盈利比例平单(string 币种,int magic,double 盈利比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(盈利比例>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
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
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_BUY&&卖价(币种)>OrderOpenPrice()*(1+盈利比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                  if(OrderType()==OP_SELL&&买价(币种)<OrderOpenPrice()*(1-盈利比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::指定盈利比例平单(int magic,double 盈利比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(盈利比例>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string 币种=OrderSymbol();
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_BUY&&卖价(币种)>OrderOpenPrice()*(1+盈利比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                  if(OrderType()==OP_SELL&&买价(币种)<OrderOpenPrice()*(1-盈利比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
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
void 交易类::指定盈利比例平多(string 币种,int magic,string 注释,double 盈利比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(盈利比例>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
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
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_BUY&&卖价(币种)>OrderOpenPrice()*(1+盈利比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::指定盈利比例平多(string 币种,int magic,double 盈利比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(盈利比例>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
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
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_BUY&&卖价(币种)>OrderOpenPrice()*(1+盈利比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::指定盈利比例平多(int magic,double 盈利比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(盈利比例>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string 币种=OrderSymbol();
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_BUY&&卖价(币种)>OrderOpenPrice()*(1+盈利比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::指定盈利比例平空(string 币种,int magic,string 注释,double 盈利比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(盈利比例>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
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
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_SELL&&买价(币种)<OrderOpenPrice()*(1-盈利比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::指定盈利比例平空(string 币种,int magic,double 盈利比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(盈利比例>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
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
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_SELL&&买价(币种)<OrderOpenPrice()*(1-盈利比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::指定盈利比例平空(int magic,double 盈利比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(盈利比例>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string 币种=OrderSymbol();
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_SELL&&买价(币种)<OrderOpenPrice()*(1-盈利比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::指定亏损比例平单(string 币种,int magic,string 注释,double 亏损比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(亏损比例>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
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
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_BUY&&卖价(币种)<OrderOpenPrice()*(1-亏损比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                  if(OrderType()==OP_SELL&&买价(币种)>OrderOpenPrice()*(1+亏损比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::指定亏损比例平单(string 币种,int magic,double 亏损比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(亏损比例>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
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
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_BUY&&卖价(币种)<OrderOpenPrice()*(1-亏损比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                  if(OrderType()==OP_SELL&&买价(币种)>OrderOpenPrice()*(1+亏损比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::指定亏损比例平单(int magic,double 亏损比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(亏损比例>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string 币种=OrderSymbol();
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_BUY&&卖价(币种)<OrderOpenPrice()*(1-亏损比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                  if(OrderType()==OP_SELL&&买价(币种)>OrderOpenPrice()*(1+亏损比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
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
void 交易类::指定亏损比例平多(string 币种,int magic,string 注释,double 亏损比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(亏损比例>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
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
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_BUY&&卖价(币种)<OrderOpenPrice()*(1-亏损比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::指定亏损比例平多(string 币种,int magic,double 亏损比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(亏损比例>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
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
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_BUY&&卖价(币种)<OrderOpenPrice()*(1-亏损比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::指定亏损比例平多(int magic,double 亏损比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(亏损比例>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string 币种=OrderSymbol();
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_BUY&&卖价(币种)<OrderOpenPrice()*(1-亏损比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),卖价(币种),滑点,Yellow);
                     if(是否立即反手)
                        做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::指定亏损比例平空(string 币种,int magic,string 注释,double 亏损比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(亏损比例>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
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
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_SELL&&买价(币种)>OrderOpenPrice()*(1+亏损比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::指定亏损比例平空(string 币种,int magic,double 亏损比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(亏损比例>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
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
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_SELL&&买价(币种)>OrderOpenPrice()*(1+亏损比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::指定亏损比例平空(int magic,double 亏损比例,bool 是否立即反手=false,double 比例反手倍率=0,double 增减手数=0)
  {
   if(亏损比例>0)
     {
      bool result=false;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string 币种=OrderSymbol();
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int 反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(OrderType()==OP_SELL&&买价(币种)>OrderOpenPrice()*(1+亏损比例))
                    {
                     result=OrderClose(OrderTicket(),OrderLots(),买价(币种),滑点,Red);
                     if(是否立即反手)
                        做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  交易类::马丁手数1(string 币种,int 持单数量,double 初始下单手数,double 手数系数,double 等差)
  {
   if(持单数量==0)
     {
      加1=1;
      累计1=1;
     }
   double 返回手数=初始下单手数*手数系数*加1;
   加1=加1+等差;
   累计1++;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
double  交易类::马丁手数2(string 币种,int 持单数量,double 初始下单手数,double 手数系数,double 等差)
  {
   if(持单数量==0)
     {
      加2=1;
      累计2=1;
     }
   double 返回手数=初始下单手数*手数系数*加2;
   加2=加2+等差;
   累计2++;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
double  交易类::马丁手数3(string 币种,int 持单数量,double 初始下单手数,double 手数系数,double 等差)
  {
   if(持单数量==0)
     {
      加3=1;
      累计3=1;
     }
   double 返回手数=初始下单手数*手数系数*加3;
   加3=加3+等差;
   累计3++;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
double  交易类::马丁手数4(string 币种,int 持单数量,double 初始下单手数,double 手数系数,double 等差)
  {
   if(持单数量==0)
     {
      加4=1;
      累计4=1;
     }
   double 返回手数=初始下单手数*手数系数*加4;
   加4=加4+等差;
   累计4++;
   return(手数自适应(币种,返回手数));
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    后止损点追踪止损(string 币种,int magic,string 注释,double 追踪点数,int 零壹多贰空=0,int 后几单追踪=0)
  {
   if(追踪点数>0)
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  计数++;
                  if(后几单追踪>0&&计数>后几单追踪)
                     break;
                  追踪点数=停损(币种,追踪点数);

                  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(多持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(空持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    后止损点追踪止损(string 币种,int magic,double 追踪点数,int 零壹多贰空=0,int 后几单追踪=0)
  {
   if(追踪点数>0)
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  计数++;
                  if(后几单追踪>0&&计数>后几单追踪)
                     break;
                  追踪点数=停损(币种,追踪点数);

                  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(多持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(空持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    后止损点追踪止损(int magic,double 追踪点数,int 零壹多贰空=0,int 后几单追踪=0)
  {
   if(追踪点数>0)
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  计数++;
                  if(后几单追踪>0&&计数>后几单追踪)
                     break;
                  string 币种=OrderSymbol();
                  追踪点数=停损(币种,追踪点数);

                  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(多持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(空持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
void 交易类::后启动点追踪止损(string 币种,int magic,string 注释,double 启动点数,double 追踪点数,double 百分比=0,int 零壹多贰空=0,int 后几单追踪=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  计数++;
                  if(后几单追踪>0&&计数>后几单追踪)
                     break;
                  追踪点数=停损(币种,追踪点数);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(卖价(币种)-OrderOpenPrice()>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(卖价(币种)-OrderOpenPrice())/点值(币种);
                        if(OrderStopLoss()<卖价(币种)-追踪点数*点值(币种))
                           bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),卖价(币种)-追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(OrderOpenPrice()-买价(币种)>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(OrderOpenPrice()-买价(币种))/点值(币种);
                        if(OrderStopLoss()>买价(币种)+追踪点数*点值(币种)||OrderStopLoss()==0.0)
                           bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),买价(币种)+追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::后启动点追踪止损(string 币种,int magic,double 启动点数,double 追踪点数,double 百分比=0,int 零壹多贰空=0,int 后几单追踪=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  计数++;
                  if(后几单追踪>0&&计数>后几单追踪)
                     break;
                  追踪点数=停损(币种,追踪点数);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(卖价(币种)-OrderOpenPrice()>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(卖价(币种)-OrderOpenPrice())/点值(币种);
                        if(OrderStopLoss()<卖价(币种)-追踪点数*点值(币种))
                           bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),卖价(币种)-追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(OrderOpenPrice()-买价(币种)>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(OrderOpenPrice()-买价(币种))/点值(币种);
                        if(OrderStopLoss()>买价(币种)+追踪点数*点值(币种)||OrderStopLoss()==0.0)
                           bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),买价(币种)+追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::后启动点追踪止损(int magic,double 启动点数,double 追踪点数,double 百分比=0,int 零壹多贰空=0,int 后几单追踪=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            string 币种=OrderSymbol();
            追踪点数=停损(币种,追踪点数);
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  计数++;
                  if(后几单追踪>0&&计数>后几单追踪)
                     break;
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(卖价(币种)-OrderOpenPrice()>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(卖价(币种)-OrderOpenPrice())/点值(币种);
                        if(OrderStopLoss()<卖价(币种)-追踪点数*点值(币种))
                           bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),卖价(币种)-追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(OrderOpenPrice()-买价(币种)>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(OrderOpenPrice()-买价(币种))/点值(币种);
                        if(OrderStopLoss()>买价(币种)+追踪点数*点值(币种)||OrderStopLoss()==0.0)
                           bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),买价(币种)+追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
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
void     交易类::    前止损点追踪止损(string 币种,int magic,string 注释,double 追踪点数,int 零壹多贰空=0,int 前几单追踪=0)
  {
   if(追踪点数>0)
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  计数++;
                  if(前几单追踪>0&&计数>前几单追踪)
                     break;
                  追踪点数=停损(币种,追踪点数);

                  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(多持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(空持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    前止损点追踪止损(string 币种,int magic,double 追踪点数,int 零壹多贰空=0,int 前几单追踪=0)
  {
   if(追踪点数>0)
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  计数++;
                  if(前几单追踪>0&&计数>前几单追踪)
                     break;
                  追踪点数=停损(币种,追踪点数);

                  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(多持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(空持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    前止损点追踪止损(int magic,double 追踪点数,int 零壹多贰空=0,int 前几单追踪=0)
  {
   if(追踪点数>0)
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  计数++;
                  if(前几单追踪>0&&计数>前几单追踪)
                     break;
                  string 币种=OrderSymbol();
                  追踪点数=停损(币种,追踪点数);

                  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(多持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(空持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
void 交易类::前启动点追踪止损(string 币种,int magic,string 注释,double 启动点数,double 追踪点数,double 百分比=0,int 零壹多贰空=0,int 前几单追踪=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  计数++;
                  if(前几单追踪>0&&计数>前几单追踪)
                     break;
                  追踪点数=停损(币种,追踪点数);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(卖价(币种)-OrderOpenPrice()>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(卖价(币种)-OrderOpenPrice())/点值(币种);
                        if(OrderStopLoss()<卖价(币种)-追踪点数*点值(币种))
                           bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),卖价(币种)-追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(OrderOpenPrice()-买价(币种)>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(OrderOpenPrice()-买价(币种))/点值(币种);
                        if(OrderStopLoss()>买价(币种)+追踪点数*点值(币种)||OrderStopLoss()==0.0)
                           bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),买价(币种)+追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::前启动点追踪止损(string 币种,int magic,double 启动点数,double 追踪点数,double 百分比=0,int 零壹多贰空=0,int 前几单追踪=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  计数++;
                  if(前几单追踪>0&&计数>前几单追踪)
                     break;
                  追踪点数=停损(币种,追踪点数);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(卖价(币种)-OrderOpenPrice()>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(卖价(币种)-OrderOpenPrice())/点值(币种);
                        if(OrderStopLoss()<卖价(币种)-追踪点数*点值(币种))
                           bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),卖价(币种)-追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(OrderOpenPrice()-买价(币种)>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(OrderOpenPrice()-买价(币种))/点值(币种);
                        if(OrderStopLoss()>买价(币种)+追踪点数*点值(币种)||OrderStopLoss()==0.0)
                           bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),买价(币种)+追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::前启动点追踪止损(int magic,double 启动点数,double 追踪点数,double 百分比=0,int 零壹多贰空=0,int 前几单追踪=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            string 币种=OrderSymbol();
            追踪点数=停损(币种,追踪点数);
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  计数++;
                  if(前几单追踪>0&&计数>前几单追踪)
                     break;
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(卖价(币种)-OrderOpenPrice()>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(卖价(币种)-OrderOpenPrice())/点值(币种);
                        if(OrderStopLoss()<卖价(币种)-追踪点数*点值(币种))
                           bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),卖价(币种)-追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(OrderOpenPrice()-买价(币种)>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(OrderOpenPrice()-买价(币种))/点值(币种);
                        if(OrderStopLoss()>买价(币种)+追踪点数*点值(币种)||OrderStopLoss()==0.0)
                           bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),买价(币种)+追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
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
void     交易类::    后止损点追踪止多(string 币种,int magic,string 注释,double 追踪点数,int 后几单追踪=0)
  {
   if(追踪点数>0)
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  追踪点数=停损(币种,追踪点数);

                  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  //  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_BUY)
                    {
                     计数++;
                     if(后几单追踪>0&&计数>后几单追踪)
                        break;
                     if(多持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    后止损点追踪止多(string 币种,int magic,double 追踪点数,int 后几单追踪=0)
  {
   if(追踪点数>0)
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  追踪点数=停损(币种,追踪点数);

                  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  //      double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_BUY)
                    {
                     计数++;
                     if(后几单追踪>0&&计数>后几单追踪)
                        break;
                     if(多持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    后止损点追踪止多(int magic,double 追踪点数,int 后几单追踪=0)
  {
   if(追踪点数>0)
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string 币种=OrderSymbol();
                  追踪点数=停损(币种,追踪点数);

                  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  //  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_BUY)
                    {
                     计数++;
                     if(后几单追踪>0&&计数>后几单追踪)
                        break;
                     if(多持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
void 交易类::后启动点追踪止多(string 币种,int magic,string 注释,double 启动点数,double 追踪点数,double 百分比=0,int 后几单追踪=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  追踪点数=停损(币种,追踪点数);
                  if(OrderType()==OP_BUY)
                    {
                     计数++;
                     if(后几单追踪>0&&计数>后几单追踪)
                        break;
                     if(卖价(币种)-OrderOpenPrice()>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(卖价(币种)-OrderOpenPrice())/点值(币种);
                        if(OrderStopLoss()<卖价(币种)-追踪点数*点值(币种))
                           bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),卖价(币种)-追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::后启动点追踪止多(string 币种,int magic,double 启动点数,double 追踪点数,double 百分比=0,int 后几单追踪=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  追踪点数=停损(币种,追踪点数);
                  if(OrderType()==OP_BUY)
                    {
                     计数++;
                     if(后几单追踪>0&&计数>后几单追踪)
                        break;
                     if(卖价(币种)-OrderOpenPrice()>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(卖价(币种)-OrderOpenPrice())/点值(币种);
                        if(OrderStopLoss()<卖价(币种)-追踪点数*点值(币种))
                           bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),卖价(币种)-追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
                    }

                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::后启动点追踪止多(int magic,double 启动点数,double 追踪点数,double 百分比=0,int 后几单追踪=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            string 币种=OrderSymbol();
            追踪点数=停损(币种,追踪点数);
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(OrderType()==OP_BUY)
                    {
                     计数++;
                     if(后几单追踪>0&&计数>后几单追踪)
                        break;
                     if(卖价(币种)-OrderOpenPrice()>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(卖价(币种)-OrderOpenPrice())/点值(币种);
                        if(OrderStopLoss()<卖价(币种)-追踪点数*点值(币种))
                           bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),卖价(币种)-追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
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
void     交易类::    前止损点追踪止多(string 币种,int magic,string 注释,double 追踪点数,int 前几单追踪=0)
  {
   if(追踪点数>0)
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  追踪点数=停损(币种,追踪点数);

                  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  //   double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_BUY)
                    {
                     计数++;
                     if(前几单追踪>0&&计数>前几单追踪)
                        break;
                     if(多持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    前止损点追踪止多(string 币种,int magic,double 追踪点数,int 前几单追踪=0)
  {
   if(追踪点数>0)
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  追踪点数=停损(币种,追踪点数);

                  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  //  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_BUY)
                    {
                     计数++;
                     if(前几单追踪>0&&计数>前几单追踪)
                        break;
                     if(多持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::前止损点追踪止多(int magic,double 追踪点数,int 前几单追踪=0)
  {
   if(追踪点数>0)
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string 币种=OrderSymbol();
                  追踪点数=停损(币种,追踪点数);
                  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  //   double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_BUY)
                    {
                     计数++;
                     if(前几单追踪>0&&计数>前几单追踪)
                        break;
                     if(多持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
void 交易类::前启动点追踪止多(string 币种,int magic,string 注释,double 启动点数,double 追踪点数,double 百分比=0,int 前几单追踪=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  追踪点数=停损(币种,追踪点数);
                  if(OrderType()==OP_BUY)
                    {
                     计数++;
                     if(前几单追踪>0&&计数>前几单追踪)
                        break;
                     if(卖价(币种)-OrderOpenPrice()>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(卖价(币种)-OrderOpenPrice())/点值(币种);
                        if(OrderStopLoss()<卖价(币种)-追踪点数*点值(币种))
                           bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),卖价(币种)-追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::前启动点追踪止多(string 币种,int magic,double 启动点数,double 追踪点数,double 百分比=0,int 前几单追踪=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  追踪点数=停损(币种,追踪点数);
                  if(OrderType()==OP_BUY)
                    {
                     计数++;
                     if(前几单追踪>0&&计数>前几单追踪)
                        break;
                     if(卖价(币种)-OrderOpenPrice()>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(卖价(币种)-OrderOpenPrice())/点值(币种);
                        if(OrderStopLoss()<卖价(币种)-追踪点数*点值(币种))
                           bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),卖价(币种)-追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::前启动点追踪止多(int magic,double 启动点数,double 追踪点数,double 百分比=0,int 前几单追踪=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            string 币种=OrderSymbol();
            追踪点数=停损(币种,追踪点数);
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(OrderType()==OP_BUY)
                    {
                     计数++;
                     if(前几单追踪>0&&计数>前几单追踪)
                        break;
                     if(卖价(币种)-OrderOpenPrice()>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(卖价(币种)-OrderOpenPrice())/点值(币种);
                        if(OrderStopLoss()<卖价(币种)-追踪点数*点值(币种))
                           bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),卖价(币种)-追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
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
void     交易类::    后止损点追踪止空(string 币种,int magic,string 注释,double 追踪点数,int 后几单追踪=0)
  {
   if(追踪点数>0)
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  追踪点数=停损(币种,追踪点数);

                  //   double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_SELL)
                    {
                     计数++;
                     if(后几单追踪>0&&计数>后几单追踪)
                        break;
                     if(空持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    后止损点追踪止空(string 币种,int magic,double 追踪点数,int 后几单追踪=0)
  {
   if(追踪点数>0)
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  追踪点数=停损(币种,追踪点数);

                  //    double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_SELL)
                    {
                     计数++;
                     if(后几单追踪>0&&计数>后几单追踪)
                        break;
                     if(空持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    后止损点追踪止空(int magic,double 追踪点数,int 后几单追踪=0)
  {
   if(追踪点数>0)
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string 币种=OrderSymbol();
                  追踪点数=停损(币种,追踪点数);

                  //      double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_SELL)
                    {
                     计数++;
                     if(后几单追踪>0&&计数>后几单追踪)
                        break;
                     if(空持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
void 交易类::后启动点追踪止空(string 币种,int magic,string 注释,double 启动点数,double 追踪点数,double 百分比=0,int 后几单追踪=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  追踪点数=停损(币种,追踪点数);
                  if(OrderType()==OP_SELL)
                    {
                     计数++;
                     if(后几单追踪>0&&计数>后几单追踪)
                        break;
                     if(OrderOpenPrice()-买价(币种)>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(OrderOpenPrice()-买价(币种))/点值(币种);
                        if(OrderStopLoss()>买价(币种)+追踪点数*点值(币种)||OrderStopLoss()==0.0)
                           bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),买价(币种)+追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::后启动点追踪止空(string 币种,int magic,double 启动点数,double 追踪点数,double 百分比=0,int 后几单追踪=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  追踪点数=停损(币种,追踪点数);
                  if(OrderType()==OP_SELL)
                    {
                     计数++;
                     if(后几单追踪>0&&计数>后几单追踪)
                        break;
                     if(OrderOpenPrice()-买价(币种)>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(OrderOpenPrice()-买价(币种))/点值(币种);
                        if(OrderStopLoss()>买价(币种)+追踪点数*点值(币种)||OrderStopLoss()==0.0)
                           bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),买价(币种)+追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::后启动点追踪止空(int magic,double 启动点数,double 追踪点数,double 百分比=0,int 后几单追踪=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            string 币种=OrderSymbol();
            追踪点数=停损(币种,追踪点数);
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(OrderType()==OP_SELL)
                    {
                     计数++;
                     if(后几单追踪>0&&计数>后几单追踪)
                        break;
                     if(OrderOpenPrice()-买价(币种)>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(OrderOpenPrice()-买价(币种))/点值(币种);
                        if(OrderStopLoss()>买价(币种)+追踪点数*点值(币种)||OrderStopLoss()==0.0)
                           bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),买价(币种)+追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
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
void     交易类::    前止损点追踪止空(string 币种,int magic,string 注释,double 追踪点数,int 前几单追踪=0)
  {
   if(追踪点数>0)
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  追踪点数=停损(币种,追踪点数);

                  //    double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_SELL)
                    {
                     计数++;
                     if(前几单追踪>0&&计数>前几单追踪)
                        break;
                     if(空持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    前止损点追踪止空(string 币种,int magic,double 追踪点数,int 前几单追踪=0)
  {
   if(追踪点数>0)
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  追踪点数=停损(币种,追踪点数);

                  //   double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_SELL)
                    {
                     计数++;
                     if(前几单追踪>0&&计数>前几单追踪)
                        break;
                     if(空持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    前止损点追踪止空(int magic,double 追踪点数,int 前几单追踪=0)
  {
   if(追踪点数>0)
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string 币种=OrderSymbol();
                  追踪点数=停损(币种,追踪点数);

                  //   double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_SELL)
                    {
                     计数++;
                     if(前几单追踪>0&&计数>前几单追踪)
                        break;
                     if(空持仓盈利点数>持仓止损点数+2*追踪点数)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-(持仓止损点数+追踪点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
void 交易类::前启动点追踪止空(string 币种,int magic,string 注释,double 启动点数,double 追踪点数,double 百分比=0,int 前几单追踪=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  追踪点数=停损(币种,追踪点数);
                  if(OrderType()==OP_SELL)
                    {
                     计数++;
                     if(前几单追踪>0&&计数>前几单追踪)
                        break;
                     if(OrderOpenPrice()-买价(币种)>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(OrderOpenPrice()-买价(币种))/点值(币种);
                        if(OrderStopLoss()>买价(币种)+追踪点数*点值(币种)||OrderStopLoss()==0.0)
                           bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),买价(币种)+追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::前启动点追踪止空(string 币种,int magic,double 启动点数,double 追踪点数,double 百分比=0,int 前几单追踪=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  追踪点数=停损(币种,追踪点数);
                  if(OrderType()==OP_SELL)
                    {
                     计数++;
                     if(前几单追踪>0&&计数>前几单追踪)
                        break;
                     if(OrderOpenPrice()-买价(币种)>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(OrderOpenPrice()-买价(币种))/点值(币种);
                        if(OrderStopLoss()>买价(币种)+追踪点数*点值(币种)||OrderStopLoss()==0.0)
                           bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),买价(币种)+追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::前启动点追踪止空(int magic,double 启动点数,double 追踪点数,double 百分比=0,int 前几单追踪=0)
  {
   if(启动点数>0&&(追踪点数>0||(百分比>0&&百分比<=1)))
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            string 币种=OrderSymbol();
            追踪点数=停损(币种,追踪点数);
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(OrderType()==OP_SELL)
                    {
                     计数++;
                     if(前几单追踪>0&&计数>前几单追踪)
                        break;

                     if(OrderOpenPrice()-买价(币种)>启动点数*点值(币种))
                       {
                        if(百分比>0)
                           追踪点数=百分比*(OrderOpenPrice()-买价(币种))/点值(币种);
                        if(OrderStopLoss()>买价(币种)+追踪点数*点值(币种)||OrderStopLoss()==0.0)
                           bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),买价(币种)+追踪点数*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                       }
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
bool  交易类::多单检测()
  {
   bool 多检测=OrderType()==OP_BUY;
   return 多检测;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool  交易类::空单检测()
  {
   bool 空检测=OrderType()==OP_SELL;
   return 空检测;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool  交易类::止损大于开盘价()
  {
   bool 止损大于开盘价=OrderStopLoss()>0&&OrderStopLoss()>OrderOpenPrice();
   return 止损大于开盘价;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool  交易类::止损小于开盘价()
  {
   bool 止损小于开盘价=OrderStopLoss()>0&&OrderStopLoss()<OrderOpenPrice();
   return 止损小于开盘价;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::角度(double A,double B,int 序1,int 序0=0)
  {
   double 角度=0;
   if(序0-序1!=0)
      角度= MathArctan(MathTan(((A-B)/(WindowPriceMax()-WindowPriceMin()))
                                 /(MathAbs((序0-序1)*1.0)/WindowBarsPerChart())))*180/3.14;
   return 角度;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::画角度(string 币种,ENUM_TIMEFRAMES 图表周期,double 价格A,double 价格B,int 序1,int 序0=0,bool 左射=false,bool 右射=true)
  {
   double 角度=角度(价格A,价格B, 序1, 序0);
   新图.画趋势线("角度斜率",0,iTime(币种,图表周期,序1),价格B,iTime(币种,图表周期,序0),价格A,左射,右射);
   新图.画趋势线("水平参考",0,iTime(币种,图表周期,序1),价格B,iTime(币种,图表周期,序0),价格B,左射,右射);
   左上角文字("角度 "+(string)角度);
   return 角度;
  }
//+------------------------------------------------------------------+
bool 交易类::账户净值增加检测(double 设置净值增加金额,string 币种,ENUM_TIMEFRAMES 图表周期=PERIOD_D1,int 序号=0)
  {
   static double  账户净值=0;
   时8=iTime(币种,图表周期,序号);
   if(初8!=时8)
     {
      账户净值=AccountInfoDouble(ACCOUNT_EQUITY);
      检8=false;
      初8=时8;
     }
//----
   if(账户净值>0&&AccountInfoDouble(ACCOUNT_EQUITY)>账户净值+设置净值增加金额)
      检8=true;
   if(设置净值增加金额==0||账户净值==0)
      检8=false;
   return 检8;
  }
//+------------------------------------------------------------------+
void             交易类::无限制价格修改止损止盈(string 币种,int magic,string 注释,double 止损价格,double 止盈价格,int 零壹多贰空=0)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==OP_BUY&&(OrderStopLoss()!=止损价格||OrderTakeProfit()!=止盈价格)&&(零壹多贰空==0||零壹多贰空==1))
                  bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),止损价格,止盈价格,OrderExpiration(),CLR_NONE);
               if(OrderType()==OP_SELL&&(OrderStopLoss()!=止损价格||OrderTakeProfit()!=止盈价格)&&(零壹多贰空==0||零壹多贰空==2))
                  bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),止损价格,止盈价格,OrderExpiration(),CLR_NONE);
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void             交易类::无限制价格修改止损(string 币种,int magic,string 注释,double 止损价格,int 零壹多贰空=0)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==OP_BUY&&OrderStopLoss()!=止损价格&&(零壹多贰空==0||零壹多贰空==1))
                  bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),止损价格,OrderTakeProfit(),OrderExpiration(),CLR_NONE);
               if(OrderType()==OP_SELL&&OrderStopLoss()!=止损价格&&(零壹多贰空==0||零壹多贰空==2))
                  bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),止损价格,OrderTakeProfit(),OrderExpiration(),CLR_NONE);
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void             交易类::无限制价格修改止盈(string 币种,int magic,string 注释,double 止盈价格,int 零壹多贰空=0)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==OP_BUY&&OrderTakeProfit()!=止盈价格&&(零壹多贰空==0||零壹多贰空==1))
                  bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderStopLoss(),止盈价格,OrderExpiration(),CLR_NONE);
               if(OrderType()==OP_SELL&&OrderTakeProfit()!=止盈价格&&(零壹多贰空==0||零壹多贰空==2))
                  bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderStopLoss(),止盈价格,OrderExpiration(),CLR_NONE);
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             交易类::价格修改止损止盈(string 币种,int magic,string 注释,double 止损价格,double 止盈价格,int 零壹多贰空=0)
  {
   if(止损价格>0||止盈价格>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  double  多止损价格=止损价格;
                  double  空止损价格=止损价格;
                  if(止损价格==1)
                    {
                     多止损价格=0;
                     空止损价格=0;
                    }
                  if(止损价格==2||止损价格==0)
                    {
                     多止损价格=OrderStopLoss();
                     空止损价格=OrderStopLoss();
                    }
                  double  多止盈价格=止盈价格;
                  double  空止盈价格=止盈价格;
                  if(止盈价格==1)
                    {
                     多止盈价格=0;
                     空止盈价格=0;
                    }
                  if(止盈价格==2||止盈价格==0)
                    {
                     多止盈价格=OrderTakeProfit();
                     空止盈价格=OrderTakeProfit();
                    }
                  if(OrderType()==OP_BUY&&(OrderStopLoss()!=止损价格||OrderTakeProfit()!=止盈价格)&&(零壹多贰空==0||零壹多贰空==1))
                     bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),多止损价格,多止盈价格,OrderExpiration(),CLR_NONE);
                  if(OrderType()==OP_SELL&&(OrderStopLoss()!=止损价格||OrderTakeProfit()!=止盈价格)&&(零壹多贰空==0||零壹多贰空==2))
                     bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),空止损价格,空止盈价格,OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             交易类::价格修改止损止盈(string 币种,int magic,double 止损价格,double 止盈价格,int 零壹多贰空=0)
  {
   if(止损价格>0||止盈价格>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  double  多止损价格=止损价格;
                  double  空止损价格=止损价格;
                  if(止损价格==1)
                    {
                     多止损价格=0;
                     空止损价格=0;
                    }
                  if(止损价格==2||止损价格==0)
                    {
                     多止损价格=OrderStopLoss();
                     空止损价格=OrderStopLoss();
                    }
                  double  多止盈价格=止盈价格;
                  double  空止盈价格=止盈价格;
                  if(止盈价格==1)
                    {
                     多止盈价格=0;
                     空止盈价格=0;
                    }
                  if(止盈价格==2||止盈价格==0)
                    {
                     多止盈价格=OrderTakeProfit();
                     空止盈价格=OrderTakeProfit();
                    }
                  if(OrderType()==OP_BUY&&(OrderStopLoss()!=止损价格||OrderTakeProfit()!=止盈价格)&&(零壹多贰空==0||零壹多贰空==1))
                     bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),多止损价格,多止盈价格,OrderExpiration(),CLR_NONE);
                  if(OrderType()==OP_SELL&&(OrderStopLoss()!=止损价格||OrderTakeProfit()!=止盈价格)&&(零壹多贰空==0||零壹多贰空==2))
                     bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),空止损价格,空止盈价格,OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             交易类::价格修改止损止盈(int magic,double 止损价格,double 止盈价格,int 零壹多贰空=0)
  {
   if(止损价格>0||止盈价格>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  double  多止损价格=止损价格;
                  double  空止损价格=止损价格;
                  if(止损价格==1)
                    {
                     多止损价格=0;
                     空止损价格=0;
                    }
                  if(止损价格==2||止损价格==0)
                    {
                     多止损价格=OrderStopLoss();
                     空止损价格=OrderStopLoss();
                    }
                  double  多止盈价格=止盈价格;
                  double  空止盈价格=止盈价格;
                  if(止盈价格==1)
                    {
                     多止盈价格=0;
                     空止盈价格=0;
                    }
                  if(止盈价格==2||止盈价格==0)
                    {
                     多止盈价格=OrderTakeProfit();
                     空止盈价格=OrderTakeProfit();
                    }
                  if(OrderType()==OP_BUY&&(OrderStopLoss()!=止损价格||OrderTakeProfit()!=止盈价格)&&(零壹多贰空==0||零壹多贰空==1))
                     bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),多止损价格,多止盈价格,OrderExpiration(),CLR_NONE);
                  if(OrderType()==OP_SELL&&(OrderStopLoss()!=止损价格||OrderTakeProfit()!=止盈价格)&&(零壹多贰空==0||零壹多贰空==2))
                     bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),空止损价格,空止盈价格,OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             交易类::价格修改止损(string 币种,int magic,string 注释,double 止损价格,int 零壹多贰空=0)
  {
   if(止损价格>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  double  多止损价格=止损价格;
                  double  空止损价格=止损价格;
                  if(止损价格==1)
                    {
                     多止损价格=0;
                     空止损价格=0;
                    }
                  if(止损价格==2||止损价格==0)
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
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             交易类::价格修改止损(string 币种,int magic,double 止损价格,int 零壹多贰空=0)
  {
   if(止损价格>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  double  多止损价格=止损价格;
                  double  空止损价格=止损价格;
                  if(止损价格==1)
                    {
                     多止损价格=0;
                     空止损价格=0;
                    }
                  if(止损价格==2||止损价格==0)
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
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             交易类::价格修改止损(int magic,double 止损价格,int 零壹多贰空=0)
  {
   if(止损价格>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  double  多止损价格=止损价格;
                  double  空止损价格=止损价格;
                  if(止损价格==1)
                    {
                     多止损价格=0;
                     空止损价格=0;
                    }
                  if(止损价格==2||止损价格==0)
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
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             交易类::移动价格修改止损(string 币种,int magic,string 注释,double 止损价格,int 零壹多贰空=0)
  {
   if(止损价格>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  double  多止损价格=止损价格;
                  double  空止损价格=止损价格;
                  if(止损价格==1)
                    {
                     多止损价格=0;
                     空止损价格=0;
                    }
                  if(止损价格==2||止损价格==0)
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
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             交易类::移动价格修改止损(string 币种,int magic,double 止损价格,int 零壹多贰空=0)
  {
   if(止损价格>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  double  多止损价格=止损价格;
                  double  空止损价格=止损价格;
                  if(止损价格==1)
                    {
                     多止损价格=0;
                     空止损价格=0;
                    }
                  if(止损价格==2||止损价格==0)
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
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             交易类::移动价格修改止损(int magic,double 止损价格,int 零壹多贰空=0)
  {
   if(止损价格>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  double  多止损价格=止损价格;
                  double  空止损价格=止损价格;
                  if(止损价格==1)
                    {
                     多止损价格=0;
                     空止损价格=0;
                    }
                  if(止损价格==2||止损价格==0)
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
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             交易类::价格修改止盈(string 币种,int magic,string 注释,double 止盈价格,int 零壹多贰空=0)
  {
   if(止盈价格>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  double  多止盈价格=止盈价格;
                  double  空止盈价格=止盈价格;
                  if(止盈价格==1)
                    {
                     多止盈价格=0;
                     空止盈价格=0;
                    }
                  if(止盈价格==2||止盈价格==0)
                    {
                     多止盈价格=OrderTakeProfit();
                     空止盈价格=OrderTakeProfit();
                    }
                  if(OrderType()==OP_BUY&&OrderTakeProfit()!=止盈价格&&(零壹多贰空==0||零壹多贰空==1))
                     bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderStopLoss(),多止盈价格,OrderExpiration(),CLR_NONE);
                  if(OrderType()==OP_SELL&&OrderTakeProfit()!=止盈价格&&(零壹多贰空==0||零壹多贰空==2))
                     bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderStopLoss(),空止盈价格,OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             交易类::价格修改止盈(string 币种,int magic,double 止盈价格,int 零壹多贰空=0)
  {
   if(止盈价格>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  double  多止盈价格=止盈价格;
                  double  空止盈价格=止盈价格;
                  if(止盈价格==1)
                    {
                     多止盈价格=0;
                     空止盈价格=0;
                    }
                  if(止盈价格==2||止盈价格==0)
                    {
                     多止盈价格=OrderTakeProfit();
                     空止盈价格=OrderTakeProfit();
                    }
                  if(OrderType()==OP_BUY&&OrderTakeProfit()!=止盈价格&&(零壹多贰空==0||零壹多贰空==1))
                     bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderStopLoss(),多止盈价格,OrderExpiration(),CLR_NONE);
                  if(OrderType()==OP_SELL&&OrderTakeProfit()!=止盈价格&&(零壹多贰空==0||零壹多贰空==2))
                     bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderStopLoss(),空止盈价格,OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void             交易类::价格修改止盈(int magic,double 止盈价格,int 零壹多贰空=0)
  {
   if(止盈价格>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  double  多止盈价格=止盈价格;
                  double  空止盈价格=止盈价格;
                  if(止盈价格==1)
                    {
                     多止盈价格=0;
                     空止盈价格=0;
                    }
                  if(止盈价格==2||止盈价格==0)
                    {
                     多止盈价格=OrderTakeProfit();
                     空止盈价格=OrderTakeProfit();
                    }
                  if(OrderType()==OP_BUY&&OrderTakeProfit()!=止盈价格&&(零壹多贰空==0||零壹多贰空==1))
                     bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderStopLoss(),多止盈价格,OrderExpiration(),CLR_NONE);
                  if(OrderType()==OP_SELL&&OrderTakeProfit()!=止盈价格&&(零壹多贰空==0||零壹多贰空==2))
                     bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderStopLoss(),空止盈价格,OrderExpiration(),CLR_NONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::平均波动点值(string 币种,ENUM_TIMEFRAMES 图表周期,int ATR计算周期,int 计算起位置=0)
  {
   double ATR值=0;
   MqlRates 计算值[];
   数据.K线信息(币种,图表周期,0,计算起位置+2*ATR计算周期+1,计算值);
   for(int i=计算起位置; i<计算起位置+ATR计算周期; i++)
      ATR值+=计算值[i].high-计算值[i].low;
   ATR值=ATR值/((ATR计算周期-计算起位置)*点值(币种));
   return ATR值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::历史盈利平持仓亏损(string 币种,int magic,double 历史总盈亏金额百分之几=0.5)
  {
   bool 检测=false;
   static ulong 历史统计起始时间=TimeCurrent();
   if(历史总盈亏金额百分之几>0&&历史总盈亏金额百分之几<1&&历史统计起始时间>0)
     {
      double 历史总盈亏=历史盈亏统计(Symbol(),magic,历史统计起始时间);
      double 持仓总盈亏=持仓盈亏统计(Symbol(),magic);
      if(历史总盈亏>0&&持仓总盈亏<0&&历史总盈亏*历史总盈亏金额百分之几>-持仓总盈亏)
        {
         平单(Symbol(),magic,false);
         检测=true;
         历史统计起始时间=TimeCurrent();
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
void  交易类:: 限价拆多(string 币种,double 手数,double 拆单手数,double 距现价点数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   double c=手数;
   int 计数=0;
   while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&c>=拆单手数)
     {
      限价挂多(币种,手数自适应(币种,拆单手数),距现价点数,止损点数,止盈点数,magic,注释);
      c=c-拆单手数;
      计数++;
     }
   if(c>0)
      限价挂多(币种,手数自适应2(币种,c),距现价点数,止损点数,止盈点数,magic,注释+(string)(计数));
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void  交易类:: 限价拆空(string 币种,double 手数,double 拆单手数,double 距现价点数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   double c=手数;
   int 计数=0;
   while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&c>=拆单手数)
     {
      限价挂空(币种,手数自适应(币种,拆单手数),距现价点数,止损点数,止盈点数,magic,注释);
      c=c-拆单手数;
      计数++;
     }
   if(c>0)
      限价挂空(币种,手数自适应2(币种,c),距现价点数,止损点数,止盈点数,magic,注释+(string)(计数));
  }
//+------------------------------------------------------------------+
void  交易类:: 限价拆多(string 币种,double 手数,int 拆单层数,double 距现价点数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   double c=手数;
   if(拆单层数>=1)
     {
      double 拆单手数=手数自适应(币种,c/拆单层数);
      int 计数=0;
      while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&计数<拆单层数)
        {
         限价挂多(币种,手数自适应(币种,拆单手数),距现价点数,止损点数,止盈点数,magic,注释);
         计数++;
         c=c-拆单手数;
        }
      if(c>0)
         限价挂多(币种,手数自适应2(币种,c),距现价点数,止损点数,止盈点数,magic,注释+(string)(计数));
     }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void  交易类:: 限价拆空(string 币种,double 手数,int 拆单层数,double 距现价点数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   double c=手数;
   if(拆单层数>=1)
     {
      double 拆单手数=手数自适应(币种,c/拆单层数);
      int 计数=0;
      while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&计数<拆单层数)
        {
         限价挂空(币种,手数自适应(币种,拆单手数),距现价点数,止损点数,止盈点数,magic,注释);
         计数++;
         c=c-拆单手数;
        }
      if(c>0)
         限价挂空(币种,手数自适应2(币种,c),距现价点数,止损点数,止盈点数,magic,注释+(string)(计数));
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  交易类:: 价格限价拆多(string 币种,double 手数,double 拆单手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   double c=手数;
   int 计数=0;
   while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&c>=拆单手数)
     {
      价格限价挂多(币种,手数自适应(币种,拆单手数),挂单价格,止损点数,止盈点数,magic,注释);
      c=c-拆单手数;
      计数++;
     }
   if(c>0)
      价格限价挂多(币种,手数自适应2(币种,c),挂单价格,止损点数,止盈点数,magic,注释+(string)(计数));
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void  交易类:: 价格限价拆空(string 币种,double 手数,double 拆单手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   double c=手数;
   int 计数=0;
   while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&c>=拆单手数)
     {
      价格限价挂空(币种,手数自适应(币种,拆单手数),挂单价格,止损点数,止盈点数,magic,注释);
      c=c-拆单手数;
      计数++;
     }
   if(c>0)
      价格限价挂空(币种,手数自适应2(币种,c),挂单价格,止损点数,止盈点数,magic,注释+(string)(计数));
  }
//+------------------------------------------------------------------+
void  交易类:: 价格限价拆多(string 币种,double 手数,int 拆单层数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   double c=手数;
   if(拆单层数>=1)
     {
      double 拆单手数=手数自适应(币种,c/拆单层数);
      int 计数=0;
      while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&计数<拆单层数)
        {
         价格限价挂多(币种,手数自适应(币种,拆单手数),挂单价格,止损点数,止盈点数,magic,注释);
         计数++;
         c=c-拆单手数;
        }
      if(c>0)
         价格限价挂多(币种,手数自适应2(币种,c),挂单价格,止损点数,止盈点数,magic,注释+(string)(计数));
     }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void  交易类:: 价格限价拆空(string 币种,double 手数,int 拆单层数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   double c=手数;
   if(拆单层数>=1)
     {
      double 拆单手数=手数自适应(币种,c/拆单层数);
      int 计数=0;
      while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&计数<拆单层数)
        {
         价格限价挂空(币种,手数自适应(币种,拆单手数),挂单价格,止损点数,止盈点数,magic,注释);
         计数++;
         c=c-拆单手数;
        }
      if(c>0)
         价格限价挂空(币种,手数自适应2(币种,c),挂单价格,止损点数,止盈点数,magic,注释+(string)(计数));
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  交易类:: 突破拆多(string 币种,double 手数,double 拆单手数,double 距现价点数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   double c=手数;
   int 计数=0;
   while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&c>=拆单手数)
     {
      突破挂多(币种,手数自适应(币种,拆单手数),距现价点数,止损点数,止盈点数,magic,注释);
      c=c-拆单手数;
      计数++;
     }
   if(c>0)
      突破挂多(币种,手数自适应2(币种,c),距现价点数,止损点数,止盈点数,magic,注释+(string)(计数));
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void  交易类:: 突破拆空(string 币种,double 手数,double 拆单手数,double 距现价点数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   double c=手数;
   int 计数=0;
   while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&c>=拆单手数)
     {
      突破挂空(币种,手数自适应(币种,拆单手数),距现价点数,止损点数,止盈点数,magic,注释);
      c=c-拆单手数;
      计数++;
     }
   if(c>0)
      突破挂空(币种,手数自适应2(币种,c),距现价点数,止损点数,止盈点数,magic,注释+(string)(计数));
  }
//+------------------------------------------------------------------+
void  交易类:: 突破拆多(string 币种,double 手数,int 拆单层数,double 距现价点数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   double c=手数;
   if(拆单层数>=1)
     {
      double 拆单手数=手数自适应(币种,c/拆单层数);
      int 计数=0;
      while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&计数<拆单层数)
        {
         突破挂多(币种,手数自适应(币种,拆单手数),距现价点数,止损点数,止盈点数,magic,注释);
         计数++;
         c=c-拆单手数;
        }
      if(c>0)
         突破挂多(币种,手数自适应2(币种,c),距现价点数,止损点数,止盈点数,magic,注释+(string)(计数));
     }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void  交易类:: 突破拆空(string 币种,double 手数,int 拆单层数,double 距现价点数,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   double c=手数;
   if(拆单层数>=1)
     {
      double 拆单手数=手数自适应(币种,c/拆单层数);
      int 计数=0;
      while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&计数<拆单层数)
        {
         突破挂空(币种,手数自适应(币种,拆单手数),距现价点数,止损点数,止盈点数,magic,注释);
         计数++;
         c=c-拆单手数;
        }
      if(c>0)
         突破挂空(币种,手数自适应2(币种,c),距现价点数,止损点数,止盈点数,magic,注释+(string)(计数));
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  交易类:: 价格突破拆多(string 币种,double 手数,double 拆单手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   double c=手数;
   int 计数=0;
   while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&c>=拆单手数)
     {
      价格突破挂多(币种,手数自适应(币种,拆单手数),挂单价格,止损点数,止盈点数,magic,注释);
      c=c-拆单手数;
      计数++;
     }
   if(c>0)
      价格突破挂多(币种,手数自适应2(币种,c),挂单价格,止损点数,止盈点数,magic,注释+(string)(计数));
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void  交易类:: 价格突破拆空(string 币种,double 手数,double 拆单手数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   double c=手数;
   int 计数=0;
   while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&c>=拆单手数)
     {
      价格突破挂空(币种,手数自适应(币种,拆单手数),挂单价格,止损点数,止盈点数,magic,注释);
      c=c-拆单手数;
      计数++;
     }
   if(c>0)
      价格突破挂空(币种,手数自适应2(币种,c),挂单价格,止损点数,止盈点数,magic,注释+(string)(计数));
  }
//+------------------------------------------------------------------+
void  交易类:: 价格突破拆多(string 币种,double 手数,int 拆单层数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   double c=手数;
   if(拆单层数>=1)
     {
      double 拆单手数=手数自适应(币种,c/拆单层数);
      int 计数=0;
      while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&计数<拆单层数)
        {
         价格突破挂多(币种,手数自适应(币种,拆单手数),挂单价格,止损点数,止盈点数,magic,注释);
         计数++;
         c=c-拆单手数;
        }
      if(c>0)
         价格突破挂多(币种,手数自适应2(币种,c),挂单价格,止损点数,止盈点数,magic,注释+(string)(计数));
     }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void  交易类:: 价格突破拆空(string 币种,double 手数,int 拆单层数,double 挂单价格,double 止损点数,double 止盈点数,int magic,string 注释)
  {
   double c=手数;
   if(拆单层数>=1)
     {
      double 拆单手数=手数自适应(币种,c/拆单层数);
      int 计数=0;
      while(拆单手数>=SymbolInfoDouble(币种,SYMBOL_VOLUME_MIN)&&计数<拆单层数)
        {
         价格突破挂空(币种,手数自适应(币种,拆单手数),挂单价格,止损点数,止盈点数,magic,注释);
         计数++;
         c=c-拆单手数;
        }
      if(c>0)
         价格突破挂空(币种,手数自适应2(币种,c),挂单价格,止损点数,止盈点数,magic,注释+(string)(计数));
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类:: 多尾单盈利带尾单(string 币种,int magic,string 注释,double 指定尾单盈利点值=0)
  {
   int 计数=0;
   if(指定尾单盈利点值>0)
     {
      double a=0;
      double 多尾单开盘价=尾单开盘价(币种,magic,注释,OP_BUY);
      if(买价(币种)>多尾单开盘价+指定尾单盈利点值*点值(币种))
         for(int i=OrdersTotal()-1; i>=0; i--)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  magic=魔术幻数(magic);
                  if(OrderSymbol()==币种&& OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                    {
                     if(OrderType()==OP_BUY)
                       {
                        if(a+OrderProfit()+OrderSwap()+OrderCommission()>0)
                          {
                           a=a+OrderProfit()+OrderSwap()+OrderCommission();
                           订单号平多(OrderTicket());
                           计数++;
                          }
                        else
                           break;
                       }
                    }
                 }
              }
           }
     }
   return 计数;
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
int 交易类:: 空尾单盈利带尾单(string 币种,int magic,string 注释,double 指定尾单盈利点值=0)
  {
   int 计数=0;
   if(指定尾单盈利点值>0)
     {
      double a=0;
      double 空尾单开盘价=尾单开盘价(币种,magic,注释,OP_SELL);
      if(卖价(币种)<空尾单开盘价-指定尾单盈利点值*点值(币种))
         for(int i=OrdersTotal()-1; i>=0; i--)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  magic=魔术幻数(magic);
                  if(OrderSymbol()==币种&& OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                    {
                     if(OrderType()==OP_SELL)
                       {
                        if(a+OrderProfit()+OrderSwap()+OrderCommission()>0)
                          {
                           a=a+OrderProfit()+OrderSwap()+OrderCommission();
                           订单号平空(OrderTicket());
                           计数++;
                          }
                        else
                           break;
                       }
                    }
                 }
              }
           }
     }
   return 计数;
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
int 交易类:: 多尾单盈利带尾单(string 币种,int magic,double 指定尾单盈利点值=0)
  {
   int 计数=0;
   if(指定尾单盈利点值>0)
     {
      double a=0;
      double 多尾单开盘价=尾单开盘价(币种,magic,OP_BUY);
      if(买价(币种)>多尾单开盘价+指定尾单盈利点值*点值(币种))
         for(int i=OrdersTotal()-1; i>=0; i--)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  magic=魔术幻数(magic);
                  if(OrderSymbol()==币种&& OrderMagicNumber()==magic)
                    {
                     if(OrderType()==OP_BUY)
                       {
                        if(a+OrderProfit()+OrderSwap()+OrderCommission()>0)
                          {
                           a=a+OrderProfit()+OrderSwap()+OrderCommission();
                           订单号平多(OrderTicket());
                           计数++;
                          }
                        else
                           break;
                       }
                    }
                 }
              }
           }
     }
   return 计数;
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
int 交易类:: 空尾单盈利带尾单(string 币种,int magic,double 指定尾单盈利点值=0)
  {
   int 计数=0;
   if(指定尾单盈利点值>0)
     {
      double a=0;
      double 空尾单开盘价=尾单开盘价(币种,magic,OP_SELL);
      if(卖价(币种)<空尾单开盘价-指定尾单盈利点值*点值(币种))
         for(int i=OrdersTotal()-1; i>=0; i--)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  magic=魔术幻数(magic);
                  if(OrderSymbol()==币种&& OrderMagicNumber()==magic)
                    {
                     if(OrderType()==OP_SELL)
                       {
                        if(a+OrderProfit()+OrderSwap()+OrderCommission()>0)
                          {
                           a=a+OrderProfit()+OrderSwap()+OrderCommission();
                           订单号平空(OrderTicket());
                           计数++;
                          }
                        else
                           break;
                       }
                    }
                 }
              }
           }
     }
   return 计数;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类:: 多尾单盈利带首单(string 币种,int magic,string 注释,double 指定尾单盈利点值=0)
  {
   int 计数=0;
   if(指定尾单盈利点值>0)
     {
      double a=0;
      double 多尾单开盘价=尾单开盘价(币种,magic,注释,OP_BUY);
      if(买价(币种)>多尾单开盘价+指定尾单盈利点值*点值(币种))
        {
         for(int i=OrdersTotal()-1; i>=0; i--)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  magic=魔术幻数(magic);
                  if(OrderSymbol()==币种&& OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                    {
                     if(OrderType()==OP_BUY)
                       {
                        if(OrderProfit()+OrderSwap()+OrderCommission()>0)
                          {
                           a=a+OrderProfit()+OrderSwap()+OrderCommission();
                           订单号平多(OrderTicket());
                           计数++;
                          }
                        else
                           break;
                       }
                    }
                 }
              }
           }
         for(int i=0; i<OrdersTotal(); i++)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  magic=魔术幻数(magic);
                  if(OrderSymbol()==币种&& OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                    {
                     if(OrderType()==OP_BUY)
                       {
                        if(a+OrderProfit()+OrderSwap()+OrderCommission()>0)
                          {
                           a=a+OrderProfit()+OrderSwap()+OrderCommission();
                           订单号平多(OrderTicket());
                           计数++;
                          }
                        else
                           break;
                       }
                    }
                 }
              }
           }
        }
     }
   return 计数;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类:: 多尾单盈利带首单(string 币种,int magic,double 指定尾单盈利点值=0)
  {
   int 计数=0;
   if(指定尾单盈利点值>0)
     {
      double a=0;
      double 多尾单开盘价=尾单开盘价(币种,magic,OP_BUY);
      if(买价(币种)>多尾单开盘价+指定尾单盈利点值*点值(币种))
        {
         for(int i=OrdersTotal()-1; i>=0; i--)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  magic=魔术幻数(magic);
                  if(OrderSymbol()==币种&& OrderMagicNumber()==magic)
                    {
                     if(OrderType()==OP_BUY)
                       {
                        if(OrderProfit()+OrderSwap()+OrderCommission()>0)
                          {
                           a=a+OrderProfit()+OrderSwap()+OrderCommission();
                           订单号平多(OrderTicket());
                           计数++;
                          }
                        else
                           break;
                       }
                    }
                 }
              }
           }
         for(int i=0; i<OrdersTotal(); i++)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  magic=魔术幻数(magic);
                  if(OrderSymbol()==币种&& OrderMagicNumber()==magic)
                    {
                     if(OrderType()==OP_BUY)
                       {
                        if(a+OrderProfit()+OrderSwap()+OrderCommission()>0)
                          {
                           a=a+OrderProfit()+OrderSwap()+OrderCommission();
                           订单号平多(OrderTicket());
                           计数++;
                          }
                        else
                           break;
                       }
                    }
                 }
              }
           }
        }
     }
   return 计数;
  }
//+------------------------------------------------------------------+
int 交易类:: 空尾单盈利带首单(string 币种,int magic,string 注释,double 指定尾单盈利点值=0)
  {
   int 计数=0;
   if(指定尾单盈利点值>0)
     {
      double a=0;
      double 空尾单开盘价=尾单开盘价(币种,magic,注释,OP_SELL);
      if(卖价(币种)<空尾单开盘价-指定尾单盈利点值*点值(币种))
        {
         for(int i=OrdersTotal()-1; i>=0; i--)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  magic=魔术幻数(magic);
                  if(OrderSymbol()==币种&& OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                    {
                     if(OrderType()==OP_SELL)
                       {
                        if(OrderProfit()+OrderSwap()+OrderCommission()>0)
                          {
                           a=a+OrderProfit()+OrderSwap()+OrderCommission();
                           订单号平空(OrderTicket());
                           计数++;
                          }
                        else
                           break;
                       }
                    }
                 }
              }
           }
         for(int i=0; i<OrdersTotal(); i++)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  magic=魔术幻数(magic);
                  if(OrderSymbol()==币种&& OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                    {
                     if(OrderType()==OP_SELL)
                       {
                        if(a+OrderProfit()+OrderSwap()+OrderCommission()>0)
                          {
                           a=a+OrderProfit()+OrderSwap()+OrderCommission();
                           订单号平空(OrderTicket());
                           计数++;
                          }
                        else
                           break;
                       }
                    }
                 }
              }
           }
        }
     }
   return 计数;
  }
//+------------------------------------------------------------------+
int 交易类:: 空尾单盈利带首单(string 币种,int magic,double 指定尾单盈利点值=0)
  {
   int 计数=0;
   if(指定尾单盈利点值>0)
     {
      double a=0;
      double 空尾单开盘价=尾单开盘价(币种,magic,OP_SELL);
      if(卖价(币种)<空尾单开盘价-指定尾单盈利点值*点值(币种))
        {
         for(int i=OrdersTotal()-1; i>=0; i--)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  magic=魔术幻数(magic);
                  if(OrderSymbol()==币种&& OrderMagicNumber()==magic)
                    {
                     if(OrderType()==OP_SELL)
                       {
                        if(OrderProfit()+OrderSwap()+OrderCommission()>0)
                          {
                           a=a+OrderProfit()+OrderSwap()+OrderCommission();
                           订单号平空(OrderTicket());
                           计数++;
                          }
                        else
                           break;
                       }
                    }
                 }
              }
           }
         for(int i=0; i<OrdersTotal(); i++)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  magic=魔术幻数(magic);
                  if(OrderSymbol()==币种&& OrderMagicNumber()==magic)
                    {
                     if(OrderType()==OP_SELL)
                       {
                        if(a+OrderProfit()+OrderSwap()+OrderCommission()>0)
                          {
                           a=a+OrderProfit()+OrderSwap()+OrderCommission();
                           订单号平空(OrderTicket());
                           计数++;
                          }
                        else
                           break;
                       }
                    }
                 }
              }
           }
        }
     }
   return 计数;
  }
//+------------------------------------------------------------------+
void          交易类::盈利点数折仓(string 币种,int magic,string 注释,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0,bool 开启只折一次=false)
  {
   if(减仓比例>0&&减仓比例<=1&&启动点数>0&&(盈利多少点数折仓>0||盈利点数大于几倍止损>0))
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  if(开启只折一次&&历史订单ID含订单号检测(OrderComment(),OrderOpenTime()))
                     continue;
                  double 盈利点数=(OrderClosePrice()-OrderOpenPrice())/点值(币种);
                  double 止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
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
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,卖价(币种),滑点,Yellow);
                    }
                  if(OrderType()==OP_SELL&&-盈利点数>启动点数&&-盈利点数>大于几倍值+盈利多少点数折仓)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,买价(币种),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void          交易类::盈利点数折仓(string 币种,int magic,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0,bool 开启只折一次=false)
  {
   if(减仓比例>0&&减仓比例<=1&&启动点数>0&&(盈利多少点数折仓>0||盈利点数大于几倍止损>0))
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(开启只折一次&&历史订单ID含订单号检测(OrderComment(),OrderOpenTime()))
                     continue;
                  double 盈利点数=(OrderClosePrice()-OrderOpenPrice())/点值(币种);
                  double 止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
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
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,卖价(币种),滑点,Yellow);
                    }
                  if(OrderType()==OP_SELL&&-盈利点数>启动点数&&-盈利点数>大于几倍值+盈利多少点数折仓)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,买价(币种),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void          交易类::盈利点数折仓(int magic,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0,bool 开启只折一次=false)
  {
   if(减仓比例>0&&减仓比例<=1&&启动点数>0&&(盈利多少点数折仓>0||盈利点数大于几倍止损>0))
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  if(开启只折一次&&历史订单ID含订单号检测(OrderComment(),OrderOpenTime()))
                     continue;
                  string 币种=OrderSymbol();
                  double 盈利点数=(OrderClosePrice()-OrderOpenPrice())/点值(币种);
                  double 止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
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
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,卖价(币种),滑点,Yellow);
                    }
                  if(OrderType()==OP_SELL&&-盈利点数>启动点数&&-盈利点数>大于几倍值+盈利多少点数折仓)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,买价(币种),滑点,Yellow);
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
void          交易类::盈利点数折多(string 币种,int magic,string 注释,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0,bool 开启只折一次=false)
  {
   if(减仓比例>0&&减仓比例<=1&&启动点数>0&&(盈利多少点数折仓>0||盈利点数大于几倍止损>0))
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  if(开启只折一次&&历史订单ID含订单号检测(OrderComment(),OrderOpenTime()))
                     continue;
                  double 盈利点数=(OrderClosePrice()-OrderOpenPrice())/点值(币种);
                  double 止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
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
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,卖价(币种),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void          交易类::盈利点数折多(string 币种,int magic,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0,bool 开启只折一次=false)
  {
   if(减仓比例>0&&减仓比例<=1&&启动点数>0&&(盈利多少点数折仓>0||盈利点数大于几倍止损>0))
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(开启只折一次&&历史订单ID含订单号检测(OrderComment(),OrderOpenTime()))
                     continue;
                  double 盈利点数=(OrderClosePrice()-OrderOpenPrice())/点值(币种);
                  double 止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
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
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,卖价(币种),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void          交易类::盈利点数折多(int magic,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0,bool 开启只折一次=false)
  {
   if(减仓比例>0&&减仓比例<=1&&启动点数>0&&(盈利多少点数折仓>0||盈利点数大于几倍止损>0))
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  if(开启只折一次&&历史订单ID含订单号检测(OrderComment(),OrderOpenTime()))
                     continue;
                  string 币种=OrderSymbol();
                  double 盈利点数=(OrderClosePrice()-OrderOpenPrice())/点值(币种);
                  double 止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
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
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,卖价(币种),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void          交易类::盈利点数折空(string 币种,int magic,string 注释,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0,bool 开启只折一次=false)
  {
   if(减仓比例>0&&减仓比例<=1&&启动点数>0&&(盈利多少点数折仓>0||盈利点数大于几倍止损>0))
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  if(开启只折一次&&历史订单ID含订单号检测(OrderComment(),OrderOpenTime()))
                     continue;
                  double 盈利点数=(OrderClosePrice()-OrderOpenPrice())/点值(币种);
                  double 止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  double 大于几倍值=盈利点数大于几倍止损*止损点数;
                  if(空值检测(OrderStopLoss())&&盈利多少点数折仓==0)
                     大于几倍值=盈利点数大于几倍止损*启动点数;
                  if(盈利多少点数折仓)
                     大于几倍值=0;
                  if(盈利多少点数折仓==0&&盈利点数大于几倍止损==0)
                     break;
                  if(OrderType()==OP_SELL&&-盈利点数>启动点数&&-盈利点数>大于几倍值+盈利多少点数折仓)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,买价(币种),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void          交易类::盈利点数折空(string 币种,int magic,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0,bool 开启只折一次=false)
  {
   if(减仓比例>0&&减仓比例<=1&&启动点数>0&&(盈利多少点数折仓>0||盈利点数大于几倍止损>0))
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  if(开启只折一次&&历史订单ID含订单号检测(OrderComment(),OrderOpenTime()))
                     continue;
                  double 盈利点数=(OrderClosePrice()-OrderOpenPrice())/点值(币种);
                  double 止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  double 大于几倍值=盈利点数大于几倍止损*止损点数;
                  if(空值检测(OrderStopLoss())&&盈利多少点数折仓==0)
                     大于几倍值=盈利点数大于几倍止损*启动点数;
                  if(盈利多少点数折仓)
                     大于几倍值=0;
                  if(盈利多少点数折仓==0&&盈利点数大于几倍止损==0)
                     break;
                  if(OrderType()==OP_SELL&&-盈利点数>启动点数&&-盈利点数>大于几倍值+盈利多少点数折仓)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,买价(币种),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void          交易类::盈利点数折空(int magic,double 折仓手数,double 减仓比例,double 启动点数,double 盈利多少点数折仓,double 盈利点数大于几倍止损=0,bool 开启只折一次=false)
  {
   if(减仓比例>0&&减仓比例<=1&&启动点数>0&&(盈利多少点数折仓>0||盈利点数大于几倍止损>0))
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  if(开启只折一次&&历史订单ID含订单号检测(OrderComment(),OrderOpenTime()))
                     continue;
                  string 币种=OrderSymbol();
                  double 盈利点数=(OrderClosePrice()-OrderOpenPrice())/点值(币种);
                  double 止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  double 大于几倍值=盈利点数大于几倍止损*止损点数;
                  if(空值检测(OrderStopLoss())&&盈利多少点数折仓==0)
                     大于几倍值=盈利点数大于几倍止损*启动点数;
                  if(盈利多少点数折仓)
                     大于几倍值=0;
                  if(盈利多少点数折仓==0&&盈利点数大于几倍止损==0)
                     break;
                  if(OrderType()==OP_SELL&&-盈利点数>启动点数&&-盈利点数>大于几倍值+盈利多少点数折仓)
                    {
                     if(折仓手数==0)
                        折仓手数=OrderLots();
                     折仓手数=手数自适应(币种,折仓手数*减仓比例);
                     if(折仓手数>OrderLots())
                        折仓手数=OrderLots();
                     bool    result=OrderClose(OrderTicket(),折仓手数,买价(币种),滑点,Yellow);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::阳孕阴(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,bool 开启不检开收价=false,bool 不检孕阴阳=false)
  {
   bool 检测=阴阳判断(币种,图表周期,序号+1,2)&&(阴阳判断(币种,图表周期,序号,1)||不检孕阴阳)
               &&iHigh(币种,图表周期,序号)<iHigh(币种,图表周期,序号+1)&&iLow(币种,图表周期,序号)>iLow(币种,图表周期,序号+1)
               &&iOpen(币种,图表周期,序号)<iClose(币种,图表周期,序号+1)&&iOpen(币种,图表周期,序号)>iOpen(币种,图表周期,序号+1)
               &&iClose(币种,图表周期,序号)<iClose(币种,图表周期,序号+1)&&iClose(币种,图表周期,序号)>iOpen(币种,图表周期,序号+1);
   if(开启不检开收价)
      检测=阴阳判断(币种,图表周期,序号+1,2)&&阴阳判断(币种,图表周期,序号,1)
             &&iHigh(币种,图表周期,序号)<iHigh(币种,图表周期,序号+1)&&iLow(币种,图表周期,序号)>iLow(币种,图表周期,序号+1);
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::阴孕阳(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,bool 开启不检开收价=false,bool 不检孕阴阳=false)
  {
   bool 检测=阴阳判断(币种,图表周期,序号+1,1)&&(阴阳判断(币种,图表周期,序号,2)||不检孕阴阳)
               &&iHigh(币种,图表周期,序号)<iHigh(币种,图表周期,序号+1)&&iLow(币种,图表周期,序号)>iLow(币种,图表周期,序号+1)
               &&iOpen(币种,图表周期,序号)>iClose(币种,图表周期,序号+1)&&iOpen(币种,图表周期,序号)<iOpen(币种,图表周期,序号+1)
               &&iClose(币种,图表周期,序号)>iClose(币种,图表周期,序号+1)&&iClose(币种,图表周期,序号)<iOpen(币种,图表周期,序号+1);
   if(开启不检开收价)
      检测=阴阳判断(币种,图表周期,序号+1,1)&&阴阳判断(币种,图表周期,序号,2)
             &&iHigh(币种,图表周期,序号)<iHigh(币种,图表周期,序号+1)&&iLow(币种,图表周期,序号)>iLow(币种,图表周期,序号+1);
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::上破阳孕阴(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,int 模式=0,bool 开启不检开收价=false,bool 不检孕阴阳=false)
  {
   bool 检测=false;
   if(模式==0)
      检测=阳孕阴(币种,图表周期,序号+1,开启不检开收价,不检孕阴阳)&&iClose(币种,图表周期,序号)>iClose(币种,图表周期,序号+2);
   if(模式==1)
      检测=阳孕阴(币种,图表周期,序号+1,开启不检开收价,不检孕阴阳)&&iHigh(币种,图表周期,序号)>iClose(币种,图表周期,序号+2);
   if(模式==2)
      检测=阳孕阴(币种,图表周期,序号+1,开启不检开收价,不检孕阴阳)&&iClose(币种,图表周期,序号)>iHigh(币种,图表周期,序号+2);
   if(模式==3)
      检测=阳孕阴(币种,图表周期,序号+1,开启不检开收价,不检孕阴阳)&&iHigh(币种,图表周期,序号)>iHigh(币种,图表周期,序号+2);
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::下破阴孕阳(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,int 模式=0,bool 开启不检开收价=false,bool 不检孕阴阳=false)
  {
   bool 检测=false;
   if(模式==0)
      检测=阴孕阳(币种,图表周期,序号+1,开启不检开收价,不检孕阴阳)&&iClose(币种,图表周期,序号)<iClose(币种,图表周期,序号+2);
   if(模式==1)
      检测=阴孕阳(币种,图表周期,序号+1,开启不检开收价,不检孕阴阳)&&iLow(币种,图表周期,序号)<iClose(币种,图表周期,序号+2);
   if(模式==2)
      检测=阴孕阳(币种,图表周期,序号+1,开启不检开收价,不检孕阴阳)&&iClose(币种,图表周期,序号)<iLow(币种,图表周期,序号+2);
   if(模式==3)
      检测=阴孕阳(币种,图表周期,序号+1,开启不检开收价,不检孕阴阳)&&iLow(币种,图表周期,序号)<iLow(币种,图表周期,序号+2);
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::看涨吞没(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,bool 开启不检开收价=false)
  {
   bool 检测=阴阳判断(币种,图表周期,序号+1,1)&&阴阳判断(币种,图表周期,序号,2)
               &&iHigh(币种,图表周期,序号+1)<iHigh(币种,图表周期,序号)&&iLow(币种,图表周期,序号+1)>iLow(币种,图表周期,序号)
               &&iOpen(币种,图表周期,序号+1)<iClose(币种,图表周期,序号)&&iOpen(币种,图表周期,序号+1)>iOpen(币种,图表周期,序号)
               &&iClose(币种,图表周期,序号+1)<iClose(币种,图表周期,序号)&&iClose(币种,图表周期,序号+1)>iOpen(币种,图表周期,序号);
   if(开启不检开收价)
      检测=阴阳判断(币种,图表周期,序号+1,1)&&阴阳判断(币种,图表周期,序号,2)
             &&iHigh(币种,图表周期,序号+1)<iHigh(币种,图表周期,序号)&&iLow(币种,图表周期,序号+1)>iLow(币种,图表周期,序号);
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::看跌吞没(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,bool 开启不检开收价=false)
  {
   bool 检测=阴阳判断(币种,图表周期,序号+1,2)&&阴阳判断(币种,图表周期,序号,1)
               &&iHigh(币种,图表周期,序号+1)<iHigh(币种,图表周期,序号)&&iLow(币种,图表周期,序号+1)>iLow(币种,图表周期,序号)
               &&iOpen(币种,图表周期,序号+1)>iClose(币种,图表周期,序号)&&iOpen(币种,图表周期,序号+1)<iOpen(币种,图表周期,序号)
               &&iClose(币种,图表周期,序号+1)>iClose(币种,图表周期,序号)&&iClose(币种,图表周期,序号+1)<iOpen(币种,图表周期,序号);
   if(开启不检开收价)
      检测=阴阳判断(币种,图表周期,序号+1,2)&&阴阳判断(币种,图表周期,序号,1)
             &&iHigh(币种,图表周期,序号+1)<iHigh(币种,图表周期,序号)&&iLow(币种,图表周期,序号+1)>iLow(币种,图表周期,序号);
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::阳下影线比例(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 影线占实影多少比例=0.6)
  {
   bool 检测=阴阳判断(币种,图表周期,序号,2)&&差点值(币种,iOpen(币种,图表周期,序号),iLow(币种,图表周期,序号))>影线占实影多少比例*差点值(币种,iClose(币种,图表周期,序号),iLow(币种,图表周期,序号));
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::阴下影线比例(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 影线占实影多少比例=0.6)
  {
   bool 检测=阴阳判断(币种,图表周期,序号,1)&&差点值(币种,iClose(币种,图表周期,序号),iLow(币种,图表周期,序号))>影线占实影多少比例*差点值(币种,iOpen(币种,图表周期,序号),iLow(币种,图表周期,序号));
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::阳上影线比例(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 影线占实影多少比例=0.6)
  {
   bool 检测=阴阳判断(币种,图表周期,序号,1)&&差点值(币种,iClose(币种,图表周期,序号),iHigh(币种,图表周期,序号))>影线占实影多少比例*差点值(币种,iOpen(币种,图表周期,序号),iHigh(币种,图表周期,序号));
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::阴上影线比例(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 影线占实影多少比例=0.6)
  {
   bool 检测=阴阳判断(币种,图表周期,序号,1)&&差点值(币种,iOpen(币种,图表周期,序号),iHigh(币种,图表周期,序号))>影线占实影多少比例*差点值(币种,iClose(币种,图表周期,序号),iHigh(币种,图表周期,序号));
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::看涨pinbar(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 影线占实影多少比例=0.6)
  {
   bool 检测=阴阳判断(币种,图表周期,序号,2)&&阳下影线比例(币种,图表周期,序号+1,影线占实影多少比例)&&阴阳判断(币种,图表周期,序号+2,1)
               &&iClose(币种,图表周期,序号)>iOpen(币种,图表周期,序号+2);
   return 检测;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::看跌pinbar(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 影线占实影多少比例=0.6)
  {
   bool 检测=阴阳判断(币种,图表周期,序号,1)&&阴上影线比例(币种,图表周期,序号+1,影线占实影多少比例)&&阴阳判断(币种,图表周期,序号+2,2)
               &&iClose(币种,图表周期,序号)<iClose(币种,图表周期,序号+2);
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::K线大于某值(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 某值,int 模式开高低收=3)
  {
   bool 检测=false;
   if(模式开高低收==0)
      检测=某值>0&&iOpen(币种,图表周期,序号)>某值;
   if(模式开高低收==1)
      检测=某值>0&&iHigh(币种,图表周期,序号)>某值;
   if(模式开高低收==2)
      检测=某值>0&&iLow(币种,图表周期,序号)>某值;
   if(模式开高低收==3)
      检测=某值>0&&iClose(币种,图表周期,序号)>某值;
   return 检测;
  }

//+------------------------------------------------------------------+
bool 交易类::K线小于某值(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 某值,int 模式开高低收=3)
  {
   bool 检测=false;
   if(模式开高低收==0)
      检测=某值>0&&iOpen(币种,图表周期,序号)<某值;
   if(模式开高低收==1)
      检测=某值>0&&iHigh(币种,图表周期,序号)<某值;
   if(模式开高低收==2)
      检测=某值>0&&iLow(币种,图表周期,序号)<某值;
   if(模式开高低收==3)
      检测=某值>0&&iClose(币种,图表周期,序号)<某值;
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::二连K大于某值(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 某值1,double 某值2,int 模式开高低收1=3,int 模式开高低收2=3)
  {
   bool 检测=K线大于某值(币种,图表周期,序号,某值1,模式开高低收1)&&K线大于某值(币种,图表周期,序号+1,某值2,模式开高低收2);
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::三连K大于某值(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 某值1,double 某值2,double 某值3,int 模式开高低收1=3,int 模式开高低收2=3,int 模式开高低收3=3)
  {
   bool 检测=K线大于某值(币种,图表周期,序号,某值1,模式开高低收1)&&K线大于某值(币种,图表周期,序号+1,某值2,模式开高低收2)&&K线大于某值(币种,图表周期,序号+2,某值3,模式开高低收3);
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::二连K小于某值(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 某值1,double 某值2,int 模式开高低收1=3,int 模式开高低收2=3)
  {
   bool 检测=K线小于某值(币种,图表周期,序号,某值1,模式开高低收1)&&K线小于某值(币种,图表周期,序号+1,某值2,模式开高低收2);
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::三连K小于某值(string 币种,ENUM_TIMEFRAMES 图表周期,int 序号,double 某值1,double 某值2,double 某值3,int 模式开高低收1=3,int 模式开高低收2=3,int 模式开高低收3=3)
  {
   bool 检测=K线小于某值(币种,图表周期,序号,某值1,模式开高低收1)&&K线小于某值(币种,图表周期,序号+1,某值2,模式开高低收2)&&K线小于某值(币种,图表周期,序号+2,某值3,模式开高低收3);
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::最大盈利金额(string 币种,int magic,string 注释,int 持仓方向,uint &订单号)
  {
   int 总单量=OrdersTotal();
   double 最大盈利=0;
   for(int i=总单量-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==持仓方向)
                 {
                  if(OrderProfit()+OrderSwap()+OrderCommission()>=最大盈利)
                    {
                     最大盈利=OrderProfit()+OrderSwap()+OrderCommission();
                     订单号=OrderTicket();
                    }
                 }
              }
           }
        }
     }
   return(最大盈利);
  }
//+------------------------------------------------------------------+
//-----
double 交易类::最大盈利金额(string 币种,int magic,int 持仓方向,uint &订单号)
  {
   int 总单量=OrdersTotal();
   double 最大盈利=0;
   for(int i=总单量-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderType()==持仓方向)
                 {
                  if(OrderProfit()+OrderSwap()+OrderCommission()>=最大盈利)
                    {
                     最大盈利=OrderProfit()+OrderSwap()+OrderCommission();
                     订单号=OrderTicket();
                    }
                 }
              }
           }
        }
     }
   return(最大盈利);
  }
//+------------------------------------------------------------------+
//-----
double 交易类::最大盈利金额(int magic,int 持仓方向,uint &订单号)
  {
   int 总单量=OrdersTotal();
   double 最大盈利=0;
   for(int i=总单量-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               string 币种=OrderSymbol();
               if(OrderType()==持仓方向)
                 {
                  if(OrderProfit()+OrderSwap()+OrderCommission()>=最大盈利)
                    {
                     最大盈利=OrderProfit()+OrderSwap()+OrderCommission();
                     订单号=OrderTicket();
                    }
                 }
              }
           }
        }
     }
   return(最大盈利);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::最大盈利金额(string 币种,int magic,string 注释,uint &订单号)
  {
   int 总单量=OrdersTotal();
   double 最大盈利=0;
   for(int i=总单量-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderProfit()+OrderSwap()+OrderCommission()>=最大盈利)
                 {
                  最大盈利=OrderProfit()+OrderSwap()+OrderCommission();
                  订单号=OrderTicket();
                 }
              }
           }
        }
     }
   return(最大盈利);
  }
//+------------------------------------------------------------------+
//-----
double 交易类::最大盈利金额(string 币种,int magic,uint &订单号)
  {
   int 总单量=OrdersTotal();
   double 最大盈利=0;
   for(int i=总单量-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderProfit()+OrderSwap()+OrderCommission()>=最大盈利)
                 {
                  最大盈利=OrderProfit()+OrderSwap()+OrderCommission();
                  订单号=OrderTicket();
                 }
              }
           }
        }
     }
   return(最大盈利);
  }
//+------------------------------------------------------------------+
//-----
double 交易类::最大盈利金额(int magic,uint &订单号)
  {
   int 总单量=OrdersTotal();
   double 最大盈利=0;
   for(int i=总单量-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               string 币种=OrderSymbol();
               if(OrderProfit()+OrderSwap()+OrderCommission()>=最大盈利)
                 {
                  最大盈利=OrderProfit()+OrderSwap()+OrderCommission();
                  订单号=OrderTicket();
                 }
              }
           }
        }
     }
   return(最大盈利);
  }
//+------------------------------------------------------------------+
//
//+------------------------------------------------------------------+
double 交易类::最小亏损金额(string 币种,int magic,string 注释,int 持仓方向,uint &订单号)
  {
   int 总单量=OrdersTotal();
   double 最小亏损=-999999999;
   for(int i=总单量-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==持仓方向)
                 {
                  if(OrderProfit()+OrderSwap()+OrderCommission()>=最小亏损&&OrderProfit()+OrderSwap()+OrderCommission()<=0)
                    {
                     最小亏损=OrderProfit()+OrderSwap()+OrderCommission();
                     订单号=OrderTicket();
                    }
                 }
              }
           }
        }
     }
   return(最小亏损);
  }
//+------------------------------------------------------------------+
//-----
double 交易类::最小亏损金额(string 币种,int magic,int 持仓方向,uint &订单号)
  {
   int 总单量=OrdersTotal();
   double 最小亏损=-999999999;
   for(int i=总单量-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderType()==持仓方向)
                 {
                  if(OrderProfit()+OrderSwap()+OrderCommission()>=最小亏损&&OrderProfit()+OrderSwap()+OrderCommission()<=0)
                    {
                     最小亏损=OrderProfit()+OrderSwap()+OrderCommission();
                     订单号=OrderTicket();
                    }
                 }
              }
           }
        }
     }
   return(最小亏损);
  }
//+------------------------------------------------------------------+
//-----
double 交易类::最小亏损金额(int magic,int 持仓方向,uint &订单号)
  {
   int 总单量=OrdersTotal();
   double 最小亏损=-999999999;
   for(int i=总单量-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               string 币种=OrderSymbol();
               if(OrderType()==持仓方向)
                 {
                  if(OrderProfit()+OrderSwap()+OrderCommission()>=最小亏损&&OrderProfit()+OrderSwap()+OrderCommission()<=0)
                    {
                     最小亏损=OrderProfit()+OrderSwap()+OrderCommission();
                     订单号=OrderTicket();
                    }
                 }
              }
           }
        }
     }
   return(最小亏损);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::最小亏损金额(string 币种,int magic,string 注释,uint &订单号)
  {
   int 总单量=OrdersTotal();
   double 最小亏损=-999999999;
   for(int i=总单量-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderProfit()+OrderSwap()+OrderCommission()>=最小亏损&&OrderProfit()+OrderSwap()+OrderCommission()<=0)
                 {
                  最小亏损=OrderProfit()+OrderSwap()+OrderCommission();
                  订单号=OrderTicket();
                 }
              }
           }
        }
     }
   return(最小亏损);
  }
//+------------------------------------------------------------------+
//-----
double 交易类::最小亏损金额(string 币种,int magic,uint &订单号)
  {
   int 总单量=OrdersTotal();
   double 最小亏损=-999999999;
   for(int i=总单量-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderProfit()+OrderSwap()+OrderCommission()>=最小亏损&&OrderProfit()+OrderSwap()+OrderCommission()<=0)
                 {
                  最小亏损=OrderProfit()+OrderSwap()+OrderCommission();
                  订单号=OrderTicket();
                 }
              }
           }
        }
     }
   return(最小亏损);
  }
//+------------------------------------------------------------------+
//-----
double 交易类::最小亏损金额(int magic,uint &订单号)
  {
   int 总单量=OrdersTotal();
   double 最小亏损=-999999999;
   for(int i=总单量-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               string 币种=OrderSymbol();
               if(OrderProfit()+OrderSwap()+OrderCommission()>=最小亏损&&OrderProfit()+OrderSwap()+OrderCommission()<=0)
                 {
                  最小亏损=OrderProfit()+OrderSwap()+OrderCommission();
                  订单号=OrderTicket();
                 }
              }
           }
        }
     }
   return(最小亏损);
  }
//+------------------------------------------------------------------+-----
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::盈利金额由大到小平单(double 设置金额,string 币种,int magic,string 注释)
  {
   double a=0;
   if(设置金额>0)
     {
      int t=0;
      if(最大盈利金额(币种,magic,注释,t)>设置金额)
         for(int i=OrdersTotal()-1; i>=0; i--)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  magic=魔术幻数(magic);
                  if(OrderSymbol()==币种&&OrderMagicNumber()&&OrderComment()==前缀+注释)
                    {
                     if(OrderProfit()+OrderSwap()+OrderCommission()>=0)
                       {
                        uint ticket=0;
                        a=a+最大盈利金额(币种,magic,注释,ticket);
                        订单号平单(ticket);
                       }
                    }
                 }
              }
           }
     }
   return a;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::盈利金额由大到小平单(double 设置金额,string 币种,int magic)
  {
   double a=0;
   if(设置金额>0)
     {
      int t=0;
      if(最大盈利金额(币种,magic,t)>设置金额)
         for(int i=OrdersTotal()-1; i>=0; i--)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  magic=魔术幻数(magic);
                  if(OrderSymbol()==币种&&OrderMagicNumber())
                    {
                     if(OrderProfit()+OrderSwap()+OrderCommission()>=0)
                       {
                        uint ticket=0;
                        a=a+最大盈利金额(币种,magic,ticket);
                        订单号平单(ticket);
                       }
                    }
                 }
              }
           }
     }
   return a;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::盈利金额由大到小平单(double 设置金额,int magic)
  {
   double a=0;
   if(设置金额>0)
     {
      int t=0;
      if(最大盈利金额(magic,t)>设置金额)
         for(int i=OrdersTotal()-1; i>=0; i--)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  magic=魔术幻数(magic);
                  if(OrderMagicNumber())
                    {
                     string 币种=OrderSymbol();
                     if(OrderProfit()+OrderSwap()+OrderCommission()>=0)
                       {
                        uint ticket=0;
                        a=a+最大盈利金额(magic,ticket);
                        订单号平单(ticket);
                       }
                    }
                 }
              }
           }
     }
   return a;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::盈利金额由大到小平单(double 设置金额,string 币种,int magic,string 注释,int 持仓方向)
  {
   double a=0;
   if(设置金额>0)
     {
      int t=0;
      if(最大盈利金额(币种,magic,注释,持仓方向,t)>设置金额)
         for(int i=OrdersTotal()-1; i>=0; i--)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  magic=魔术幻数(magic);
                  if(OrderSymbol()==币种&&OrderMagicNumber()&&OrderComment()==前缀+注释&&OrderType()==持仓方向)
                    {
                     if(OrderProfit()+OrderSwap()+OrderCommission()>=0)
                       {
                        uint ticket=0;
                        a=a+最大盈利金额(币种,magic,注释,持仓方向,ticket);
                        订单号平单(ticket);
                       }
                    }
                 }
              }
           }
     }
   return a;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::盈利金额由大到小平单(double 设置金额,string 币种,int magic,int 持仓方向)
  {
   double a=0;
   if(设置金额>0)
     {
      int t=0;
      if(最大盈利金额(币种,magic,持仓方向,t)>设置金额)
         for(int i=OrdersTotal()-1; i>=0; i--)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  magic=魔术幻数(magic);
                  if(OrderSymbol()==币种&&OrderMagicNumber()&&OrderType()==持仓方向)
                    {
                     if(OrderProfit()+OrderSwap()+OrderCommission()>=0)
                       {
                        uint ticket=0;
                        a=a+最大盈利金额(币种,magic,持仓方向,ticket);
                        订单号平单(ticket);
                       }
                    }
                 }
              }
           }
     }
   return a;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::盈利金额由大到小平单(double 设置金额,int magic,int 持仓方向)
  {
   double a=0;
   if(设置金额>0)
     {
      int t=0;
      if(最大盈利金额(magic,持仓方向,t)>设置金额)
         for(int i=OrdersTotal()-1; i>=0; i--)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  magic=魔术幻数(magic);
                  if(OrderMagicNumber()&&OrderType()==持仓方向)
                    {
                     string 币种=OrderSymbol();
                     if(OrderProfit()+OrderSwap()+OrderCommission()>=0)
                       {
                        uint ticket=0;
                        a=a+最大盈利金额(magic,持仓方向,ticket);
                        订单号平单(ticket);
                       }
                    }
                 }
              }
           }
     }
   return a;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::设置金额由小到大平亏损(double 设置金额,string 币种,int magic,string 注释)
  {
   if(设置金额>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  uint ticket=0;
                  if(OrderProfit()+OrderSwap()+OrderCommission()<=0)
                     if(设置金额+最小亏损金额(币种,magic,注释,ticket)>=0)
                       {
                        ticket=0;
                        设置金额=设置金额+最小亏损金额(币种,magic,注释,ticket);
                        订单号平单(ticket);
                       }
                     else
                        break;
                 }
              }
           }
        }
     }
   return 设置金额;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::设置金额由小到大平亏损(double 设置金额,string 币种,int magic)
  {
   if(设置金额>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  uint ticket=0;
                  if(OrderProfit()+OrderSwap()+OrderCommission()<=0)
                     if(设置金额+最小亏损金额(币种,magic,ticket)>=0)
                       {
                        ticket=0;
                        设置金额=设置金额+最小亏损金额(币种,magic,ticket);
                        订单号平单(ticket);
                       }
                     else
                        break;
                 }
              }
           }
        }
     }
   return 设置金额;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::设置金额由小到大平亏损(double 设置金额,int magic)
  {
   if(设置金额>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic)
                 {
                  string 币种=OrderSymbol();
                  uint ticket=0;
                  if(OrderProfit()+OrderSwap()+OrderCommission()<=0)
                     if(设置金额+最小亏损金额(magic,ticket)>=0)
                       {
                        ticket=0;
                        设置金额=设置金额+最小亏损金额(magic,ticket);
                        订单号平单(ticket);
                       }
                     else
                        break;
                 }
              }
           }
        }
     }
   return 设置金额;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::设置金额由小到大平亏损(double 设置金额,string 币种,int magic,string 注释,int 持仓方向)
  {
   if(设置金额>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释&&OrderType()==持仓方向)
                 {
                  uint ticket=0;
                  if(OrderProfit()+OrderSwap()+OrderCommission()<=0)
                     if(设置金额+最小亏损金额(币种,magic,注释,持仓方向,ticket)>=0)
                       {
                        ticket=0;
                        设置金额=设置金额+最小亏损金额(币种,magic,注释,持仓方向,ticket);
                        订单号平单(ticket);
                       }
                     else
                        break;
                 }
              }
           }
        }
     }
   return 设置金额;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::设置金额由小到大平亏损(double 设置金额,string 币种,int magic,int 持仓方向)
  {
   if(设置金额>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderType()==持仓方向)
                 {
                  uint ticket=0;
                  if(OrderProfit()+OrderSwap()+OrderCommission()<=0)
                     if(设置金额+最小亏损金额(币种,magic,持仓方向,ticket)>=0)
                       {
                        ticket=0;
                        设置金额=设置金额+最小亏损金额(币种,magic,持仓方向,ticket);
                        订单号平单(ticket);
                       }
                     else
                        break;
                 }
              }
           }
        }
     }
   return 设置金额;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 交易类::设置金额由小到大平亏损(double 设置金额,int magic,int 持仓方向)
  {
   if(设置金额>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderMagicNumber()==magic&&OrderType()==持仓方向)
                 {
                  string 币种=OrderSymbol();
                  uint ticket=0;
                  if(OrderProfit()+OrderSwap()+OrderCommission()<=0)
                     if(设置金额+最小亏损金额(magic,持仓方向,ticket)>=0)
                       {
                        ticket=0;
                        设置金额=设置金额+最小亏损金额(magic,持仓方向,ticket);
                        订单号平单(ticket);
                       }
                     else
                        break;
                 }
              }
           }
        }
     }
   return 设置金额;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::反向开单(string 币种,int  magic,string 注释,double 比例反手倍率=0,double 增减手数=0,bool 是否平单反手=false)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==OP_BUY)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int  反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单反手)
                     订单号平多(OrderTicket());
                  做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                 }
               if(OrderType()==OP_SELL)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int  反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单反手)
                     订单号平空(OrderTicket());
                  做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::反向开单(string 币种,int  magic,double 比例反手倍率=0,double 增减手数=0,bool 是否平单反手=false)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderType()==OP_BUY)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int  反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单反手)
                     订单号平多(OrderTicket());
                  做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                 }
               if(OrderType()==OP_SELL)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int  反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单反手)
                     订单号平空(OrderTicket());
                  做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::反向开单(int  magic,double 比例反手倍率=0,double 增减手数=0,bool 是否平单反手=false)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               string 币种=OrderSymbol();
               if(OrderType()==OP_BUY)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int  反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单反手)
                     订单号平多(OrderTicket());
                  做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                 }
               if(OrderType()==OP_SELL)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int  反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单反手)
                     订单号平空(OrderTicket());
                  做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::反向开空(string 币种,int  magic,string 注释,double 比例反手倍率=0,double 增减手数=0,bool 是否平单反手=false)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==OP_BUY)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int  反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单反手)
                     订单号平多(OrderTicket());
                  做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::反向开空(string 币种,int  magic,double 比例反手倍率=0,double 增减手数=0,bool 是否平单反手=false)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderType()==OP_BUY)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int  反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单反手)
                     订单号平多(OrderTicket());
                  做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::反向开空(int  magic,double 比例反手倍率=0,double 增减手数=0,bool 是否平单反手=false)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               string 币种=OrderSymbol();
               if(OrderType()==OP_BUY)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int  反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单反手)
                     订单号平多(OrderTicket());
                  做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::反向开多(string 币种,int  magic,string 注释,double 比例反手倍率=0,double 增减手数=0,bool 是否平单反手=false)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==OP_SELL)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int  反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单反手)
                     订单号平空(OrderTicket());
                  做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::反向开多(string 币种,int  magic,double 比例反手倍率=0,double 增减手数=0,bool 是否平单反手=false)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderType()==OP_SELL)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int  反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单反手)
                     订单号平空(OrderTicket());
                  做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::反向开多(int  magic,double 比例反手倍率=0,double 增减手数=0,bool 是否平单反手=false)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               string 币种=OrderSymbol();
               if(OrderType()==OP_SELL)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  double 反手开盘价=OrderOpenPrice();
                  double 反手止损价格=OrderStopLoss();
                  double 反手止盈价格=OrderTakeProfit();
                  double 反手止损点=差点值(反手币种,反手开盘价,反手止盈价格);
                  double 反手止盈点=差点值(反手币种,反手开盘价,反手止损价格);
                  int  反手Magic=OrderMagicNumber();
                  string 反手注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单反手)
                     订单号平空(OrderTicket());
                  做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),反手止损点,反手止盈点,反手Magic,"反手"+(string)订单号);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
void              交易类::同向开单(string 币种,int  magic,string 注释,double 比例倍率=0,double 增减手数=0,bool 是否平单同向=false)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==OP_BUY)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  double 同向开盘价=OrderOpenPrice();
                  double 同向止损价格=OrderStopLoss();
                  double 同向止盈价格=OrderTakeProfit();
                  double 同向止损点=差点值(同向币种,同向开盘价,同向止损价格);
                  double 同向止盈点=差点值(同向币种,同向开盘价,同向止盈价格);
                  int 同向Magic=OrderMagicNumber();
                  string 同向注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单同向)
                     订单号平多(OrderTicket());
                  做多(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),同向止损点,同向止盈点,同向Magic,"同向"+(string)订单号);
                 }
               if(OrderType()==OP_SELL)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  double 同向开盘价=OrderOpenPrice();
                  double 同向止损价格=OrderStopLoss();
                  double 同向止盈价格=OrderTakeProfit();
                  double 同向止损点=差点值(同向币种,同向开盘价,同向止损价格);
                  double 同向止盈点=差点值(同向币种,同向开盘价,同向止盈价格);
                  int 同向Magic=OrderMagicNumber();
                  string 同向注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单同向)
                     订单号平空(OrderTicket());
                  做空(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),同向止损点,同向止盈点,同向Magic,"同向"+(string)订单号);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::同向开单(string 币种,int  magic,double 比例倍率=0,double 增减手数=0,bool 是否平单同向=false)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderType()==OP_BUY)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  double 同向开盘价=OrderOpenPrice();
                  double 同向止损价格=OrderStopLoss();
                  double 同向止盈价格=OrderTakeProfit();
                  double 同向止损点=差点值(同向币种,同向开盘价,同向止损价格);
                  double 同向止盈点=差点值(同向币种,同向开盘价,同向止盈价格);
                  int 同向Magic=OrderMagicNumber();
                  string 同向注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单同向)
                     订单号平多(OrderTicket());
                  做多(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),同向止损点,同向止盈点,同向Magic,"同向"+(string)订单号);
                 }
               if(OrderType()==OP_SELL)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  double 同向开盘价=OrderOpenPrice();
                  double 同向止损价格=OrderStopLoss();
                  double 同向止盈价格=OrderTakeProfit();
                  double 同向止损点=差点值(同向币种,同向开盘价,同向止损价格);
                  double 同向止盈点=差点值(同向币种,同向开盘价,同向止盈价格);
                  int 同向Magic=OrderMagicNumber();
                  string 同向注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单同向)
                     订单号平空(OrderTicket());
                  做空(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),同向止损点,同向止盈点,同向Magic,"同向"+(string)订单号);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::同向开单(int  magic,double 比例倍率=0,double 增减手数=0,bool 是否平单同向=false)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               string 币种=OrderSymbol();
               if(OrderType()==OP_BUY)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  double 同向开盘价=OrderOpenPrice();
                  double 同向止损价格=OrderStopLoss();
                  double 同向止盈价格=OrderTakeProfit();
                  double 同向止损点=差点值(同向币种,同向开盘价,同向止损价格);
                  double 同向止盈点=差点值(同向币种,同向开盘价,同向止盈价格);
                  int 同向Magic=OrderMagicNumber();
                  string 同向注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单同向)
                     订单号平多(OrderTicket());
                  做多(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),同向止损点,同向止盈点,同向Magic,"同向"+(string)订单号);
                 }
               if(OrderType()==OP_SELL)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  double 同向开盘价=OrderOpenPrice();
                  double 同向止损价格=OrderStopLoss();
                  double 同向止盈价格=OrderTakeProfit();
                  double 同向止损点=差点值(同向币种,同向开盘价,同向止损价格);
                  double 同向止盈点=差点值(同向币种,同向开盘价,同向止盈价格);
                  int 同向Magic=OrderMagicNumber();
                  string 同向注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单同向)
                     订单号平空(OrderTicket());
                  做空(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),同向止损点,同向止盈点,同向Magic,"同向"+(string)订单号);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
void              交易类::同向开多(string 币种,int  magic,string 注释,double 比例倍率=0,double 增减手数=0,bool 是否平单同向=false)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==OP_BUY)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  double 同向开盘价=OrderOpenPrice();
                  double 同向止损价格=OrderStopLoss();
                  double 同向止盈价格=OrderTakeProfit();
                  double 同向止损点=差点值(同向币种,同向开盘价,同向止损价格);
                  double 同向止盈点=差点值(同向币种,同向开盘价,同向止盈价格);
                  int 同向Magic=OrderMagicNumber();
                  string 同向注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单同向)
                     订单号平多(OrderTicket());
                  做多(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),同向止损点,同向止盈点,同向Magic,"同向"+(string)订单号);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::同向开多(string 币种,int  magic,double 比例倍率=0,double 增减手数=0,bool 是否平单同向=false)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderType()==OP_BUY)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  double 同向开盘价=OrderOpenPrice();
                  double 同向止损价格=OrderStopLoss();
                  double 同向止盈价格=OrderTakeProfit();
                  double 同向止损点=差点值(同向币种,同向开盘价,同向止损价格);
                  double 同向止盈点=差点值(同向币种,同向开盘价,同向止盈价格);
                  int 同向Magic=OrderMagicNumber();
                  string 同向注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单同向)
                     订单号平多(OrderTicket());
                  做多(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),同向止损点,同向止盈点,同向Magic,"同向"+(string)订单号);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::同向开多(int  magic,double 比例倍率=0,double 增减手数=0,bool 是否平单同向=false)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               string 币种=OrderSymbol();
               if(OrderType()==OP_BUY)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  double 同向开盘价=OrderOpenPrice();
                  double 同向止损价格=OrderStopLoss();
                  double 同向止盈价格=OrderTakeProfit();
                  double 同向止损点=差点值(同向币种,同向开盘价,同向止损价格);
                  double 同向止盈点=差点值(同向币种,同向开盘价,同向止盈价格);
                  int 同向Magic=OrderMagicNumber();
                  string 同向注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单同向)
                     订单号平多(OrderTicket());
                  做多(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),同向止损点,同向止盈点,同向Magic,"同向"+(string)订单号);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
void              交易类::同向开空(string 币种,int  magic,string 注释,double 比例倍率=0,double 增减手数=0,bool 是否平单同向=false)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==OP_SELL)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  double 同向开盘价=OrderOpenPrice();
                  double 同向止损价格=OrderStopLoss();
                  double 同向止盈价格=OrderTakeProfit();
                  double 同向止损点=差点值(同向币种,同向开盘价,同向止损价格);
                  double 同向止盈点=差点值(同向币种,同向开盘价,同向止盈价格);
                  int 同向Magic=OrderMagicNumber();
                  string 同向注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单同向)
                     订单号平空(OrderTicket());
                  做空(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),同向止损点,同向止盈点,同向Magic,"同向"+(string)订单号);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::同向开空(string 币种,int  magic,double 比例倍率=0,double 增减手数=0,bool 是否平单同向=false)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderType()==OP_SELL)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  double 同向开盘价=OrderOpenPrice();
                  double 同向止损价格=OrderStopLoss();
                  double 同向止盈价格=OrderTakeProfit();
                  double 同向止损点=差点值(同向币种,同向开盘价,同向止损价格);
                  double 同向止盈点=差点值(同向币种,同向开盘价,同向止盈价格);
                  int 同向Magic=OrderMagicNumber();
                  string 同向注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单同向)
                     订单号平空(OrderTicket());
                  做空(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),同向止损点,同向止盈点,同向Magic,"同向"+(string)订单号);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::同向开空(int  magic,double 比例倍率=0,double 增减手数=0,bool 是否平单同向=false)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               string 币种=OrderSymbol();
               if(OrderType()==OP_SELL)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  double 同向开盘价=OrderOpenPrice();
                  double 同向止损价格=OrderStopLoss();
                  double 同向止盈价格=OrderTakeProfit();
                  double 同向止损点=差点值(同向币种,同向开盘价,同向止损价格);
                  double 同向止盈点=差点值(同向币种,同向开盘价,同向止盈价格);
                  int 同向Magic=OrderMagicNumber();
                  string 同向注释=OrderComment();
                  int 订单号=OrderTicket();
                  if(是否平单同向)
                     订单号平空(OrderTicket());
                  做空(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),同向止损点,同向止盈点,同向Magic,"同向"+(string)订单号);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::自定义反向开单(string 币种,int  magic,string 注释,double 比例反手倍率,double 增减手数,bool 是否平单反手,double 止损点数,double 止盈点数,string 反手注释)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==OP_BUY)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  int  反手Magic=OrderMagicNumber();
                  if(是否平单反手)
                     订单号平多(OrderTicket());
                  做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),止损点数,止盈点数,反手Magic,反手注释);
                 }
               if(OrderType()==OP_SELL)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  int  反手Magic=OrderMagicNumber();
                  if(是否平单反手)
                     订单号平空(OrderTicket());
                  做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),止损点数,止盈点数,反手Magic,反手注释);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::自定义反向开单(string 币种,int  magic,double 比例反手倍率,double 增减手数,bool 是否平单反手,double 止损点数,double 止盈点数,string 反手注释)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderType()==OP_BUY)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  int  反手Magic=OrderMagicNumber();
                  if(是否平单反手)
                     订单号平多(OrderTicket());
                  做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),止损点数,止盈点数,反手Magic,反手注释);
                 }
               if(OrderType()==OP_SELL)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  int  反手Magic=OrderMagicNumber();
                  if(是否平单反手)
                     订单号平空(OrderTicket());
                  做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),止损点数,止盈点数,反手Magic,反手注释);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::自定义反向开单(int  magic,double 比例反手倍率,double 增减手数,bool 是否平单反手,double 止损点数,double 止盈点数,string 反手注释)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               string 币种=OrderSymbol();
               if(OrderType()==OP_BUY)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  int  反手Magic=OrderMagicNumber();
                  if(是否平单反手)
                     订单号平多(OrderTicket());
                  做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),止损点数,止盈点数,反手Magic,反手注释);
                 }
               if(OrderType()==OP_SELL)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  int  反手Magic=OrderMagicNumber();
                  if(是否平单反手)
                     订单号平空(OrderTicket());
                  做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),止损点数,止盈点数,反手Magic,反手注释);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::自定义反向开多(string 币种,int  magic,string 注释,double 比例反手倍率,double 增减手数,bool 是否平单反手,double 止损点数,double 止盈点数,string 反手注释)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==OP_SELL)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  int  反手Magic=OrderMagicNumber();
                  if(是否平单反手)
                     订单号平空(OrderTicket());
                  做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),止损点数,止盈点数,反手Magic,反手注释);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::自定义反向开多(string 币种,int  magic,double 比例反手倍率,double 增减手数,bool 是否平单反手,double 止损点数,double 止盈点数,string 反手注释)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderType()==OP_SELL)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  int  反手Magic=OrderMagicNumber();
                  if(是否平单反手)
                     订单号平空(OrderTicket());
                  做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),止损点数,止盈点数,反手Magic,反手注释);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::自定义反向开多(int  magic,double 比例反手倍率,double 增减手数,bool 是否平单反手,double 止损点数,double 止盈点数,string 反手注释)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               string 币种=OrderSymbol();
               if(OrderType()==OP_SELL)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  int  反手Magic=OrderMagicNumber();
                  if(是否平单反手)
                     订单号平空(OrderTicket());
                  做多(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),止损点数,止盈点数,反手Magic,反手注释);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::自定义反向开空(string 币种,int  magic,string 注释,double 比例反手倍率,double 增减手数,bool 是否平单反手,double 止损点数,double 止盈点数,string 反手注释)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==OP_BUY)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  int  反手Magic=OrderMagicNumber();
                  if(是否平单反手)
                     订单号平多(OrderTicket());
                  做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),止损点数,止盈点数,反手Magic,反手注释);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::自定义反向开空(string 币种,int  magic,double 比例反手倍率,double 增减手数,bool 是否平单反手,double 止损点数,double 止盈点数,string 反手注释)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderType()==OP_BUY)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  int  反手Magic=OrderMagicNumber();
                  if(是否平单反手)
                     订单号平多(OrderTicket());
                  做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),止损点数,止盈点数,反手Magic,反手注释);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::自定义反向开空(int  magic,double 比例反手倍率,double 增减手数,bool 是否平单反手,double 止损点数,double 止盈点数,string 反手注释)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               string 币种=OrderSymbol();
               if(OrderType()==OP_BUY)
                 {
                  string  反手币种=OrderSymbol();
                  double  反手手数=OrderLots();
                  int  反手Magic=OrderMagicNumber();
                  if(是否平单反手)
                     订单号平多(OrderTicket());
                  做空(反手币种,手数自适应(反手币种,反手手数+反手手数*比例反手倍率+增减手数),止损点数,止盈点数,反手Magic,反手注释);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::自定义同向开单(string 币种,int  magic,string 注释,double 比例倍率,double 增减手数,bool 是否平单同向,double 止损点数,double 止盈点数,string 同向注释)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==OP_BUY)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  int 同向Magic=OrderMagicNumber();
                  if(是否平单同向)
                     订单号平多(OrderTicket());
                  做多(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),止损点数,止盈点数,同向Magic,同向注释);
                 }
               if(OrderType()==OP_SELL)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  int 同向Magic=OrderMagicNumber();
                  if(是否平单同向)
                     订单号平空(OrderTicket());
                  做空(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),止损点数,止盈点数,同向Magic,同向注释);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::自定义同向开单(string 币种,int  magic,double 比例倍率,double 增减手数,bool 是否平单同向,double 止损点数,double 止盈点数,string 同向注释)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderType()==OP_BUY)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  int 同向Magic=OrderMagicNumber();
                  if(是否平单同向)
                     订单号平多(OrderTicket());
                  做多(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),止损点数,止盈点数,同向Magic,同向注释);
                 }
               if(OrderType()==OP_SELL)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  int 同向Magic=OrderMagicNumber();
                  if(是否平单同向)
                     订单号平空(OrderTicket());
                  做空(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),止损点数,止盈点数,同向Magic,同向注释);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::自定义同向开单(int  magic,double 比例倍率,double 增减手数,bool 是否平单同向,double 止损点数,double 止盈点数,string 同向注释)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               string 币种=OrderSymbol();
               if(OrderType()==OP_BUY)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  int 同向Magic=OrderMagicNumber();
                  if(是否平单同向)
                     订单号平多(OrderTicket());
                  做多(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),止损点数,止盈点数,同向Magic,同向注释);
                 }
               if(OrderType()==OP_SELL)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  int 同向Magic=OrderMagicNumber();
                  if(是否平单同向)
                     订单号平空(OrderTicket());
                  做空(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),止损点数,止盈点数,同向Magic,同向注释);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::自定义同向开多(string 币种,int  magic,string 注释,double 比例倍率,double 增减手数,bool 是否平单同向,double 止损点数,double 止盈点数,string 同向注释)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==OP_BUY)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  int 同向Magic=OrderMagicNumber();
                  if(是否平单同向)
                     订单号平多(OrderTicket());
                  做多(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),止损点数,止盈点数,同向Magic,同向注释);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::自定义同向开多(string 币种,int  magic,double 比例倍率,double 增减手数,bool 是否平单同向,double 止损点数,double 止盈点数,string 同向注释)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderType()==OP_BUY)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  int 同向Magic=OrderMagicNumber();
                  if(是否平单同向)
                     订单号平多(OrderTicket());
                  做多(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),止损点数,止盈点数,同向Magic,同向注释);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::自定义同向开多(int  magic,double 比例倍率,double 增减手数,bool 是否平单同向,double 止损点数,double 止盈点数,string 同向注释)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               string 币种=OrderSymbol();
               if(OrderType()==OP_BUY)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  int 同向Magic=OrderMagicNumber();
                  if(是否平单同向)
                     订单号平多(OrderTicket());
                  做多(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),止损点数,止盈点数,同向Magic,同向注释);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::自定义同向开空(string 币种,int  magic,string 注释,double 比例倍率,double 增减手数,bool 是否平单同向,double 止损点数,double 止盈点数,string 同向注释)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderType()==OP_SELL)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  int 同向Magic=OrderMagicNumber();
                  if(是否平单同向)
                     订单号平空(OrderTicket());
                  做空(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),止损点数,止盈点数,同向Magic,同向注释);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::自定义同向开空(string 币种,int  magic,double 比例倍率,double 增减手数,bool 是否平单同向,double 止损点数,double 止盈点数,string 同向注释)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderType()==OP_SELL)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  int 同向Magic=OrderMagicNumber();
                  if(是否平单同向)
                     订单号平空(OrderTicket());
                  做空(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),止损点数,止盈点数,同向Magic,同向注释);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void              交易类::自定义同向开空(int  magic,double 比例倍率,double 增减手数,bool 是否平单同向,double 止损点数,double 止盈点数,string 同向注释)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               string 币种=OrderSymbol();
               if(OrderType()==OP_SELL)
                 {
                  string  同向币种=OrderSymbol();
                  double  同向手数=OrderLots();
                  int 同向Magic=OrderMagicNumber();
                  if(是否平单同向)
                     订单号平空(OrderTicket());
                  做空(同向币种,手数自适应(同向币种,同向手数+同向手数*比例倍率+增减手数),止损点数,止盈点数,同向Magic,同向注释);
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool   交易类::单位时间向上差点值之外(string 币种,double 设置差点值,double 间隔秒数,double 参考价)
  {
   static ulong  初时时间1=0;
   static double 初时价1=0;
   ulong 实时时间=(ulong)TimeCurrent();
   if(实时时间>初时时间1)
     {
      初时价1=参考价;
      初时时间1=(ulong)(实时时间+间隔秒数);
     }
   bool 在差点值之外1=false;
   if(初时价1!=0&&参考价>初时价1)
      在差点值之外1=在差点值之外(币种,参考价,初时价1,设置差点值);
   if(在差点值之外1)
      初时时间1=(ulong)TimeCurrent();
   return 在差点值之外1;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool   交易类::单位时间向下差点值之外(string 币种,double 设置差点值,double 间隔秒数,double 参考价)
  {
   static ulong  初时时间2=0;
   static double 初时价2=0;
   ulong 实时时间=(ulong)TimeCurrent();
   if(实时时间>初时时间2)
     {
      初时价2=参考价;
      初时时间2=(ulong)(实时时间+间隔秒数);
     }
   bool 在差点值之外2=false;
   if(初时价2!=0&&参考价<初时价2)
      在差点值之外2=在差点值之外(币种,参考价,初时价2,设置差点值);
   if(在差点值之外2)
      初时时间2=(ulong)TimeCurrent();
   return 在差点值之外2;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   交易类::单位时间差值(double 间隔秒数,double 参考价)
  {
   static ulong  初时时间3=0;
   static double 初时价3=0;
   ulong 实时时间=(ulong)TimeCurrent();
   if(实时时间>初时时间3)
     {
      初时价3=参考价;
      初时时间3=(ulong)(实时时间+间隔秒数);
     }
   double 差值=0;
   if(初时价3!=0)
      差值=参考价-初时价3;
   return 差值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double  交易类::单位时间向上差值(double 间隔秒数,double 参考价)
  {
   static ulong  初时时间4=0;
   static double 初时价4=0;
   ulong 实时时间=(ulong)TimeCurrent();
   if(实时时间>初时时间4)
     {
      初时价4=参考价;
      初时时间4=(ulong)(实时时间+间隔秒数);
     }
   double 差值=0;
   if(初时价4!=0&&参考价>初时价4)
      差值=参考价-初时价4;
   return 差值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double   交易类::单位时间向下差值(double 间隔秒数,double 参考价)
  {
   static ulong  初时时间5=0;
   static double 初时价5=0;
   ulong 实时时间=(ulong)TimeCurrent();
   if(实时时间>初时时间5)
     {
      初时价5=参考价;
      初时时间5=(ulong)(实时时间+间隔秒数);
     }
   double 差值=0;
   if(初时价5!=0&&参考价<初时价5)
      差值=初时价5-参考价;
   return 差值;
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
bool    交易类::单位时间do1(double 间隔秒数)
  {
   bool 检测=false;
   static ulong  初时间1=0;
   ulong 时时间=(ulong)TimeCurrent();
   if(时时间>初时间1)
     {
      检测=true;
      初时间1=(ulong)(时时间+间隔秒数);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool    交易类::单位时间do2(double 间隔秒数)
  {
   bool 检测=false;
   static ulong  初时间2=0;
   ulong 时时间=(ulong)TimeCurrent();
   if(时时间>初时间2)
     {
      检测=true;
      初时间2=(ulong)(时时间+间隔秒数);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool    交易类::单位时间do3(double 间隔秒数)
  {
   bool 检测=false;
   static ulong  初时间3=0;
   ulong 时时间=(ulong)TimeCurrent();
   if(时时间>初时间3)
     {
      检测=true;
      初时间3=(ulong)(时时间+间隔秒数);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool    交易类::单位时间do4(double 间隔秒数)
  {
   bool 检测=false;
   static ulong  初时间4=0;
   ulong 时时间=(ulong)TimeCurrent();
   if(时时间>初时间4)
     {
      检测=true;
      初时间4=(ulong)(时时间+间隔秒数);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool    交易类::单位时间1(double 间隔秒数)
  {
   bool 检测=false;
   static ulong  初时间5=TimeCurrent();
   ulong 时时间=(ulong)TimeCurrent();
   if(时时间>初时间5+间隔秒数)
     {
      检测=true;
      初时间5=(ulong)(时时间);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool    交易类::单位时间2(double 间隔秒数)
  {
   bool 检测=false;
   static ulong  初时间6=TimeCurrent();
   ulong 时时间=(ulong)TimeCurrent();
   if(时时间>初时间6+间隔秒数)
     {
      检测=true;
      初时间6=(ulong)(时时间);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool    交易类::单位时间3(double 间隔秒数)
  {
   bool 检测=false;
   static ulong  初时间7=TimeCurrent();
   ulong 时时间=(ulong)TimeCurrent();
   if(时时间>初时间7+间隔秒数)
     {
      检测=true;
      初时间7=(ulong)(时时间);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool    交易类::单位时间4(double 间隔秒数)
  {
   bool 检测=false;
   static ulong  初时间8=TimeCurrent();
   ulong 时时间=(ulong)TimeCurrent();
   if(时时间>初时间8+间隔秒数)
     {
      检测=true;
      初时间8=(ulong)(时时间);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 交易类::小数点(string 币种)
  {
   int digits=(int)SymbolInfoInteger(币种,SYMBOL_DIGITS);
   return digits;
  }
//+------------------------------------------------------------------+
void    交易类::pfun(string 错误信息)
  {
   Print(错误信息, __FUNCTION__,GetLastError());
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
template<typename x>
bool 交易类::字符串拆分含参检测(string 字符串,x 对比的参数,string 分隔符=",")
  {
   bool 检测=false;
   if(字符串!="")
     {
      string 要检测的数组[];
      分隔号拆分字符串(字符串,分隔符,要检测的数组);
      for(int i=0; i<ArraySize(要检测的数组); i++)
        {
         if(对比的参数==(x)要检测的数组[i])
           {
            检测=true;
            break;
           }
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool  交易类::订单注释含订单号检测(int  传入订单号)
  {
   bool 检测=false;
   if(传入订单号>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0&&(OrderMagicNumber()==传入订单号||OrderComment()==前缀+(string)传入订单号||StringFind(OrderComment(),(string)传入订单号)!=-1))
              {
               检测=true;
               break;
              }
           }
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong  交易类::订单注释含订单号返回integer属性值(int  传入订单号,int 选择)
  {
   ulong 返回值=0;
   if(传入订单号>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0&&OrderComment()==前缀+(string)传入订单号)
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
double  交易类::订单注释含订单号返回double属性值(int  传入订单号,int 选择)
  {
   double 返回值=0;
   if(传入订单号>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0&&OrderComment()==前缀+(string)传入订单号)
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
string  交易类::订单注释含订单号返回string属性值(int  传入订单号,int 选择)
  {
   string 返回值="";
   if(传入订单号>0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0&&OrderComment()==前缀+(string)传入订单号)
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
ulong 交易类::跨平台服务器时间转换(ulong 传入服务器时间,ulong 历史服务器时间)
  {
   ulong 传出服务器时间=0;
   if(传入服务器时间>0&&历史服务器时间>0)
     {
      传出服务器时间=历史服务器时间+TimeCurrent()-传入服务器时间;
      if(传出服务器时间<0)
         传出服务器时间=0;
     }
   return 传出服务器时间;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool  交易类::历史订单注释含订单号检测(int  传入订单号,ulong 开始时间,ulong 截止时间=0)
  {
   bool 检测=false;
   if(传入订单号>0)
     {
      if(截止时间==0)
         截止时间=TimeCurrent();
      if(截止时间==1)
         截止时间=TimeLocal();
      if(截止时间==2)
         截止时间=TimeGMT();
      for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&持仓类型())
           {
            if(OrderTicket()>0&&(ulong)OrderCloseTime()>=开始时间&&(ulong)OrderCloseTime()<=截止时间&&(OrderMagicNumber()==传入订单号||OrderComment()==前缀+(string)传入订单号||StringFind(OrderComment(),(string)传入订单号)!=-1))
              {
               检测=true;
               break;
              }
           }
        }
     }
   return 检测;
  }
//+------------------------------------------------------------------+
long  交易类::历史订单注释含订单号返回关闭时间(int  传入订单号,ulong 开始时间,ulong 截止时间=0)
  {
   long 时间=0;
   if(传入订单号>0)
     {
      if(截止时间==0)
         截止时间=TimeCurrent();
      if(截止时间==1)
         截止时间=TimeLocal();
      if(截止时间==2)
         截止时间=TimeGMT();
      for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&持仓类型())
           {
            if(OrderTicket()>0&&(ulong)OrderCloseTime()>=开始时间&&(ulong)OrderCloseTime()<=截止时间&&(OrderMagicNumber()==传入订单号||OrderComment()==前缀+(string)传入订单号||StringFind(OrderComment(),(string)传入订单号)!=-1))
              {
               时间=OrderCloseTime();
               break;
              }
           }
        }
     }
   return 时间;
  }
//+------------------------------------------------------------------+
bool  交易类::历史订单ID含订单号检测(string  注释,ulong 开始时间,ulong 截止时间=0)
  {
   bool 检测=false;
   if(截止时间==0)
      截止时间=TimeCurrent();
   if(截止时间==1)
      截止时间=TimeLocal();
   if(截止时间==2)
      截止时间=TimeGMT();
   if(注释!="")
      for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&持仓类型())
           {
            if(OrderTicket()>0&&(ulong)OrderCloseTime()>=开始时间&&(ulong)OrderCloseTime()<=截止时间&&StringFind(注释,(string)OrderTicket())!=-1)
              {
               检测=true;
               break;
              }
           }
        }
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::买误差点值(string 币种,double 传入价格,double 设置差点值=0)
  {
   bool 检测=false;
   if(传入价格>0)
      检测=买价(币种)<传入价格+设置差点值*点值(币种);
   if(设置差点值==0)
      检测=true;
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::卖误差点值(string 币种,double 传入价格,double 设置差点值=0)
  {
   bool 检测=false;
   if(传入价格>0)
      检测=卖价(币种)>传入价格-设置差点值*点值(币种);
   if(设置差点值==0)
      检测=true;
   return 检测;
  }

//+------------------------------------------------------------------+
bool 交易类::在设置时差内(ulong 输入时间,ulong 参考时间,ulong 设置误差秒数=-1)
  {
   bool 检测=false;
   if(参考时间==0)
      参考时间=TimeCurrent();
   if(参考时间==1)
      参考时间=TimeLocal();
   if(参考时间==2)
      参考时间=TimeGMT();
   if(输入时间>0)
      检测=(ulong)参考时间-输入时间<设置误差秒数;
   if(设置误差秒数==-1)
      检测=true;
   return 检测;
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
string 交易类::币种修正(string 传入币种,bool 窗口选择=false)
  {
   string 修币种=传入币种;
   if(传入币种!="")
     {
      for(int i=0; i<SymbolsTotal(窗口选择); i++)
         if(StringSubstr(SymbolName(i,窗口选择),0,6)==StringSubstr(传入币种,0,6))
           {
            修币种=SymbolName(i,窗口选择);
            break;
           }
     }
   return 修币种;
  }
//-------
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string 交易类:: 特殊币种修正(string 传入币种,string 输入币种字符组,string 输出币种字符组)
  {
   string 传出币种=传入币种;
   if(输入币种字符组!=""&&输出币种字符组!="")
     {
      string 传入组[],传出组[];
      分隔号拆分字符串(输入币种字符组,",",传入组);
      分隔号拆分字符串(输出币种字符组,",",传出组);
      for(int i=0; i<ArraySize(传入组); i++)
        {
         if(传入币种==传入组[i])
           {
            传出币种=传出组[i];
            break;
           }
        }
     }
   return  传出币种;
  }
//+------------------------------------------------------------------+
string 交易类:: 特殊比例手数修正(string 传入币种,string 输入币种字符组,string 传入比例,string 输出比例手数组)
  {
   string 传出比例=传入比例;
   if(输入币种字符组!=""&&输出比例手数组!="")
     {
      string 传入组[],传出组[];
      分隔号拆分字符串(输入币种字符组,",",传入组);
      分隔号拆分字符串(输出比例手数组,",",传出组);
      for(int i=0; i<ArraySize(传入组); i++)
        {
         if(传入币种==传入组[i])
           {
            传出比例=传出组[i];
            break;
           }
        }
     }
   return  传出比例;
  }
//+------------------------------------------------------------------+
bool  交易类::字符串包含(string 检测字符串,string 包含的字符串,int 开始位置=0)
  {
   bool 检测=false;
   if(包含的字符串!="")
     {
      string 包含组[];
      分隔号拆分字符串(包含的字符串,",",包含组);
      for(int i=0; i<ArraySize(包含组); i++)
         if(StringFind(检测字符串,包含组[i],开始位置)==-1)
            检测=false;
         else
           {
            检测=true;
            break;
           }
     }
   if(包含的字符串=="")
      检测=true;
   return 检测;
  }
//+------------------------------------------------------------------+
bool 交易类::币种标识符检测(string 币种,bool 窗口选择)
  {
   bool  m=false;
   for(int i=0; i<SymbolsTotal(窗口选择); i++)
     {
      if(SymbolName(i,窗口选择)==币种)
        {
         m=true;
         break;
        }
     }
   return m;
  }
//+------------------------------------------------------
//+------------------------------------------------------------------+
string  交易类::持仓含有币种修正(string 传入币种,int magic,string 传入注释)
  {
   string 币种=传入币种;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==传入币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+传入注释)
              {
               币种=OrderSymbol();
               break;
              }
           }
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(StringSubstr(OrderSymbol(),0,6)==StringSubstr(传入币种,0,6)&&OrderMagicNumber()==magic&&OrderComment()==前缀+传入注释)
              {
               币种=OrderSymbol();
               break;
              }
           }
        }
     }
   return 币种;
  }
//+------------------------------------------------------------------+
double  交易类::返回持单手数(string 传入币种,int magic,string 传入注释)
  {
   double 持单手数=0;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==传入币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+传入注释)
              {
               持单手数=OrderLots();
               break;
              }
           }
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(StringSubstr(OrderSymbol(),0,6)==StringSubstr(传入币种,0,6)&&OrderMagicNumber()==magic&&OrderComment()==前缀+传入注释)
              {
               持单手数=OrderLots();
               break;
              }
           }
        }
     }
   return 持单手数;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  交易类::指定条件closeby(string 币种,int Magic,string 注释)
  {
   int EXPERT_MAGIC=魔术幻数(Magic);
   int total=OrdersTotal(); // 持仓数
   for(int i=total-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         int  position_ticket=OrderTicket();
         string position_symbol=OrderSymbol();
         ulong  magic=OrderMagicNumber();
         int   type=OrderType();  // 持仓类型
         if(position_symbol==币种&&magic==EXPERT_MAGIC&&OrderComment()==注释)
           {
            for(int j=0; j<i; j++)
              {
               if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
                 {
                  string symbol=OrderSymbol();   ; // 反向持仓交易品种
                  if(symbol==position_symbol&&symbol==币种&&OrderMagicNumber()==EXPERT_MAGIC&&OrderComment()==注释)
                    {
                     int type_by=OrderType();
                     if(type==type_by)
                        continue;
                     bool result= OrderCloseBy(OrderTicket(),position_ticket,clrNONE);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  交易类::指定条件closeby(string 币种,int Magic)
  {
   int EXPERT_MAGIC=魔术幻数(Magic);
   int total=OrdersTotal(); // 持仓数
   for(int i=total-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         int  position_ticket=OrderTicket();
         string position_symbol=OrderSymbol();
         ulong  magic=OrderMagicNumber();
         int   type=OrderType();  // 持仓类型
         if(position_symbol==币种&&magic==EXPERT_MAGIC)
           {
            for(int j=0; j<i; j++)
              {
               if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
                 {
                  string symbol=OrderSymbol();   ; // 反向持仓交易品种
                  if(symbol==position_symbol&&symbol==币种&&OrderMagicNumber()==EXPERT_MAGIC)
                    {
                     int type_by=OrderType();
                     if(type==type_by)
                        continue;
                     bool result= OrderCloseBy(OrderTicket(),position_ticket,clrNONE);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  交易类::指定条件closeby(string 币种,string 注释)
  {
   int total=OrdersTotal(); // 持仓数
   for(int i=total-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         int  position_ticket=OrderTicket();
         string position_symbol=OrderSymbol();
         ulong  magic=OrderMagicNumber();
         int   type=OrderType();  // 持仓类型
         if(position_symbol==币种&&OrderComment()==注释)
           {
            for(int j=0; j<i; j++)
              {
               if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
                 {
                  string symbol=OrderSymbol();   ; // 反向持仓交易品种
                  if(symbol==position_symbol&&symbol==币种&&OrderComment()==注释)
                    {
                     int type_by=OrderType();
                     if(type==type_by)
                        continue;
                     bool result= OrderCloseBy(OrderTicket(),position_ticket,clrNONE);
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  交易类::指定条件closeby(int Magic)
  {
   int EXPERT_MAGIC=魔术幻数(Magic);
   int total=OrdersTotal(); // 持仓数
   for(int i=total-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         int  position_ticket=OrderTicket();
         string position_symbol=OrderSymbol();
         ulong  magic=OrderMagicNumber();
         int   type=OrderType();  // 持仓类型
         if(magic==EXPERT_MAGIC)
           {
            for(int j=0; j<i; j++)
              {
               if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
                 {
                  string symbol=OrderSymbol();   ; // 反向持仓交易品种
                  if(symbol==position_symbol&&OrderMagicNumber()==EXPERT_MAGIC)
                    {
                     int type_by=OrderType();
                     if(type==type_by)
                        continue;
                     bool result= OrderCloseBy(OrderTicket(),position_ticket,clrNONE);
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
void  交易类::closeby(string 币种,int Magic,string 注释)
  {
   int EXPERT_MAGIC=魔术幻数(Magic);
   int total=OrdersTotal(); // 持仓数
   for(int i=total-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         int  position_ticket=OrderTicket();
         string position_symbol=OrderSymbol();
         ulong  magic=OrderMagicNumber();
         int   type=OrderType();  // 持仓类型
         for(int j=0; j<i; j++)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               string symbol=OrderSymbol();   ; // 反向持仓交易品种
               if(symbol==position_symbol&&symbol==币种&&OrderMagicNumber()==EXPERT_MAGIC&&OrderComment()==注释)
                 {
                  int type_by=OrderType();
                  if(type==type_by)
                     continue;
                  bool result= OrderCloseBy(OrderTicket(),position_ticket,clrNONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  交易类::closeby(string 币种,int Magic)
  {
   int EXPERT_MAGIC=魔术幻数(Magic);
   int total=OrdersTotal(); // 持仓数
   for(int i=total-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         int  position_ticket=OrderTicket();
         string position_symbol=OrderSymbol();
         ulong  magic=OrderMagicNumber();
         int   type=OrderType();  // 持仓类型
         for(int j=0; j<i; j++)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               string symbol=OrderSymbol();   ; // 反向持仓交易品种
               if(symbol==position_symbol&&symbol==币种&&OrderMagicNumber()==EXPERT_MAGIC)
                 {
                  int type_by=OrderType();
                  if(type==type_by)
                     continue;
                  bool result= OrderCloseBy(OrderTicket(),position_ticket,clrNONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  交易类::closeby(string 币种,string 注释)
  {
   int total=OrdersTotal(); // 持仓数
   for(int i=total-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         int  position_ticket=OrderTicket();
         string position_symbol=OrderSymbol();
         ulong  magic=OrderMagicNumber();
         int   type=OrderType();  // 持仓类型
         for(int j=0; j<i; j++)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               string symbol=OrderSymbol();   ; // 反向持仓交易品种
               if(symbol==position_symbol&&symbol==币种&&OrderComment()==注释)
                 {
                  int type_by=OrderType();
                  if(type==type_by)
                     continue;
                  bool result= OrderCloseBy(OrderTicket(),position_ticket,clrNONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  交易类::closeby(int Magic)
  {
   int EXPERT_MAGIC=魔术幻数(Magic);
   int total=OrdersTotal(); // 持仓数
   for(int i=total-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         int  position_ticket=OrderTicket();
         string position_symbol=OrderSymbol();
         ulong  magic=OrderMagicNumber();
         int   type=OrderType();  // 持仓类型
         for(int j=0; j<i; j++)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               string symbol=OrderSymbol();   ; // 反向持仓交易品种
               if(symbol==position_symbol&&OrderMagicNumber()==EXPERT_MAGIC)
                 {
                  int type_by=OrderType();
                  if(type==type_by)
                     continue;
                  bool result= OrderCloseBy(OrderTicket(),position_ticket,clrNONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  交易类::closeby()
  {
   int total=OrdersTotal(); // 持仓数
   for(int i=total-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         int  position_ticket=OrderTicket();
         string position_symbol=OrderSymbol();
         ulong  magic=OrderMagicNumber();
         int   type=OrderType();  // 持仓类型
         for(int j=0; j<i; j++)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               string symbol=OrderSymbol();   ; // 反向持仓交易品种
               if(symbol==position_symbol)
                 {
                  int type_by=OrderType();
                  if(type==type_by)
                     continue;
                  bool result= OrderCloseBy(OrderTicket(),position_ticket,clrNONE);
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 交易类::订单号不存在检测(ulong 要检订单号,ulong &待检数组[])
  {
   bool 检测=true;
   for(int i=ArraySize(待检数组)-1; i>=0; i--)
      if(待检数组[i]==要检订单号)
        {
         检测=false;
         break;
        }
   return 检测;
  }
//--
//+------------------------------------------------------------------+
void 交易类::升序带单(int 设置几单,int 带几单,double 带单金额)
  {
   int t=OrdersTotal();
   if(设置几单>0&&带几单>0&&t>=设置几单+带几单)
     {
      double a[][2];
      ArrayResize(a,t);
      for(int i=0; i<t; i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               a[i][0]=OrderProfit();
               a[i][1]=(double)OrderTicket();
              }
           }
        }
      ArraySort(a);//--升序数组
      double 带单总盈亏=0;
      double  单号组[];
      ArrayResize(单号组,设置几单+带几单);
      if(t>=设置几单+带几单)
        {
         for(int i=0; i<带几单; i++)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  带单总盈亏=带单总盈亏+a[i][0];
                  单号组[i]=a[i][1];
                 }
              }
           }
         for(int i=0; i<设置几单; i++)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  带单总盈亏=带单总盈亏+a[t-1-i][0];
                  单号组[i+带几单]=a[t-1-i][1];
                 }
              }
           }
         //----
         if(带单总盈亏>带单金额)
           {
            for(int i=0; i<(设置几单+带几单); i++)
               订单号平单((int)单号组[i],false);
           }
        }
     }
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//+------------------------------------------------------------------
double  交易类::历史订单注释含订单号出场总手数(int  传入订单号,ulong 开始时间,ulong 截止时间=0)
  {
   double 总手数=0;
   if(传入订单号>0)
     {
      if(截止时间==0)
         截止时间=TimeCurrent();
      if(截止时间==1)
         截止时间=TimeLocal();
      if(截止时间==2)
         截止时间=TimeGMT();
      for(int i=OrdersHistoryTotal()-1; i>=0;  i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)&&持仓类型())
           {
            if(OrderTicket()>0&&(ulong)OrderCloseTime()>=开始时间&&(ulong)OrderCloseTime()<=截止时间&&OrderComment()==前缀+(string)传入订单号)
               总手数+=OrderLots();
           }
        }
     }
   return 总手数;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+---------------------
void 交易类::极值穿越开盘价平多(string 币种,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 壹上贰下,int 开高低收,int 序号=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               bool 穿越=K线极值穿越某值(币种,图表周期,壹上贰下,开高低收,序号,OrderOpenPrice(),OrderOpenPrice());//---1向上2 向下穿越
               if(OrderType()==OP_BUY&&穿越)
                  result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);

              }
           }
        }
     }
  }
//+----------------------------
//+---------------------
void 交易类::极值穿越开盘价平空(string 币种,int magic,string 注释,ENUM_TIMEFRAMES 图表周期,int 壹上贰下,int 开高低收,int 序号=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {

               bool 穿越=K线极值穿越某值(币种,图表周期,壹上贰下,开高低收,序号,OrderOpenPrice(),OrderOpenPrice());//---1向上2 向下穿越

               if(OrderType()==OP_SELL&&穿越)
                  result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
              }
           }
        }
     }
  }
//+----------------------------
//+------------------------------------------------------------------+
//+---------------------
void 交易类::极值穿越开盘价平多(string 币种,int magic,ENUM_TIMEFRAMES 图表周期,int 壹上贰下,int 开高低收,int 序号=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               bool 穿越=K线极值穿越某值(币种,图表周期,壹上贰下,开高低收,序号,OrderOpenPrice(),OrderOpenPrice());//---1向上2 向下穿越
               if(OrderType()==OP_BUY&&穿越)
                  result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),滑点,Yellow);

              }
           }
        }
     }
  }
//+----------------------------
//+---------------------
void 交易类::极值穿越开盘价平空(string 币种,int magic,ENUM_TIMEFRAMES 图表周期,int 壹上贰下,int 开高低收,int 序号=0)
  {
   bool result=false;
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
              {
               bool 穿越=K线极值穿越某值(币种,图表周期,壹上贰下,开高低收,序号,OrderOpenPrice(),OrderOpenPrice());//---1向上2 向下穿越

               if(OrderType()==OP_SELL&&穿越)
                  result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),滑点,Red);
              }
           }
        }
     }
  }
//+----------------------------
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
void 交易类::平N时间前单(string 币种,int magic,string 注释,long 时间)
  {
   bool result=false;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(i==1)
         break;
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(Symbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderOpenTime()<TimeCurrent()-时间)
                 {
                  switch(OrderType())
                    {
                     case OP_BUY:
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),20,Yellow);
                        break;
                     case OP_SELL:
                        result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),20,Red);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::平N时间前单(string 币种,int magic,long 时间)
  {
   bool result=false;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(i==1)
         break;
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(Symbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderOpenTime()<TimeCurrent()-时间)
                 {
                  switch(OrderType())
                    {
                     case OP_BUY:
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),20,Yellow);
                        break;
                     case OP_SELL:
                        result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),20,Red);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::平N时间前单(int magic,long 时间)
  {
   bool result=false;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(i==1)
         break;
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               string 币种=Symbol();
               if(OrderOpenTime()<TimeCurrent()-时间)
                 {
                  switch(OrderType())
                    {
                     case OP_BUY:
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),20,Yellow);
                        break;
                     case OP_SELL:
                        result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),20,Red);
                        break;
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
void 交易类::平N时间前多单(string 币种,int magic,string 注释,long 时间)
  {
   bool result=false;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(i==1)
         break;
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(Symbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderOpenTime()<TimeCurrent()-时间)
                 {
                  switch(OrderType())
                    {
                     case OP_BUY:
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),20,Yellow);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::平N时间前多单(string 币种,int magic,long 时间)
  {
   bool result=false;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(i==1)
         break;
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(Symbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderOpenTime()<TimeCurrent()-时间)
                 {
                  switch(OrderType())
                    {
                     case OP_BUY:
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),20,Yellow);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::平N时间前多单(int magic,long 时间)
  {
   bool result=false;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(i==1)
         break;
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               string 币种=Symbol();
               if(OrderOpenTime()<TimeCurrent()-时间)
                 {
                  switch(OrderType())
                    {
                     case OP_BUY:
                        result=OrderClose(OrderTicket(),OrderLots(),卖价(OrderSymbol()),20,Yellow);
                        break;
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
void 交易类::平N时间前空单(string 币种,int magic,string 注释,long 时间)
  {
   bool result=false;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(i==1)
         break;
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(Symbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
              {
               if(OrderOpenTime()<TimeCurrent()-时间)
                 {
                  switch(OrderType())
                    {
                     case OP_SELL:
                        result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),20,Red);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
void 交易类::平N时间前空单(string 币种,int magic,long 时间)
  {
   bool result=false;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(i==1)
         break;
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(Symbol()==币种&&OrderMagicNumber()==magic)
              {
               if(OrderOpenTime()<TimeCurrent()-时间)
                 {
                  switch(OrderType())
                    {
                     case OP_SELL:
                        result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),20,Red);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::平N时间前空单(int magic,long 时间)
  {
   bool result=false;
   for(int i=0; i<OrdersTotal(); i++)
     {
      if(i==1)
         break;
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic=魔术幻数(magic);
            if(OrderMagicNumber()==magic)
              {
               string 币种=Symbol();
               if(OrderOpenTime()<TimeCurrent()-时间)
                 {
                  switch(OrderType())
                    {
                     case OP_SELL:
                        result=OrderClose(OrderTicket(),OrderLots(),买价(OrderSymbol()),20,Red);
                        break;
                    }
                 }
              }
           }
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
ulong 交易类::CtoL(ulong 传入服务器时间,int 壹服贰电=0)
  {
   ulong 输出时间=传入服务器时间;
   if(壹服贰电==1)
      输出时间=传入服务器时间;
   if(壹服贰电==2)
      输出时间=传入服务器时间+(TimeLocal()-TimeCurrent());
   return 输出时间;
  }
//+------------------------------------------------------------------+
ulong 交易类::LtoC(ulong 传入电脑时间,int 壹服贰电=0)
  {
   ulong 输出时间=传入电脑时间;
   if(壹服贰电==1)
      输出时间=传入电脑时间;
   if(壹服贰电==2)
      输出时间=传入电脑时间+(TimeCurrent()-TimeLocal());
   return 输出时间;
  }
//+------------------------------------------------------------------+
ulong 交易类::StoCL(string 传入转换时间,int 壹服贰电=0)
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
int 交易类::偏移小时()
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
double 交易类::NormalizeVolume(string symbol,double lot)
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
void 交易类::模拟授权()
  {
   if(返回账户类型()!="模拟")
     {
      Alert("跟单账号非法： 此版本仅可用于模拟账号！！！");
      ExpertRemove();
     }
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 交易类::升序带单(string 币种,int magic,int 设置几单,int 带几单,double 带单金额)
  {
   int t=持仓单数统计(币种,magic);
   if(设置几单>0&&带几单>0&&t>=设置几单+带几单)
     {
      double a[][2];
      ArrayResize(a,t);
      for(int i=0; i<t; i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  a[i][0]=OrderProfit();
                  a[i][1]=(double)OrderTicket();
                 }
              }
           }
        }
      ArraySort(a);//--升序数组
      double 带单总盈亏=0;
      double  单号组[];
      ArrayResize(单号组,设置几单+带几单);
      if(t>=设置几单+带几单)
        {
         for(int i=0; i<带几单; i++)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  magic=魔术幻数(magic);
                  if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                    {
                     带单总盈亏=带单总盈亏+a[i][0];
                     单号组[i]=a[i][1];
                    }
                 }
              }
           }
         for(int i=0; i<设置几单; i++)
           {
            if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
              {
               if(OrderTicket()>0)
                 {
                  magic=魔术幻数(magic);
                  if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                    {
                     带单总盈亏=带单总盈亏+a[t-1-i][0];
                     单号组[i+带几单]=a[t-1-i][1];
                    }
                 }
              }
           }
         //----
         if(带单总盈亏>带单金额)
           {
            for(int i=0; i<(设置几单+带几单); i++)
               订单号平单((int)单号组[i],false);
           }
        }
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
bool 交易类::更新价格(double ref_price,double &price,double point_price,int oup_tdown=1)
  {
   bool check=false;
   if(price>0&&ref_price>0&&oup_tdown==1 && ref_price > price + point_price)
     {
      price = ref_price;
      check=true;
     }
   if(price>0&&ref_price>0&&oup_tdown==2 && ref_price < price - point_price)
     {
      price = ref_price;
      check=true;
     }
   return check;
  }
//+------------------------------------------------------------------+
double 交易类::多盈亏返回价格(string 币种,int magic,string 注释,double long_profit)
  {
   double long_sl_price=0;
   int long_orders = 持仓单数统计(币种,magic,注释,OP_BUY);
   if(long_orders > 0)
     {
      double long_price_mean = 持仓均价(币种,magic,注释,OP_BUY);
      double long_lots = 持仓仓位统计(币种,magic,注释,OP_BUY);
      if(long_lots>0)
         long_sl_price = long_profit * 点值(币种)/long_lots + long_price_mean;
     }
   return long_sl_price;
  }
//+------------------------------------------------------------------+
double 交易类::空盈亏返回价格(string 币种,int magic,string 注释,double short_profit)
  {
   double short_sl_price =0;
   int short_orders = 持仓单数统计(币种,magic,注释,OP_SELL);
   if(short_orders > 0)
     {
      double short_price_mean = 持仓均价(币种,magic,注释,OP_SELL);
      double short_lots = 持仓仓位统计(币种,magic,注释,OP_SELL);
      if(short_lots>0)
         short_sl_price =  short_price_mean - short_profit * 点值(币种)/short_lots;
     }
   return short_sl_price;
  }
//+------------------------------------------------------------------+
double 交易类::多盈亏返回价格(string 币种,int magic,double long_profit)
  {
   double long_sl_price=0;
   int long_orders = 持仓单数统计(币种,magic,OP_BUY);
   if(long_orders > 0)
     {
      double long_price_mean = 持仓均价(币种,magic,OP_BUY);
      double long_lots = 持仓仓位统计(币种,magic,OP_BUY);
      if(long_lots>0)
         long_sl_price = long_profit * 点值(币种)/long_lots + long_price_mean;
     }
   return long_sl_price;
  }
//+------------------------------------------------------------------+
double 交易类::空盈亏返回价格(string 币种,int magic,double short_profit)
  {
   double short_sl_price =0;
   int short_orders = 持仓单数统计(币种,magic,OP_SELL);
   if(short_orders > 0)
     {
      double short_price_mean = 持仓均价(币种,magic,OP_SELL);
      double short_lots = 持仓仓位统计(币种,magic,OP_SELL);
      if(short_lots>0)
         short_sl_price =  short_price_mean - short_profit * 点值(币种)/short_lots;
     }
   return short_sl_price;
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void  交易类::对冲手数带单(string symbol,int magic,int magic2,double profit_start=100,double profit_end=1,int choose=0)
  {
   int t=持仓单数统计(symbol,magic2);
   double a[][2];
   ArrayResize(a,t);
   for(int i=0; i<t; i++)
     {
      if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
        {
         if(OrderTicket()>0)
           {
            magic2=魔术幻数(magic2);
            if(OrderSymbol()==symbol&&OrderMagicNumber()==magic2)
              {
               if(choose==0)
                  a[i][0]=OrderTicket();
               if(choose==1)
                  a[i][0]=OrderLots();
               if(choose==2)
                  a[i][0]=OrderProfit();
               a[i][1]=(double)OrderTicket();
              }
           }
        }
     }
   ArraySort(a);//--升序数组
   double long_profit = 持仓盈亏统计(symbol,magic,OP_BUY);//统计反向多盈亏
   double short_profit = 持仓盈亏统计(symbol,magic,OP_SELL);//统计反向空盈亏
   if(long_profit > profit_start)//启动条件
     {
      平多(symbol,magic,false);
      double long_profits = 0;//反向总盈利统计
      for(int i =0; i<ArraySize(a); i++)
        {
         long_profits += 订单号返回属性值((int)a[i][1],6)+订单号返回属性值((int)a[i][1],7);
         if(long_profits + long_profit < profit_end)
            break;
         订单号平单((int)a[i][1]);

        }
     }
//---
   if(short_profit > profit_start)
     {
      平空(symbol,magic,false);
      double long_profits = 0;//反向总盈利统计
      for(int i =0; i<ArraySize(a); i++)
        {
         long_profits += 订单号返回属性值((int)a[i][1],6)+订单号返回属性值((int)a[i][1],7);
         if(long_profits + short_profit < profit_end)//小于设定退出循环平单
            break;
         订单号平单((int)a[i][1]);
        }
     }
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
bool 交易类:: 时间账号check(long account_number,datetime time)
  {
   if(AccountInfoInteger(ACCOUNT_LOGIN)!=account_number||TimeCurrent()>time)
      return true;
   return false;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    正止损点追踪止损(string 币种,int magic,string 注释,double 追踪点数,double 间隔点数,int 零壹多贰空=0,int 前几单追踪=0)
  {
   if(追踪点数>0&&间隔点数>0&&间隔点数<追踪点数)
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               币种=设置币种(币种);
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  计数++;
                  if(前几单追踪>0&&计数>前几单追踪)
                     break;
                  追踪点数=停损(币种,追踪点数);

                  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(多持仓盈利点数>持仓止损点数+追踪点数)
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+(持仓止损点数+追踪点数-间隔点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(空持仓盈利点数>持仓止损点数+追踪点数)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-(持仓止损点数+追踪点数-间隔点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    正止损点追踪止损(string 币种,int magic,double 追踪点数,double 间隔点数,int 零壹多贰空=0,int 前几单追踪=0)
  {
   if(追踪点数>0&&间隔点数>0&&间隔点数<追踪点数)
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               币种=设置币种(币种);
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  计数++;
                  if(前几单追踪>0&&计数>前几单追踪)
                     break;
                  追踪点数=停损(币种,追踪点数);

                  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(多持仓盈利点数>持仓止损点数+追踪点数)
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+(持仓止损点数+追踪点数-间隔点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(空持仓盈利点数>持仓止损点数+追踪点数)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-(持仓止损点数+追踪点数-间隔点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    正止损点追踪止多(string 币种,int magic,string 注释,double 追踪点数,double 间隔点数,int 前几单追踪=0)
  {
   if(追踪点数>0&&间隔点数>0&&间隔点数<追踪点数)
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               币种=设置币种(币种);
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  计数++;
                  if(前几单追踪>0&&计数>前几单追踪)
                     break;
                  追踪点数=停损(币种,追踪点数);

                  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  //  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if(多单检测()&&止损大于开盘价())
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_BUY)
                    {
                     if(多持仓盈利点数>持仓止损点数+追踪点数)
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+(持仓止损点数+追踪点数-间隔点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    正止损点追踪止多(string 币种,int magic,double 追踪点数,double 间隔点数,int 前几单追踪=0)
  {
   if(追踪点数>0&&间隔点数>0&&间隔点数<追踪点数)
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               币种=设置币种(币种);
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  计数++;
                  if(前几单追踪>0&&计数>前几单追踪)
                     break;
                  追踪点数=停损(币种,追踪点数);

                  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  //  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if(多单检测()&&止损大于开盘价())
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_BUY)
                    {
                     if(多持仓盈利点数>持仓止损点数+追踪点数)
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+(持仓止损点数+追踪点数-间隔点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    正止损点追踪止空(string 币种,int magic,string 注释,double 追踪点数,double 间隔点数,int 前几单追踪=0)
  {
   if(追踪点数>0&&间隔点数>0&&间隔点数<追踪点数)
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               币种=设置币种(币种);
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  计数++;
                  if(前几单追踪>0&&计数>前几单追踪)
                     break;
                  追踪点数=停损(币种,追踪点数);

                  //   double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if(空单检测()&&止损小于开盘价())
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_SELL)
                    {
                     if(空持仓盈利点数>持仓止损点数+追踪点数)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-(持仓止损点数+追踪点数-间隔点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    正止损点追踪止空(string 币种,int magic,double 追踪点数,double 间隔点数,int 前几单追踪=0)
  {
   if(追踪点数>0&&间隔点数>0&&间隔点数<追踪点数)
     {
      int 计数=0;
      for(int i=0; i<OrdersTotal();  i++)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               币种=设置币种(币种);
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  计数++;
                  if(前几单追踪>0&&计数>前几单追踪)
                     break;
                  追踪点数=停损(币种,追踪点数);
                  //  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_SELL)
                    {
                     if(空持仓盈利点数>持仓止损点数+追踪点数)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-(持仓止损点数+追踪点数-间隔点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
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
void     交易类::    倒止损点追踪止损(string 币种,int magic,string 注释,double 追踪点数,double 间隔点数,int 零壹多贰空=0,int 前几单追踪=0)
  {
   if(追踪点数>0&&间隔点数>0&&间隔点数<追踪点数)
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               币种=设置币种(币种);
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  计数++;
                  if(前几单追踪>0&&计数>前几单追踪)
                     break;
                  追踪点数=停损(币种,追踪点数);

                  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(多持仓盈利点数>持仓止损点数+追踪点数)
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+(持仓止损点数+追踪点数-间隔点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(空持仓盈利点数>持仓止损点数+追踪点数)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-(持仓止损点数+追踪点数-间隔点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    倒止损点追踪止损(string 币种,int magic,double 追踪点数,double 间隔点数,int 零壹多贰空=0,int 前几单追踪=0)
  {
   if(追踪点数>0&&间隔点数>0&&间隔点数<追踪点数)
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               币种=设置币种(币种);
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  计数++;
                  if(前几单追踪>0&&计数>前几单追踪)
                     break;
                  追踪点数=停损(币种,追踪点数);

                  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((多单检测()&&止损大于开盘价())||(空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_BUY&&(零壹多贰空==0||零壹多贰空==1))
                    {
                     if(多持仓盈利点数>持仓止损点数+追踪点数)
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+(持仓止损点数+追踪点数-间隔点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                  if(OrderType()==OP_SELL&&(零壹多贰空==0||零壹多贰空==2))
                    {
                     if(空持仓盈利点数>持仓止损点数+追踪点数)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-(持仓止损点数+追踪点数-间隔点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    倒止损点追踪止多(string 币种,int magic,string 注释,double 追踪点数,double 间隔点数,int 前几单追踪=0)
  {
   if(追踪点数>0&&间隔点数>0&&间隔点数<追踪点数)
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               币种=设置币种(币种);
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  计数++;
                  if(前几单追踪>0&&计数>前几单追踪)
                     break;
                  追踪点数=停损(币种,追踪点数);

                  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  //  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if(多单检测()&&止损大于开盘价())
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_BUY)
                    {
                     if(多持仓盈利点数>持仓止损点数+追踪点数)
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+(持仓止损点数+追踪点数-间隔点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    倒止损点追踪止多(string 币种,int magic,double 追踪点数,double 间隔点数,int 前几单追踪=0)
  {
   if(追踪点数>0&&间隔点数>0&&间隔点数<追踪点数)
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               币种=设置币种(币种);
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  计数++;
                  if(前几单追踪>0&&计数>前几单追踪)
                     break;
                  追踪点数=停损(币种,追踪点数);

                  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  //  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if(多单检测()&&止损大于开盘价())
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_BUY)
                    {
                     if(多持仓盈利点数>持仓止损点数+追踪点数)
                        bool resl=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()+(持仓止损点数+追踪点数-间隔点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    倒止损点追踪止空(string 币种,int magic,string 注释,double 追踪点数,double 间隔点数,int 前几单追踪=0)
  {
   if(追踪点数>0&&间隔点数>0&&间隔点数<追踪点数)
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               币种=设置币种(币种);
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic&&OrderComment()==前缀+注释)
                 {
                  计数++;
                  if(前几单追踪>0&&计数>前几单追踪)
                     break;
                  追踪点数=停损(币种,追踪点数);

                  //   double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if(空单检测()&&止损小于开盘价())
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_SELL)
                    {
                     if(空持仓盈利点数>持仓止损点数+追踪点数)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-(持仓止损点数+追踪点数-间隔点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void     交易类::    倒止损点追踪止空(string 币种,int magic,double 追踪点数,double 间隔点数,int 前几单追踪=0)
  {
   if(追踪点数>0&&间隔点数>0&&间隔点数<追踪点数)
     {
      int 计数=0;
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         if(OrderSelect(i,SELECT_BY_POS)&&持仓类型())
           {
            if(OrderTicket()>0)
              {
               币种=设置币种(币种);
               magic=魔术幻数(magic);
               if(OrderSymbol()==币种&&OrderMagicNumber()==magic)
                 {
                  计数++;
                  if(前几单追踪>0&&计数>前几单追踪)
                     break;
                  追踪点数=停损(币种,追踪点数);
                  //  double 多持仓盈利点数=(卖价(币种)-OrderOpenPrice())/点值(币种);
                  double 空持仓盈利点数=(OrderOpenPrice()-买价(币种))/点值(币种);
                  double 持仓止损点数=0;
                  if((空单检测()&&止损小于开盘价()))
                     持仓止损点数=MathAbs(OrderOpenPrice()-OrderStopLoss())/点值(币种);
                  if(OrderType()==OP_SELL)
                    {
                     if(空持仓盈利点数>持仓止损点数+追踪点数)
                        bool resl2=OrderModify(OrderTicket(),OrderOpenPrice(),OrderOpenPrice()-(持仓止损点数+追踪点数-间隔点数)*点值(币种),OrderTakeProfit(),OrderExpiration(),CLR_NONE);
                    }
                 }
              }
           }
        }
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
template<typename x>
double 交易类::数组最近值(x &arr[],double price)
  {
   double min =9999999;
   double value = 0;
   for(int i=0; i<ArraySize(arr); i++)
     {
      if(MathAbs((double)arr[i]-price)<min)
        {
         min=MathAbs((double)arr[i]-price);
         value =(double)arr[i];
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
template<typename x>
double 交易类::数组最远值(x &arr[],double price)
  {
   double max =-9999999;
   double value = 0;
   for(int i=0; i<ArraySize(arr); i++)
     {
      if(MathAbs((double)arr[i]-price)>max)
        {
         max=MathAbs((double)arr[i]-price);
         value =(double)arr[i];
        }
     }
   return value;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::批量画文本(string &value[],int 文本标签X轴,int 文本标签Y轴,color 文本标签颜色=clrYellow,int 文本标签字体大小=10,double 文本标签角度=0,ENUM_ANCHOR_POINT 文本标签锚点=ANCHOR_LEFT_UPPER,ENUM_BASE_CORNER  文本标签角落=CORNER_LEFT_UPPER,string 文本标签字体="楷体",bool 文本标签背景=false,bool 文本标签可选=false)
  {
   for(int i=0; i<ArraySize(value); i++)
      新图.画文本标签("文本"+(string)i,0,文本标签X轴,文本标签Y轴+i*20,value[i],文本标签颜色,文本标签字体大小,文本标签角度,文本标签锚点,文本标签角落,文本标签字体,文本标签背景,文本标签可选);
  }
//+------------------------------------------------------------------+
void 交易类::批量画文本2(string &value[],int 文本标签X轴,int 文本标签Y轴,color 文本标签颜色=clrYellow,int 文本标签字体大小=10,double 文本标签角度=0,ENUM_ANCHOR_POINT 文本标签锚点=ANCHOR_LEFT_UPPER,ENUM_BASE_CORNER  文本标签角落=CORNER_LEFT_UPPER,string 文本标签字体="楷体",bool 文本标签背景=false,bool 文本标签可选=false)
  {
   for(int i=0; i<ArraySize(value); i++)
      新图.画文本标签("文本2"+(string)i,0,文本标签X轴,文本标签Y轴+i*20,value[i],文本标签颜色,文本标签字体大小,文本标签角度,文本标签锚点,文本标签角落,文本标签字体,文本标签背景,文本标签可选);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::批量画文本3(string &value[],int 文本标签X轴,int 文本标签Y轴,color 文本标签颜色=clrYellow,int 文本标签字体大小=10,double 文本标签角度=0,ENUM_ANCHOR_POINT 文本标签锚点=ANCHOR_LEFT_UPPER,ENUM_BASE_CORNER  文本标签角落=CORNER_LEFT_UPPER,string 文本标签字体="楷体",bool 文本标签背景=false,bool 文本标签可选=false)
  {
   for(int i=0; i<ArraySize(value); i++)
      新图.画文本标签("文本3"+(string)i,0,文本标签X轴,文本标签Y轴+i*20,value[i],文本标签颜色,文本标签字体大小,文本标签角度,文本标签锚点,文本标签角落,文本标签字体,文本标签背景,文本标签可选);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::批量画按钮(string &value[],int 按钮X轴,int 按钮Y轴,int 按钮宽度,int 按钮高度,color 按钮颜色=clrGreen,int 字体大小=10,color 字体颜色=clrBlack,color 边框颜色=clrBlack,string 按钮字体="楷体",ENUM_BASE_CORNER  按钮角落=CORNER_LEFT_UPPER,bool 按钮背景=false,bool 按钮可选=false,bool 按钮状态=false)
  {
   for(int i=0; i<ArraySize(value); i++)
      新图.画按钮("按钮"+(string)i,0,按钮X轴,按钮Y轴+i*按钮高度,按钮宽度,按钮高度,value[i],按钮颜色,字体大小,字体颜色,边框颜色,按钮字体,按钮角落,按钮背景,按钮可选,按钮状态);
  }
//+------------------------------------------------------------------+
void 交易类::批量画按钮2(string &value[],int 按钮X轴,int 按钮Y轴,int 按钮宽度,int 按钮高度,color 按钮颜色=clrGreen,int 字体大小=10,color 字体颜色=clrBlack,color 边框颜色=clrBlack,string 按钮字体="楷体",ENUM_BASE_CORNER  按钮角落=CORNER_LEFT_UPPER,bool 按钮背景=false,bool 按钮可选=false,bool 按钮状态=false)
  {
   for(int i=0; i<ArraySize(value); i++)
      新图.画按钮("按钮2"+(string)i,0,按钮X轴,按钮Y轴+i*按钮高度,按钮宽度,按钮高度,value[i],按钮颜色,字体大小,字体颜色,边框颜色,按钮字体,按钮角落,按钮背景,按钮可选,按钮状态);
  }
//+------------------------------------------------------------------+
void 交易类::批量画按钮3(string &value[],int 按钮X轴,int 按钮Y轴,int 按钮宽度,int 按钮高度,color 按钮颜色=clrGreen,int 字体大小=10,color 字体颜色=clrBlack,color 边框颜色=clrBlack,string 按钮字体="楷体",ENUM_BASE_CORNER  按钮角落=CORNER_LEFT_UPPER,bool 按钮背景=false,bool 按钮可选=false,bool 按钮状态=false)
  {
   for(int i=0; i<ArraySize(value); i++)
      新图.画按钮("按钮3"+(string)i,0,按钮X轴,按钮Y轴+i*按钮高度,按钮宽度,按钮高度,value[i],按钮颜色,字体大小,字体颜色,边框颜色,按钮字体,按钮角落,按钮背景,按钮可选,按钮状态);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 交易类::关闭next图表(string 币种="")
  {设置币种(币种);
   long currChart,prevChart=ChartFirst();
   Print("ChartFirst =",ChartSymbol(prevChart)," ID =",prevChart);
   int i=0,limit=100;
   while(i<limit)
     {
      currChart=ChartNext(prevChart);
      if(currChart<0)
         break;
      if(ChartSymbol(currChart)==币种)
         ChartClose(currChart);
      i++;
     }
  }
//+------------------------------------------------------------------+