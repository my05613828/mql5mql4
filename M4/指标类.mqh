#property copyright "@Π.EA 大树My05613828"
#property link      "https://www.eahub.cn/space-uid-8564.html"
//#property version   "1.0"
//#property  icon     "//include//M4//logo.ico"
#define _指标类
#ifdef _指标类
class 指标类
  {
public:
   //====================构造函数和析构函数============================
                     指标类();
                    ~指标类();
   //==================================================================
   //|====================指标数据封装函数=============================
   void              授权模拟(datetime EA_time_lit,int sub_window=0,string advisorname="M4ZB y_0622");
   void              授权模拟(int sub_window=0,string advisorname="M4ZB y_0622");
   void              授权服务器(string server ="Doo",int sub_window=0,string advisorname="M4ZB y_0622");
   string            返回账户类型();
   ulong             返回双币种图表根数(string 币种1,string 币种2,ENUM_TIMEFRAMES 周期);
   void              删除指标(bool 删除主窗口,bool 删除子窗口);
   bool              非空值检测(double  传入值);
   void              空值不显示(int 缓冲区=0,int 缓冲区1=0,int 缓冲区2=0,int 缓冲区3=0,int 缓冲区4=0,int 缓冲区5=0,int 缓冲区6=0,int 缓冲区7=0,int 缓冲区8=0);
   template<typename x>
   void              倒序数组(x &传入数组[],bool 是否倒序);
   //------------------------------------------------------------------------------------
   void              三均线大小周期检测(int 均线周期1,int 均线周期2,int 均线周期3,int 警报间隔秒数次数,bool 移除EA);
   void              均线大小周期检测(int 均线周期1,int 均线周期2,int 警报间隔秒数次数,bool 移除EA);
   //+------------------------------------------------------------------+
   double            iMAOnArrayMql4(double &Array[],int total,int iMAPeriod,int ma_shift,ENUM_MA_METHOD ma_method,int shift,int M=1);
   void              求zigzag函数值(string 币种,ENUM_TIMEFRAMES 图表周期,int 区间计算根数,int 刷新间距点值,int 退回计算根数,int 计算数量,double &二维[][4]);
   void              求zigzag函数值(string 币种,ENUM_TIMEFRAMES 图表周期,int 区间计算根数,int 刷新间距点值,int 退回计算根数,int 计算数量,double &一维[]);
   void              求均线数组值(string 币种,ENUM_TIMEFRAMES 图表周期,int 均线周期,int 平移,ENUM_MA_METHOD 方法,ENUM_APPLIED_PRICE 价格类型,int 计算数量,double &一维[]);
   void              求布林数组值(string 币种,ENUM_TIMEFRAMES 图表周期,int 布林周期,double 偏差,int 平移,ENUM_APPLIED_PRICE 价格类型,int 计算数量,double &上值[],double &中值[],double&下值[]);

   template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y,typename z,typename h,typename k,typename d,typename j,typename o,typename p,typename q>
   double            求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,z 参数9,h 参数10,k 参数11,d 参数12,j 参数13,o 参数14,p 参数15,q 参数16,int 缓存=0,int 序号=0);
   template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y,typename z,typename h,typename k,typename d,typename j,typename o,typename p>
   double            求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,z 参数9,h 参数10,k 参数11,d 参数12,j 参数13,o 参数14,p 参数15,int 缓存=0,int 序号=0);
   template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y,typename z,typename h,typename k,typename d,typename j,typename o>
   double            求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,z 参数9,h 参数10,k 参数11,d 参数12,j 参数13,o 参数14,int 缓存=0,int 序号=0);
   template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y,typename z,typename h,typename k,typename d,typename j>
   double            求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,z 参数9,h 参数10,k 参数11,d 参数12,j 参数13,int 缓存=0,int 序号=0);
   template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y,typename z,typename h,typename k,typename d>
   double            求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,z 参数9,h 参数10,k 参数11,d 参数12,int 缓存=0,int 序号=0);
   template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y,typename z,typename h,typename k>
   double            求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,z 参数9,h 参数10,k 参数11,int 缓存=0,int 序号=0);
   template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y,typename z,typename h>
   double            求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,z 参数9,h 参数10,int 缓存=0,int 序号=0);
   template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y,typename z>
   double            求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,z 参数9,int 缓存=0,int 序号=0);
   template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y>
   double            求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,int 缓存=0,int 序号=0);
   template<typename u,typename v,typename w,typename r,typename s,typename t,typename x>
   double            求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,int 缓存=0,int 序号=0);
   template<typename u,typename v,typename w,typename r,typename s,typename t>
   double            求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,int 缓存=0,int 序号=0);
   template<typename u,typename v,typename w,typename r,typename s>
   double            求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,int 缓存=0,int 序号=0);
   template<typename u,typename v,typename w,typename r>
   double            求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,int 缓存=0,int 序号=0);
   template<typename u,typename v,typename w>
   double            求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,int 缓存=0,int 序号=0);
   template<typename u,typename v>
   double            求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,int 缓存=0,int 序号=0);
   template<typename u>
   double            求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,int 缓存=0,int 序号=0);
   double            求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,int 缓存=0,int 序号=0);


   template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y>
   void              自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,int 计算数量,int 缓存,double &二维[][4]);
   template<typename u,typename v,typename w,typename r,typename s,typename t,typename x>
   void              自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,int 计算数量,int 缓存,double &二维[][4]);
   template<typename u,typename v,typename w,typename r,typename s,typename t>
   void              自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,int 计算数量,int 缓存,double &二维[][4]);
   template<typename u,typename v,typename w,typename r,typename s>
   void              自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,int 计算数量,int 缓存,double &二维[][4]);
   template<typename u,typename v,typename w,typename r>
   void              自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,int 计算数量,int 缓存,double &二维[][4]);
   template<typename u,typename v,typename w>
   void              自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,int 计算数量,int 缓存,double &二维[][4]);
   template<typename u,typename v>
   void              自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,int 计算数量,int 缓存,double &二维[][4]);
   template<typename u>
   void              自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,int 计算数量,int 缓存,double &二维[][4]);
   void              自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,int 计算数量,int 缓存,double &二维[][4]);

   template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y>
   void              自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,int 计算数量,int 缓存,double &一维[]);
   template<typename u,typename v,typename w,typename r,typename s,typename t,typename x>
   void              自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,int 计算数量,int 缓存,double &一维[]);
   template<typename u,typename v,typename w,typename r,typename s,typename t>
   void              自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,int 计算数量,int 缓存,double &一维[]);
   template<typename u,typename v,typename w,typename r,typename s>
   void              自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,int 计算数量,int 缓存,double &一维[]);
   template<typename u,typename v,typename w,typename r>
   void              自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,int 计算数量,int 缓存,double &一维[]);
   template<typename u,typename v,typename w>
   void              自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,int 计算数量,int 缓存,double &一维[]);
   template<typename u,typename v>
   void              自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,int 计算数量,int 缓存,double &一维[]);
   template<typename u>
   void              自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,int 计算数量,int 缓存,double &一维[]);
   void              自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,int 计算数量,int 缓存,double &一维[]);

   template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y,typename z>
   void              自定义指标取值到数组0(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,y 参数9,int 计算数量,int 缓存,double &zigzag[]);

   template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y>
   void              自定义指标取值到数组(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,int 计算数量,int 缓存,double &zigzag[]);
   template<typename u,typename v,typename w,typename r,typename s,typename t,typename x>
   void              自定义指标取值到数组(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,int 计算数量,int 缓存,double &zigzag[]);
   template<typename u,typename v,typename w,typename r,typename s,typename t>
   void              自定义指标取值到数组(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,int 计算数量,int 缓存,double &zigzag[]);
   template<typename u,typename v,typename w,typename r,typename s>
   void              自定义指标取值到数组(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,int 计算数量,int 缓存,double &zigzag[]);
   template<typename u,typename v,typename w,typename r>
   void              自定义指标取值到数组(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,int 计算数量,int 缓存,double &zigzag[]);
   template<typename u,typename v,typename w>
   void              自定义指标取值到数组(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,int 计算数量,int 缓存,double &zigzag[]);
   template<typename u,typename v>
   void              自定义指标取值到数组(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,int 计算数量,int 缓存,double &zigzag[]);
   template<typename u>
   void              自定义指标取值到数组(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,int 计算数量,int 缓存,double &zigzag[]);
   void              自定义指标取值到数组(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,int 计算数量,int 缓存,double &zigzag[]);
   //+------------------------------------------------------------------+
   //+---------------以下须配合至数组
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
   void              删除指标(int sub_window,string advisorname);
   void              删除指标(int acc, datetime tim,int sub_win,string txt="wx @大树My05613828",string advisorname="my");
   ///-----
   void              模版重载(string name,int second =10);
   bool              获取物件名称列表(ENUM_OBJECT obj_type, string str1_name,string str2_name,string& name_list[]);
  };
