#property copyright "@Π.EA 大树My05613828"
#property link      "https://www.eahub.cn/space-uid-8564.html"
//#property version   "1.0"
//#property  icon     "//include//M5//logo.ico"
#define  _指标类
#ifdef _指标类
class 指标类
  {
public:
   //====================构造函数和析构函数============================
                     指标类();
                    ~指标类();
   //==================================================================
   //|====================指标数据封装函数=============================
   //==================================================================
   int               句柄A,句柄B,句柄C,句柄D,句柄E,句柄F,句柄G,句柄H,句柄I,句柄U,句柄V,句柄W;
   void              初始化句柄();

   //+------------------------------------------------------------------+
   void              授权模拟(datetime EA_time_lit,int sub_window=0,string advisorname="M5ZB y_0622");
   void              授权模拟(int sub_window=0,string advisorname="M5ZB y_0622");
   void              授权服务器(string server ="Doo",int sub_window=0,string advisorname="M5ZB y_0622");
   string            返回账户类型();
   ulong             返回双币种图表根数(string 币种1,string 币种2,ENUM_TIMEFRAMES 周期);
   void              删除指标(bool 删除主窗口,bool 删除子窗口);
   void              空值不显示(int 缓冲区=0,int 缓冲区1=0,int 缓冲区2=0,int 缓冲区3=0,int 缓冲区4=0,int 缓冲区5=0,int 缓冲区6=0,int 缓冲区7=0,int 缓冲区8=0);
   //------------------------------------------------------------------------------------
   int               插入iADX(string 币种,ENUM_TIMEFRAMES 图表周期,int 周期,bool 是否插入指标=false,int 窗口=0);
   int               插入iMA(string 币种,ENUM_TIMEFRAMES 图表周期,int 均线周期,int 平移,ENUM_MA_METHOD 平滑,ENUM_APPLIED_PRICE 价格类型,bool 是否插入指标=false,int 窗口=0);
   //+------------------------------------------------------------------+
   int               插入AMA(string 币种,ENUM_TIMEFRAMES  图表周期,int AMA值,int 快线,int 慢线,int 平移,ENUM_APPLIED_PRICE 价格类型,bool 是否插入指标=false,int 窗口=0);
   //+------------------------------------------------------------------+
   int               插入TMA(string 币种,ENUM_TIMEFRAMES 图表周期,int TMA值,ENUM_APPLIED_PRICE 价格类型,bool 是否插入指标=false,int 窗口=0);
   //+------------------------------------------------------------------+
   int               插入iAlligator(string 币种,ENUM_TIMEFRAMES 图表周期,int jaw值,int jaw平移,int teeth值,int  teeth平移,int lips值,int lips平移,ENUM_MA_METHOD 平滑,ENUM_APPLIED_PRICE  价格类型,bool 是否插入指标=false,int 窗口=0);
   //+------------------------------------------------------------------+
   int               插入OSMA(string 币种,ENUM_TIMEFRAMES 图表周期,int 快线,int 慢线, int 信号线,ENUM_APPLIED_PRICE 价格类型,bool 是否插入指标=false,int 窗口=0);//----均值
   //+------------------------------------------------------------------+
   int               插入Envelopes(string 币种,ENUM_TIMEFRAMES 图表周期,int 轨道数值,int 指标平移,ENUM_MA_METHOD 平滑类型,double 偏差,ENUM_APPLIED_PRICE 价格类型,bool 是否插入指标=false,int 窗口=0);//---轨道值
   //+------------------------------------------------------------------+
   int               插入iAC(string 币种,ENUM_TIMEFRAMES 图表周期,bool 是否插入指标=false,int 窗口=0);
   //+------------------------------------------------------------------+
   int               插入iAO(double &AO值[],string 币种,ENUM_TIMEFRAMES 图表周期,bool 是否插入指标=false,int 窗口=0);
   //+------------------------------------------------------------------+
   int               插入iSAR(string 币种,ENUM_TIMEFRAMES  图表周期, double SAR步增水平,double SAR最大水平,bool 是否插入指标=false,int 窗口=0);
   //+------------------------------------------------------------------+
   int               插入iWPR(string 币种,ENUM_TIMEFRAMES  图表周期,int WPR数值,bool 是否插入指标=false,int 窗口=0);
   //+------------------------------------------------------------------+
   int               插入iKDJ(string 币种,ENUM_TIMEFRAMES 图表周期,int K值,int D值,int J值,ENUM_MA_METHOD 平滑类型,ENUM_STO_PRICE 随机算法,bool 是否插入指标=false,int 窗口=0);
   //+------------------------------------------------------------------+
   int               插入iRVI(string 币种,ENUM_TIMEFRAMES 图表周期,int RVI值,bool 是否插入指标=false,int 窗口=0);
   int               插入iRSI(string 币种,ENUM_TIMEFRAMES 图表周期,int 周期,ENUM_APPLIED_PRICE 价格类型,bool 是否插入指标=false,int 窗口=0);
   //+------------------------------------------------------------------+
   int               插入iMACD(string 币种,ENUM_TIMEFRAMES 图表周期,int 快线,int  慢线,int 信号线,ENUM_APPLIED_PRICE 价格类型,bool 是否插入指标=false,int 窗口=0);
   //+------------------------------------------------------------------+
   int               插入iBands(string 币种,ENUM_TIMEFRAMES 图表周期,int 布林周期,int 平移,double 偏差,ENUM_APPLIED_PRICE 价格类型,bool 是否插入指标=false,int 窗口=0);
   //+------------------------------------------------------------------+
   int               插入Heiken_Ashi(string 币种,ENUM_TIMEFRAMES 图表周期,bool 是否插入指标=false,int 窗口=0);
   //+------------------------------------------------------------------+
   int               插入CCI(string 币种,ENUM_TIMEFRAMES 图表周期,int CCI周期,ENUM_APPLIED_PRICE 价格类型,bool 是否插入指标=false,int 窗口=0);
   //+------------------------------------------------------------------+
   int               插入ZigZag(string 币种,ENUM_TIMEFRAMES 图表周期,int 区间计算根数, int 刷新间距点值,int 退回计算根数,bool 是否插入指标=false,int 窗口=0);
   void              句柄取值重新排序(int 句柄,string 币种,ENUM_TIMEFRAMES 图表周期,int 计算数量,double &二维[][4],bool 是否倒序=true);
   void              句柄取值重新排序(int 句柄,string 币种,ENUM_TIMEFRAMES 图表周期,int 计算数量,double &一维[],bool 是否倒序=true);
   //---------------------------------------------------------------------
   //---------------------------------------------------------------------
   int               插入指标(string 币种,ENUM_TIMEFRAMES 图表周期,string 路径名称,bool 是否插入指标=false,int 窗口=0);
   template<typename u>
   int               插入指标(string 币种,ENUM_TIMEFRAMES 图表周期,string 路径名称,u 参数1,bool 是否插入指标=false,int 窗口=0);
   template<typename u,typename v>
   int               插入指标(string 币种,ENUM_TIMEFRAMES 图表周期,string 路径名称,u 参数1,v 参数2,bool 是否插入指标=false,int 窗口=0);
   template<typename u,typename v,typename w>
   int               插入指标(string 币种,ENUM_TIMEFRAMES 图表周期,string 路径名称,u 参数1,v 参数2,w 参数3,bool 是否插入指标=false,int 窗口=0);
   template<typename u,typename v,typename w,typename r>
   int               插入指标(string 币种,ENUM_TIMEFRAMES 图表周期,string 路径名称,u 参数1,v 参数2,w 参数3,r 参数4,bool 是否插入指标=false,int 窗口=0);
   template<typename u,typename v,typename w,typename r,typename s>
   int               插入指标(string 币种,ENUM_TIMEFRAMES 图表周期,string 路径名称,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,bool 是否插入指标=false,int 窗口=0);
   template<typename u,typename v,typename w,typename r,typename s,typename t>
   int               插入指标(string 币种,ENUM_TIMEFRAMES 图表周期,string 路径名称,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,bool 是否插入指标=false,int 窗口=0);
   template<typename u,typename v,typename w,typename r,typename s,typename t,typename x>
   int               插入指标(string 币种,ENUM_TIMEFRAMES 图表周期,string 路径名称,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,bool 是否插入指标=false,int 窗口=0);
   template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y>
   int               插入指标(string 币种,ENUM_TIMEFRAMES 图表周期,string 路径名称,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,bool 是否插入指标=false,int 窗口=0);
   double            句柄至数组(int 句柄,double &组1[],int 起始位置,int 计算数量,bool 是否倒序=true);
   double            句柄至数组(int 句柄,double &组1[],double &组2[],int 起始位置,int 计算数量,bool 是否倒序=true);
   double            句柄至数组(int 句柄,double &组1[],double &组2[], double &组3[],int 起始位置,int 计算数量,bool 是否倒序=true);
   double            句柄至数组(int 句柄,double &组1[],double &组2[], double &组3[],double &组4[],int 起始位置,int 计算数量,bool 是否倒序=true);
   double            句柄至数组(int 句柄,double &组1[],double &组2[], double &组3[],double &组4[],double &组5[],int 起始位置,int 计算数量,bool 是否倒序=true);
   double            句柄至数组(int 句柄,double &组1[],double &组2[], double &组3[],double &组4[],double &组5[],double &组6[],int 起始位置,int 计算数量,bool 是否倒序=true);
   double            句柄至数组(int 句柄,double &组1[],double &组2[], double &组3[],double &组4[],double &组5[],double &组6[],double &组7[],int 起始位置,int 计算数量,bool 是否倒序=true);
   double            句柄至数组(int 句柄,double &组1[],double &组2[], double &组3[],double &组4[],double &组5[],double &组6[],double &组7[],double &组8[],int 起始位置,int 计算数量,bool 是否倒序=true);
   //---------------------------------------------------------------------
   void              句柄返回金死叉值(int 句柄1,int 句柄2,string 币种,ENUM_TIMEFRAMES 图表周期,double &金死叉值[],int 计算数量,int 一金二死选择,bool 是否倒序=true);
   void              句柄返回金死叉值(int 句柄1,int 句柄2,string 币种,ENUM_TIMEFRAMES 图表周期,double&金死叉值[][2],int 计算数量,int 一金二死选择,bool 是否倒序=true);
   void              句柄返回金死叉值(int 句柄1,int 句柄2,string 币种,ENUM_TIMEFRAMES 图表周期,double&金死叉值[][3],int 计算数量,int 一金二死选择,bool 是否倒序=true);
   double            iMAOnArrayMql4(double &Array[],int total,int iMAPeriod,int ma_shift,ENUM_MA_METHOD ma_method,int shift,int M=1);
   bool              非空值检测(double  传入值);
   //+------------------------------------------------------------------+
   template<typename x>
   void              倒序数组(x &传入数组[],bool 是否倒序);
   //---
   void              均线大小周期检测(int 均线周期1,int 均线周期2,int 警报间隔秒数次数,bool 移除EA);
   void              三均线大小周期检测(int 均线周期1,int 均线周期2,int 均线周期3,int 警报间隔秒数次数,bool 移除EA);
   //+---------------以下须配合句柄至数组
   bool              三均线向上检测(double &均线1[],double &均线2[],double &均线3[],int 倒数序号);
   //+------------------------------------------------------------------+
   bool              三均线向下检测(double &均线1[],double &均线2[],double &均线3[],int 倒数序号);
   //+------------------------------------------------------------------+
   bool              均线向上检测(double &均线1[],double &均线2[],int 倒数序号);
   //+------------------------------------------------------------------+
   bool              均线向下检测(double &均线1[],double &均线2[],int 倒数序号);
   //+------------------------------------------------------------------+
   bool              三均线金叉(double &均线1[],double &均线2[],double &均线3[],int 倒数序号);
   //+------------------------------------------------------------------+
   bool              三均线死叉(double &均线1[],double &均线2[],double &均线3[],int 倒数序号);
   //--------------------------------------------------------------------------
   bool              三均线金叉检测(double &均线1[],double &均线2[],double &均线3[],int 倒数序号);
   //+------------------------------------------------------------------+
   bool              三均线死叉检测(double &均线1[],double &均线2[],double &均线3[],int 倒数序号);
   //+------------------------------------------------------------------+
   bool              均线金叉检测(double &均线1[],double &均线2[],int 倒数序号);
   //+------------------------------------------------------------------+
   bool              均线死叉检测(double &均线1[],double &均线2[],int 倒数序号);
   //+------------------------------------------------------------------+
   bool              K线上穿布林轨(string 币种,ENUM_TIMEFRAMES 图表周期,double &布林中轨[],double &布林上轨[],double &布林下轨[],int 开高低收,int 上中下,int 倒数序号);
   bool              K线下穿布林轨(string 币种,ENUM_TIMEFRAMES 图表周期,double &布林中轨[],double &布林上轨[],double &布林下轨[],int 开高低收,int 上中下,int 倒数序号);
   bool              MACD金叉(double &快值[],double &慢值[],int 倒数序号);
   bool              MACD死叉(double &快值[],double &慢值[],int 倒数序号);
   bool              零轴之上MACD金叉(double &快值[],double &慢值[],int 倒数序号);
   bool              零轴之下MACD金叉(double &快值[],double &慢值[],int 倒数序号);
   bool              零轴之上MACD死叉(double &快值[],double &慢值[],int 倒数序号);
   bool              零轴之下MACD死叉(double &快值[],double &慢值[],int 倒数序号);
   //+------------------------------------------------------------------+  //---------------------------------------------------------------------
   bool              零轴之上(double &快值[],double &慢值[],int 倒数序号);
   bool              零轴之下(double &快值[],double &慢值[],int 倒数序号);
   //+------------------------------------------------------------------+
   bool              判断ADX正负(double&正D[],double&负D[],int 倒数序号);
   bool              判断ADX负正(double&正D[],double&负D[],int 倒数序号);
   bool              判断ADX上破(double& ADX值[],double 设置阀值,int 倒数序号);
   bool              判断ADX下破(double& ADX值[],double 设置阀值,int 倒数序号);
   //----------------
   int               图表k线宽度();
   int               GetCandleWidth();
   int               ChartVisibleBars(const long chart_ID=0);
   double            微调(double percent=0.025);
   double            ChartPriceMin(const long chart_ID=0,const int sub_window=0);
   double            ChartPriceMax(const long chart_ID=0,const int sub_window=0);
   void              删除指标(int sub_window,string advisorname);
   void              删除指标(int acc, datetime tim,int sub_win,string txt="wx @大树My05613828",string advisorname="my");
   void              模版重载(string name,int second =10);
   
bool      获取物件名称列表(ENUM_OBJECT obj_type, string str1_name,string str2_name,string& name_list[]);
  };
