#property copyright "@Π.EA 大树My05613828"
#property link      "https://www.eahub.cn/space-uid-8564.html"
//#property version   "1.0"
//#property  icon     "//include//M5//logo.ico"
#define  _数据类
#ifdef _数据类
class 数据类
  {
public:
   //====================构造函数和析构函数============================
                     数据类();
                    ~数据类();
   //==================================================================
   //|====================ASK+BID封装==================================
   //==================================================================
   double            ASK值(string 币种);
   double            BID值(string 币种);
   //==================================================================
   //|====================K线数据函数封装==============================
   //==================================================================
   int               K线信息(string 币种,int 计算数量,MqlRates &K线值信息[],bool 是否倒序=true);
   int               K线信息(string 币种,ENUM_TIMEFRAMES 周期,int 起始位置,int 计算数量,MqlRates &K线值信息[],bool 是否倒序=true);
   int               K线报价值(string 币种,int K线数量,MqlTick  &K线报价[],bool 是否倒序=true);

   int               求开盘价(string 币种,int 计算数量,double &开盘价[],bool 是否倒序=true);
   int               求开盘价(string 币种,ENUM_TIMEFRAMES 周期,int 起始位置,int 计算数量,double &开盘价[],bool 是否倒序=true);
   int               求开盘价(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,int 计算数量,double &开盘价[],bool 是否倒序=true);
   int               求开盘价(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,datetime 结束时间,double &开盘价[],bool 是否倒序=true);

   int               求收盘价(string 币种,int 计算数量,double &收盘价[],bool 是否倒序=true);
   int               求收盘价(string 币种,ENUM_TIMEFRAMES 周期,int 起始位置,int 计算数量,double &收盘价[],bool 是否倒序=true);
   int               求收盘价(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,int 计算数量,double &收盘价[],bool 是否倒序=true);
   int               求收盘价(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,datetime 结束时间,double &收盘价[],bool 是否倒序=true);

   int               求最高价(string 币种,int 计算数量,double &最高价[],bool 是否倒序=true);
   int               求最高价(string 币种,ENUM_TIMEFRAMES 周期,int 起始位置,int 计算数量,double &最高价[],bool 是否倒序=true);
   int               求最高价(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,int 计算数量,double &最高价[],bool 是否倒序=true);
   int               求最高价(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,datetime 结束时间,double &最高价[],bool 是否倒序=true);

   int               求最低价(string 币种,int 计算数量,double &最低价[],bool 是否倒序=true);
   int               求最低价(string 币种,ENUM_TIMEFRAMES 周期,int 起始位置,int 计算数量,double &最低价[],bool 是否倒序=true);
   int               求最低价(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,int 计算数量,double &最低价[],bool 是否倒序=true);
   int               求最低价(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,datetime 结束时间,double &最低价[],bool 是否倒序=true);

   int               求开盘时间(string 币种,int 计算数量,datetime &开盘时间[],bool 是否倒序=true);
   int               求开盘时间(string 币种,ENUM_TIMEFRAMES 周期,int 起始位置,int 计算数量,datetime &开盘时间[],bool 是否倒序=true);
   int               求开盘时间(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,int 计算数量,datetime &开盘时间[],bool 是否倒序=true);
   int               求开盘时间(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,datetime 结束时间,datetime &开盘时间[],bool 是否倒序=true);

   int               求点差(string 币种,int 计算数量,int &点差[],bool 是否倒序=true);
   int               求点差(string 币种,ENUM_TIMEFRAMES 周期,int 起始位置,int 计算数量,int &点差[],bool 是否倒序=true);
   int               求点差(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,int 计算数量,int &点差[],bool 是否倒序=true);
   int               求点差(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,datetime 结束时间,int &点差[],bool 是否倒序=true);

   int               求Tick成交量(string 币种,int 计算数量,long &Tick成交量[],bool 是否倒序=true);
   int               求Tick成交量(string 币种,ENUM_TIMEFRAMES 周期,int 起始位置,int 计算数量,long &Tick成交量[],bool 是否倒序=true);
   int               求Tick成交量(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,int 计算数量,long &Tick成交量[],bool 是否倒序=true);
   int               求Tick成交量(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,datetime 结束时间,long &Tick成交量[],bool 是否倒序=true);

   int               求Real成交量(string 币种,int 计算数量,long &Real成交量[],bool 是否倒序=true);
   int               求Real成交量(string 币种,ENUM_TIMEFRAMES 周期,int 起始位置,int 计算数量,long &Real成交量[],bool 是否倒序=true);
   int               求Real成交量(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,int 计算数量,long &Real成交量[],bool 是否倒序=true);
   int               求Real成交量(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,datetime 结束时间,long &Real成交量[],bool 是否倒序=true);

   double            求iOpen开盘价(string 币种,ENUM_TIMEFRAMES 周期,int K线序列);
   double            求iClose收盘价(string 币种,ENUM_TIMEFRAMES 周期,int K线序列);
   double            求iHigh最高价(string 币种,ENUM_TIMEFRAMES 周期,int K线序列);
   double            求iLow最低价(string 币种,ENUM_TIMEFRAMES 周期,int K线序列);
   datetime          求iTime开盘时间(string 币种,ENUM_TIMEFRAMES 周期,int K线序列);
   long              求iTick成交量(string 币种,ENUM_TIMEFRAMES 周期,int K线序列);
   long              求iReal成交量(string 币种,ENUM_TIMEFRAMES 周期,int K线序列);
   long              求iVolume成交量(string 币种,ENUM_TIMEFRAMES 周期,int K线序列);
   long              求iSpread点差(string 币种,ENUM_TIMEFRAMES 周期,int K线序列);

   double            求区间最高价(string 币种,int 计算数量);
   double            求区间最高价(string 币种,ENUM_TIMEFRAMES 周期,ENUM_SERIESMODE 最高价类型,int 起始位置,int 计算数量);
   double            求区间最低价(string 币种,int 计算数量);
   double            求区间最低价(string 币种,ENUM_TIMEFRAMES 周期,ENUM_SERIESMODE 最低价类型,int 起始位置,int 计算数量);

   int               求区间最高价索引(string 币种,int 计算数量);
   int               求区间最高价索引(string 币种,ENUM_TIMEFRAMES 周期,ENUM_SERIESMODE 最高价类型,int 起始位置,int 计算数量);
   int               求区间最低价索引(string 币种,int 计算数量);
   int               求区间最低价索引(string 币种,ENUM_TIMEFRAMES 周期,ENUM_SERIESMODE 最低价类型,int 起始位置,int 计算数量);
   template<typename x>
   void              倒序数组(x &传入数组[],bool 是否倒序);
  };