//==================================================================
//|====================指标数据封装逻辑=============================
指标类  :: 指标类()
  {
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
指标类::   ~指标类()
  {
// 删除指标(1,1);
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
///----新k线产生 计算两根K线(不产生计算1根)
 int  计算根数=0;
 if(prev_calculated==0)
 计算根数=rates_total;
 else
 计算根数=rates_total-prev_calculated+1;
 for(int i=0;i<计算根数;i++)
  ///----新k线产生 计算两根K线(不产生计算1根)
 int i=0;
  if(prev_calculated>0)
 i=prev_calculated-1;
  for(i;i<rates_total;i++)
*/
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
bool 指标类::非空值检测(double  传入值)
  {
   bool 检测=传入值!=0&&传入值!=EMPTY_VALUE;
   return 检测;
  }
//+------------------------------------------------------------------+
///-----------------------------------------------------
void 指标类::求zigzag函数值(string 币种,ENUM_TIMEFRAMES 图表周期,int 区间计算根数,int 刷新间距点值,int 退回计算根数,int 计算数量,double &二维[][4])
  {
//---
   ArrayResize(二维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   ArrayResize(zigzag,图表根数);
   int 计数=0;
   for(int f=0; f<图表根数; f++)
      zigzag[f]= iCustom(币种,图表周期,"ZigZag",区间计算根数,刷新间距点值,退回计算根数,0,f);
   for(int i=0; i<图表根数; i++)
     {
      if(计数>计算数量-1)
         break;
      if(zigzag[i]<=0)
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
//+------------------------------------------------------------------+
void 指标类::求zigzag函数值(string 币种,ENUM_TIMEFRAMES 图表周期,int 区间计算根数,int 刷新间距点值,int 退回计算根数,int 计算数量,double &一维[])
  {
//---
   ArrayResize(一维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   ArrayResize(zigzag,图表根数);
   int 计数=0;
   for(int f=0; f<图表根数; f++)
      zigzag[f]= iCustom(币种,图表周期,"ZigZag",区间计算根数,刷新间距点值,退回计算根数,0,f);
   for(int i=0; i<图表根数; i++)
     {
      if(计数>计算数量-1)
         break;
      if(zigzag[i]>0)
        {
         一维[计数]=zigzag[i];
         计数++;
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 指标类::求均线数组值(string 币种,ENUM_TIMEFRAMES 图表周期,int 均线周期,int 平移,ENUM_MA_METHOD 方法,ENUM_APPLIED_PRICE 价格类型,int 计算数量,double &一维[])
  {
//---
   ArrayResize(一维,计算数量);
   double 均[];
   ArrayResize(均,计算数量);
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   int 计数=0;
   for(int i=0; i<图表根数; i++)
     {
      if(计数>计算数量-1)
         break;
      均[i]=iMA(币种,图表周期,均线周期,平移,方法,价格类型,i);
      if(均[i]>0)
        {
         一维[计数]=均[i];
         计数++;
        }
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 指标类::求布林数组值(string 币种,ENUM_TIMEFRAMES 图表周期,int 布林周期,double 偏差,int 平移,ENUM_APPLIED_PRICE 价格类型,int 计算数量,double &上值[],double &中值[],double&下值[])
  {
//---
   ArrayResize(上值,计算数量);
   ArrayResize(中值,计算数量);
   ArrayResize(下值,计算数量);
   double 上[],中[],下[];
   ArrayResize(上,计算数量);
   ArrayResize(中,计算数量);
   ArrayResize(下,计算数量);
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   int 计数=0;
   for(int i=0; i<图表根数; i++)
     {
      if(计数>计算数量-1)
         break;
      上[i]=iBands(币种,图表周期,布林周期,偏差,平移,价格类型,MODE_UPPER,i);
      中[i]=iBands(币种,图表周期,布林周期,偏差,平移,价格类型,MODE_MAIN,i);
      下[i]=iBands(币种,图表周期,布林周期,偏差,平移,价格类型,MODE_LOWER,i);
      if(上[i]>0)
         上值[计数]=上[i];
      if(中[i]>0)
         中值[计数]=中[i];
      if(下[i]>0)
         下值[计数]=下[i];
      计数++;
     }
  }
//+------------------------------------------------------------------+
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
         int  ii,pos=total-1;
         for(ii=1; ii<iMAPeriod; ii++,pos--)
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
         int pospos=total-2;
         while(pospos>=0)
           {
            if(pospos==total-2)
               buf[pospos+1]=Array[pospos+1];
            buf[pospos]=Array[pospos]*pr+buf[pospos+1]*(1-pr);
            pospos--;
           }
         return (buf[shift+ma_shift]);
        }
      case MODE_SMMA:
        {
         if(M>=iMAPeriod)
            M=iMAPeriod-1;
         double sumsum=0;
         int  iii,k,poss;
         poss=total-iMAPeriod;
         while(poss>=0)
           {
            if(poss==total-iMAPeriod)
              {
               for(iii=0,k=poss; iii<iMAPeriod; iii++,k++)
                 {
                  sumsum+=Array[k];
                  buf[k]=0;
                 }
              }
            else
               sumsum=buf[poss+1]*(iMAPeriod-M)+M*Array[poss];
            buf[poss]=sumsum/iMAPeriod;
            poss--;
           }
         return (buf[shift+ma_shift]);
        }
      case MODE_LWMA:
        {
         double summ=0.0,lsumm=0.0;
         double price;
         int i,weight=0,posss=total-1;
         for(i=1; i<=iMAPeriod; i++,posss--)
           {
            price=Array[posss];
            summ+=price*i;
            lsumm+=price;
            weight+=i;
           }
         posss++;
         i=posss+iMAPeriod;
         while(posss>=0)
           {
            buf[posss]=summ/weight;
            if(posss==0)
               break;
            posss--;
            i--;
            price=Array[posss];
            summ=summ-lsumm+price*iMAPeriod;
            lsumm-=Array[i];
            lsumm+=price;
           }
         return (buf[shift+ma_shift]);
        }
      default :
         return (0);
     }
   return (0);
  }
//+------------------------------------------------------------------+
template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y,typename z,typename h,typename k,typename d,typename j,typename o,typename p,typename q>
double  指标类::求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,z 参数9,h 参数10,k 参数11,d 参数12,j 参数13,o 参数14,p 参数15,q 参数16,int 缓存=0,int 序号=0)
  {
   double 返回值= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,参数7,参数8,参数9,参数10,参数11,参数12,参数13,参数14,参数15,参数16,缓存,序号);
   return 返回值;
  }
//+------------------------------------------------------------------+
template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y,typename z,typename h,typename k,typename d,typename j,typename o,typename p>
double  指标类::求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,z 参数9,h 参数10,k 参数11,d 参数12,j 参数13,o 参数14,p 参数15,int 缓存=0,int 序号=0)
  {
   double 返回值= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,参数7,参数8,参数9,参数10,参数11,参数12,参数13,参数14,参数15,缓存,序号);
   return 返回值;
  }
//+------------------------------------------------------------------+
template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y,typename z,typename h,typename k,typename d,typename j,typename o>
double  指标类::求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,z 参数9,h 参数10,k 参数11,d 参数12,j 参数13,o 参数14,int 缓存=0,int 序号=0)
  {
   double 返回值= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,参数7,参数8,参数9,参数10,参数11,参数12,参数13,参数14,缓存,序号);
   return 返回值;
  }
//+------------------------------------------------------------------+
template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y,typename z,typename h,typename k,typename d,typename j>
double  指标类::求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,z 参数9,h 参数10,k 参数11,d 参数12,j 参数13,int 缓存=0,int 序号=0)
  {
   double 返回值= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,参数7,参数8,参数9,参数10,参数11,参数12,参数13,缓存,序号);
   return 返回值;
  }