//==================================================================
/*int i;
int limit;
int counted_bars=IndicatorCounted();
if(counted_bars<0)
   return(-1);
if(counted_bars>0)
   counted_bars--;
limit=Bars-counted_bars;
for(i=limit-1; i>=0; i--)
  {
//........这里面就是循环计算的指标主要部分。上面的循环控制就是从最后一个“未计算K线”到标号0的顺序
  }
*/
/*
//--- starting calculation
   int pos;
   if(prev_calculated>1)
      pos=prev_calculated-1;
   else
      pos=0;
//--- main cycle
   for(int i=pos; i<rates_total && !IsStopped(); i++)
     {
///----新k线产生 计算两根K线(倒序后,不产生计算1根)
 int  计算根数=0;
 if(prev_calculated==0)
 计算根数=rates_total;
 else
 计算根数=rates_total-prev_calculated+1;
 for(int i=0;i<计算根数;i++)
  ///----新k线产生 计算两根K线(倒序前，不产生计算1根)
 int i=0;
  if(prev_calculated>0)
 i=prev_calculated-1;
  for(i;i<rates_total;i++)
*/
//==================================================================
//|====================指标数据封装逻辑=============================
指标类  :: 指标类()
  {
   初始化句柄();
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
指标类::   ~指标类()
  {
   初始化句柄();
// 删除指标(1,1);
  };
//==================================================================
int  指标类::插入iADX(string 币种,ENUM_TIMEFRAMES 图表周期,int 周期,bool 是否插入指标=false,int 窗口=0)
  {
   int jb=0;
   IndicatorRelease(jb);
   jb=iADX(币种,图表周期,周期);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,jb);
   if(jb==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return jb;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int  指标类::插入iMA(string 币种,ENUM_TIMEFRAMES 图表周期,int 均线周期,int 平移,ENUM_MA_METHOD 平滑,ENUM_APPLIED_PRICE 价格类型,bool 是否插入指标=false,int 窗口=0)
  {
   int jb=0;
   IndicatorRelease(jb);
   jb=iMA(币种,图表周期,均线周期,平移,平滑,价格类型);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,jb);
   if(jb==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return jb;
  }
//+------------------------------------------------------------------+
int 指标类::插入AMA(string 币种,ENUM_TIMEFRAMES  图表周期,int AMA值,int 快线,int 慢线,int 平移,ENUM_APPLIED_PRICE 价格类型,bool 是否插入指标=false,int 窗口=0)
  {
   int jb=0;
   IndicatorRelease(jb);
   jb=iAMA(币种,图表周期,AMA值,快线,慢线,平移,价格类型);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,jb);
   if(jb==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return jb;
  }
//---
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int  指标类::插入TMA(string 币种,ENUM_TIMEFRAMES 图表周期,int TMA值,ENUM_APPLIED_PRICE 价格类型,bool 是否插入指标=false,int 窗口=0)
  {
   int jb=0;
   IndicatorRelease(jb);
   jb=iCustom(币种,图表周期,"Triangular moving average",TMA值,价格类型);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,jb);
   if(jb==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return jb;
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int  指标类::插入iAlligator(string 币种,ENUM_TIMEFRAMES 图表周期,int jaw值,int jaw平移,int teeth值,int  teeth平移,int lips值,int lips平移,ENUM_MA_METHOD 平滑,ENUM_APPLIED_PRICE  价格类型,bool 是否插入指标=false,int 窗口=0)
  {
   int jb=0;
   IndicatorRelease(jb);
   jb=iAlligator(币种,图表周期,jaw值,jaw平移,teeth值,teeth平移,lips值,lips平移,平滑,价格类型);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,jb);
   if(jb==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return jb;
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 指标类::插入OSMA(string 币种,ENUM_TIMEFRAMES 图表周期,int 快线,int 慢线, int 信号线,ENUM_APPLIED_PRICE 价格类型,bool 是否插入指标=false,int 窗口=0)
  {
   int jb=0;
   IndicatorRelease(jb);
   jb=iOsMA(币种,图表周期,快线,慢线,信号线,价格类型);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,jb);
   if(jb==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return jb;
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 指标类::插入Envelopes(string 币种,ENUM_TIMEFRAMES 图表周期,int 轨道数值,int 指标平移,ENUM_MA_METHOD 平滑类型,double 偏差,ENUM_APPLIED_PRICE 价格类型,bool 是否插入指标=false,int 窗口=0)
  {
   int jb=0;
   IndicatorRelease(jb);
   jb=iEnvelopes(币种,图表周期,轨道数值,指标平移,平滑类型,价格类型,偏差);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,jb);
   if(jb==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return jb;
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 指标类::插入iAC(string 币种,ENUM_TIMEFRAMES 图表周期,bool 是否插入指标=false,int 窗口=0)
  {
   int jb=0;
   IndicatorRelease(jb);
   jb=iAC(币种,图表周期);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,jb);
   if(jb==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return jb;
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 指标类::插入iAO(double &AO值[],string 币种,ENUM_TIMEFRAMES 图表周期,bool 是否插入指标=false,int 窗口=0)
  {
   int jb=0;
   IndicatorRelease(jb);
   jb=iAO(币种,图表周期);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,jb);
   if(jb==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return jb;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 指标类::插入iSAR(string 币种,ENUM_TIMEFRAMES  图表周期, double SAR步增水平,double SAR最大水平,bool 是否插入指标=false,int 窗口=0)
  {
   int jb=0;
   IndicatorRelease(jb);
   jb=iSAR(币种,图表周期,SAR步增水平,SAR最大水平);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,jb);
   if(jb==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return jb;
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 指标类::插入iWPR(string 币种,ENUM_TIMEFRAMES  图表周期,int WPR数值,bool 是否插入指标=false,int 窗口=0)
  {
   int jb=0;
   IndicatorRelease(jb);
   jb=iWPR(币种,图表周期,WPR数值);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,jb);
   if(jb==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return jb;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 指标类::插入iKDJ(string 币种,ENUM_TIMEFRAMES 图表周期,int K值,int D值,int J值,ENUM_MA_METHOD 平滑类型,ENUM_STO_PRICE 随机算法,bool 是否插入指标=false,int 窗口=0)
  {
   int jb=0;
   IndicatorRelease(jb);
   jb=iStochastic(币种,图表周期,K值,D值,J值,平滑类型,随机算法);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,jb);
   if(jb==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return jb;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 指标类::插入iRVI(string 币种,ENUM_TIMEFRAMES 图表周期,int RVI值,bool 是否插入指标=false,int 窗口=0)
  {
   int jb=0;
   IndicatorRelease(jb);
   jb=iRVI(币种,图表周期,RVI值);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,jb);
   if(jb==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return jb;
  };
//+------------------------------------------------------------------+
int 指标类::插入iRSI(string 币种,ENUM_TIMEFRAMES 图表周期,int 周期,ENUM_APPLIED_PRICE 价格类型,bool 是否插入指标=false,int 窗口=0)
  {
   int jb=0;
   IndicatorRelease(jb);
   jb=iRSI(币种,图表周期,周期,价格类型);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,jb);
   if(jb==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return jb;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 指标类::插入iMACD(string 币种,ENUM_TIMEFRAMES 图表周期,int 快线,int  慢线,int 信号线,ENUM_APPLIED_PRICE 价格类型,bool 是否插入指标=false,int 窗口=0)
  {
   int jb=0;
   IndicatorRelease(jb);
   jb=iMACD(币种,图表周期,快线,慢线,信号线,价格类型);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,jb);
   if(jb==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return jb;
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 指标类::插入iBands(string 币种,ENUM_TIMEFRAMES    图表周期,int 布林周期,int 平移,double 偏差,ENUM_APPLIED_PRICE 价格类型,bool 是否插入指标=false,int 窗口=0)
  {
   int jb=0;
   IndicatorRelease(jb);
   jb=iBands(币种,图表周期,布林周期,平移,偏差,价格类型);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,jb);
   if(jb==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return jb;
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 指标类::插入Heiken_Ashi(string 币种,ENUM_TIMEFRAMES 图表周期,bool 是否插入指标=false,int 窗口=0)
  {
   int jb=0;
   IndicatorRelease(jb);
   jb=iCustom(币种,图表周期,"Examples\\Heiken_Ashi");
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,jb);
   if(jb==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return jb;
  };
//+------------------------------------------------------------------+
int 指标类::插入CCI(string 币种,ENUM_TIMEFRAMES 图表周期,int CCI周期,ENUM_APPLIED_PRICE 价格类型,bool 是否插入指标=false,int 窗口=0)
  {
   int jb=iCustom(币种,图表周期,"Examples\\CCI",CCI周期,价格类型);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,jb);
   if(jb==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return jb;
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int 指标类::插入ZigZag(string 币种,ENUM_TIMEFRAMES 图表周期,int 区间计算根数, int 刷新间距点值,int 退回计算根数,bool 是否插入指标=false,int 窗口=0)
  {
   int jb=0;
   IndicatorRelease(jb);
   jb=iCustom(币种,图表周期,"Examples\\ZigZag",区间计算根数,刷新间距点值,退回计算根数);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,jb);
   if(jb==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return jb;
  }
//+------------------------------------------------------------------+
int 指标类::插入指标(string 币种,ENUM_TIMEFRAMES 图表周期,string 路径名称,bool 是否插入指标=false,int 窗口=0)
  {
   int ZB=0;
   IndicatorRelease(ZB);
   ZB=iCustom(币种,图表周期,路径名称);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,ZB);
   if(ZB==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return ZB;
  }
//+------------------------------------------------------------------+
template<typename u>
int 指标类::插入指标(string 币种,ENUM_TIMEFRAMES 图表周期,string 路径名称,u 参数1,bool 是否插入指标=false,int 窗口=0)
  {
   int ZB=0;
   IndicatorRelease(ZB);
   ZB=iCustom(币种,图表周期,路径名称,参数1);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,ZB);
   if(ZB==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return ZB;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
template<typename u,typename v>
int  指标类::插入指标(string 币种,ENUM_TIMEFRAMES 图表周期,string 路径名称,u 参数1,v 参数2,bool 是否插入指标=false,int 窗口=0)
  {
   int ZB=0;
   IndicatorRelease(ZB);
   ZB=iCustom(币种,图表周期,路径名称,参数1,参数2);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,ZB);
   if(ZB==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return ZB;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
template<typename u,typename v,typename w>
int  指标类::插入指标(string 币种,ENUM_TIMEFRAMES 图表周期,string 路径名称,u 参数1,v 参数2,w 参数3,bool 是否插入指标=false,int 窗口=0)
  {
   int ZB=0;
   IndicatorRelease(ZB);
   ZB=iCustom(币种,图表周期,路径名称,参数1,参数2,参数3);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,ZB);
   if(ZB==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return ZB;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
template<typename u,typename v,typename w,typename r>
int  指标类::插入指标(string 币种,ENUM_TIMEFRAMES 图表周期,string 路径名称,u 参数1,v 参数2,w 参数3,r 参数4,bool 是否插入指标=false,int 窗口=0)
  {
   int ZB=0;
   IndicatorRelease(ZB);
   ZB=iCustom(币种,图表周期,路径名称,参数1,参数2,参数3,参数4);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,ZB);
   if(ZB==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return ZB;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
template<typename u,typename v,typename w,typename r,typename s>
int 指标类::插入指标(string 币种,ENUM_TIMEFRAMES 图表周期,string 路径名称,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,bool 是否插入指标=false,int 窗口=0)
  {
   int ZB=0;
   IndicatorRelease(ZB);
   ZB=iCustom(币种,图表周期,路径名称,参数1,参数2,参数3,参数4,参数5);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,ZB);
   if(ZB==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return ZB;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
template<typename u,typename v,typename w,typename r,typename s,typename t>
int  指标类::插入指标(string 币种,ENUM_TIMEFRAMES 图表周期,string 路径名称,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,bool 是否插入指标=false,int 窗口=0)
  {
   int ZB=0;
   IndicatorRelease(ZB);
   ZB=iCustom(币种,图表周期,路径名称,参数1,参数2,参数3,参数4,参数5,参数6);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,ZB);
   if(ZB==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return ZB;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
template<typename u,typename v,typename w,typename r,typename s,typename t,typename x>
int 指标类::插入指标(string 币种,ENUM_TIMEFRAMES 图表周期,string 路径名称,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,bool 是否插入指标=false,int 窗口=0)
  {
   int ZB=0;
   IndicatorRelease(ZB);
   ZB=iCustom(币种,图表周期,路径名称,参数1,参数2,参数3,参数4,参数5,参数6,参数7);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,ZB);
   if(ZB==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return ZB;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y>
int 指标类::插入指标(string 币种,ENUM_TIMEFRAMES 图表周期,string 路径名称,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,bool 是否插入指标=false,int 窗口=0)
  {
   int ZB=0;
   IndicatorRelease(ZB);
   ZB=iCustom(币种,图表周期,路径名称,参数1,参数2,参数3,参数4,参数5,参数6,参数7,参数8);
   if(是否插入指标)
      ChartIndicatorAdd(0,窗口,ZB);
   if(ZB==INVALID_HANDLE)
     {
      Alert("指标句错误,初始化失败，检查输入参数");
      return(INIT_FAILED);
     }
   else
      return ZB;
  }
//-----
double  指标类:: 句柄至数组(int 句柄,double &组1[],int 起始位置,int 计算数量,bool 是否倒序=true)
  {
   double 起始值=0;
   if(句柄>0)
     {
      倒序数组(组1,是否倒序);
      CopyBuffer(句柄,0,起始位置,计算数量,组1);
      起始值=组1[起始位置];
     }
   else
      Print("句柄载入异常，请检查输入参数");
   return 起始值;
  }
//---
double  指标类:: 句柄至数组(int 句柄,double &组1[],double &组2[],int 起始位置,int 计算数量,bool 是否倒序=true)
  {
   double 起始值=0;
   if(句柄>0)
     {
      倒序数组(组1,是否倒序);
      倒序数组(组2,是否倒序);
      CopyBuffer(句柄,0,起始位置,计算数量,组1);
      CopyBuffer(句柄,1,起始位置,计算数量,组2);
      起始值=组1[起始位置];
     }
   else
      Print("句柄载入异常，请检查输入参数");
   return 起始值;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double  指标类:: 句柄至数组(int 句柄,double &组1[],double &组2[], double &组3[],int 起始位置,int 计算数量,bool 是否倒序=true)
  {
   double 起始值=0;
   if(句柄>0)
     {
      倒序数组(组1,是否倒序);
      倒序数组(组2,是否倒序);
      倒序数组(组3,是否倒序);
      CopyBuffer(句柄,0,起始位置,计算数量,组1);
      CopyBuffer(句柄,1,起始位置,计算数量,组2);
      CopyBuffer(句柄,2,起始位置,计算数量,组3);
      起始值=组1[起始位置];
     }
   else
      Print("句柄载入异常，请检查输入参数");
   return 起始值;
  }
//---
double  指标类:: 句柄至数组(int 句柄,double &组1[],double &组2[], double &组3[],double &组4[],int 起始位置,int 计算数量,bool 是否倒序=true)
  {
   double 起始值=0;
   if(句柄>0)
     {
      倒序数组(组1,是否倒序);
      倒序数组(组2,是否倒序);
      倒序数组(组3,是否倒序);
      倒序数组(组4,是否倒序);
      CopyBuffer(句柄,0,起始位置,计算数量,组1);
      CopyBuffer(句柄,1,起始位置,计算数量,组2);
      CopyBuffer(句柄,2,起始位置,计算数量,组3);
      CopyBuffer(句柄,3,起始位置,计算数量,组4);
      起始值=组1[起始位置];
     }
   else
      Print("句柄载入异常，请检查输入参数");
   return 起始值;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double  指标类:: 句柄至数组(int 句柄,double &组1[],double &组2[], double &组3[],double &组4[],double &组5[],int 起始位置,int 计算数量,bool 是否倒序=true)
  {
   double 起始值=0;
   if(句柄>0)
     {
      倒序数组(组1,是否倒序);
      倒序数组(组2,是否倒序);
      倒序数组(组3,是否倒序);
      倒序数组(组4,是否倒序);
      倒序数组(组5,是否倒序);
      CopyBuffer(句柄,0,起始位置,计算数量,组1);
      CopyBuffer(句柄,1,起始位置,计算数量,组2);
      CopyBuffer(句柄,2,起始位置,计算数量,组3);
      CopyBuffer(句柄,3,起始位置,计算数量,组4);
      CopyBuffer(句柄,4,起始位置,计算数量,组5);
      起始值=组1[起始位置];
     }
   else
      Print("句柄载入异常，请检查输入参数");
   return 起始值;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double  指标类:: 句柄至数组(int 句柄,double &组1[],double &组2[], double &组3[],double &组4[],double &组5[],double &组6[],int 起始位置,int 计算数量,bool 是否倒序=true)
  {
   double 起始值=0;
   if(句柄>0)
     {
      倒序数组(组1,是否倒序);
      倒序数组(组2,是否倒序);
      倒序数组(组3,是否倒序);
      倒序数组(组4,是否倒序);
      倒序数组(组5,是否倒序);
      倒序数组(组6,是否倒序);
      CopyBuffer(句柄,0,起始位置,计算数量,组1);
      CopyBuffer(句柄,1,起始位置,计算数量,组2);
      CopyBuffer(句柄,2,起始位置,计算数量,组3);
      CopyBuffer(句柄,3,起始位置,计算数量,组4);
      CopyBuffer(句柄,4,起始位置,计算数量,组5);
      CopyBuffer(句柄,5,起始位置,计算数量,组6);
      起始值=组1[起始位置];
     }
   else
      Print("句柄载入异常，请检查输入参数");
   return 起始值;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double  指标类:: 句柄至数组(int 句柄,double &组1[],double &组2[], double &组3[],double &组4[],double &组5[],double &组6[],double &组7[],int 起始位置,int 计算数量,bool 是否倒序=true)
  {
   double 起始值=0;
   if(句柄>0)
     {
      倒序数组(组1,是否倒序);
      倒序数组(组2,是否倒序);
      倒序数组(组3,是否倒序);
      倒序数组(组4,是否倒序);
      倒序数组(组5,是否倒序);
      倒序数组(组6,是否倒序);
      倒序数组(组7,是否倒序);
      CopyBuffer(句柄,0,起始位置,计算数量,组1);
      CopyBuffer(句柄,1,起始位置,计算数量,组2);
      CopyBuffer(句柄,2,起始位置,计算数量,组3);
      CopyBuffer(句柄,3,起始位置,计算数量,组4);
      CopyBuffer(句柄,4,起始位置,计算数量,组5);
      CopyBuffer(句柄,5,起始位置,计算数量,组6);
      CopyBuffer(句柄,6,起始位置,计算数量,组7);
      起始值=组1[起始位置];
     }
   else
      Print("句柄载入异常，请检查输入参数");
   return 起始值;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double  指标类:: 句柄至数组(int 句柄,double &组1[],double &组2[], double &组3[],double &组4[],double &组5[],double &组6[],double &组7[],double &组8[],int 起始位置,int 计算数量,bool 是否倒序=true)
  {
   double 起始值=0;
   if(句柄>0)
     {
      倒序数组(组1,是否倒序);
      倒序数组(组2,是否倒序);
      倒序数组(组3,是否倒序);
      倒序数组(组4,是否倒序);
      倒序数组(组5,是否倒序);
      倒序数组(组6,是否倒序);
      倒序数组(组7,是否倒序);
      倒序数组(组8,是否倒序);
      CopyBuffer(句柄,0,起始位置,计算数量,组1);
      CopyBuffer(句柄,1,起始位置,计算数量,组2);
      CopyBuffer(句柄,2,起始位置,计算数量,组3);
      CopyBuffer(句柄,3,起始位置,计算数量,组4);
      CopyBuffer(句柄,4,起始位置,计算数量,组5);
      CopyBuffer(句柄,5,起始位置,计算数量,组6);
      CopyBuffer(句柄,6,起始位置,计算数量,组7);
      CopyBuffer(句柄,7,起始位置,计算数量,组8);
      起始值=组1[起始位置];
     }
   else
      Print("句柄载入异常，请检查输入参数");
   return 起始值;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  指标类::初始化句柄()
  {
   句柄A=0;
   句柄B=0;
   句柄C=0;
   句柄D=0;
   句柄E=0;
   句柄F=0;
   句柄G=0;
   句柄H=0;
   句柄I=0;
   句柄U=0;
   句柄V=0;
   句柄W=0;
  }
//+------------------------------------------------------------------
ulong  指标类::返回双币种图表根数(string 币种1,string 币种2,ENUM_TIMEFRAMES 周期)
  {
   int  计算根数=0;
   if(iBars(币种1,周期)< iBars(币种2,周期))
      计算根数= iBars(币种1,周期);
   else
      计算根数= iBars(币种2,周期);
   return(计算根数);
  }
//+------------------------------------------------------------------+
void  指标类:: 删除指标(bool 删除主窗口,bool 删除子窗口)
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
///-----------------------------------------------------
void 指标类::句柄取值重新排序(int 句柄,string 币种,ENUM_TIMEFRAMES 图表周期,int 计算数量,double &二维[][4],bool 是否倒序=true)
  {
//---
   ArrayResize(二维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   句柄至数组(句柄,zigzag,0,图表根数,是否倒序);
   int 计数=0;
   for(int i=0; i<图表根数; i++)
     {
      if(计数>计算数量-1)
         break;
      if(zigzag[i]==0||zigzag[i]==EMPTY_VALUE)
         二维[计数][3]=0.0;
      else
        {
         二维[计数][0]=zigzag[i];
         二维[计数][1]=i;
         二维[计数][2]=(double)iTime(币种,图表周期,i);
         if(zigzag[i]<=iLow(币种,图表周期,i)&&zigzag[i]<iLow(币种,图表周期,i+1))
            二维[计数][3]=1.0;
         if(zigzag[i]>=iHigh(币种,图表周期,i)&&zigzag[i]>iHigh(币种,图表周期,i+1))
            二维[计数][3]=2.0;
         计数++;
        }
     }
  }
//+------------------------------------------------------------------+
void 指标类::句柄取值重新排序(int 句柄,string 币种,ENUM_TIMEFRAMES 图表周期,int 计算数量,double &一维[],bool 是否倒序=true)
  {
//---
   ArrayResize(一维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   句柄至数组(句柄,zigzag,0,图表根数,是否倒序);
   int 计数=0;
   for(int i=0; i<图表根数; i++)
     {
      if(计数>计算数量-1)
         break;
      if(zigzag[i]!=0&&zigzag[i]!=EMPTY_VALUE)
        {
         一维[计数]=zigzag[i];
         计数++;
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void  指标类::句柄返回金死叉值(int 句柄1,int 句柄2,string 币种,ENUM_TIMEFRAMES 图表周期,double &金死叉值[],int 计算数量,int 一金二死选择,bool 是否倒序=true)
  {
   double 小值[],大值[];
   int 图表根数=iBars(币种,图表周期);
   句柄至数组(句柄1,小值,0,图表根数,是否倒序);
   句柄至数组(句柄2,大值,0,图表根数,是否倒序);
   ArrayResize(金死叉值,计算数量);
   int 计数=0;
   for(int i=0; i<图表根数; i++)
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
void 指标类::句柄返回金死叉值(int 句柄1,int 句柄2,string 币种,ENUM_TIMEFRAMES 图表周期,double&金死叉值[][2],int 计算数量,int 一金二死选择,bool 是否倒序=true)
  {
   double 小值[],大值[];
   int 图表根数=iBars(币种,图表周期);
   句柄至数组(句柄1,小值,0,图表根数,是否倒序);
   句柄至数组(句柄2,大值,0,图表根数,是否倒序);
   ArrayResize(金死叉值,计算数量);
   int  计数=0;
   for(int i=0; i<图表根数; i++)
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
void  指标类::句柄返回金死叉值(int 句柄1,int 句柄2,string 币种,ENUM_TIMEFRAMES 图表周期,double&金死叉值[][3],int 计算数量,int 一金二死选择,bool 是否倒序=true)
  {
   double 小值[],大值[];
   int 图表根数=iBars(币种,图表周期);
   句柄至数组(句柄1,小值,0,图表根数,是否倒序);
   句柄至数组(句柄2,大值,0,图表根数,是否倒序);
   ArrayResize(金死叉值,计算数量);
   int  计数=0;
   for(int i=0; i<图表根数; i++)
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
double 指标类::iMAOnArrayMql4(double &Array[],int total,int iMAPeriod,int ma_shift,ENUM_MA_METHOD ma_method,int shift,int M=1)
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
bool 指标类::非空值检测(double  传入值)
  {
   bool 检测=传入值!=0&&传入值!=EMPTY_VALUE;
   return 检测;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
template<typename x>
void 指标类::倒序数组(x &传入数组[],bool 是否倒序)
  {
   /* if(ArrayIsDynamic(传入数组))
      {*/
   if(ArrayGetAsSeries(传入数组)==false)
      ArraySetAsSeries(传入数组,是否倒序);
   /*  }*/
  };
//+------------------------------------------------------------------+
void 指标类:: 三均线大小周期检测(int 均线周期1,int 均线周期2,int 均线周期3,int 警报间隔秒数次数,bool 移除EA)
  {
   bool y=均线周期1>0&&均线周期1<均线周期2&&均线周期2<均线周期3;
   if(!y)
     {
      int 计数=0;
      if(警报间隔秒数次数>0)
         for(int j=0; j<警报间隔秒数次数; j++)
           {
            计数++;
            Alert("三均线周期输入错误，正确输入均线周期1>0&&均线周期1<均线周期2<均线周期3"+IntegerToString(计数));
            Sleep(警报间隔秒数次数*1000);
           }
      Alert("三均线周期输入错误，正确输入均线周期1>0&&均线周期1<均线周期2<均线周期3"+IntegerToString(计数));
      if(移除EA==true)
         ExpertRemove();
     }
  }
//---------
void 指标类::均线大小周期检测(int 均线周期1,int 均线周期2,int 警报间隔秒数次数,bool 移除EA)
  {
   bool y=均线周期1>0&&均线周期1<均线周期2;
   if(!y)
     {
      int 计数=0;
      if(警报间隔秒数次数>0)
         for(int j=0; j<警报间隔秒数次数&&!y; j++)
           {
            计数++;
            Alert("均线周期输入错误，正确输入均线周期1>0&&均线周期1<均线周期2"+IntegerToString(计数));
            Sleep(警报间隔秒数次数*1000);
           }
      if(!y)
        {
         Alert("均线周期输入错误，正确输入均线周期1>0&&均线周期1<均线周期2"+IntegerToString(计数));
         if(移除EA==true)
            ExpertRemove();
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 指标类:: 三均线向上检测(double &均线1[],double &均线2[],double &均线3[],int 倒数序号)
  {
   bool  m=均线1[倒数序号]>均线2[倒数序号]&&均线2[倒数序号]>均线3[倒数序号]&&均线1[倒数序号+1]>均线2[倒数序号+1]&&均线2[倒数序号+1]>均线3[倒数序号+1];
   return(m);
  }
//+------------------------------------------------------------------+
bool 指标类:: 三均线向下检测(double &均线1[],double &均线2[],double &均线3[],int 倒数序号)
  {
   bool m=均线1[倒数序号]<均线2[倒数序号]&&均线2[倒数序号]<均线3[倒数序号]&&均线1[倒数序号+1]<均线2[倒数序号+1]&&均线2[倒数序号+1]<均线3[倒数序号+1];
   return(m);
  }
////--------------------------------------------------------------
//+------------------------------------------------------------------+
bool 指标类:: 均线向上检测(double &均线1[],double &均线2[],int 倒数序号)
  {
   bool  m=均线1[倒数序号]>均线2[倒数序号]&&均线1[倒数序号+1]>均线2[倒数序号+1];
   return(m);
  }
//+------------------------------------------------------------------+
bool 指标类:: 均线向下检测(double &均线1[],double &均线2[],int 倒数序号)
  {
   bool  m=均线1[倒数序号]<均线2[倒数序号]&&均线1[倒数序号+1]<均线2[倒数序号+1];
   return(m);
  }
//+------------------------------------------------------------------+
bool 指标类:: 三均线金叉(double &均线1[],double &均线2[],double &均线3[],int 倒数序号)
  {
   bool  m=均线1[倒数序号]>均线2[倒数序号]&&均线2[倒数序号]>均线3[倒数序号]&&
           均线1[倒数序号+1]>均线3[倒数序号+1]&&均线3[倒数序号+1]>均线2[倒数序号+1];
   return(m);
  }
//+------------------------------------------------------------------+
bool 指标类:: 三均线死叉(double &均线1[],double &均线2[],double &均线3[],int 倒数序号)
  {
   bool m=均线1[倒数序号]<均线2[倒数序号]&&均线2[倒数序号]<均线3[倒数序号]&&
          均线1[倒数序号+1]<均线3[倒数序号+1]&&均线3[倒数序号+1]<均线2[倒数序号+1];
   return(m);
  }
////--------------------------------------------------------------
//--------------------------------------------------------------------------
bool 指标类:: 三均线金叉检测(double &均线1[],double &均线2[],double &均线3[],int 倒数序号)
  {
   bool  m=均线1[倒数序号]>均线2[倒数序号]&&均线2[倒数序号]>均线3[倒数序号]&&
           ((均线1[倒数序号+1]>均线3[倒数序号+1]&&均线3[倒数序号+1]>均线2[倒数序号+1])||(均线3[倒数序号+1]>均线2[倒数序号+1]&&均线2[倒数序号+1]>均线1[倒数序号+1])
            ||(均线3[倒数序号+1]>均线1[倒数序号+1]&&均线1[倒数序号+1]>均线2[倒数序号+1])||(均线2[倒数序号+1]>均线1[倒数序号+1]&&均线1[倒数序号+1]>均线3[倒数序号+1])
            ||(均线2[倒数序号+1]>均线3[倒数序号+1]&&均线3[倒数序号+1]>均线1[倒数序号+1]));
   return(m);
  }
//+------------------------------------------------------------------+
bool 指标类:: 三均线死叉检测(double &均线1[],double &均线2[],double &均线3[],int 倒数序号)
  {
   bool m=均线1[倒数序号]<均线2[倒数序号]&&均线2[倒数序号]<均线3[倒数序号]&&
          ((均线2[倒数序号+1]<均线3[倒数序号+1]&&均线3[倒数序号+1]<均线1[倒数序号+1])||(均线3[倒数序号+1]<均线2[倒数序号+1]&&均线2[倒数序号+1]<均线1[倒数序号+1])
           ||(均线3[倒数序号+1]<均线1[倒数序号+1]&&均线1[倒数序号+1]<均线2[倒数序号+1])||(均线2[倒数序号+1]<均线1[倒数序号+1]&&均线1[倒数序号+1]<均线3[倒数序号+1])
           ||(均线1[倒数序号+1]<均线3[倒数序号+1]&&均线3[倒数序号+1]<均线2[倒数序号+1]));
   return(m);
  }
////--------------------------------------------------------------
//+------------------------------------------------------------------+
bool 指标类:: 均线金叉检测(double &均线1[],double &均线2[],int 倒数序号)
  {
   bool  m=均线1[倒数序号]>均线2[倒数序号]&&均线1[倒数序号+1]<均线2[倒数序号+1];
   return(m);
  }
//+------------------------------------------------------------------+
bool 指标类:: 均线死叉检测(double &均线1[],double &均线2[],int 倒数序号)
  {
   bool  m=均线1[倒数序号]<均线2[倒数序号]&&均线1[倒数序号+1]>均线2[倒数序号+1];
   return(m);
  }
///------------------------------------------------------
bool 指标类:: K线上穿布林轨(string 币种,ENUM_TIMEFRAMES 图表周期,double &布林中轨[],double &布林上轨[],double &布林下轨[],int 开高低收,int 上中下,int 倒数序号)
  {
   bool 检测=false;
   if(上中下==1)
     {
      if(开高低收==0)
         检测=iOpen(币种,图表周期,倒数序号+1)<布林上轨[倒数序号+1]&&iOpen(币种,图表周期,倒数序号)>布林上轨[倒数序号];
      if(开高低收==1)
         检测=iHigh(币种,图表周期,倒数序号+1)<布林上轨[倒数序号+1]&&iHigh(币种,图表周期,倒数序号)>布林上轨[倒数序号];
      if(开高低收==2)
         检测=iLow(币种,图表周期,倒数序号+1)<布林上轨[倒数序号+1]&&iLow(币种,图表周期,倒数序号)>布林上轨[倒数序号];
      if(开高低收==3)
         检测=iClose(币种,图表周期,倒数序号+1)<布林上轨[倒数序号+1]&&iClose(币种,图表周期,倒数序号)>布林上轨[倒数序号];
     }
   if(上中下==2)
     {
      if(开高低收==0)
         检测=iOpen(币种,图表周期,倒数序号+1)<布林中轨[倒数序号+1]&&iOpen(币种,图表周期,倒数序号)>布林中轨[倒数序号];
      if(开高低收==1)
         检测=iHigh(币种,图表周期,倒数序号+1)<布林中轨[倒数序号+1]&&iHigh(币种,图表周期,倒数序号)>布林中轨[倒数序号];
      if(开高低收==2)
         检测=iLow(币种,图表周期,倒数序号+1)<布林中轨[倒数序号+1]&&iLow(币种,图表周期,倒数序号)>布林中轨[倒数序号];
      if(开高低收==3)
         检测=iClose(币种,图表周期,倒数序号+1)<布林中轨[倒数序号+1]&&iClose(币种,图表周期,倒数序号)>布林中轨[倒数序号];
     }
   if(上中下==3)
     {
      if(开高低收==0)
         检测=iOpen(币种,图表周期,倒数序号+1)<布林下轨[倒数序号+1]&&iOpen(币种,图表周期,倒数序号)>布林下轨[倒数序号];
      if(开高低收==1)
         检测=iHigh(币种,图表周期,倒数序号+1)<布林下轨[倒数序号+1]&&iHigh(币种,图表周期,倒数序号)>布林下轨[倒数序号];
      if(开高低收==2)
         检测=iLow(币种,图表周期,倒数序号+1)<布林下轨[倒数序号+1]&&iLow(币种,图表周期,倒数序号)>布林下轨[倒数序号];
      if(开高低收==3)
         检测=iClose(币种,图表周期,倒数序号+1)<布林下轨[倒数序号+1]&&iClose(币种,图表周期,倒数序号)>布林下轨[倒数序号];
     }
   return(检测);
  }
//+------------------------------------------------------------------+
bool 指标类::K线下穿布林轨(string 币种,ENUM_TIMEFRAMES 图表周期,double &布林中轨[],double &布林上轨[],double &布林下轨[],int 开高低收,int 上中下,int 倒数序号)
  {
   bool 检测=false;
   if(上中下==1)
     {
      if(开高低收==0)
         检测=iOpen(币种,图表周期,倒数序号+1)>布林上轨[倒数序号+1]&&iOpen(币种,图表周期,倒数序号)<布林上轨[倒数序号];
      if(开高低收==1)
         检测=iHigh(币种,图表周期,倒数序号+1)>布林上轨[倒数序号+1]&&iHigh(币种,图表周期,倒数序号)<布林上轨[倒数序号];
      if(开高低收==2)
         检测=iLow(币种,图表周期,倒数序号+1)>布林上轨[倒数序号+1]&&iLow(币种,图表周期,倒数序号)<布林上轨[倒数序号];
      if(开高低收==3)
         检测=iClose(币种,图表周期,倒数序号+1)>布林上轨[倒数序号+1]&&iClose(币种,图表周期,倒数序号)<布林上轨[倒数序号];
     }
   if(上中下==2)
     {
      if(开高低收==0)
         检测=iOpen(币种,图表周期,倒数序号+1)>布林中轨[倒数序号+1]&&iOpen(币种,图表周期,倒数序号)<布林中轨[倒数序号];
      if(开高低收==1)
         检测=iHigh(币种,图表周期,倒数序号+1)>布林中轨[倒数序号+1]&&iHigh(币种,图表周期,倒数序号)<布林中轨[倒数序号];
      if(开高低收==2)
         检测=iLow(币种,图表周期,倒数序号+1)>布林中轨[倒数序号+1]&&iLow(币种,图表周期,倒数序号)<布林中轨[倒数序号];
      if(开高低收==3)
         检测=iClose(币种,图表周期,倒数序号+1)>布林中轨[倒数序号+1]&&iClose(币种,图表周期,倒数序号)<布林中轨[倒数序号];
     }
   if(上中下==3)
     {
      if(开高低收==0)
         检测=iOpen(币种,图表周期,倒数序号+1)>布林下轨[倒数序号+1]&&iOpen(币种,图表周期,倒数序号)<布林下轨[倒数序号];
      if(开高低收==1)
         检测=iHigh(币种,图表周期,倒数序号+1)>布林下轨[倒数序号+1]&&iHigh(币种,图表周期,倒数序号)<布林下轨[倒数序号];
      if(开高低收==2)
         检测=iLow(币种,图表周期,倒数序号+1)>布林下轨[倒数序号+1]&&iLow(币种,图表周期,倒数序号)<布林下轨[倒数序号];
      if(开高低收==3)
         检测=iClose(币种,图表周期,倒数序号+1)>布林下轨[倒数序号+1]&&iClose(币种,图表周期,倒数序号)<布林下轨[倒数序号];
     }
   return(检测);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 指标类:: MACD金叉(double &快值[],double &慢值[],int 倒数序号)
  {
   bool 金叉=快值[倒数序号+1]<慢值[倒数序号+1]&&快值[倒数序号]>慢值[倒数序号];
   return(金叉);
  }
//+------------------------------------------------------------------+
bool 指标类:: MACD死叉(double &快值[],double &慢值[],int 倒数序号)
  {
   bool 死叉=快值[倒数序号+1]>慢值[倒数序号+1]&&快值[倒数序号]<慢值[倒数序号];
   return(死叉);
  }
//+------------------------------------------------------------------+
bool 指标类:: 零轴之上MACD金叉(double &快值[],double &慢值[],int 倒数序号)
  {
   bool 金叉=快值[倒数序号+1]<慢值[倒数序号+1]&&快值[倒数序号]>慢值[倒数序号]&&快值[倒数序号]>0&&慢值[倒数序号]>0&&快值[倒数序号+1]>0&&慢值[倒数序号+1]>0;
   return(金叉);
  }
//+------------------------------------------------------------------+
bool 指标类:: 零轴之下MACD金叉(double &快值[],double &慢值[],int 倒数序号)
  {
   bool 金叉=快值[倒数序号+1]<慢值[倒数序号+1]&&快值[倒数序号]>慢值[倒数序号]&&快值[倒数序号]<0&&慢值[倒数序号]<0&&快值[倒数序号+1]<0&&慢值[倒数序号+1]<0;
   return(金叉);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 指标类:: 零轴之上MACD死叉(double &快值[],double &慢值[],int 倒数序号)
  {
   bool 死叉=快值[倒数序号+1]>慢值[倒数序号+1]&&快值[倒数序号]<慢值[倒数序号]&&快值[倒数序号]>0&&慢值[倒数序号]>0&&快值[倒数序号+1]>0&&慢值[倒数序号+1]>0;
   return(死叉);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 指标类:: 零轴之下MACD死叉(double &快值[],double &慢值[],int 倒数序号)
  {
   bool 死叉=快值[倒数序号+1]>慢值[倒数序号+1]&&快值[倒数序号]<慢值[倒数序号]&&快值[倒数序号]<0&&慢值[倒数序号]<0&&快值[倒数序号+1]<0&&慢值[倒数序号+1]<0;
   return(死叉);
  }
//----零轴之上
bool 指标类:: 零轴之上(double &快值[],double &慢值[],int 倒数序号)
  {
   bool 之上=快值[倒数序号]>0&&慢值[倒数序号]>0&&快值[倒数序号+1]>0&&慢值[倒数序号+1]>0;
   return(之上);
  }
//+------------------------------------------------------------------+
bool 指标类:: 零轴之下(double &快值[],double &慢值[],int 倒数序号)
  {
   bool 之下=快值[倒数序号]<0&&慢值[倒数序号]<0&&快值[倒数序号+1]<0&&慢值[倒数序号+1]<0;
   return(之下);
  }
//+------------------------------------------------------------------+
bool 指标类::判断ADX正负(double&正D[],double&负D[],int 倒数序号)
  {
   bool  正大于负=正D[倒数序号]>负D[倒数序号]&&正D[倒数序号+1]>负D[倒数序号+1];
   return 正大于负;
  }
//+------------------------------------------------------------------+
bool 指标类::判断ADX负正(double&正D[],double&负D[],int 倒数序号)
  {
   bool  负大于正=正D[倒数序号]<负D[倒数序号]&&正D[倒数序号+1]<负D[倒数序号+1];
   return 负大于正;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 指标类::判断ADX上破(double& ADX值[],double 设置阀值,int 倒数序号)
  {
   bool  ADX上破=ADX值[倒数序号+1]<设置阀值&&ADX值[倒数序号]>设置阀值;
   return ADX上破;
  }
//-----
bool 指标类::判断ADX下破(double& ADX值[],double 设置阀值,int 倒数序号)
  {
   bool ADX下破=ADX值[倒数序号+1]>设置阀值&&ADX值[倒数序号]<设置阀值;
   return ADX下破;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 指标类::空值不显示(int 缓冲区=0,int 缓冲区1=0,int 缓冲区2=0,int 缓冲区3=0,int 缓冲区4=0,int 缓冲区5=0,int 缓冲区6=0,int 缓冲区7=0,int 缓冲区8=0)
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
//---
int 指标类::图表k线宽度()
  {
   int HistoWidth=0;
   if(ChartVisibleBars()!=0)
     {
      int CandleWidth=GetCandleWidth();
      switch(CandleWidth)
        {
         case 1:
            HistoWidth=0;
            break;
         case 2:
            HistoWidth=0;
            break;
         case 4:
            HistoWidth=2;
            break;
         case 8:
            HistoWidth=3;
            break;
         case 16:
            HistoWidth=6;
            break;
         case 32:
            HistoWidth=13;
            break;
        }
     }
   return HistoWidth;
  }
//---
int 指标类::GetCandleWidth()
  {
   return((int)MathPow(2,(int)ChartGetInteger(0,CHART_SCALE)));
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
int 指标类::ChartVisibleBars(const long chart_ID=0)
  {
   long result=-1;
   ResetLastError();
   if(!ChartGetInteger(chart_ID,CHART_VISIBLE_BARS,0,result))
      Print(__FUNCTION__+", Error Code = ",GetLastError());
   return((int)result);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
double 指标类::微调(double percent=0.025)
  {
   return percent*(ChartPriceMax()-ChartPriceMin());
  }
//+------------------------------------------------------------------+
double 指标类::ChartPriceMin(const long chart_ID=0,const int sub_window=0)
  {
   double result=EMPTY_VALUE;
   ResetLastError();
   if(!ChartGetDouble(chart_ID,CHART_PRICE_MIN,sub_window,result))
      Print(__FUNCTION__+", Error Code = ",GetLastError());
   return(result);
  }
//+--------------------------------------------------------------------------------+
//| 这个函数接收主窗口或子窗口的图表最大值。                                             |
//+--------------------------------------------------------------------------------+
double 指标类::ChartPriceMax(const long chart_ID=0,const int sub_window=0)
  {
   double result=EMPTY_VALUE;
   ResetLastError();
   if(!ChartGetDouble(chart_ID,CHART_PRICE_MAX,sub_window,result))
      Print(__FUNCTION__+", Error Code = ",GetLastError());
   return(result);
  }
//+------------------------------------------------------------------+
void 指标类::删除指标(int sub_window,string advisorname)
  {
//IndicatorSetString(INDICATOR_SHORTNAME,advisorname);  OnInit()使用
   ChartIndicatorDelete(0,sub_window,advisorname);//根据缩略名删除zb OnDeinit()使用
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void 指标类::删除指标(int acc, datetime tim,int sub_win,string txt="wx @大树My05613828",string advisorname="my")
  {
   if(AccountInfoInteger(ACCOUNT_LOGIN)!=acc)
     {
      IndicatorSetString(INDICATOR_SHORTNAME,advisorname);
      Alert("账号未授权 联系"+txt);
      ChartIndicatorDelete(0,sub_win,advisorname);//附图根据缩略名删除zb
     }
   else
      if(TimeCurrent()>tim)
        {
         IndicatorSetString(INDICATOR_SHORTNAME,advisorname);
         Alert("指标到期 联系"+txt);
         ChartIndicatorDelete(0,sub_win,advisorname);//附图根据缩略名删除zb
        }
  }
//+------------------------------------------------------------------+
void 指标类::模版重载(string name,int second =10)
  {
   static long tim_chk =  TimeCurrent();
   if(TimeCurrent()>tim_chk+second)
     {
      ChartSaveTemplate(0,name+MQLInfoString(MQL_PROGRAM_NAME)+(string)AccountInfoInteger(ACCOUNT_LOGIN));
      ChartApplyTemplate(0,name+MQLInfoString(MQL_PROGRAM_NAME)+(string)AccountInfoInteger(ACCOUNT_LOGIN));
      tim_chk =  TimeCurrent();
     }

  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void         指标类::授权模拟(datetime EA_time_lit,int sub_window=0,string advisorname="M5ZB y_0622")
  {
   if(返回账户类型()!="模拟")
     {
      Alert("账号非法");
      IndicatorSetString(INDICATOR_SHORTNAME,advisorname);
      ChartIndicatorDelete(0,sub_window,advisorname);
     }
   if(返回账户类型()=="模拟"&&TimeCurrent()>EA_time_lit)
     {
      Alert("EA授权时间到期\n@大树 VX：My05613828");
      IndicatorSetString(INDICATOR_SHORTNAME,advisorname);
      ChartIndicatorDelete(0,sub_window,advisorname);
     }
  }
//+------------------------------------------------------------------+
void          指标类::授权模拟(int sub_window=0,string advisorname="M5ZB y_0622")
  {
   if(返回账户类型()!="模拟")
     {
      Alert("账号非法 此版本仅可用于模拟账号！！！");
      IndicatorSetString(INDICATOR_SHORTNAME,advisorname);  //OnInit()使用
      ChartIndicatorDelete(0,sub_window,advisorname);
     }
  }
//+------------------------------------------------------------------+
void          指标类::授权服务器(string server ="Doo",int sub_window=0,string advisorname="M5ZB y_0622")
  {
   if(StringFind(AccountInfoString(ACCOUNT_SERVER),server)==-1)
     {
      Alert("非法server!!!","请使用 "+server+ " server");
      IndicatorSetString(INDICATOR_SHORTNAME,advisorname);  //OnInit()使用
      ChartIndicatorDelete(0,sub_window,advisorname);//根据缩略名删除zb OnDeinit()使用
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
string   指标类::返回账户类型()
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

bool        指标类::获取物件名称列表(ENUM_OBJECT obj_type, string str1_name,string str2_name,string& name_list[])
  {
   int count = ObjectsTotal(0,-1,-1);
   ArrayResize(name_list,count);
    for(int f=count-1,j=0; f>=0; f--)
     {
      string name = ObjectName(0,f);
      if(ObjectGetInteger(0,name,OBJPROP_TYPE)==obj_type)
         if(StringFind(name,str1_name)!=-1&&StringFind(name,str2_name)!=-1)
           { name_list[j]=name; j++;}
     }
   return false;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
#endif 