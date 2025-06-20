#property copyright "@Π.EA 大树My05613828"
#property link      "https://www.eahub.cn/space-uid-8564.html"
//#property version   "1.0"
//#property  icon     "//include//M5//logo.ico"
#define  _sqlite类
#ifdef _sqlite类
#include <M5/交易类.mqh>

class sqlite类
  {
private:
交易类 交易;
public:

                     sqlite类();
                    ~sqlite类();
   void              pfun(string 错误信息);
   int               创建sqlite(string filename,uint 默认设置=DATABASE_OPEN_READWRITE | DATABASE_OPEN_CREATE |DATABASE_OPEN_COMMON);
   //+------------------------------------------------------------------+
   bool              表存在检测(int database,string 表名);
   //+------------------------------------------------------------------+
   bool              删除表(int database,string 表名);
   bool              清空表(int database,string 表名);
   void              查打(int database,string 表名,string 查询什么="*");
   void              查询打印(int database,string 表名,string SQL);
   void              关闭数据库(int database,string filename);
   void              删表关库(string 库名,string 表名1="",string 表名2="",string 表名3="",string 表名4="",string 表名5="",string 表名6="",string 表名7="",string 表名8="",string 表名9="");
   //+------------------------------------------------------------------+
   bool              执行SQL(int database,string SQL);
   //+------------------------------------------------------------------+
   bool              开始事务(int database);
   bool              回滚事务(int database);
   bool              完成事务(int database);
   bool              事务检测(int database,bool 错误检测);
   //+------------------------------------------------------------------+
   bool              执行SQL错误回滚事务(int database,string SQL,bool 开启事务=true);
   //+------------------------------------------------------------------+
   int               SQL查寻返回句柄(int database,string SQL);//--给DatebaseRead  DatebaseBind用
   //+------------------------------------------------------------------+
   long              解析SQL查寻句柄long值(int database,int SQL查寻句柄,int 字段索引,long &返回数组[],int 计算数量=1);
   int               解析SQL查寻句柄int值(int database,int SQL查寻句柄,int 字段索引,int &返回数组[],int 计算数量=1);
   string            解析SQL查寻句柄TEXT值(int database,int SQL查寻句柄,int 字段索引,string &返回数组[],int 计算数量=1);
   double            解析SQL查寻句柄double值(int database,int SQL查寻句柄,int 字段索引,double &返回数组[],int 计算数量=1);
   //+------------------------------------------------------------------+
   //+------------------------------------------------------------------+
   void              解析持仓列表bind值(int database,int SQL查寻句柄);
   void              解析历史列表bind值(int database,int SQL查寻句柄);
   //+------------------------------------------------------------------+
   //|  SQL语句函数
   bool              创建账户信息列表(int database,string 要创建的账户信息列表名);
   bool              插入账户信息数据(int database,string 表名,string &symbol_list[]);
   bool              创建币价列表(int database,string 要创建的持仓列表名);
   bool              插入币价数据(int database,string 表名);
   bool              更新币价数据(int database,string 表名);
   bool              创建持仓列表(int database,string 要创建的持仓列表名);
   bool              插入持仓数据(int database,string 表名,string 币种,long Magic,string 注释,ulong 设置订单起始时间=0);
   bool              插入持仓数据(int database,string 表名,string 币种,long Magic,ulong 设置订单起始时间=0);
   bool              插入持仓数据(int database,string 表名,string 币种,ulong 设置订单起始时间=0);
   bool              插入持仓数据(int database,string 表名,long Magic,ulong 设置订单起始时间=0);
   bool              插入持仓数据(int database,string 表名,ulong 设置订单起始时间=0);
 bool 插入持仓数据(int database,string 表名,string &symbolss[],int order_limits,ulong 设置订单起始时间=0);
   bool              创建历史列表(int database,string 要创建的历史列表名);
   bool              插入历史数据(int database,string 表名,string 币种,long Magic,string 注释,ulong 设置起始时间=0);
   bool              插入历史数据(int database,string 表名,string 币种,long Magic,ulong 设置起始时间=0);
   bool              插入历史数据(int database,string 表名,string 币种,ulong 设置起始时间=0);
   bool              插入历史数据(int database,string 表名,long Magic,ulong 设置起始时间=0);
   bool              插入历史数据(int database,string 表名,ulong 设置起始时间=0);
   void              创删持仓列表(string 库名,string 表名,ulong 程序上机时间);
   void              创删历史列表(string 库名,string 表名,ulong 程序上机时间);
   void              跟单PRAGMA(int database);
   void              整理碎片(int database);
   string            币种修正(string 传入币种,bool 窗口选择=false);
   template<typename x,typename y>
   bool              数组含有check(x vaule,y &arr[]);
   //+------------------------------------------------------------------+
   //+------------------------------------------------------------------+
   bool              创建图表列表(int database,string 要创建的图表列表名);
   //+------------------------------------------------------------------+
   template<typename x,typename y>
   bool              插入图表数据(int database,string 表名,string 币种,ENUM_TIMEFRAMES 图表周期,x 启动位置,y 结束位置,bool 是否倒序=true);
   //+------------------------------------------------------------------+
   template<typename x,typename y>
   void              创删图表列表(string 库名,string 表名,string 币种,ENUM_TIMEFRAMES 图表周期,x 启动位置,y 结束位置,bool 是否倒序=true);

   //+------------------------------------------------------------------+
   //|                                                                  |
   //+------------------------------------------------------------------+
   template<typename x>
   void              倒序数组(x &传入数组[],bool 是否倒序);
   void              swap数据();
   void              息差排行榜();
   void              删除息差物件();

   struct 持仓列表
     {
      long               格林时间;
      long               服时间;
      string              币种;
      ulong                订单号;
      long               开盘时间;
      ENUM_POSITION_TYPE  类型;
      double              交易量;
      double              进单价;
      double              止损价;
      double              止盈价;
      double              现价;
      double              库存费;
      double              盈利;
      long               幻数;
      string              注释;
      long               持仓时间;
      ENUM_POSITION_REASON    下单员;
     };
   持仓列表      持员;
   持仓列表      持表[];

   struct 历史列表
     {
      long               TIME_G;
      long               TIME_C;
      long              TIME;
      string             SYMBOL;
      ulong              ORDER_ID;
      ulong              POSITION_ID;
      ulong              DEAL_ID;
      ENUM_DEAL_ENTRY               TYPE;             // DEAL_TYPE
      ENUM_DEAL_ENTRY               ENTRY;            // DEAL_ENTRY
      double             VOLUME;
      double             SL;
      double             TP;
      double             PRICE;
      double             COMMISSION;
      double             SWAP;
      double             DEAL_YJ;
      double             PROFIT;
      long               MAGIC;
      string             COMMENT;
      long               REASON;
     };
   历史列表      历员;
   历史列表      历表[];

   struct 从控端历史列表
     {
      long               TIME_G;
      long               TIME_C;
      long              TIME;
      string             SYMBOL;
      ulong              ORDER_ID;
      ulong              POSITION_ID;
      ulong              DEAL_ID;
      ENUM_DEAL_ENTRY               TYPE;             // DEAL_TYPE
      ENUM_DEAL_ENTRY               ENTRY;            // DEAL_ENTRY
      double             VOLUME;
      double             SL;
      double             TP;
      double             PRICE;
      double             COMMISSION;
      double             SWAP;
      double             DEAL_YJ;
      double             PROFIT;
      long               MAGIC;
      string             COMMENT;
      long               REASON;
     };
   从控端历史列表      从控端历员;
   //+------------------------------------------------------------------+
   //|                                                                  |
   //+------------------------------------------------------------------+
   struct coin_list
     {
      string              币种;
      double              bid价;
     };
   coin_list         c_l;
   coin_list         c_list[];

   //--账户信息
   struct acc_stu
     {
      long               TIME_G;
      long               TIME_C;

      long               LOGIN;
      long               LEVERAGE;
      double             BALANCE;
      double             EQUITY;
      double             MARGIN;
      double             MARGIN_FREE;
      double             MARGIN_LEVEL;
      double             PROFIT;

      string SYMBOL ;
      double            ASK;
      double            BID;
      long              SPREAD;

      long              SWAP_MODE;
      double            SWAP_LONG;
      double            SWAP_SHORT;
      double            SESSION_INTEREST;
     };
   acc_stu           acc;


   string            acc_database;
   string            acc_table;
   string            symbol_lists[];
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
sqlite类::sqlite类()
  {
   acc_database=(string)AccountInfoInteger(ACCOUNT_LOGIN)+"swap";
   acc_table="swap"+(string)AccountInfoInteger(ACCOUNT_LOGIN);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
sqlite类::~sqlite类()
  {
删除息差物件();
  }
//+------------------------------------------------------------------+
//+------------ ------------------------------------------------------+
void   sqlite类::pfun(string 错误信息)
  {
   Print(错误信息, __FUNCTION__,GetLastError());
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void sqlite类::删除息差物件()
  {
   int  db=创建sqlite(acc_database);
   if(表存在检测(db,acc_table))
     {
      int hd=SQL查寻返回句柄(db,"SELECT * FROM "+acc_table+" ORDER BY SWAP_LONG DESC LIMIT 20");
      if(hd!=INVALID_HANDLE)
         for(int i=0; DatabaseReadBind(hd,acc)||i<DatabaseColumnsCount(hd); i++)
           {
            string SYMBOL      =       acc.SYMBOL;
            string SWAP_LONG          =  DoubleToString(acc.SWAP_LONG,3);
            交易.删除物件(0,SYMBOL+"long"+(string)i,SYMBOL+"long_"+(string)i);
           }

      int hd2=SQL查寻返回句柄(db,"SELECT * FROM "+acc_table+" ORDER BY SWAP_SHORT DESC LIMIT 20");
      if(hd2!=INVALID_HANDLE)
         for(int i=0; DatabaseReadBind(hd2,acc)||i<DatabaseColumnsCount(hd2); i++)
           {
            string SYMBOL      =       acc.SYMBOL;
            string SWAP_SHORT         =  DoubleToString(acc.SWAP_SHORT,3);
            交易.删除物件(0,SYMBOL+"short"+(string)i,SYMBOL+"short_"+(string)i);
           }
     }
   DatabaseClose(db);

  }
//+------------------------------------------------------------------+
void sqlite类::息差排行榜()
  {
   if(交易.单位时间do2(PeriodSeconds(PERIOD_D1)))
     {

      ArrayResize(symbol_lists,SymbolsTotal(true));
      for(int i=0; i<SymbolsTotal(true); i++)
         symbol_lists[i] = SymbolName(i,true);
      swap数据();

      交易.右上角文字("//---  息差排行榜  ---//",-30);
      int  db=创建sqlite(acc_database);
      if(表存在检测(db,acc_table))
        {
         int hd=SQL查寻返回句柄(db,"SELECT * FROM "+acc_table+" ORDER BY SWAP_LONG DESC LIMIT 20");
         if(hd!=INVALID_HANDLE)
            for(int i=0; DatabaseReadBind(hd,acc)||i<DatabaseColumnsCount(hd); i++)
              {
               string SYMBOL      =       acc.SYMBOL;
               string SWAP_LONG          =  DoubleToString(acc.SWAP_LONG,3);
               交易.画按钮编辑框返其值(SYMBOL+"long"+(string)i,SYMBOL+"long_"+(string)i,SYMBOL+" l_ "+(string)i,SWAP_LONG,2,12,12,360,22*i,false);
              }

         int hd2=SQL查寻返回句柄(db,"SELECT * FROM "+acc_table+" ORDER BY SWAP_SHORT DESC LIMIT 20");
         if(hd2!=INVALID_HANDLE)
            for(int i=0; DatabaseReadBind(hd2,acc)||i<DatabaseColumnsCount(hd2); i++)
              {
               string SYMBOL      =       acc.SYMBOL;
               string SWAP_SHORT         =  DoubleToString(acc.SWAP_SHORT,3);
               交易.画按钮编辑框返其值(SYMBOL+"short"+(string)i,SYMBOL+"short_"+(string)i,SYMBOL+" s_ "+(string)i,SWAP_SHORT,2,12,12,590,22*i,false);
              }
        }
      DatabaseClose(db);
     }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void sqlite类::swap数据()
  {
   int  db=创建sqlite(acc_database);
   if(删除表(db,acc_table))
      创建账户信息列表(db,acc_table);
   if(表存在检测(db,acc_table))
      插入账户信息数据(db,acc_table,symbol_lists);
   DatabaseClose(db);
  }
//---
int  sqlite类::创建sqlite(string filename,uint 默认设置=DATABASE_OPEN_READWRITE|DATABASE_OPEN_CREATE|DATABASE_OPEN_COMMON)
  {
   int database=DatabaseOpen(filename+".db",默认设置);
   跟单PRAGMA(database);
   if(database==INVALID_HANDLE)
     {
      Print("DB: ", filename,".sqlite 创建错误 ", GetLastError());
      return INVALID_HANDLE;
     }
   return database;
  }
//+------------------------------------------------------------------+
bool sqlite类::表存在检测(int database,string 表名)
  {
   bool 检测=DatabaseTableExists(database,表名);
   /* if(!检测)
       Print("表"+表名+" 不存在");*/
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void sqlite类::查打(int database,string 表名,string 查询什么="*")
  {
   if(表存在检测(database,表名))
      DatabasePrint(database,"SELECT "+查询什么+" FROM "+表名,0);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void sqlite类::查询打印(int database,string 表名,string SQL)
  {
   if(表存在检测(database,表名))
      DatabasePrint(database,SQL,0);
  }
//+------------------------------------------------------------------+
bool sqlite类::删除表(int database, string 表名)
  {
   if(!DatabaseExecute(database, "DROP TABLE IF EXISTS "+表名))
     {
      Print("删除"+表名+"表错误 ", GetLastError());
      DatabaseClose(database);
      return(false);
     }
//--- the table has been successfully deleted
   return(true);
  }
//+------------------------------------------------------------------+
bool sqlite类::清空表(int database, string 表名)
  {
   if(!DatabaseExecute(database, "DELETE FROM IF EXISTS "+表名))
     {
      Print("清空"+表名+"表错误 ", GetLastError());
      DatabaseClose(database);
      return(false);
     }
   DatabaseExecute(database, "VACUUM "+表名);
//--- the table has been successfully deleted
   return(true);
  }
//+------------------------------------------------------------------+
void sqlite类::关闭数据库(int database,string filename)
  {
//--- close the database
   if(database!=INVALID_HANDLE)
     {
      DatabaseExecute(database,"VACUUM");
      // PrintFormat("关闭数据库"+filename+" with handle=%d", database);
      DatabaseClose(database);
     }
  }
//+------------------------------------------------------------------+
void sqlite类::删表关库(string 库名,string 表名1="",string 表名2="",string 表名3="",string 表名4="",string 表名5="",string 表名6="",string 表名7="",string 表名8="",string 表名9="")
  {
   int  db=创建sqlite(库名);
   删除表(db,表名1);
   删除表(db,表名2);
   删除表(db,表名3);
   删除表(db,表名4);
   删除表(db,表名5);
   删除表(db,表名6);
   删除表(db,表名7);
   删除表(db,表名8);
   删除表(db,表名9);
   DatabaseExecute(db,"VACUUM");
   关闭数据库(db,库名);
  }
//+------------------------------------------------------------------+
bool sqlite类::执行SQL(int database,string SQL)
  {
   bool 检测=DatabaseExecute(database,SQL);
   if(!检测)
     {
      Print(SQL+ "执行错误 ", GetLastError());
      DatabaseClose(database);
     }
   return 检测;
  }
//+------------------------------------------------------------------+
bool sqlite类::开始事务(int database)
  {
   bool 检测=DatabaseTransactionBegin(database);
   return 检测;
  }
//+------------------------------------------------------------------+
bool sqlite类::回滚事务(int database)
  {
   bool 检测=DatabaseTransactionRollback(database);
   return 检测;
  }
//+------------------------------------------------------------------+
bool sqlite类::完成事务(int database)
  {
   bool 检测=DatabaseTransactionCommit(database);
   return 检测;
  }
//+------------------------------------------------------------------+
bool sqlite类::事务检测(int database,bool 错误检测)
  {
   if(错误检测)
     {
      Print("事务执行错误,立即回滚", GetLastError());
      DatabaseTransactionRollback(database);
      DatabaseClose(database);
      return false;
     }
   else
     {
      DatabaseTransactionCommit(database);
      Print("事务执行成功");
     }
   if(database!=INVALID_HANDLE)
     {
      Print("关闭数据库 handle=",database);
      DatabaseClose(database);
     }
   return true;
  }
//+------------------------------------------------------------------+
bool sqlite类::执行SQL错误回滚事务(int database,string SQL,bool 开启事务=true)
  {
   bool 检测=false;
   if(开启事务)
      开始事务(database);
   if(!执行SQL(database,SQL))
     {
      if(开启事务)
         回滚事务(database);
      检测=false;
     }
   if(开启事务)
      检测=完成事务(database);
   return 检测;
  }
//+------------------------------------------------------------------+
int sqlite类::SQL查寻返回句柄(int database,string SQL)//--给DatebaseRead  DatebaseBind用
  {
   int request=DatabasePrepare(database,SQL);
   if(request==INVALID_HANDLE)
     {
      Print(SQL, __FUNCTION__,GetLastError());
      DatabaseClose(database);
      return INVALID_HANDLE;
     }
   return request;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
long  sqlite类::解析SQL查寻句柄long值(int database,int SQL查寻句柄,int 字段索引,long &返回数组[],int 计算数量=1)
  {
   long 返回值=0;
   int 计数=0;
   for(int i=0; DatabaseRead(SQL查寻句柄); i++)
     {
      ArrayResize(返回数组,ArraySize(返回数组)+1);
      if(!DatabaseColumnLong(SQL查寻句柄,字段索引,返回值))
        {
         Print(i," 解析int值错误:",GetLastError());
         DatabaseFinalize(SQL查寻句柄);
         DatabaseClose(database);
        }
      返回数组[计数]=返回值;
      计数++;
      if(计数==计算数量)
         break;
     }
   DatabaseFinalize(SQL查寻句柄);
   DatabaseClose(database);
   return 返回值;
  }
//+------------------------------------------------------------------+
int  sqlite类::解析SQL查寻句柄int值(int database,int SQL查寻句柄,int 字段索引,int &返回数组[],int 计算数量=1)
  {
   int 返回值=0;
   int 计数=0;
   for(int i=0; DatabaseRead(SQL查寻句柄); i++)
     {
      ArrayResize(返回数组,ArraySize(返回数组)+1);
      if(!DatabaseColumnInteger(SQL查寻句柄,字段索引,返回值))
        {
         Print(i," 解析int值错误:",GetLastError());
         DatabaseFinalize(SQL查寻句柄);
         DatabaseClose(database);
        }
      返回数组[计数]=返回值;
      计数++;
      if(计数==计算数量)
         break;
     }
   DatabaseFinalize(SQL查寻句柄);
   DatabaseClose(database);
   return 返回值;
  }
//+------------------------------------------------------------------+
string  sqlite类::解析SQL查寻句柄TEXT值(int database,int SQL查寻句柄,int 字段索引,string &返回数组[],int 计算数量=1)
  {
   string 返回值=NULL;
   int 计数=0;

   for(int i=0; DatabaseRead(SQL查寻句柄); i++)
     {
      ArrayResize(返回数组,ArraySize(返回数组)+1);
      if(!DatabaseColumnText(SQL查寻句柄,字段索引,返回值))
        {
         Print(i," 解析text值错误:",GetLastError());
         DatabaseFinalize(SQL查寻句柄);
         DatabaseClose(database);
        }     返回数组[计数]=返回值;
      计数++;
      if(计数==计算数量)
         break;
     }
   DatabaseFinalize(SQL查寻句柄);
   DatabaseClose(database);
   return 返回值;
  }
//+------------------------------------------------------------------+
double sqlite类:: 解析SQL查寻句柄double值(int database,int SQL查寻句柄,int 字段索引,double &返回数组[],int 计算数量=1)
  {
   double 返回值=NULL;
   int 计数=0;
   for(int i=0; DatabaseRead(SQL查寻句柄); i++)
     {
      ArrayResize(返回数组,ArraySize(返回数组)+1);
      if(!DatabaseColumnDouble(SQL查寻句柄,字段索引,返回值))
        {
         Print(i," 解析double值错误:",GetLastError());
         DatabaseFinalize(SQL查寻句柄);
         DatabaseClose(database);
        }     返回数组[计数]=返回值;
      计数++;
      if(计数==计算数量)
         break;
     }
   DatabaseFinalize(SQL查寻句柄);
   DatabaseClose(database);
   return 返回值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------
//+------------------------------------------------------------------+
void  sqlite类::解析持仓列表bind值(int database,int SQL查寻句柄)
  {
   for(int i=0; DatabaseReadBind(SQL查寻句柄,持员); i++)
     {
      持表[i].格林时间=持员.格林时间;
      持表[i].服时间=持员.服时间;
      持表[i].币种    = 持员.币种;
      持表[i].订单号  = 持员.订单号;
      持表[i].开盘时间= 持员.开盘时间;
      持表[i].类型    = 持员.类型;
      持表[i].交易量  = 持员.交易量;
      持表[i].进单价  = 持员.进单价;
      持表[i].止损价  = 持员.止损价;
      持表[i].止盈价  = 持员.止盈价;
      持表[i].现价    = 持员.现价;
      持表[i].库存费  = 持员.库存费;
      持表[i].盈利    = 持员.盈利;
      持表[i].幻数    = 持员.幻数;
      持表[i].注释    = 持员.注释;
      持表[i].持仓时间= 持员.持仓时间;
      持表[i].下单员  = 持员.下单员;
     }
   DatabaseFinalize(SQL查寻句柄);
   DatabaseClose(database);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  sqlite类::解析历史列表bind值(int database,int SQL查寻句柄)
  {
   for(int i=0; DatabaseReadBind(SQL查寻句柄,历员); i++)
     {
      历表[i].TIME_G        = 历员.TIME_G;
      历表[i].TIME_C        = 历员.TIME_C;
      历表[i].TIME         = 历员.TIME;
      历表[i].SYMBOL       = 历员.SYMBOL;
      历表[i].ORDER_ID     = 历员.ORDER_ID;
      历表[i].POSITION_ID  = 历员.POSITION_ID ;
      历表[i].DEAL_ID      = 历员.DEAL_ID;
      历表[i].TYPE         = 历员.TYPE;
      历表[i].ENTRY        = 历员.ENTRY ;
      历表[i].VOLUME       = 历员.VOLUME;
      历表[i].SL           = 历员.SL;
      历表[i].TP           = 历员.TP;
      历表[i].PRICE        = 历员.PRICE;
      历表[i]. COMMISSION  = 历员. COMMISSION;
      历表[i].SWAP         = 历员.SWAP ;
      历表[i].DEAL_YJ      = 历员.DEAL_YJ;
      历表[i].PROFIT       = 历员.PROFIT ;
      历表[i].MAGIC        = 历员.MAGIC;
      历表[i]. COMMENT     = 历员.COMMENT;
      历表[i]. REASON      = 历员.REASON;
     }
   DatabaseFinalize(SQL查寻句柄);
   DatabaseClose(database);
  }
//+------------------------------------------------------------------+
bool sqlite类::创建持仓列表(int database,string 要创建的持仓列表名)
  {
   bool 检测=执行SQL(database,"CREATE TABLE IF NOT EXISTS "+要创建的持仓列表名+ " ("
                         "TIME_G       INT    NOT NULL,"
                         "TIME_C       INT    NOT NULL,"
                         "SYMBOL        CHAR(20) NOT NULL,"
                         "POSITION_ID    INT     NOT NULL,"
                         "TIME_IN        INT    NOT NULL,"
                         "TYPE           INT     NOT NULL,"
                         "VOLUME         REAL    NOT NULL,"
                         "PRICE_O        REAL    NOT NULL,"
                         "SL             REAL ,"
                         "TP             REAL,"
                         "PRICE_C        REAL    NOT NULL,"
                         "SWAP           REAL,"
                         "PROFIT         REAL    NOT NULL,"
                         "MAGIC          INT,"
                         "COMMENT        TEXT,"
                         "TIME_S         INT,"
                         "REASON         INT);");
   if(!检测)
      Print(要创建的持仓列表名, __FUNCTION__,GetLastError());
   return 检测;
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool sqlite类::创建账户信息列表(int database,string 要创建的账户信息列表名)
  {
   bool 检测=执行SQL(database,"CREATE TABLE IF NOT EXISTS "+要创建的账户信息列表名+ " ("

                         "TIME_G       INT     NOT NULL,"
                         "TIME_C       INT     NOT NULL,"
                         "ACCOUNT_LOGIN   INT  NOT NULL,"
                         "ACCOUNT_LEVERAGE INT NOT NULL,"
                         "ACCOUNT_BALANCE       REAL,"
                         "ACCOUNT_EQUITY        REAL,"
                         "ACCOUNT_MARGIN        REAL,"
                         "ACCOUNT_MARGIN_FREE   REAL,"
                         "ACCOUNT_MARGIN_LEVEL  REAL,"
                         "ACCOUNT_PROFIT        REAL,"

                         "SYMBOL                TEXT,"
                         "ASK                   REAL,"
                         "BID                   REAL,"
                         "SPREAD                INT,"
                         "SWAP_MODE             INT,"
                         "SWAP_LONG             REAL,"
                         "SWAP_SHORT            REAL,"
                         "SESSION_INTEREST      REAL);");

   if(!检测)
      Print(要创建的账户信息列表名, __FUNCTION__,GetLastError());
   return 检测;
  }
//----

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool sqlite类::插入账户信息数据(int database,string 表名,string &symbol_list[])
  {
//--- auxiliary variables
   bool failed=false;
   DatabaseTransactionBegin(database);
   long               TIME_G=(long)TimeGMT();;
   long               TIME_C=(long)TimeCurrent();;

   long               LOGIN = AccountInfoInteger(ACCOUNT_LOGIN);
   long               LEVERAGE = AccountInfoInteger(ACCOUNT_LEVERAGE);
   double             BALANCE = AccountInfoDouble(ACCOUNT_BALANCE) ;
   double             EQUITY = AccountInfoDouble(ACCOUNT_EQUITY) ;
   double             MARGIN = AccountInfoDouble(ACCOUNT_MARGIN) ;
   double             MARGIN_FREE = AccountInfoDouble(ACCOUNT_MARGIN_FREE) ;
   double             MARGIN_LEVEL = AccountInfoDouble(ACCOUNT_MARGIN_LEVEL) ;
   double             PROFIT=AccountInfoDouble(ACCOUNT_PROFIT) ;

   if(ArraySize(symbol_list)<=0)
     {
      ArrayResize(symbol_list,1);
      symbol_list[0]=Symbol();
     }
   for(int i=0; i<ArraySize(symbol_list); i++)
     {
      string SYMBOL = symbol_list[i];
      SYMBOL=币种修正(SYMBOL);
      double ASK = SymbolInfoDouble(SYMBOL,SYMBOL_ASK);
      double BID = SymbolInfoDouble(SYMBOL,SYMBOL_BID);
      long SPREAD = SymbolInfoInteger(SYMBOL,SYMBOL_SPREAD);
      long SWAP_MODE = SymbolInfoInteger(SYMBOL,SYMBOL_SWAP_MODE);
      double SWAP_LONG = SymbolInfoDouble(SYMBOL,SYMBOL_SWAP_LONG);
      double SWAP_SHORT = SymbolInfoDouble(SYMBOL,SYMBOL_SWAP_SHORT);
      double  SESSION_INTEREST = SymbolInfoDouble(SYMBOL,SYMBOL_SESSION_INTEREST);
      //--- add each deal to the table using the following query
      string request_text=StringFormat("INSERT INTO "+表名+" (TIME_G,TIME_C,ACCOUNT_LOGIN,ACCOUNT_LEVERAGE,ACCOUNT_BALANCE,ACCOUNT_EQUITY,ACCOUNT_MARGIN,ACCOUNT_MARGIN_FREE,ACCOUNT_MARGIN_LEVEL,ACCOUNT_PROFIT,SYMBOL,ASK,BID,SPREAD,SWAP_MODE,SWAP_LONG,SWAP_SHORT,SESSION_INTEREST)"
                                       "VALUES (%d,%d,%d,%d,%G,%G,%G,%G,%G,%G,'%s',%G,%G,%d,%d,%G,%G,%G)",
                                       TIME_G,TIME_C,LOGIN,LEVERAGE,BALANCE,EQUITY,MARGIN,MARGIN_FREE,MARGIN_LEVEL,PROFIT,SYMBOL,ASK,BID,SPREAD,SWAP_MODE,SWAP_LONG,SWAP_SHORT,SESSION_INTEREST);

      if(!DatabaseExecute(database, request_text))
        {
         PrintFormat("%s:  执行插入账户信息数据语句错误 %d", __FUNCTION__, GetLastError());
         failed=true;
         break;
        }
      //--- check for transaction execution errors
      if(failed)
        {
         //--- roll back all transactions and unlock the database
         DatabaseTransactionRollback(database);
         PrintFormat("%s: 账户信息数据插入错误回滚 %d", __FUNCTION__, GetLastError());
         return(false);
        }

     }
//--- all transactions have been performed successfully - record changes and unlock the database
   DatabaseTransactionCommit(database);
   return(true);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool sqlite类::创建币价列表(int database,string 要创建的持仓列表名)
  {
   bool 检测=执行SQL(database,"CREATE TABLE IF NOT EXISTS "+要创建的持仓列表名+ " ("
                         "SYMBOL        CHAR(50) PRIMARY KEY,"
                         "PRICE        REAL    NOT NULL);");
   if(!检测)
      Print(要创建的持仓列表名, __FUNCTION__,GetLastError());
   return 检测;
  }
//+------------------------------------------------------------------+
bool sqlite类::插入持仓数据(int database,string 表名,string 币种,long Magic,string 注释,ulong 设置订单起始时间=0)
  {
//--- auxiliary variables
   long               TIME_G;
   long               TIME_C;
   string              SYMBOL;
   ulong               POSITION_ID;
   long               TIME_IN;
   ENUM_POSITION_TYPE  TYPE;
   double              VOLUME ;
   double             PRICE_O;
   double              SL;
   double             TP;
   double             PRICE_C;
   double              SWAP;
   double              PROFIT;
   long               MAGIC;
   string              COMMENT;
   long                TIME_S;
   ENUM_POSITION_REASON  REASON;
//--- go through all deals and add them to the database
   bool failed=false;
   DatabaseTransactionBegin(database);
   for(int i=0; i<PositionsTotal(); i++)
     {
      if(PositionGetTicket(i)>0&&(ulong)PositionGetInteger(POSITION_TIME)>设置订单起始时间&&PositionGetSymbol(i)==币种&&PositionGetInteger(POSITION_MAGIC)==Magic&&PositionGetString(POSITION_COMMENT)==注释)
        {
         TIME_G=(long)TimeGMT();
         TIME_C=(long)TimeCurrent();
         SYMBOL=PositionGetString(POSITION_SYMBOL);
         POSITION_ID=PositionGetInteger(POSITION_TICKET);
         TIME_IN=PositionGetInteger(POSITION_TIME);
         TYPE=(ENUM_POSITION_TYPE)PositionGetInteger(POSITION_TYPE);
         VOLUME=PositionGetDouble(POSITION_VOLUME);
         PRICE_O=PositionGetDouble(POSITION_PRICE_OPEN);
         SL=PositionGetDouble(POSITION_SL);
         TP=PositionGetDouble(POSITION_TP);
         PRICE_C=PositionGetDouble(POSITION_PRICE_CURRENT);
         SWAP=PositionGetDouble(POSITION_SWAP);
         PROFIT=PositionGetDouble(POSITION_PROFIT);
         MAGIC=PositionGetInteger(POSITION_MAGIC);
         COMMENT=PositionGetString(POSITION_COMMENT);
         TIME_S=(long)TimeCurrent()-(long)PositionGetInteger(POSITION_TIME);
         REASON=(ENUM_POSITION_REASON)PositionGetInteger(POSITION_REASON);
         //--- add each deal to the table using the following query
         string request_text=StringFormat("INSERT INTO "+表名+" (TIME_G,TIME_C,SYMBOL,POSITION_ID,TIME_IN,TYPE,VOLUME,PRICE_O,SL,TP,PRICE_C,SWAP,PROFIT,MAGIC,COMMENT,TIME_S,REASON)"
                                          "VALUES (%d,%d,'%s',%d,%d,%d,%G,%G,%G,%G,%G,%G,%G,%d,'%s',%d,%d)",
                                          TIME_G,TIME_C,SYMBOL,POSITION_ID,TIME_IN,TYPE,VOLUME,PRICE_O,SL,TP,PRICE_C,SWAP,PROFIT,MAGIC,COMMENT,TIME_S,REASON);
         if(!DatabaseExecute(database, request_text))
           {
            PrintFormat("%s:  执行插入持仓列表语句错误 %d", __FUNCTION__, GetLastError());
            failed=true;
            break;
           }
        }
      //--- check for transaction execution errors
      if(failed)
        {
         //--- roll back all transactions and unlock the database
         DatabaseTransactionRollback(database);
         PrintFormat("%s: 持仓列表插入错误回滚 %d", __FUNCTION__, GetLastError());
         return(false);
        }
     }
//--- all transactions have been performed successfully - record changes and unlock the database
   DatabaseTransactionCommit(database);
   return(true);
  }
//+------------------------------------------------------------------+
bool sqlite类::插入持仓数据(int database,string 表名,string 币种,long Magic,ulong 设置订单起始时间=0)
  {
//--- auxiliary variables
   long               TIME_G;
   long               TIME_C;
   string              SYMBOL;
   ulong               POSITION_ID;
   long               TIME_IN;
   ENUM_POSITION_TYPE  TYPE;
   double              VOLUME ;
   double             PRICE_O;
   double              SL;
   double             TP;
   double             PRICE_C;
   double              SWAP;
   double              PROFIT;
   long               MAGIC;
   string              COMMENT;
   long                TIME_S;
   ENUM_POSITION_REASON  REASON;
//--- go through all deals and add them to the database
   bool failed=false;
   DatabaseTransactionBegin(database);
   for(int i=0; i<PositionsTotal(); i++)
     {
      if(PositionGetTicket(i)>0&&(ulong)PositionGetInteger(POSITION_TIME)>设置订单起始时间&&PositionGetSymbol(i)==币种&&PositionGetInteger(POSITION_MAGIC)==Magic)
        {
         TIME_G=(long)TimeGMT();
         TIME_C=(long)TimeCurrent();
         SYMBOL=PositionGetString(POSITION_SYMBOL);
         POSITION_ID=PositionGetInteger(POSITION_TICKET);
         TIME_IN=PositionGetInteger(POSITION_TIME);
         TYPE=(ENUM_POSITION_TYPE)PositionGetInteger(POSITION_TYPE);
         VOLUME=PositionGetDouble(POSITION_VOLUME);
         PRICE_O=PositionGetDouble(POSITION_PRICE_OPEN);
         SL=PositionGetDouble(POSITION_SL);
         TP=PositionGetDouble(POSITION_TP);
         PRICE_C=PositionGetDouble(POSITION_PRICE_CURRENT);
         SWAP=PositionGetDouble(POSITION_SWAP);
         PROFIT=PositionGetDouble(POSITION_PROFIT);
         MAGIC=PositionGetInteger(POSITION_MAGIC);
         COMMENT=PositionGetString(POSITION_COMMENT);
         TIME_S=(long)TimeCurrent()-(long)PositionGetInteger(POSITION_TIME);
         REASON=(ENUM_POSITION_REASON)PositionGetInteger(POSITION_REASON);
         //--- add each deal to the table using the following query
         string request_text=StringFormat("INSERT INTO "+表名+" (TIME_G,TIME_C,SYMBOL,POSITION_ID,TIME_IN,TYPE,VOLUME,PRICE_O,SL,TP,PRICE_C,SWAP,PROFIT,MAGIC,COMMENT,TIME_S,REASON)"
                                          "VALUES (%d,%d,'%s',%d,%d,%d,%G,%G,%G,%G,%G,%G,%G,%d,'%s',%d,%d)",
                                          TIME_G,TIME_C,SYMBOL,POSITION_ID,TIME_IN,TYPE,VOLUME,PRICE_O,SL,TP,PRICE_C,SWAP,PROFIT,MAGIC,COMMENT,TIME_S,REASON);
         if(!DatabaseExecute(database, request_text))
           {
            PrintFormat("%s:  执行插入持仓列表语句错误 %d", __FUNCTION__, GetLastError());
            failed=true;
            break;
           }
        }
      //--- check for transaction execution errors
      if(failed)
        {
         //--- roll back all transactions and unlock the database
         DatabaseTransactionRollback(database);
         PrintFormat("%s: 持仓列表插入错误回滚 %d", __FUNCTION__, GetLastError());
         return(false);
        }
     }
//--- all transactions have been performed successfully - record changes and unlock the database
   DatabaseTransactionCommit(database);
   return(true);
  }
//+------------------------------------------------------------------+
bool sqlite类::插入持仓数据(int database,string 表名,string 币种,ulong 设置订单起始时间=0)
  {
//--- auxiliary variables
   long               TIME_G;
   long               TIME_C;
   string              SYMBOL;
   ulong               POSITION_ID;
   long               TIME_IN;
   ENUM_POSITION_TYPE  TYPE;
   double              VOLUME ;
   double             PRICE_O;
   double              SL;
   double             TP;
   double             PRICE_C;
   double              SWAP;
   double              PROFIT;
   long               MAGIC;
   string              COMMENT;
   long                TIME_S;
   ENUM_POSITION_REASON  REASON;

//--- go through all deals and add them to the database
   bool failed=false;
   DatabaseTransactionBegin(database);
   for(int i=0; i<PositionsTotal(); i++)
     {
      if(PositionGetTicket(i)>0&&(ulong)PositionGetInteger(POSITION_TIME)>设置订单起始时间&&PositionGetSymbol(i)==币种)
        {
         TIME_G=(long)TimeGMT();
         TIME_C=(long)TimeCurrent();
         SYMBOL=PositionGetString(POSITION_SYMBOL);
         POSITION_ID=PositionGetInteger(POSITION_TICKET);
         TIME_IN=PositionGetInteger(POSITION_TIME);
         TYPE=(ENUM_POSITION_TYPE)PositionGetInteger(POSITION_TYPE);
         VOLUME=PositionGetDouble(POSITION_VOLUME);
         PRICE_O=PositionGetDouble(POSITION_PRICE_OPEN);
         SL=PositionGetDouble(POSITION_SL);
         TP=PositionGetDouble(POSITION_TP);
         PRICE_C=PositionGetDouble(POSITION_PRICE_CURRENT);
         SWAP=PositionGetDouble(POSITION_SWAP);
         PROFIT=PositionGetDouble(POSITION_PROFIT);
         MAGIC=PositionGetInteger(POSITION_MAGIC);
         COMMENT=PositionGetString(POSITION_COMMENT);
         TIME_S=(long)TimeCurrent()-(long)PositionGetInteger(POSITION_TIME);
         REASON=(ENUM_POSITION_REASON)PositionGetInteger(POSITION_REASON);
         //--- add each deal to the table using the following query
         string request_text=StringFormat("INSERT INTO "+表名+" (TIME_G,TIME_C,SYMBOL,POSITION_ID,TIME_IN,TYPE,VOLUME,PRICE_O,SL,TP,PRICE_C,SWAP,PROFIT,MAGIC,COMMENT,TIME_S,REASON)"
                                          "VALUES (%d,%d,'%s',%d,%d,%d,%G,%G,%G,%G,%G,%G,%G,%d,'%s',%d,%d)",
                                          TIME_G,TIME_C,SYMBOL,POSITION_ID,TIME_IN,TYPE,VOLUME,PRICE_O,SL,TP,PRICE_C,SWAP,PROFIT,MAGIC,COMMENT,TIME_S,REASON);
         if(!DatabaseExecute(database, request_text))
           {
            PrintFormat("%s:  执行插入持仓列表语句错误 %d", __FUNCTION__, GetLastError());
            failed=true;
            break;
           }
        }
      //--- check for transaction execution errors
      if(failed)
        {
         //--- roll back all transactions and unlock the database
         DatabaseTransactionRollback(database);
         PrintFormat("%s: 持仓列表插入错误回滚 %d", __FUNCTION__, GetLastError());
         return(false);
        }
     }
//--- all transactions have been performed successfully - record changes and unlock the database
   DatabaseTransactionCommit(database);
   return(true);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool sqlite类::插入持仓数据(int database,string 表名,long Magic,ulong 设置订单起始时间=0)
  {
//--- auxiliary variables
   long               TIME_G;
   long               TIME_C;
   string              SYMBOL;
   ulong               POSITION_ID;
   long               TIME_IN;
   ENUM_POSITION_TYPE  TYPE;
   double              VOLUME ;
   double             PRICE_O;
   double              SL;
   double             TP;
   double             PRICE_C;
   double              SWAP;
   double              PROFIT;
   long               MAGIC;
   string              COMMENT;
   long                TIME_S;
   ENUM_POSITION_REASON  REASON;
//--- go through all deals and add them to the database
   bool failed=false;
   DatabaseTransactionBegin(database);
   for(int i=0; i<PositionsTotal(); i++)
     {
      if(PositionGetTicket(i)>0&&(ulong)PositionGetInteger(POSITION_TIME)>设置订单起始时间&&PositionGetInteger(POSITION_MAGIC)==Magic)
        {
         TIME_G=(long)TimeGMT();
         TIME_C=(long)TimeCurrent();
         SYMBOL=PositionGetString(POSITION_SYMBOL);
         POSITION_ID=PositionGetInteger(POSITION_TICKET);
         TIME_IN=PositionGetInteger(POSITION_TIME);
         TYPE=(ENUM_POSITION_TYPE)PositionGetInteger(POSITION_TYPE);
         VOLUME=PositionGetDouble(POSITION_VOLUME);
         PRICE_O=PositionGetDouble(POSITION_PRICE_OPEN);
         SL=PositionGetDouble(POSITION_SL);
         TP=PositionGetDouble(POSITION_TP);
         PRICE_C=PositionGetDouble(POSITION_PRICE_CURRENT);
         SWAP=PositionGetDouble(POSITION_SWAP);
         PROFIT=PositionGetDouble(POSITION_PROFIT);
         MAGIC=PositionGetInteger(POSITION_MAGIC);
         COMMENT=PositionGetString(POSITION_COMMENT);
         TIME_S=(long)TimeCurrent()-(long)PositionGetInteger(POSITION_TIME);
         REASON=(ENUM_POSITION_REASON)PositionGetInteger(POSITION_REASON);
         //--- add each deal to the table using the following query
         string request_text=StringFormat("INSERT INTO "+表名+" (TIME_G,TIME_C,SYMBOL,POSITION_ID,TIME_IN,TYPE,VOLUME,PRICE_O,SL,TP,PRICE_C,SWAP,PROFIT,MAGIC,COMMENT,TIME_S,REASON)"
                                          "VALUES (%d,%d,'%s',%d,%d,%d,%G,%G,%G,%G,%G,%G,%G,%d,'%s',%d,%d)",
                                          TIME_G,TIME_C,SYMBOL,POSITION_ID,TIME_IN,TYPE,VOLUME,PRICE_O,SL,TP,PRICE_C,SWAP,PROFIT,MAGIC,COMMENT,TIME_S,REASON);
         if(!DatabaseExecute(database, request_text))
           {
            PrintFormat("%s:  执行插入持仓列表语句错误 %d", __FUNCTION__, GetLastError());
            failed=true;
            break;
           }
        }
      //--- check for transaction execution errors
      if(failed)
        {
         //--- roll back all transactions and unlock the database
         DatabaseTransactionRollback(database);
         PrintFormat("%s: 持仓列表插入错误回滚 %d", __FUNCTION__, GetLastError());
         return(false);
        }
     }
//--- all transactions have been performed successfully - record changes and unlock the database
   DatabaseTransactionCommit(database);
   return(true);
  }
//+------------------------------------------------------------------+
bool sqlite类::插入持仓数据(int database,string 表名,ulong 设置订单起始时间=0)
  {
//--- auxiliary variables
   long               TIME_G;
   long               TIME_C;
   string              SYMBOL;
   ulong               POSITION_ID;
   long               TIME_IN;
   ENUM_POSITION_TYPE  TYPE;
   double              VOLUME ;
   double             PRICE_O;
   double              SL;
   double             TP;
   double             PRICE_C;
   double              SWAP;
   double              PROFIT;
   long               MAGIC;
   string              COMMENT;
   long                TIME_S;
   ENUM_POSITION_REASON  REASON;
//--- go through all deals and add them to the database
   bool failed=false;
   DatabaseTransactionBegin(database);
   for(int i=0; i<PositionsTotal(); i++)
     {
      if(PositionGetTicket(i)>0&&(ulong)PositionGetInteger(POSITION_TIME)>设置订单起始时间)
        {
         TIME_G=(long)TimeGMT();
         TIME_C=(long)TimeCurrent();
         SYMBOL=PositionGetString(POSITION_SYMBOL);
         POSITION_ID=PositionGetInteger(POSITION_TICKET);
         TIME_IN=PositionGetInteger(POSITION_TIME);
         TYPE=(ENUM_POSITION_TYPE)PositionGetInteger(POSITION_TYPE);
         VOLUME=PositionGetDouble(POSITION_VOLUME);
         PRICE_O=PositionGetDouble(POSITION_PRICE_OPEN);
         SL=PositionGetDouble(POSITION_SL);
         TP=PositionGetDouble(POSITION_TP);
         PRICE_C=PositionGetDouble(POSITION_PRICE_CURRENT);
         SWAP=PositionGetDouble(POSITION_SWAP);
         PROFIT=PositionGetDouble(POSITION_PROFIT);
         MAGIC=PositionGetInteger(POSITION_MAGIC);
         COMMENT=PositionGetString(POSITION_COMMENT);
         TIME_S=(long)TimeCurrent()-(long)PositionGetInteger(POSITION_TIME);
         REASON=(ENUM_POSITION_REASON)PositionGetInteger(POSITION_REASON);
         //--- add each deal to the table using the following query
         string request_text=StringFormat("INSERT INTO "+表名+" (TIME_G,TIME_C,SYMBOL,POSITION_ID,TIME_IN,TYPE,VOLUME,PRICE_O,SL,TP,PRICE_C,SWAP,PROFIT,MAGIC,COMMENT,TIME_S,REASON)"
                                          "VALUES (%d,%d,'%s',%d,%d,%d,%G,%G,%G,%G,%G,%G,%G,%d,'%s',%d,%d)",
                                          TIME_G,TIME_C,SYMBOL,POSITION_ID,TIME_IN,TYPE,VOLUME,PRICE_O,SL,TP,PRICE_C,SWAP,PROFIT,MAGIC,COMMENT,TIME_S,REASON);
         if(!DatabaseExecute(database, request_text))
           {
            PrintFormat("%s:  执行插入持仓列表语句错误 %d", __FUNCTION__, GetLastError());
            failed=true;
            break;
           }
        }
      //--- check for transaction execution errors
      if(failed)
        {
         //--- roll back all transactions and unlock the database
         DatabaseTransactionRollback(database);
         PrintFormat("%s: 持仓列表插入错误回滚 %d", __FUNCTION__, GetLastError());
         return(false);
        }
     }
//--- all transactions have been performed successfully - record changes and unlock the database
   DatabaseTransactionCommit(database);
   return(true);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool sqlite类::插入币价数据(int database,string 表名)
  {
   bool failed=false;

   DatabaseTransactionBegin(database);
   for(int i=0; i<SymbolsTotal(true); i++)
     {
      string    SYMBOL=SymbolName(i,true);
      double    PRICE=SymbolInfoDouble(SYMBOL,SYMBOL_BID);
      bool check =false;
      int 查柄=SQL查寻返回句柄(database,"SELECT * FROM "+表名);
      if(查柄!=INVALID_HANDLE)
         for(int f=DatabaseColumnsCount(查柄)-1; DatabaseReadBind(查柄,c_l)||f>=0; f--)
           {
            if(c_l.币种==SYMBOL)
              {
               check=true;
               break;
              }
           }
      else
         break;
      //---
      if(check==false)
        {
         string request_text=StringFormat("INSERT INTO "+表名+" (SYMBOL,PRICE)"
                                          "VALUES ('%s',%G)",SYMBOL,PRICE);
         if(!DatabaseExecute(database, request_text))
           {
            PrintFormat("%s:  执行插入持仓列表语句错误 %d", __FUNCTION__, GetLastError());
            failed=true;
            break;
           }
        }
     }
//--- check for transaction execution errors
   if(failed)
     {
      //--- roll back all transactions and unlock the database
      DatabaseTransactionRollback(database);
      PrintFormat("%s: 持仓列表插入错误回滚 %d", __FUNCTION__, GetLastError());
      return(false);
     }
//--- all transactions have been performed successfully - record changes and unlock the database
   DatabaseTransactionCommit(database);
   return(true);
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
bool sqlite类::更新币价数据(int database,string 表名)
  {
   bool failed=false;

   DatabaseTransactionBegin(database);
   int 查柄=SQL查寻返回句柄(database,"SELECT * FROM "+表名);
   for(int i=0; i<SymbolsTotal(true); i++)
     {
      string    SYMBOL=SymbolName(i,true);
      double    PRICE=SymbolInfoDouble(SYMBOL,SYMBOL_BID);
      bool check =false;
      if(查柄!=INVALID_HANDLE)
         for(int f=DatabaseColumnsCount(查柄)-1; DatabaseReadBind(查柄,c_l)||f>=0; f--)
           {
            if(c_l.币种==SYMBOL)
              {
               check=true;
               break;
              }
           }
      //---
      if(check==true)
        {
         string request_text=StringFormat("UPDATE " +表名+" SET PRICE = '%G' where SYMBOL == '%s'",PRICE,SYMBOL);
         Print(i,request_text);
         if(!DatabaseExecute(database, request_text))
           {
            PrintFormat("%s:  执行更新列表语句错误 %d", __FUNCTION__, GetLastError());
            failed=true;
            break;
           }
        }
     }
//--- check for transaction execution errors
   if(failed)
     {
      //--- roll back all transactions and unlock the database
      DatabaseTransactionRollback(database);
      PrintFormat("%s: 更新列表错误回滚 %d", __FUNCTION__, GetLastError());
      return(false);
     }
//--- all transactions have been performed successfully - record changes and unlock the database
   DatabaseTransactionCommit(database);
   return(true);
  }
//+------------------------------------------------------------------+



template<typename x,typename y>
bool sqlite类::数组含有check(x vaule,y &arr[])
  {
   for(int i=0; i<ArraySize(arr); i++)
      if(StringFind((string)arr[i],(string)vaule)!=-1)
         return true;
   return false;
  }
//+------------------------------------------------------------------+
bool sqlite类::创建历史列表(int database,string 要创建的历史列表名)
  {
   bool 检测=执行SQL(database,"CREATE TABLE IF NOT EXISTS "+要创建的历史列表名+ " ("
                         "TIME_G      INT    NOT NULL,"
                         "TIME_C      INT    NOT NULL,"
                         "TIME        INT      NOT NULL,"
                         "SYMBOL      CHAR(20) NOT NULL,"
                         "ORDER_ID    INT      NOT NULL,"
                         "POSITION_ID INT      NOT NULL,"
                         "DEAL_ID     INT      NOT NULL,"
                         "TYPE        INT      NOT NULL,"
                         "ENTRY       INT      NOT NULL,"
                         "VOLUME      REAL     NOT NULL,"
                         "SL          REAL,"
                         "TP          REAL,"
                         "PRICE       REAL     NOT NULL,"
                         "COMMISSION  REAL,"
                         "SWAP        REAL,"
                         "DEAL_YJ     REAL,"
                         "PROFIT      REAL    NOT NULL,"
                         "MAGIC       INT,"
                         "COMMENT     TEXT,"
                         "REASON      INT);");
   if(!检测)
      Print(要创建的历史列表名, __FUNCTION__,GetLastError());
   return 检测;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool sqlite类::插入历史数据(int database,string 表名,string 币种,long Magic,string 注释,ulong 设置起始时间=0)
  {
//--- auxiliary variables
   long               TIME_G;
   long               TIME_C;
   long           TIME;
   string             SYMBOL;
   ulong              ORDER_ID;
   ulong              POSITION_ID;
   ulong              DEAL_ID;
   ENUM_DEAL_ENTRY               TYPE;             // DEAL_TYPE
   ENUM_DEAL_ENTRY               ENTRY;            // DEAL_ENTRY
   double             VOLUME;
   double             SL;
   double             TP;
   double             PRICE;
   double             COMMISSION;
   double             SWAP;
   double             DEAL_YJ;
   double             PROFIT;
   long               MAGIC;
   string             COMMENT;
   long               REASON;
//--- go through all deals and add them to the database
   bool failed=false;
   DatabaseTransactionBegin(database);
   for(int i=0; i<HistoryDealsTotal(); i++)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(HistoryDealGetTicket(i)>0&&(ulong)HistoryDealGetInteger(deal_ticket, DEAL_TIME)>设置起始时间&&HistoryDealGetString(deal_ticket, DEAL_SYMBOL)==币种
         &&HistoryDealGetInteger(deal_ticket, DEAL_MAGIC)==Magic&&HistoryDealGetString(deal_ticket, DEAL_COMMENT)==注释)
        {
         TIME_G=(long)TimeGMT();
         TIME_C=(long)TimeCurrent();
         TIME=HistoryDealGetInteger(deal_ticket, DEAL_TIME);
         SYMBOL=HistoryDealGetString(deal_ticket, DEAL_SYMBOL);
         ORDER_ID=HistoryDealGetInteger(deal_ticket, DEAL_ORDER);
         POSITION_ID=HistoryDealGetInteger(deal_ticket, DEAL_POSITION_ID);
         DEAL_ID=HistoryDealGetInteger(deal_ticket, DEAL_TICKET);
         TYPE=(ENUM_DEAL_ENTRY)HistoryDealGetInteger(deal_ticket, DEAL_TYPE);           // DEAL_TYPE
         ENTRY=(ENUM_DEAL_ENTRY)HistoryDealGetInteger(deal_ticket, DEAL_ENTRY);    // DEAL_ENTRY
         VOLUME=HistoryDealGetDouble(deal_ticket, DEAL_VOLUME);
         SL=HistoryDealGetDouble(deal_ticket, DEAL_SL);
         TP=HistoryDealGetDouble(deal_ticket, DEAL_TP);
         PRICE=HistoryDealGetDouble(deal_ticket, DEAL_PRICE);
         COMMISSION=HistoryDealGetDouble(deal_ticket, DEAL_COMMISSION);
         SWAP= HistoryDealGetDouble(deal_ticket, DEAL_SWAP);
         DEAL_YJ=HistoryDealGetDouble(deal_ticket, DEAL_FEE);
         PROFIT= HistoryDealGetDouble(deal_ticket, DEAL_PROFIT);
         MAGIC=HistoryDealGetInteger(deal_ticket, DEAL_MAGIC);
         COMMENT=HistoryDealGetString(deal_ticket, DEAL_COMMENT);
         REASON= HistoryDealGetInteger(deal_ticket, DEAL_REASON);
         //--- add each deal to the table using the following query
         string request_text=StringFormat("INSERT INTO "+表名+" (TIME_G,TIME_C,TIME,SYMBOL,ORDER_ID,POSITION_ID,DEAL_ID,TYPE,ENTRY,VOLUME,SL,TP,PRICE,COMMISSION,SWAP,DEAL_YJ,PROFIT,MAGIC,COMMENT,REASON)"
                                          "VALUES (%d,%d,%d,'%s',%d,%d,%d,%d,%d,%G,%G,%G,%G,%G,%G,%G,%G,%d,'%s',%d)",
                                          TIME_G,TIME_C,TIME,SYMBOL,ORDER_ID,POSITION_ID,DEAL_ID,TYPE,ENTRY,VOLUME,SL,TP,PRICE,COMMISSION,SWAP,DEAL_YJ,PROFIT,MAGIC,COMMENT,REASON);
         if(!DatabaseExecute(database, request_text))
           {
            PrintFormat("%s:  执行插入历史成交列表语句错误 %d", __FUNCTION__, GetLastError());
            failed=true;
            break;
           }
        }
      //--- check for transaction execution errors
      if(failed)
        {
         //--- roll back all transactions and unlock the database
         DatabaseTransactionRollback(database);
         PrintFormat("%s: 历史成交列表插入错误回滚 %d", __FUNCTION__, GetLastError());
         return(false);
        }
     }
//--- all transactions have been performed successfully - record changes and unlock the database
   DatabaseTransactionCommit(database);
   return(true);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool sqlite类::插入历史数据(int database,string 表名,string 币种,long Magic,ulong 设置起始时间=0)
  {
//--- auxiliary variables
   long               TIME_G;
   long               TIME_C;
   long               TIME;
   string             SYMBOL;
   ulong              ORDER_ID;
   ulong              POSITION_ID;
   ulong              DEAL_ID;
   ENUM_DEAL_ENTRY               TYPE;             // DEAL_TYPE
   ENUM_DEAL_ENTRY               ENTRY;            // DEAL_ENTRY
   double             VOLUME;
   double             SL;
   double             TP;
   double             PRICE;
   double             COMMISSION;
   double             SWAP;
   double             DEAL_YJ;
   double             PROFIT;
   long               MAGIC;
   string             COMMENT;
   long               REASON;
//--- go through all deals and add them to the database
   bool failed=false;
   DatabaseTransactionBegin(database);
   for(int i=0; i<HistoryDealsTotal(); i++)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(HistoryDealGetTicket(i)>0&&(ulong)HistoryDealGetInteger(deal_ticket, DEAL_TIME)>设置起始时间&&HistoryDealGetString(deal_ticket, DEAL_SYMBOL)==币种
         &&HistoryDealGetInteger(deal_ticket, DEAL_MAGIC)==Magic)
        {
         TIME_G=(long)TimeGMT();
         TIME_C=(long)TimeCurrent();
         TIME=HistoryDealGetInteger(deal_ticket, DEAL_TIME);
         SYMBOL=HistoryDealGetString(deal_ticket, DEAL_SYMBOL);
         ORDER_ID=HistoryDealGetInteger(deal_ticket, DEAL_ORDER);
         POSITION_ID=HistoryDealGetInteger(deal_ticket, DEAL_POSITION_ID);
         DEAL_ID=HistoryDealGetInteger(deal_ticket, DEAL_TICKET);
         TYPE=(ENUM_DEAL_ENTRY)HistoryDealGetInteger(deal_ticket, DEAL_TYPE);           // DEAL_TYPE
         ENTRY=(ENUM_DEAL_ENTRY)HistoryDealGetInteger(deal_ticket, DEAL_ENTRY);    // DEAL_ENTRY
         VOLUME=HistoryDealGetDouble(deal_ticket, DEAL_VOLUME);
         SL=HistoryDealGetDouble(deal_ticket, DEAL_SL);
         TP=HistoryDealGetDouble(deal_ticket, DEAL_TP);
         PRICE=HistoryDealGetDouble(deal_ticket, DEAL_PRICE);
         COMMISSION=HistoryDealGetDouble(deal_ticket, DEAL_COMMISSION);
         SWAP= HistoryDealGetDouble(deal_ticket, DEAL_SWAP);
         DEAL_YJ=HistoryDealGetDouble(deal_ticket, DEAL_FEE);
         PROFIT= HistoryDealGetDouble(deal_ticket, DEAL_PROFIT);
         MAGIC=HistoryDealGetInteger(deal_ticket, DEAL_MAGIC);
         COMMENT=HistoryDealGetString(deal_ticket, DEAL_COMMENT);
         REASON= HistoryDealGetInteger(deal_ticket, DEAL_REASON);
         //--- add each deal to the table using the following query
         string request_text=StringFormat("INSERT INTO "+表名+" (TIME_G,TIME_C,TIME,SYMBOL,ORDER_ID,POSITION_ID,DEAL_ID,TYPE,ENTRY,VOLUME,SL,TP,PRICE,COMMISSION,SWAP,DEAL_YJ,PROFIT,MAGIC,COMMENT,REASON)"
                                          "VALUES (%d,%d,%d,'%s',%d,%d,%d,%d,%d,%G,%G,%G,%G,%G,%G,%G,%G,%d,'%s',%d)",
                                          TIME_G,TIME_C,TIME,SYMBOL,ORDER_ID,POSITION_ID,DEAL_ID,TYPE,ENTRY,VOLUME,SL,TP,PRICE,COMMISSION,SWAP,DEAL_YJ,PROFIT,MAGIC,COMMENT,REASON);
         if(!DatabaseExecute(database, request_text))
           {
            PrintFormat("%s:  执行插入历史成交列表语句错误 %d", __FUNCTION__, GetLastError());
            failed=true;
            break;
           }
        }
      //--- check for transaction execution errors
      if(failed)
        {
         //--- roll back all transactions and unlock the database
         DatabaseTransactionRollback(database);
         PrintFormat("%s: 历史成交列表插入错误回滚 %d", __FUNCTION__, GetLastError());
         return(false);
        }
     }
//--- all transactions have been performed successfully - record changes and unlock the database
   DatabaseTransactionCommit(database);
   return(true);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool sqlite类::插入历史数据(int database,string 表名,string 币种,ulong 设置起始时间=0)
  {
//--- auxiliary variables
   long               TIME_G;
   long               TIME_C;
   long               TIME;
   string             SYMBOL;
   ulong              ORDER_ID;
   ulong              POSITION_ID;
   ulong              DEAL_ID;
   ENUM_DEAL_ENTRY               TYPE;             // DEAL_TYPE
   ENUM_DEAL_ENTRY               ENTRY;            // DEAL_ENTRY
   double             VOLUME;
   double             SL;
   double             TP;
   double             PRICE;
   double             COMMISSION;
   double             SWAP;
   double             DEAL_YJ;
   double             PROFIT;
   long               MAGIC;
   string             COMMENT;
   long               REASON;
//--- go through all deals and add them to the database
   bool failed=false;
   DatabaseTransactionBegin(database);
   for(int i=0; i<HistoryDealsTotal(); i++)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(HistoryDealGetTicket(i)>0&&(ulong)HistoryDealGetInteger(deal_ticket, DEAL_TIME)>设置起始时间&&HistoryDealGetString(deal_ticket, DEAL_SYMBOL)==币种)
        {
         TIME_G=(long)TimeGMT();
         TIME_C=(long)TimeCurrent();
         TIME=HistoryDealGetInteger(deal_ticket, DEAL_TIME);
         SYMBOL=HistoryDealGetString(deal_ticket, DEAL_SYMBOL);
         ORDER_ID=HistoryDealGetInteger(deal_ticket, DEAL_ORDER);
         POSITION_ID=HistoryDealGetInteger(deal_ticket, DEAL_POSITION_ID);
         DEAL_ID=HistoryDealGetInteger(deal_ticket, DEAL_TICKET);
         TYPE=(ENUM_DEAL_ENTRY)HistoryDealGetInteger(deal_ticket, DEAL_TYPE);           // DEAL_TYPE
         ENTRY=(ENUM_DEAL_ENTRY)HistoryDealGetInteger(deal_ticket, DEAL_ENTRY);    // DEAL_ENTRY
         VOLUME=HistoryDealGetDouble(deal_ticket, DEAL_VOLUME);
         SL=HistoryDealGetDouble(deal_ticket, DEAL_SL);
         TP=HistoryDealGetDouble(deal_ticket, DEAL_TP);
         PRICE=HistoryDealGetDouble(deal_ticket, DEAL_PRICE);
         COMMISSION=HistoryDealGetDouble(deal_ticket, DEAL_COMMISSION);
         SWAP= HistoryDealGetDouble(deal_ticket, DEAL_SWAP);
         DEAL_YJ=HistoryDealGetDouble(deal_ticket, DEAL_FEE);
         PROFIT= HistoryDealGetDouble(deal_ticket, DEAL_PROFIT);
         MAGIC=HistoryDealGetInteger(deal_ticket, DEAL_MAGIC);
         COMMENT=HistoryDealGetString(deal_ticket, DEAL_COMMENT);
         REASON= HistoryDealGetInteger(deal_ticket, DEAL_REASON);
         //--- add each deal to the table using the following query
         string request_text=StringFormat("INSERT INTO "+表名+" (TIME_G,TIME_C,TIME,SYMBOL,ORDER_ID,POSITION_ID,DEAL_ID,TYPE,ENTRY,VOLUME,SL,TP,PRICE,COMMISSION,SWAP,DEAL_YJ,PROFIT,MAGIC,COMMENT,REASON)"
                                          "VALUES (%d,%d,%d,'%s',%d,%d,%d,%d,%d,%G,%G,%G,%G,%G,%G,%G,%G,%d,'%s',%d)",
                                          TIME_G,TIME_C,TIME,SYMBOL,ORDER_ID,POSITION_ID,DEAL_ID,TYPE,ENTRY,VOLUME,SL,TP,PRICE,COMMISSION,SWAP,DEAL_YJ,PROFIT,MAGIC,COMMENT,REASON);
         if(!DatabaseExecute(database, request_text))
           {
            PrintFormat("%s:  执行插入历史成交列表语句错误 %d", __FUNCTION__, GetLastError());
            failed=true;
            break;
           }
        }
      //--- check for transaction execution errors
      if(failed)
        {
         //--- roll back all transactions and unlock the database
         DatabaseTransactionRollback(database);
         PrintFormat("%s: 历史成交列表插入错误回滚 %d", __FUNCTION__, GetLastError());
         return(false);
        }
     }
//--- all transactions have been performed successfully - record changes and unlock the database
   DatabaseTransactionCommit(database);
   return(true);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool sqlite类::插入历史数据(int database,string 表名,long Magic,ulong 设置起始时间=0)
  {
//--- auxiliary variables
   long               TIME_G;
   long               TIME_C;
   long               TIME;
   string             SYMBOL;
   ulong              ORDER_ID;
   ulong              POSITION_ID;
   ulong              DEAL_ID;
   ENUM_DEAL_ENTRY               TYPE;             // DEAL_TYPE
   ENUM_DEAL_ENTRY               ENTRY;            // DEAL_ENTRY
   double             VOLUME;
   double             SL;
   double             TP;
   double             PRICE;
   double             COMMISSION;
   double             SWAP;
   double             DEAL_YJ;
   double             PROFIT;
   long               MAGIC;
   string             COMMENT;
   long               REASON;
//--- go through all deals and add them to the database
   bool failed=false;
   DatabaseTransactionBegin(database);
   for(int i=0; i<HistoryDealsTotal(); i++)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(HistoryDealGetTicket(i)>0&&(ulong)HistoryDealGetInteger(deal_ticket, DEAL_TIME)>设置起始时间
         &&HistoryDealGetInteger(deal_ticket, DEAL_MAGIC)==Magic)
        {
         TIME_G=(long)TimeGMT();
         TIME_C=(long)TimeCurrent();
         TIME=HistoryDealGetInteger(deal_ticket, DEAL_TIME);
         SYMBOL=HistoryDealGetString(deal_ticket, DEAL_SYMBOL);
         ORDER_ID=HistoryDealGetInteger(deal_ticket, DEAL_ORDER);
         POSITION_ID=HistoryDealGetInteger(deal_ticket, DEAL_POSITION_ID);
         DEAL_ID=HistoryDealGetInteger(deal_ticket, DEAL_TICKET);
         TYPE=(ENUM_DEAL_ENTRY)HistoryDealGetInteger(deal_ticket, DEAL_TYPE);           // DEAL_TYPE
         ENTRY=(ENUM_DEAL_ENTRY)HistoryDealGetInteger(deal_ticket, DEAL_ENTRY);    // DEAL_ENTRY
         VOLUME=HistoryDealGetDouble(deal_ticket, DEAL_VOLUME);
         SL=HistoryDealGetDouble(deal_ticket, DEAL_SL);
         TP=HistoryDealGetDouble(deal_ticket, DEAL_TP);
         PRICE=HistoryDealGetDouble(deal_ticket, DEAL_PRICE);
         COMMISSION=HistoryDealGetDouble(deal_ticket, DEAL_COMMISSION);
         SWAP= HistoryDealGetDouble(deal_ticket, DEAL_SWAP);
         DEAL_YJ=HistoryDealGetDouble(deal_ticket, DEAL_FEE);
         PROFIT= HistoryDealGetDouble(deal_ticket, DEAL_PROFIT);
         MAGIC=HistoryDealGetInteger(deal_ticket, DEAL_MAGIC);
         COMMENT=HistoryDealGetString(deal_ticket, DEAL_COMMENT);
         REASON= HistoryDealGetInteger(deal_ticket, DEAL_REASON);
         //--- add each deal to the table using the following query
         string request_text=StringFormat("INSERT INTO "+表名+" (TIME_G,TIME_C,TIME,SYMBOL,ORDER_ID,POSITION_ID,DEAL_ID,TYPE,ENTRY,VOLUME,SL,TP,PRICE,COMMISSION,SWAP,DEAL_YJ,PROFIT,MAGIC,COMMENT,REASON)"
                                          "VALUES (%d,%d,%d,'%s',%d,%d,%d,%d,%d,%G,%G,%G,%G,%G,%G,%G,%G,%d,'%s',%d)",
                                          TIME_G,TIME_C,TIME,SYMBOL,ORDER_ID,POSITION_ID,DEAL_ID,TYPE,ENTRY,VOLUME,SL,TP,PRICE,COMMISSION,SWAP,DEAL_YJ,PROFIT,MAGIC,COMMENT,REASON);
         if(!DatabaseExecute(database, request_text))
           {
            PrintFormat("%s:  执行插入历史成交列表语句错误 %d", __FUNCTION__, GetLastError());
            failed=true;
            break;
           }
        }
      //--- check for transaction execution errors
      if(failed)
        {
         //--- roll back all transactions and unlock the database
         DatabaseTransactionRollback(database);
         PrintFormat("%s: 历史成交列表插入错误回滚 %d", __FUNCTION__, GetLastError());
         return(false);
        }
     }
//--- all transactions have been performed successfully - record changes and unlock the database
   DatabaseTransactionCommit(database);
   return(true);
  }
//+------------------------------------------------------------------+
bool sqlite类::插入历史数据(int database,string 表名,ulong 设置起始时间=0)
  {
//--- auxiliary variables
   long               TIME_G;
   long               TIME_C;
   long               TIME;
   string             SYMBOL;
   ulong              ORDER_ID;
   ulong              POSITION_ID;
   ulong              DEAL_ID;
   ENUM_DEAL_ENTRY               TYPE;             // DEAL_TYPE
   ENUM_DEAL_ENTRY               ENTRY;            // DEAL_ENTRY
   double             VOLUME;
   double             SL;
   double             TP;
   double             PRICE;
   double             COMMISSION;
   double             SWAP;
   double             DEAL_YJ;
   double             PROFIT;
   long               MAGIC;
   string             COMMENT;
   long               REASON;
//--- go through all deals and add them to the database
   bool failed=false;
   DatabaseTransactionBegin(database);
   for(int i=0; i<HistoryDealsTotal(); i++)
     {
      ulong deal_ticket=HistoryDealGetTicket(i);
      if(HistoryDealGetTicket(i)>0&&(ulong)HistoryDealGetInteger(deal_ticket, DEAL_TIME)>设置起始时间)
        {
         TIME_G=(long)TimeGMT();
         TIME_C=(long)TimeCurrent();
         TIME=HistoryDealGetInteger(deal_ticket, DEAL_TIME);
         SYMBOL=HistoryDealGetString(deal_ticket, DEAL_SYMBOL);
         ORDER_ID=HistoryDealGetInteger(deal_ticket, DEAL_ORDER);
         POSITION_ID=HistoryDealGetInteger(deal_ticket, DEAL_POSITION_ID);
         DEAL_ID=HistoryDealGetInteger(deal_ticket, DEAL_TICKET);
         TYPE=(ENUM_DEAL_ENTRY)HistoryDealGetInteger(deal_ticket, DEAL_TYPE);           // DEAL_TYPE
         ENTRY=(ENUM_DEAL_ENTRY)HistoryDealGetInteger(deal_ticket, DEAL_ENTRY);    // DEAL_ENTRY
         VOLUME=HistoryDealGetDouble(deal_ticket, DEAL_VOLUME);
         SL=HistoryDealGetDouble(deal_ticket, DEAL_SL);
         TP=HistoryDealGetDouble(deal_ticket, DEAL_TP);
         PRICE=HistoryDealGetDouble(deal_ticket, DEAL_PRICE);
         COMMISSION=HistoryDealGetDouble(deal_ticket, DEAL_COMMISSION);
         SWAP= HistoryDealGetDouble(deal_ticket, DEAL_SWAP);
         DEAL_YJ=HistoryDealGetDouble(deal_ticket, DEAL_FEE);
         PROFIT= HistoryDealGetDouble(deal_ticket, DEAL_PROFIT);
         MAGIC=HistoryDealGetInteger(deal_ticket, DEAL_MAGIC);
         COMMENT=HistoryDealGetString(deal_ticket, DEAL_COMMENT);
         REASON= HistoryDealGetInteger(deal_ticket, DEAL_REASON);
         //--- add each deal to the table using the following query
         string request_text=StringFormat("INSERT INTO "+表名+" (TIME_G,TIME_C,TIME,SYMBOL,ORDER_ID,POSITION_ID,DEAL_ID,TYPE,ENTRY,VOLUME,SL,TP,PRICE,COMMISSION,SWAP,DEAL_YJ,PROFIT,MAGIC,COMMENT,REASON)"
                                          "VALUES (%d,%d,%d,'%s',%d,%d,%d,%d,%d,%G,%G,%G,%G,%G,%G,%G,%G,%d,'%s',%d)",
                                          TIME_G,TIME_C,TIME,SYMBOL,ORDER_ID,POSITION_ID,DEAL_ID,TYPE,ENTRY,VOLUME,SL,TP,PRICE,COMMISSION,SWAP,DEAL_YJ,PROFIT,MAGIC,COMMENT,REASON);
         if(!DatabaseExecute(database, request_text))
           {
            PrintFormat("%s:  执行插入历史成交列表语句错误 %d", __FUNCTION__, GetLastError());
            failed=true;
            break;
           }
        }
      //--- check for transaction execution errors
      if(failed)
        {
         //--- roll back all transactions and unlock the database
         DatabaseTransactionRollback(database);
         PrintFormat("%s: 历史成交列表插入错误回滚 %d", __FUNCTION__, GetLastError());
         return(false);
        }
     }
//--- all transactions have been performed successfully - record changes and unlock the database
   DatabaseTransactionCommit(database);
   return(true);
  }
//+----------------------------------------------------------
//+------------------------------------------------------------------+
void sqlite类::创删持仓列表(string 库名,string 表名,ulong 程序上机时间)
  {
   int  db=创建sqlite(库名);
   if(删除表(db,表名))
      创建持仓列表(db,表名);
   if(表存在检测(db,表名))
      插入持仓数据(db,表名,程序上机时间);
   关闭数据库(db,库名);
  }
//+------------------------------------------------------------------+
void sqlite类::创删历史列表(string 库名,string 表名,ulong 程序上机时间)
  {
   int  db=创建sqlite(库名);
   if(删除表(db,表名))
      创建历史列表(db,表名);
   if(表存在检测(db,表名))
     {
      HistorySelect(0,TimeCurrent());
      插入历史数据(db,表名,程序上机时间);
     }
   关闭数据库(db,库名);
  }
//---1//+--------------------------------------------------------
//+------------------------------------------------------------------+
template<typename x,typename y>
void sqlite类::创删图表列表(string 库名,string 表名,string 币种,ENUM_TIMEFRAMES 图表周期,x 启动位置,y 结束位置,bool 是否倒序=true)
  {
   int  db=创建sqlite(库名);
   if(删除表(db,表名))
      创建图表列表(db,表名);
   if(表存在检测(db,表名))
      插入图表数据(db,表名,币种,图表周期,启动位置,结束位置,是否倒序);
   关闭数据库(db,库名);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool sqlite类::创建图表列表(int database,string 要创建的图表列表名)
  {
   bool 检测=执行SQL(database,"CREATE TABLE IF NOT EXISTS "+要创建的图表列表名+ " ("
                         "INDEX_S        INT    NOT NULL,"
                         "TIME_G       INT    NOT NULL,"
                         "TIME_C       INT    NOT NULL,"
                         "SYMBOL     CHAR(20) NOT NULL,"
                         "TIME         INT    NOT NULL,"
                         "OPEN         REAL ,"
                         "HIGH         REAL,"
                         "LOW          REAL,"
                         "CLOSE        REAL,"
                         "TICK_VOLUME  INT,"
                         "SPREAD       INT,"
                         "REAL_VOLUME  INT,"
                         "OPEN_CLOSE   REAL,"
                         "HIGH_LOW     REAL,"
                         "ASK          REAL,"
                         "BID          REAL,"
                         "POINT        REAL);");

   if(!检测)
      Print(要创建的图表列表名, __FUNCTION__,GetLastError());
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
template<typename x,typename y>
bool sqlite类::插入图表数据(int database,string 表名,string 币种,ENUM_TIMEFRAMES 图表周期,x 启动位置,y 结束位置,bool 是否倒序=true)
  {
//--- auxiliary variables
   long               INDEX_S;
   long               TIME_G;
   long               TIME_C;
   string             SYMBOL;
   long               TIME;
   double             OPEN;
   double             HIGH;
   double             LOW;
   double             CLOSE;
   long               TICK_VOLUME;
   int                SPREAD;
   long               REAL_VOLUME;
   double             OPEN_CLOSE;
   double             HIGH_LOW;
   double             ASK;
   double             BID;
   double             POINT;
//--- go through all deals and add them to the database
   bool failed=false;
   MqlRates rates[];
   倒序数组(rates,是否倒序);
   int copied=CopyRates(币种,图表周期,启动位置,结束位置,rates);
   DatabaseTransactionBegin(database);
   for(int i=0; i<ArraySize(rates); i++)
     {
      INDEX_S=i;
      TIME_G=(long)TimeGMT();
      TIME_C=(long)TimeCurrent();
      SYMBOL=币种;
      TIME=rates[i].time;
      OPEN=rates[i].open;
      HIGH=rates[i].high;
      LOW=rates[i].low;
      CLOSE=rates[i].close;
      TICK_VOLUME=rates[i].tick_volume;
      SPREAD=rates[i].spread;
      REAL_VOLUME=rates[i].real_volume;
      OPEN_CLOSE=rates[i].open-rates[i].close;
      HIGH_LOW=rates[i].high-rates[i].low;
      ASK=SymbolInfoDouble(币种,SYMBOL_ASK);
      BID=SymbolInfoDouble(币种,SYMBOL_BID);
      POINT=SymbolInfoDouble(币种,SYMBOL_POINT);
      //--- add each deal to the table using the following query
      string request_text=StringFormat("INSERT INTO "+表名+" (INDEX_S,TIME_G,TIME_C,SYMBOL,TIME,OPEN,HIGH,LOW,CLOSE,TICK_VOLUME,SPREAD,REAL_VOLUME,OPEN_CLOSE,HIGH_LOW,ASK,BID,POINT)"
                                       "VALUES (%d,%d,%d,'%s',%d,%G,%G,%G,%G,%d,%d,%d,%G,%G,%G,%G,%G)",
                                       INDEX_S,TIME_G,TIME_C,SYMBOL,TIME,OPEN,HIGH,LOW,CLOSE,TICK_VOLUME,SPREAD,REAL_VOLUME,OPEN_CLOSE,HIGH_LOW,ASK,BID,POINT);
      if(!DatabaseExecute(database, request_text))
        {
         PrintFormat("%s:  执行插入图表列表语句错误 %d", __FUNCTION__, GetLastError());
         failed=true;
         break;
        }
      //--- check for transaction execution errors
      if(failed)
        {
         //--- roll back all transactions and unlock the database
         DatabaseTransactionRollback(database);
         PrintFormat("%s: 图表列表插入错误回滚 %d", __FUNCTION__, GetLastError());
         return(false);
        }
     }
//--- all transactions have been performed successfully - record changes and unlock the database
   DatabaseTransactionCommit(database);
   return(true);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
template<typename x>
void sqlite类::倒序数组(x &传入数组[],bool 是否倒序)
  {
   /*if(ArrayIsDynamic(传入数组))
     {*/
   if(ArrayGetAsSeries(传入数组)==false)
      ArraySetAsSeries(传入数组,是否倒序);
   /* }*/
  };
//+------------------------------------------------------------------+
void sqlite类::整理碎片(int database)
  {
//   DatabaseExecute(database,"incremental_vacuum");
   DatabaseExecute(database,"VACUUM");
  }
//+------------------------------------------------------------------+
void sqlite类::跟单PRAGMA(int database)
  {
   /* DatabaseExecute(database,"PRAGMA auto_vacuum=INCREMENTAL");
    DatabaseExecute(database,"PRAGMA cache_size = 2");
    DatabaseExecute(database,"PRAGMA default_cache_size = 2");*/
   DatabaseExecute(database,"PRAGMA wal_autocheckpoint = 500");
   DatabaseExecute(database,"PRAGMA journal_size_limit = 67110000");

  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
string sqlite类::币种修正(string 传入币种,bool 窗口选择=false)
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
bool sqlite类::插入持仓数据(int database,string 表名,string &symbolss[],int order_limits,ulong 设置订单起始时间=0)
  {
//--- auxiliary variables
   long               TIME_G;
   long               TIME_C;
   string              SYMBOL;
   ulong               POSITION_ID;
   long               TIME_IN;
   ENUM_POSITION_TYPE  TYPE;
   double              VOLUME ;
   double             PRICE_O;
   double              SL;
   double             TP;
   double             PRICE_C;
   double              SWAP;
   double              PROFIT;
   long               MAGIC;
   string              COMMENT;
   long                TIME_S;
   ENUM_POSITION_REASON  REASON;
//--- go through all deals and add them to the database
   bool failed=false;
   DatabaseTransactionBegin(database);
   for(int f=0; f<ArraySize(symbolss); f++)
     {
      int cnt=0;

      for(int i=0; i<PositionsTotal(); i++)
        {
         if(PositionGetTicket(i)>0&&(ulong)PositionGetInteger(POSITION_TIME)>设置订单起始时间)
           {
            if(PositionGetString(POSITION_SYMBOL)==symbolss[f])
              {
               cnt++;
               if(cnt>order_limits)
                 {
                  TIME_G=(long)TimeGMT();
                  TIME_C=(long)TimeCurrent();
                  SYMBOL=PositionGetString(POSITION_SYMBOL);
                  POSITION_ID=PositionGetInteger(POSITION_TICKET);
                  TIME_IN=PositionGetInteger(POSITION_TIME);
                  TYPE=(ENUM_POSITION_TYPE)PositionGetInteger(POSITION_TYPE);
                  VOLUME=PositionGetDouble(POSITION_VOLUME);
                  PRICE_O=PositionGetDouble(POSITION_PRICE_OPEN);
                  SL=PositionGetDouble(POSITION_SL);
                  TP=PositionGetDouble(POSITION_TP);
                  PRICE_C=PositionGetDouble(POSITION_PRICE_CURRENT);
                  SWAP=PositionGetDouble(POSITION_SWAP);
                  PROFIT=PositionGetDouble(POSITION_PROFIT);
                  MAGIC=PositionGetInteger(POSITION_MAGIC);
                  COMMENT=PositionGetString(POSITION_COMMENT);
                  TIME_S=(long)TimeCurrent()-(long)PositionGetInteger(POSITION_TIME);
                  REASON=(ENUM_POSITION_REASON)PositionGetInteger(POSITION_REASON);
                  //--- add each deal to the table using the following query
                  string request_text=StringFormat("INSERT INTO "+表名+" (TIME_G,TIME_C,SYMBOL,POSITION_ID,TIME_IN,TYPE,VOLUME,PRICE_O,SL,TP,PRICE_C,SWAP,PROFIT,MAGIC,COMMENT,TIME_S,REASON)"
                                                   "VALUES (%d,%d,'%s',%d,%d,%d,%G,%G,%G,%G,%G,%G,%G,%d,'%s',%d,%d)",
                                                   TIME_G,TIME_C,SYMBOL,POSITION_ID,TIME_IN,TYPE,VOLUME,PRICE_O,SL,TP,PRICE_C,SWAP,PROFIT,MAGIC,COMMENT,TIME_S,REASON);
                  if(!DatabaseExecute(database, request_text))
                    {
                     PrintFormat("%s:  执行插入持仓列表语句错误 %d", __FUNCTION__, GetLastError());
                     failed=true;
                     break;
                    }
                 }
               //--- check for transaction execution errors
               if(failed)
                 {
                  //--- roll back all transactions and unlock the database
                  DatabaseTransactionRollback(database);
                  PrintFormat("%s: 持仓列表插入错误回滚 %d", __FUNCTION__, GetLastError());
                  return(false);
                 }
              }
           }
        }
     }
//--- all transactions have been performed successfully - record changes and unlock the database
   DatabaseTransactionCommit(database);
   return(true);
  }
//+------------------------------------------------------------------+
#endif 