//+------------------------------------------------------------------+
template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y,typename z,typename h,typename k,typename d>
double  指标类::求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,z 参数9,h 参数10,k 参数11,d 参数12,int 缓存=0,int 序号=0)
  {
   double 返回值= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,参数7,参数8,参数9,参数10,参数11,参数12,缓存,序号);
   return 返回值;
  }
//+------------------------------------------------------------------+
template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y,typename z,typename h,typename k>
double  指标类::求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,z 参数9,h 参数10,k 参数11,int 缓存=0,int 序号=0)
  {
   double 返回值= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,参数7,参数8,参数9,参数10,参数11,缓存,序号);
   return 返回值;
  }
//+------------------------------------------------------------------+
template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y,typename z,typename h>
double  指标类::求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,z 参数9,h 参数10,int 缓存=0,int 序号=0)
  {
   double 返回值= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,参数7,参数8,参数9,参数10,缓存,序号);
   return 返回值;
  }
//+------------------------------------------------------------------+
template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y,typename z>
double  指标类::求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,z 参数9,int 缓存=0,int 序号=0)
  {
   double 返回值= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,参数7,参数8,参数9,缓存,序号);
   return 返回值;
  }
//+------------------------------------------------------------------+
template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y>
double  指标类::求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,int 缓存=0,int 序号=0)
  {
   double 返回值= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,参数7,参数8,缓存,序号);
   return 返回值;
  }