//+------------------------------------------------------------------+
数据类::数据类()
  {};
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
数据类::~数据类()
  {};
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double 数据类::ASK值(string 币种)
  {
   double 求ASK值=SymbolInfoDouble(币种,SYMBOL_ASK);
   return(求ASK值);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double 数据类::BID值(string 币种)
  {
   double 求BID值=SymbolInfoDouble(币种,SYMBOL_BID);
   return(求BID值);
  }
//+------------------------------------------------------------------+
int 数据类::K线信息(string 币种,int 计算数量,MqlRates &K线值信息[],bool 是否倒序=true)
  {
   倒序数组(K线值信息,是否倒序);
   int X=CopyRates(币种,0,0,计算数量,K线值信息);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::K线信息(string 币种,ENUM_TIMEFRAMES 周期,int 起始位置,int 计算数量,MqlRates &K线值信息[],bool 是否倒序=true)
  {
   倒序数组(K线值信息,是否倒序);
   int X=CopyRates(币种,周期,起始位置,计算数量,K线值信息);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::K线报价值(string 币种,int K线数量,MqlTick &K线报价[],bool 是否倒序=true)
  {
   倒序数组(K线报价,是否倒序);
   int 报价=CopyTicks(币种,K线报价,COPY_TICKS_ALL,0,K线数量);
   return(报价);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求开盘价(string 币种,int 计算数量,double &开盘价[],bool 是否倒序=true)
  {
   倒序数组(开盘价,是否倒序);
   int X=CopyOpen(币种,0,0,计算数量,开盘价);
   return(X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求开盘价(string 币种,ENUM_TIMEFRAMES 周期,int 起始位置,int 计算数量,double &开盘价[],bool 是否倒序=true)
  {
   倒序数组(开盘价,是否倒序);
   int X=CopyOpen(币种,周期,起始位置,计算数量,开盘价);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求开盘价(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,int 计算数量,double &开盘价[],bool 是否倒序=true)
  {
   倒序数组(开盘价,是否倒序);
   int X=CopyOpen(币种,周期,起始时间,计算数量,开盘价);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求开盘价(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,datetime 结束时间,double &开盘价[],bool 是否倒序=true)
  {
   倒序数组(开盘价,是否倒序);
   int X=CopyOpen(币种,周期,起始时间,结束时间,开盘价);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求收盘价(string 币种,int 计算数量,double &收盘价[],bool 是否倒序=true)
  {
   倒序数组(收盘价,是否倒序);
   int X=CopyClose(币种,0,0,计算数量,收盘价);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求收盘价(string 币种,ENUM_TIMEFRAMES 周期,int 起始位置,int 计算数量,double &收盘价[],bool 是否倒序=true)
  {
   倒序数组(收盘价,是否倒序);
   int X=CopyClose(币种,周期,起始位置,计算数量,收盘价);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求收盘价(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,int 计算数量,double &收盘价[],bool 是否倒序=true)
  {
   倒序数组(收盘价,是否倒序);
   int X=CopyClose(币种,周期,起始时间,计算数量,收盘价);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求收盘价(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,datetime 结束时间,double &收盘价[],bool 是否倒序=true)
  {
   倒序数组(收盘价,是否倒序);
   int X=CopyClose(币种,周期,起始时间,结束时间,收盘价);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求最高价(string 币种,int 计算数量,double &最高价[],bool 是否倒序=true)
  {
   倒序数组(最高价,是否倒序);
   int X=CopyHigh(币种,0,0,计算数量,最高价);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求最高价(string 币种,ENUM_TIMEFRAMES 周期,int 起始位置,int 计算数量,double &最高价[],bool 是否倒序=true)
  {
   倒序数组(最高价,是否倒序);
   int X=CopyHigh(币种,周期,起始位置,计算数量,最高价);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求最高价(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,int 计算数量,double &最高价[],bool 是否倒序=true)
  {
   倒序数组(最高价,是否倒序);
   int X=CopyHigh(币种,周期,起始时间,计算数量,最高价);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求最高价(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,datetime 结束时间,double &最高价[],bool 是否倒序=true)
  {
   倒序数组(最高价,是否倒序);
   int X=CopyHigh(币种,周期,起始时间,结束时间,最高价);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求最低价(string 币种,int 计算数量,double &最低价[],bool 是否倒序=true)
  {
   倒序数组(最低价,是否倒序);
   int X=CopyLow(币种,0,0,计算数量,最低价);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求最低价(string 币种,ENUM_TIMEFRAMES 周期,int 起始位置,int 计算数量,double &最低价[],bool 是否倒序=true)
  {
   倒序数组(最低价,是否倒序);
   int X=CopyLow(币种,周期,起始位置,计算数量,最低价);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求最低价(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,int 计算数量,double &最低价[],bool 是否倒序=true)
  {
   倒序数组(最低价,是否倒序);
   int X=CopyLow(币种,周期,起始时间,计算数量,最低价);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求最低价(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,datetime 结束时间,double &最低价[],bool 是否倒序=true)
  {
   倒序数组(最低价,是否倒序);
   int X=CopyLow(币种,周期,起始时间,结束时间,最低价);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求开盘时间(string 币种,int 计算数量,datetime &开盘时间[],bool 是否倒序=true)
  {
   倒序数组(开盘时间,是否倒序);
   int X=CopyTime(币种,0,0,计算数量,开盘时间);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求开盘时间(string 币种,ENUM_TIMEFRAMES 周期,int 起始位置,int 计算数量,datetime &开盘时间[],bool 是否倒序=true)
  {
   倒序数组(开盘时间,是否倒序);
   int X=CopyTime(币种,周期,起始位置,计算数量,开盘时间);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求开盘时间(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,int 计算数量,datetime &开盘时间[],bool 是否倒序=true)
  {
   倒序数组(开盘时间,是否倒序);
   int X=CopyTime(币种,周期,起始时间,计算数量,开盘时间);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求开盘时间(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,datetime 结束时间,datetime &开盘时间[],bool 是否倒序=true)
  {
   倒序数组(开盘时间,是否倒序);
   int X=CopyTime(币种,周期,起始时间,结束时间,开盘时间);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求点差(string 币种,int 计算数量,int &点差[],bool 是否倒序=true)
  {
   倒序数组(点差,是否倒序);
   int X=CopySpread(币种,0,0,计算数量,点差);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求点差(string 币种,ENUM_TIMEFRAMES 周期,int 起始位置,int 计算数量,int &点差[],bool 是否倒序=true)
  {
   倒序数组(点差,是否倒序);
   int X=CopySpread(币种,周期,起始位置,计算数量,点差);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求点差(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,int 计算数量,int &点差[],bool 是否倒序=true)
  {
   倒序数组(点差,是否倒序);
   int X=CopySpread(币种,周期,起始时间,计算数量,点差);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求点差(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,datetime 结束时间,int &点差[],bool 是否倒序=true)
  {
   倒序数组(点差,是否倒序);
   int X=CopySpread(币种,周期,起始时间,结束时间,点差);
   return (X);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求Tick成交量(string 币种,int 计算数量,long &Tick成交量[],bool 是否倒序=true)
  {
   倒序数组(Tick成交量,是否倒序);
   int x=CopyTickVolume(币种,0,0,计算数量,Tick成交量);
   return(x);
  };
//+------------------------------------------------------------------+
int 数据类::求Tick成交量(string 币种,ENUM_TIMEFRAMES 周期,int 起始位置,int 计算数量,long &Tick成交量[],bool 是否倒序=true)
  {
   倒序数组(Tick成交量,是否倒序);
   int x=CopyTickVolume(币种,周期,起始位置,计算数量,Tick成交量);
   return(x);
  };
//+------------------------------------------------------------------+
int 数据类::求Tick成交量(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,int 计算数量,long &Tick成交量[],bool 是否倒序=true)
  {
   倒序数组(Tick成交量,是否倒序);
   int x=CopyTickVolume(币种,周期,起始时间,计算数量,Tick成交量);
   return(x);
  };
//+------------------------------------------------------------------+
int 数据类::求Tick成交量(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,datetime 结束时间,long &Tick成交量[],bool 是否倒序=true)
  {
   倒序数组(Tick成交量,是否倒序);
   int x=CopyTickVolume(币种,周期,起始时间,结束时间,Tick成交量);
   return(x);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 数据类::求Real成交量(string 币种,int 计算数量,long &Real成交量[],bool 是否倒序=true)
  {
   倒序数组(Real成交量,是否倒序);
   int x=CopyRealVolume(币种,0,0,计算数量,Real成交量);
   return(x);
  };
//+------------------------------------------------------------------+
int 数据类::求Real成交量(string 币种,ENUM_TIMEFRAMES 周期,int 起始位置,int 计算数量,long &Real成交量[],bool 是否倒序=true)
  {
   倒序数组(Real成交量,是否倒序);
   int x=CopyRealVolume(币种,周期,起始位置,计算数量,Real成交量);
   return(x);
  };
//+------------------------------------------------------------------+
int 数据类::求Real成交量(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,int 计算数量,long &Real成交量[],bool 是否倒序=true)
  {
   倒序数组(Real成交量,是否倒序);
   int x=CopyRealVolume(币种,周期,起始时间,计算数量,Real成交量);
   return(x);
  };
//+------------------------------------------------------------------+
int 数据类::求Real成交量(string 币种,ENUM_TIMEFRAMES 周期,datetime 起始时间,datetime 结束时间,long &Real成交量[],bool 是否倒序=true)
  {
   倒序数组(Real成交量,是否倒序);
   int x=CopyRealVolume(币种,周期,起始时间,结束时间,Real成交量);
   return(x);
  };
//+------------------------------------------------------------------+
double 数据类::求iOpen开盘价(string 币种,ENUM_TIMEFRAMES 周期,int K线序列)
  {
   double K线开盘价=iOpen(币种,周期,K线序列);
   return(K线开盘价);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double 数据类::求iClose收盘价(string 币种,ENUM_TIMEFRAMES 周期,int K线序列)
  {
   double K线收盘价=iClose(币种,周期,K线序列);
   return(K线收盘价);
  }
//+------------------------------------------------------------------+
double 数据类::求iHigh最高价(string 币种,ENUM_TIMEFRAMES 周期,int K线序列)
  {
   double K线最高价=iHigh(币种,周期,K线序列);
   return(K线最高价);
  }
//+------------------------------------------------------------------+
double 数据类::求iLow最低价(string 币种,ENUM_TIMEFRAMES 周期,int K线序列)
  {
   double K线最低价=iLow(币种,周期,K线序列);
   return(K线最低价);
  }
//+------------------------------------------------------------------+
datetime 数据类::求iTime开盘时间(string 币种,ENUM_TIMEFRAMES 周期,int K线序列)
  {
   datetime K线开盘时间=iTime(币种,周期,K线序列);
   return(K线开盘时间);
  }
//+------------------------------------------------------------------+
long   数据类::求iTick成交量(string 币种,ENUM_TIMEFRAMES 周期,int K线序列)
  {
   long K线iTick成交量=iTickVolume(币种,周期,K线序列);
   return(K线iTick成交量);
  }
//+------------------------------------------------------------------+
long   数据类::求iReal成交量(string 币种,ENUM_TIMEFRAMES 周期,int K线序列)
  {
   long K线iReal成交量=iRealVolume(币种,周期,K线序列);
   return(K线iReal成交量);
  }
//+------------------------------------------------------------------+
long   数据类::求iVolume成交量(string 币种,ENUM_TIMEFRAMES 周期,int K线序列)
  {
   long K线iVolume成交量=iVolume(币种,周期,K线序列);
   return(K线iVolume成交量);
  }
//+------------------------------------------------------------------+
long 数据类::求iSpread点差(string 币种,ENUM_TIMEFRAMES 周期,int K线序列)
  {
   long K线iSpread点差=iSpread(币种,周期,K线序列);
   return(K线iSpread点差);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double 数据类::求区间最高价(string 币种,int 计算数量)
  {
   double K线最高价=0;
   int X=iHighest(币种,0,MODE_HIGH,计算数量,0);
   if(X!=-1)
      K线最高价=iHigh(币种,0,X);
   return(K线最高价);
  }
//+------------------------------------------------------------------+
double 数据类::求区间最高价(string 币种,ENUM_TIMEFRAMES 周期,ENUM_SERIESMODE 最高价类型,int 起始位置,int 计算数量)
  {
   double K线最高价=0;
   int X=iHighest(币种,周期,最高价类型,计算数量,起始位置);
   if(X!=-1)
      K线最高价=iHigh(币种,周期,X);
   return(K线最高价);
  }
//+------------------------------------------------------------------+
double 数据类::求区间最低价(string 币种,int 计算数量)
  {
   double K线最低价=0;
   int X=iLowest(币种,0,MODE_LOW,计算数量,0);
   if(X!=-1)
      K线最低价=iLow(币种,0,X);
   return(K线最低价);
  }
//+------------------------------------------------------------------+
double 数据类::求区间最低价(string 币种,ENUM_TIMEFRAMES 周期,ENUM_SERIESMODE 最低价类型,int 起始位置,int 计算数量)
  {
   double K线最低价=0;
   int X=iLowest(币种,周期,最低价类型,计算数量,起始位置);
   if(X!=-1)
      K线最低价=iLow(币种,周期,X);
   return(K线最低价);
  }
//+------------------------------------------------------------------+
template<typename x>
void 数据类::倒序数组(x &传入数组[],bool 是否倒序)
  {
   /*if(ArrayIsDynamic(传入数组))
     {*/
   if(ArrayGetAsSeries(传入数组)==false)
      ArraySetAsSeries(传入数组,是否倒序);
   /* }*/
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 数据类::求区间最高价索引(string 币种,int 计算数量)
  {
   int X=iHighest(币种,0,MODE_HIGH,计算数量,0);
   if(X==-1)
      Print("返回区间极值索引错误");
   return(X);
  }
//+------------------------------------------------------------------+
int 数据类::求区间最高价索引(string 币种,ENUM_TIMEFRAMES 周期,ENUM_SERIESMODE 最高价类型,int 起始位置,int 计算数量)
  {
   int X=iHighest(币种,周期,最高价类型,计算数量,起始位置);
   if(X==-1)
      Print("返回区间极值索引错误");
   return(X);
  }
//+------------------------------------------------------------------+
int 数据类::求区间最低价索引(string 币种,int 计算数量)
  {

   int X=iLowest(币种,0,MODE_LOW,计算数量,0);
   if(X==-1)
      Print("返回区间极值索引错误");
   return(X);
  }
//+------------------------------------------------------------------+
int 数据类::求区间最低价索引(string 币种,ENUM_TIMEFRAMES 周期,ENUM_SERIESMODE 最低价类型,int 起始位置,int 计算数量)
  {
   int X=iLowest(币种,周期,最低价类型,计算数量,起始位置);
   if(X==-1)
      Print("返回区间极值索引错误");
   return(X);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
#endif 