//+------------------------------------------------------------------+
template<typename u,typename v,typename w,typename r,typename s,typename t,typename x>
double  指标类::求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,int 缓存=0,int 序号=0)
  {
   double 返回值= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,参数7,缓存,序号);
   return 返回值;
  }
//+------------------------------------------------------------------+
template<typename u,typename v,typename w,typename r,typename s,typename t>
double  指标类::求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,int 缓存=0,int 序号=0)
  {
   double 返回值= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,缓存,序号);
   return 返回值;
  }
//+------------------------------------------------------------------+
template<typename u,typename v,typename w,typename r,typename s>
double  指标类::求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,int 缓存=0,int 序号=0)
  {
   double 返回值= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,缓存,序号);
   return 返回值;
  }
//+------------------------------------------------------------------+
template<typename u,typename v,typename w,typename r>
double  指标类::求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,int 缓存=0,int 序号=0)
  {
   double 返回值= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,缓存,序号);
   return 返回值;
  }
//+------------------------------------------------------------------+
template<typename u,typename v,typename w>
double  指标类::求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,int 缓存=0,int 序号=0)
  {
   double 返回值= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,缓存,序号);
   return 返回值;
  }
//+------------------------------------------------------------------+
template<typename u,typename v>
double  指标类::求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,int 缓存=0,int 序号=0)
  {
   double 返回值= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,缓存,序号);
   return 返回值;
  }
//+------------------------------------------------------------------+
template<typename u>
double  指标类::求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,int 缓存=0,int 序号=0)
  {
   double 返回值= iCustom(币种,图表周期,自定义指标路径,参数1,缓存,序号);
   return 返回值;
  }
//+------------------------------------------------------------------+
double  指标类::求自定义指标值(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,int 缓存=0,int 序号=0)
  {
   double 返回值= iCustom(币种,图表周期,自定义指标路径,缓存,序号);
   return 返回值;
  }
//+------------------------------------------------------------------+
///-----------------------------------------------------
void 指标类::自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,int 计算数量,int 缓存,double &二维[][4])
  {
//---
   ArrayResize(二维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   ArrayResize(zigzag,图表根数);
   int 计数=0;
   for(int f=0; f<图表根数; f++)
      zigzag[f]= iCustom(币种,图表周期,自定义指标路径,缓存,f);
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
template<typename u>
void 指标类::自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,int 计算数量,int 缓存,double &二维[][4])
  {
//---
   ArrayResize(二维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   ArrayResize(zigzag,图表根数);
   int 计数=0;
   for(int i=0; i<图表根数; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,缓存,i);
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
template<typename u,typename v>
void  指标类::自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,int 计算数量,int 缓存,double &二维[][4])
  {
//---
   ArrayResize(二维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   ArrayResize(zigzag,图表根数);
   int 计数=0;
   for(int i=0; i<图表根数; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,缓存,i);
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
template<typename u,typename v,typename w>
void  指标类::自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,int 计算数量,int 缓存,double &二维[][4])
  {
//---
   ArrayResize(二维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   ArrayResize(zigzag,图表根数);
   int 计数=0;
   for(int i=0; i<图表根数; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,缓存,i);
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
template<typename u,typename v,typename w,typename r>
void  指标类::自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,int 计算数量,int 缓存,double &二维[][4])
  {
//---
   ArrayResize(二维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   ArrayResize(zigzag,图表根数);
   int 计数=0;
   for(int i=0; i<图表根数; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,缓存,i);
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
template<typename u,typename v,typename w,typename r,typename s>
void  指标类::自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,int 计算数量,int 缓存,double &二维[][4])
  {
//---
   ArrayResize(二维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   ArrayResize(zigzag,图表根数);
   int 计数=0;
   for(int i=0; i<图表根数; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,缓存,i);
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
template<typename u,typename v,typename w,typename r,typename s,typename t>
void  指标类::自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,int 计算数量,int 缓存,double &二维[][4])
  {
//---
   ArrayResize(二维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   ArrayResize(zigzag,图表根数);
   int 计数=0;
   for(int i=0; i<图表根数; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,缓存,i);
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
template<typename u,typename v,typename w,typename r,typename s,typename t,typename x>
void  指标类::自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,int 计算数量,int 缓存,double &二维[][4])
  {
//---
   ArrayResize(二维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   ArrayResize(zigzag,图表根数);
   int 计数=0;
   for(int i=0; i<图表根数; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,参数7,缓存,i);
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
template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y>
void  指标类::自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,int 计算数量,int 缓存,double &二维[][4])
  {
//---
   ArrayResize(二维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   ArrayResize(zigzag,图表根数);
   int 计数=0;
   for(int i=0; i<图表根数; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,参数7,参数8,缓存,i);
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
//+------------------------------------------------------------------+
void  指标类::自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,int 计算数量,int 缓存,double &一维[])
  {
//---
   ArrayResize(一维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   ArrayResize(zigzag,图表根数);
   int 计数=0;
   for(int f=0; f<图表根数; f++)
      zigzag[f]= iCustom(币种,图表周期,自定义指标路径,缓存,f);
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
template<typename u>
void  指标类::自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,int 计算数量,int 缓存,double &一维[])
  {
//---
   ArrayResize(一维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   ArrayResize(zigzag,图表根数);
   int 计数=0;
   for(int i=0; i<图表根数; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,缓存,i);
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
template<typename u,typename v>
void  指标类::自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,int 计算数量,int 缓存,double &一维[])
  {
//---
   ArrayResize(一维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   ArrayResize(zigzag,图表根数);
   int 计数=0;
   for(int i=0; i<图表根数; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,缓存,i);
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
template<typename u,typename v,typename w>
void  指标类::自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,int 计算数量,int 缓存,double &一维[])
  {
//---
   ArrayResize(一维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   ArrayResize(zigzag,图表根数);
   int 计数=0;
   for(int i=0; i<图表根数; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,缓存,i);
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
template<typename u,typename v,typename w,typename r>
void  指标类::自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,int 计算数量,int 缓存,double &一维[])
  {
//---
   ArrayResize(一维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   ArrayResize(zigzag,图表根数);
   int 计数=0;
   for(int i=0; i<图表根数; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,缓存,i);
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
template<typename u,typename v,typename w,typename r,typename s>
void  指标类::自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,int 计算数量,int 缓存,double &一维[])
  {
//---
   ArrayResize(一维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   ArrayResize(zigzag,图表根数);
   int 计数=0;
   for(int i=0; i<图表根数; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,缓存,i);
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
template<typename u,typename v,typename w,typename r,typename s,typename t>
void  指标类::自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,int 计算数量,int 缓存,double &一维[])
  {
//---
   ArrayResize(一维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   ArrayResize(zigzag,图表根数);
   int 计数=0;
   for(int i=0; i<图表根数; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,缓存,i);
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
template<typename u,typename v,typename w,typename r,typename s,typename t,typename x>
void  指标类::自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,int 计算数量,int 缓存,double &一维[])
  {
//---
   ArrayResize(一维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   ArrayResize(zigzag,图表根数);
   int 计数=0;
   for(int i=0; i<图表根数; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,参数7,缓存,i);
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
template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y>
void  指标类::自定义指标取值到数组重新排序(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,int 计算数量,int 缓存,double &一维[])
  {
//---
   ArrayResize(一维,计算数量);
   double zigzag[];
   int 图表根数=iBars(币种,图表周期)-100;
   if(图表根数>计算数量*100)
      图表根数=计算数量*100;
   ArrayResize(zigzag,图表根数);
   int 计数=0;
   for(int i=0; i<图表根数; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,参数7,参数8,缓存,i);
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
///-----------------------------------------------------
void  指标类::自定义指标取值到数组(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,int 计算数量,int 缓存,double &zigzag[])
  {
//---
   ArrayResize(zigzag,计算数量);
   for(int i=0; i<计算数量; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,缓存,i);
  }
//+------------------------------------------------------------------+
///-----------------------------------------------------
template<typename u>
void  指标类::自定义指标取值到数组(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,int 计算数量,int 缓存,double &zigzag[])
  {
//---
   ArrayResize(zigzag,计算数量);
   for(int i=0; i<计算数量; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,缓存,i);
  }
//+------------------------------------------------------------------+
///-----------------------------------------------------
template<typename u,typename v>
void  指标类::自定义指标取值到数组(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,int 计算数量,int 缓存,double &zigzag[])
  {
//---
   ArrayResize(zigzag,计算数量);
   for(int i=0; i<计算数量; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,缓存,i);
  }
//+------------------------------------------------------------------+
///-----------------------------------------------------
template<typename u,typename v,typename w>
void  指标类::自定义指标取值到数组(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,int 计算数量,int 缓存,double &zigzag[])
  {
//---
   ArrayResize(zigzag,计算数量);
   for(int i=0; i<计算数量; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,缓存,i);
  }
//+------------------------------------------------------------------+
///-----------------------------------------------------
template<typename u,typename v,typename w,typename r>
void 指标类::自定义指标取值到数组(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,int 计算数量,int 缓存,double &zigzag[])
  {
//---
   ArrayResize(zigzag,计算数量);
   for(int i=0; i<计算数量; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,缓存,i);
  }
//+------------------------------------------------------------------+
///-----------------------------------------------------
template<typename u,typename v,typename w,typename r,typename s>
void  指标类::自定义指标取值到数组(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,int 计算数量,int 缓存,double &zigzag[])
  {
//---
   ArrayResize(zigzag,计算数量);
   for(int i=0; i<计算数量; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,缓存,i);
  }
//+------------------------------------------------------------------+
///-----------------------------------------------------
template<typename u,typename v,typename w,typename r,typename s,typename t>
void  指标类::自定义指标取值到数组(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,int 计算数量,int 缓存,double &zigzag[])
  {
//---
   ArrayResize(zigzag,计算数量);
   for(int i=0; i<计算数量; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,缓存,i);
  }
//+------------------------------------------------------------------+
///-----------------------------------------------------
template<typename u,typename v,typename w,typename r,typename s,typename t,typename x>
void  指标类::自定义指标取值到数组(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,int 计算数量,int 缓存,double &zigzag[])
  {
//---
   ArrayResize(zigzag,计算数量);
   for(int i=0; i<计算数量; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,参数7,缓存,i);
  }
//+------------------------------------------------------------------+

///-----------------------------------------------------
template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y>
void 指标类::自定义指标取值到数组(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,int 计算数量,int 缓存,double &zigzag[])
  {
//---
   ArrayResize(zigzag,计算数量);
   for(int i=0; i<计算数量; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,参数7,参数8,缓存,i);
  }
//+------------------------------------------------------------------+
template<typename u,typename v,typename w,typename r,typename s,typename t,typename x,typename y,typename z>
void  自定义指标取值到数组0(string 币种,ENUM_TIMEFRAMES 图表周期,string 自定义指标路径,u 参数1,v 参数2,w 参数3,r 参数4,s 参数5,t 参数6,x 参数7,y 参数8,y 参数9,int 计算数量,int 缓存,double &zigzag[])
  {
//---
   ArrayResize(zigzag,计算数量);
   for(int i=0; i<计算数量; i++)
      zigzag[i]= iCustom(币种,图表周期,自定义指标路径,参数1,参数2,参数3,参数4,参数5,参数6,参数7,参数8,参数9,缓存,i);
  }
//+------------------------------------------------------------------+
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
template<typename x>
void 指标类::倒序数组(x &传入数组[],bool 是否倒序)
  {
   /*if(ArrayIsDynamic(传入数组))
     {*/
   if(ArrayGetAsSeries(传入数组)==false)
      ArraySetAsSeries(传入数组,是否倒序);
   /* }*/
  };
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
   return percent*(WindowPriceMax()-WindowPriceMin());
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
void         指标类::授权模拟(datetime EA_time_lit,int sub_window=0,string advisorname="M4ZB y_0622")
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
void          指标类::授权模拟(int sub_window=0,string advisorname="M4ZB y_0622")
  {
   if(返回账户类型()!="模拟")
     {
      Alert("账号非法 此版本仅可用于模拟账号！！！");
      IndicatorSetString(INDICATOR_SHORTNAME,advisorname);  //OnInit()使用
      ChartIndicatorDelete(0,sub_window,advisorname);
     }
  }
//+------------------------------------------------------------------+
void          指标类::授权服务器(string server ="Doo",int sub_window=0,string advisorname="M4ZB y_0622")
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
bool     指标类:: 获取物件名称列表(ENUM_OBJECT obj_type, string str1_name,string str2_name,string& name_list[])
  {
   int count = ObjectsTotal(0,-1,-1);
   ArrayResize(name_list,count);
    for(int f=count-1,j=0; f>=0; f--)
     {
      string name = ObjectName(f);
      if(ObjectGetInteger(0,name,OBJPROP_TYPE)==obj_type)
         if(StringFind(name,str1_name)!=-1&&StringFind(name,str2_name)!=-1)
           { name_list[j]=name; j++;}
     }
   return false;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
#endif 