#property copyright "@Π.EA 大树My05613828"
#property link      "https://www.eahub.cn/space-uid-8564.html"
//#property version   "1.0"
//#property  icon     "//include//M5//logo.ico"
#define  _图形类
#ifdef _图形类
class 图形类
  {
public:
   //====================构造函数和析构函数============================
                     图形类();
                    ~图形类();
   //==================================================================
   //|========================图形函数封装=============================
   //==================================================================
   void 画水平线
   (
      string            水平线名称,
      int               水平线窗口,
      double            水平线价格,
      color             水平线颜色,
      ENUM_LINE_STYLE   水平线类型,
      int               水平线宽度,
      string            水平线提示,
      bool              水平线背景,
      bool              水平线可选,
      bool              水平线移动
   );
   //+------------------------------------------------------------------+
   void 画垂直线
   (
      string            垂直线名称,
      int               垂直线窗口,
      datetime          垂直线时间,
      color             垂直线颜色,
      ENUM_LINE_STYLE   垂直线类型,
      int               垂直线宽度,
      string            垂直线提示,
      bool              垂直线背景,
      bool              垂直线可选,
      bool              垂直线移动
   );
   //+------------------------------------------------------------------+
   void 画趋势线
   (
      string            趋势线名称,
      int               趋势线窗口,
      datetime          定位点A时间,
      double            定位点A价格,
      datetime          定位点B时间,
      double            定位点B价格,
      bool              左射线,
      bool              右射线,
      color             趋势线颜色,
      ENUM_LINE_STYLE   趋势线类型,
      int               趋势线宽度,
      string            趋势线提示,
      bool              趋势线背景,
      bool              趋势线可选,
      bool              趋势线移动
   );
   //+------------------------------------------------------------------+
   void 画斐波那契回调线
   (
      string            回调线名称,
      int               回调线窗口,
      datetime          定位点A时间,
      double            定位点A价格,
      datetime          定位点B时间,
      double            定位点B价格,
      bool              左射线,
      bool              右射线,
      color             回调线颜色,
      ENUM_LINE_STYLE   回调线类型,
      int               回调线宽度,
      string            回调线提示,
      bool              回调线背景,
      bool              回调线可选,
      bool              回调线移动,
      int               回调线数量
   );
   //+------------------------------------------------------------------+
   void 画箭头
   (
      string            箭头名称,
      int               箭头窗口,
      datetime          箭头时间,
      double            箭头价格,
      char              箭头风格,
      ENUM_ARROW_ANCHOR 箭头锚点,
      color             箭头颜色,
      ENUM_LINE_STYLE   箭头线条类型,
      int               箭头宽度,
      string            箭头提示,
      bool              箭头背景,
      bool              箭头可选,
      bool              箭头移动
   );
   //+------------------------------------------------------------------+
   void 画文本标签
   (
      string            文本标签名称,
      int               文本标签窗口,
      int               文本标签X轴,
      int               文本标签Y轴,
      ENUM_ANCHOR_POINT 文本标签锚点,
      ENUM_BASE_CORNER  文本标签角落,
      double            文本标签角度,
      string            文本标签内容,
      string            文本标签字体,
      int               文本标签字体大小,
      color             文本标签颜色,
      bool              文本标签背景,
      bool              文本标签可选
   );
   //+------------------------------------------------------------------+
   void 画按钮
   (
      string            按钮名称,
      int               按钮窗口,
      int               按钮X轴,
      int               按钮Y轴,
      int               按钮宽度,
      int               按钮高度,
      ENUM_BASE_CORNER  按钮角落,
      string            按钮内容,
      color             按钮颜色,
      color             边框颜色,
      color             字体颜色,
      string            按钮字体,
      int               字体大小,
      bool              按钮背景,
      bool              按钮可选,
      bool              按钮状态
   );
   //+------------------------------------------------------------------+
   void 画编辑框
   (
      string            编辑框名称,
      int               编辑框窗口,
      int               编辑框X轴,
      int               编辑框Y轴,
      int               编辑框宽度,
      int               编辑框高度,
      bool              编辑框只读,
      ENUM_BASE_CORNER  编辑框角落,
      string            编辑框内容,
      color             编辑框背景色,
      color             编辑框边框色,
      color             字体颜色,
      string            编辑框字体,
      int               字体大小,
      ENUM_ALIGN_MODE   字体对齐,
      bool              编辑框前景,
      bool              编辑框可选,
      bool              编辑框移动
   );
   //+------------------------------------------------------------------+
   void 画矩形标签
   (
      string            矩形标签名称,
      int               矩形标签窗口,
      int               矩形标签X轴,
      int               矩形标签Y轴,
      int               矩形标签宽度,
      int               矩形标签高度,
      ENUM_BORDER_TYPE  矩形标签外观,
      color             矩形标签背景色,
      ENUM_LINE_STYLE   矩形标签边框类型,
      color             矩形标签边框色,
      int               矩形标签边框宽度,
      ENUM_BASE_CORNER  矩形标签角落,
      bool              矩形标签前景,
      bool              矩形标签可选,
      bool              矩形标签移动
   );
   //+------------------------------------------------------------------+
   bool 画位图标签
   (
      string            位图标签名称,
      int               位图标签窗口,
      int               位图标签X轴,
      int               位图标签Y轴,
      ENUM_ANCHOR_POINT 位图标签锚点,
      ENUM_BASE_CORNER  位图标签角落,
      string            位图标签素材ON,
      string            位图标签素材OFF,
      bool              位图标签前景,
      bool              位图标签可选,
      bool              位图标签移动
   );
   //+------------------------------------------------------------------+
   void 画价格标签
   (
      string           价格标签名称,
      int              价格标签窗口,
      datetime          定位点A时间,
      double            定位点A价格,
      color            价格标签颜色,
      ENUM_LINE_STYLE  价格标签类型,
      int              价格标签宽度,
      string           价格标签提示,
      bool             价格标签背景,
      bool             价格标签可选,
      bool             价格标签移动
   );
   bool              状态检测(int 窗口,string 物件名称);
   void              状态效果设置(string 名称,color 背景颜色1,color 字体颜色1,string 内容1,color 背景颜色0,color 字体颜色0,string 内容0,int 窗口=0);
   bool              发生图表事件检测(const int id,const long &lparam,const double &dparam,const string &sparam,ENUM_CHART_EVENT 图表事件类型,string 发生string事件物件名称,double 发生double事件物件名称=0,long 发生long事件物件名称=0);
 //+------------------------------------------------------------------+
void get_object_names(string &object_names[],ENUM_OBJECT obj_type=OBJ_RECTANGLE,int chart=0,int subwin=0);
 
  };
//==================================================================
//|======================图形封装逻辑===============================
//==================================================================
//+------------------------------------------------------------------+
图形类::图形类()
  {
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
图形类::~图形类()
  {
  }
//+------------------------------------------------------------------+
void 图形类::画水平线
(
   string            水平线名称,
   int               水平线窗口,
   double            水平线价格,
   color             水平线颜色,
   ENUM_LINE_STYLE   水平线类型,
   int               水平线宽度,
   string            水平线提示,
   bool              水平线背景,
   bool              水平线可选,
   bool              水平线移动
)
  {
//---创建水平线
   if(ObjectFind(0,水平线名称)<0)
     {
      bool 水平线=ObjectCreate(0,水平线名称,OBJ_HLINE,水平线窗口,0,水平线价格);
      if(水平线==false)
        {
         Print("水平线创建失败"+IntegerToString(GetLastError()));
        }
     }
//---设置水平线价格
   if(ObjectGetDouble(0,水平线名称,OBJPROP_PRICE)!=水平线价格)
     {
      ObjectSetDouble(0,水平线名称,OBJPROP_PRICE,水平线价格);
     }
//---设置水平线颜色
   if(ObjectGetInteger(0,水平线名称,OBJPROP_COLOR)!=水平线颜色)
     {
      ObjectSetInteger(0,水平线名称,OBJPROP_COLOR,水平线颜色);
     }
//---设置水平线类型
   if(ObjectGetInteger(0,水平线名称,OBJPROP_STYLE)!=水平线类型)
     {
      ObjectSetInteger(0,水平线名称,OBJPROP_STYLE,水平线类型);
     }
//---设置水平线宽度
   if(ObjectGetInteger(0,水平线名称,OBJPROP_WIDTH)!=水平线宽度)
     {
      ObjectSetInteger(0,水平线名称,OBJPROP_WIDTH,水平线宽度);
     }
//---设置水平线提示
   if(ObjectGetString(0,水平线名称,OBJPROP_TOOLTIP)!=水平线提示)
     {
      ObjectSetString(0,水平线名称,OBJPROP_TOOLTIP,水平线提示);
     }
//---设置水平线背景
   if(ObjectGetInteger(0,水平线名称,OBJPROP_BACK)!=水平线背景)
     {
      ObjectSetInteger(0,水平线名称,OBJPROP_BACK,水平线背景);
     }
//---设置水平线可选
   if(ObjectGetInteger(0,水平线名称,OBJPROP_SELECTABLE)!=水平线可选)
     {
      ObjectSetInteger(0,水平线名称,OBJPROP_SELECTABLE,水平线可选);
     }
//---设置水平线移动
   if(ObjectGetInteger(0,水平线名称,OBJPROP_SELECTED)!=水平线移动)
     {
      ObjectSetInteger(0,水平线名称,OBJPROP_SELECTED,水平线移动);
     }
  };
//+------------------------------------------------------------------+
void 图形类::画垂直线
(
   string            垂直线名称,
   int               垂直线窗口,
   datetime          垂直线时间,
   color             垂直线颜色,
   ENUM_LINE_STYLE   垂直线类型,
   int               垂直线宽度,
   string            垂直线提示,
   bool              垂直线背景,
   bool              垂直线可选,
   bool              垂直线移动
)
  {
//---创建垂直线
   if(ObjectFind(0,垂直线名称)<0)
     {
      bool 垂直线=ObjectCreate(0,垂直线名称,OBJ_VLINE,垂直线窗口,垂直线时间,0);
      if(垂直线==false)
        {
         Print("垂直线创建失败："+IntegerToString(GetLastError()));
        }
     }
//---设置垂直线的时间
   if(ObjectGetInteger(0,垂直线名称,OBJPROP_TIME)!=垂直线时间)
     {
      ObjectSetInteger(0,垂直线名称,OBJPROP_TIME,垂直线时间);
     }
//---设置垂直线的颜色
   if(ObjectGetInteger(0,垂直线名称,OBJPROP_COLOR)!=垂直线颜色)
     {
      ObjectSetInteger(0,垂直线名称,OBJPROP_COLOR,垂直线颜色);
     }
//---设置垂直线的类型
   if(ObjectGetInteger(0,垂直线名称,OBJPROP_STYLE)!=垂直线类型)
     {
      ObjectSetInteger(0,垂直线名称,OBJPROP_STYLE,垂直线类型);
     }
//---设置垂直线的宽度
   if(ObjectGetInteger(0,垂直线名称,OBJPROP_WIDTH)!=垂直线宽度)
     {
      ObjectSetInteger(0,垂直线名称,OBJPROP_WIDTH,垂直线宽度);
     }
//---设置垂直线的提示
   if(ObjectGetString(0,垂直线名称,OBJPROP_TOOLTIP)!=垂直线提示)
     {
      ObjectSetString(0,垂直线名称,OBJPROP_TOOLTIP,垂直线提示);
     }
//---设置垂直线的背景
   if(ObjectGetInteger(0,垂直线名称,OBJPROP_BACK)!=垂直线背景)
     {
      ObjectSetInteger(0,垂直线名称,OBJPROP_BACK,垂直线背景);
     }
//---设置垂直线的可选
   if(ObjectGetInteger(0,垂直线名称,OBJPROP_SELECTABLE)!=垂直线可选)
     {
      ObjectSetInteger(0,垂直线名称,OBJPROP_SELECTABLE,垂直线可选);
     }
//---设置垂直线的移动
   if(ObjectGetInteger(0,垂直线名称,OBJPROP_SELECTED)!=垂直线移动)
     {
      ObjectSetInteger(0,垂直线名称,OBJPROP_SELECTED,垂直线移动);
     }
  };
//+------------------------------------------------------------------+
void 图形类::画趋势线
(
   string            趋势线名称,
   int               趋势线窗口,
   datetime          定位点A时间,
   double            定位点A价格,
   datetime          定位点B时间,
   double            定位点B价格,
   bool              左射线,
   bool              右射线,
   color             趋势线颜色,
   ENUM_LINE_STYLE   趋势线类型,
   int               趋势线宽度,
   string            趋势线提示,
   bool              趋势线背景,
   bool              趋势线可选,
   bool              趋势线移动
)
  {
//---创建趋势线
   if(ObjectFind(0,趋势线名称)<0)
     {
      bool 趋势线=ObjectCreate(0,趋势线名称,OBJ_TREND,趋势线窗口,定位点A时间,定位点A价格,定位点B时间,定位点B价格);
      if(趋势线==false)
        {
         Print("趋势线创建失败："+IntegerToString(GetLastError()));
        }
     }
//---设置趋势线定位点A
   if(ObjectGetInteger(0,趋势线名称,OBJPROP_TIME,0)!=定位点A时间||ObjectGetDouble(0,趋势线名称,OBJPROP_PRICE,0)!=定位点A价格)
     {
      ObjectSetInteger(0,趋势线名称,OBJPROP_TIME,0,定位点A时间);
      ObjectSetDouble(0,趋势线名称,OBJPROP_PRICE,0,定位点A价格);
     }
//---设置趋势线定位点B
   if(ObjectGetInteger(0,趋势线名称,OBJPROP_TIME,1)!=定位点B时间||ObjectGetDouble(0,趋势线名称,OBJPROP_PRICE,1)!=定位点B价格)
     {
      ObjectSetInteger(0,趋势线名称,OBJPROP_TIME,1,定位点B时间);
      ObjectSetDouble(0,趋势线名称,OBJPROP_PRICE,1,定位点B价格);
     }
//---设置趋势线射线
   if(ObjectGetInteger(0,趋势线名称,OBJPROP_RAY_LEFT)!=左射线 ||ObjectGetInteger(0,趋势线名称,OBJPROP_RAY_RIGHT)!=右射线)
     {
      ObjectSetInteger(0,趋势线名称,OBJPROP_RAY_LEFT,左射线);
      ObjectSetInteger(0,趋势线名称,OBJPROP_RAY_RIGHT,右射线);
     }
//---设置趋势线的颜色
   if(ObjectGetInteger(0,趋势线名称,OBJPROP_COLOR)!=趋势线颜色)
     {
      ObjectSetInteger(0,趋势线名称,OBJPROP_COLOR,趋势线颜色);
     }
//---设置趋势线的类型
   if(ObjectGetInteger(0,趋势线名称,OBJPROP_STYLE)!=趋势线类型)
     {
      ObjectSetInteger(0,趋势线名称,OBJPROP_STYLE,趋势线类型);
     }
//---设置趋势线的宽度
   if(ObjectGetInteger(0,趋势线名称,OBJPROP_WIDTH)!=趋势线宽度)
     {
      ObjectSetInteger(0,趋势线名称,OBJPROP_WIDTH,趋势线宽度);
     }
//---设置趋势线的提示
   if(ObjectGetString(0,趋势线名称,OBJPROP_TOOLTIP)!=趋势线提示)
     {
      ObjectSetString(0,趋势线名称,OBJPROP_TOOLTIP,趋势线提示);
     }
//---设置趋势线的背景
   if(ObjectGetInteger(0,趋势线名称,OBJPROP_BACK)!=趋势线背景)
     {
      ObjectSetInteger(0,趋势线名称,OBJPROP_BACK,趋势线背景);
     }
//---设置趋势线的可选
   if(ObjectGetInteger(0,趋势线名称,OBJPROP_SELECTABLE)!=趋势线可选)
     {
      ObjectSetInteger(0,趋势线名称,OBJPROP_SELECTABLE,趋势线可选);
     }
//---设置趋势线的移动
   if(ObjectGetInteger(0,趋势线名称,OBJPROP_SELECTED)!=趋势线移动)
     {
      ObjectSetInteger(0,趋势线名称,OBJPROP_SELECTED,趋势线移动);
     }
  };
//+------------------------------------------------------------------+
void 图形类::画斐波那契回调线
(
   string            回调线名称,
   int               回调线窗口,
   datetime          定位点A时间,
   double            定位点A价格,
   datetime          定位点B时间,
   double            定位点B价格,
   bool              左射线,
   bool              右射线,
   color             回调线颜色,
   ENUM_LINE_STYLE   回调线类型,
   int               回调线宽度,
   string            回调线提示,
   bool              回调线背景,
   bool              回调线可选,
   bool              回调线移动,
   int               回调线数量
)
  {
//---创建回调线
   if(ObjectFind(0,回调线名称)<0)
     {
      bool 回调线=ObjectCreate(0,回调线名称,OBJ_FIBO,回调线窗口,定位点A时间,定位点A价格,定位点B时间,定位点B价格);
      if(回调线==false)
        {
         Print("回调线创建失败："+IntegerToString(GetLastError()));
        }
     }
//---设置回调线定位点A
   if(ObjectGetInteger(0,回调线名称,OBJPROP_TIME,0)!=定位点A时间||ObjectGetDouble(0,回调线名称,OBJPROP_PRICE,0)!=定位点A价格)
     {
      ObjectSetInteger(0,回调线名称,OBJPROP_TIME,0,定位点A时间);
      ObjectSetDouble(0,回调线名称,OBJPROP_PRICE,0,定位点A价格);
     }
//---设置回调线定位点B
   if(ObjectGetInteger(0,回调线名称,OBJPROP_TIME,1)!=定位点B时间||ObjectGetDouble(0,回调线名称,OBJPROP_PRICE,1)!=定位点B价格)
     {
      ObjectSetInteger(0,回调线名称,OBJPROP_TIME,1,定位点B时间);
      ObjectSetDouble(0,回调线名称,OBJPROP_PRICE,1,定位点B价格);
     }
//---设置回调线的射线
   if(ObjectGetInteger(0,回调线名称,OBJPROP_RAY_LEFT)!=左射线 ||ObjectGetInteger(0,回调线名称,OBJPROP_RAY_RIGHT)!=右射线)
     {
      ObjectSetInteger(0,回调线名称,OBJPROP_RAY_LEFT,左射线);
      ObjectSetInteger(0,回调线名称,OBJPROP_RAY_RIGHT,右射线);
     }
//---设置回调线的颜色
   if(ObjectGetInteger(0,回调线名称,OBJPROP_COLOR)!=回调线颜色)
     {
      ObjectSetInteger(0,回调线名称,OBJPROP_COLOR,回调线颜色);
     }
//---设置回调线的类型
   if(ObjectGetInteger(0,回调线名称,OBJPROP_STYLE)!=回调线类型)
     {
      ObjectSetInteger(0,回调线名称,OBJPROP_STYLE,回调线类型);
     }
//---设置回调线的宽度
   if(ObjectGetInteger(0,回调线名称,OBJPROP_WIDTH)!=回调线宽度)
     {
      ObjectSetInteger(0,回调线名称,OBJPROP_WIDTH,回调线宽度);
     }
//---设置回调线的提示
   if(ObjectGetString(0,回调线名称,OBJPROP_TOOLTIP)!=回调线提示)
     {
      ObjectSetString(0,回调线名称,OBJPROP_TOOLTIP,回调线提示);
     }
//---设置回调线的背景
   if(ObjectGetInteger(0,回调线名称,OBJPROP_BACK)!=回调线背景)
     {
      ObjectSetInteger(0,回调线名称,OBJPROP_BACK,回调线背景);
     }
//---设置回调线的可选
   if(ObjectGetInteger(0,回调线名称,OBJPROP_SELECTABLE)!=回调线可选)
     {
      ObjectSetInteger(0,回调线名称,OBJPROP_SELECTABLE,回调线可选);
     }
//---设置回调线的移动
   if(ObjectGetInteger(0,回调线名称,OBJPROP_SELECTED)!=回调线移动)
     {
      ObjectSetInteger(0,回调线名称,OBJPROP_SELECTED,回调线移动);
     }
//---设置回调线数量
   if(ObjectGetInteger(0,回调线名称,OBJPROP_LEVELS)!=回调线数量)
     {
      ObjectSetInteger(0,回调线名称,OBJPROP_LEVELS,回调线数量);
     }
//---可选类型设置
   ObjectSetInteger(0,回调线名称,OBJPROP_LEVELCOLOR,2,clrDeepSkyBlue);
   ObjectSetInteger(0,回调线名称,OBJPROP_LEVELCOLOR,4,clrDeepSkyBlue);
   ObjectSetInteger(0,回调线名称,OBJPROP_LEVELWIDTH,2,3);
   ObjectSetInteger(0,回调线名称,OBJPROP_LEVELWIDTH,4,3);
  };
//+------------------------------------------------------------------+
void 图形类::画箭头
(
   string            箭头名称,
   int               箭头窗口,
   datetime          箭头时间,
   double            箭头价格,
   char              箭头风格,
   ENUM_ARROW_ANCHOR 箭头锚点,
   color             箭头颜色,
   ENUM_LINE_STYLE   箭头线条类型,
   int               箭头宽度,
   string            箭头提示,
   bool              箭头背景,
   bool              箭头可选,
   bool              箭头移动
)
  {
//---创建箭头
   if(ObjectFind(0,箭头名称)<0)
     {
      bool 箭头=ObjectCreate(0,箭头名称,OBJ_ARROW,箭头窗口,箭头时间,箭头价格);
      if(箭头==false)
        {
         Print("箭头创建失败："+IntegerToString(GetLastError()));
        }
     }
//---设置箭头时间
   if(ObjectGetInteger(0,箭头名称,OBJPROP_TIME)!=箭头时间)
     {
      ObjectSetInteger(0,箭头名称,OBJPROP_TIME,箭头时间);
     }
//---设置箭头价格
   if(ObjectGetDouble(0,箭头名称,OBJPROP_PRICE)!=箭头价格)
     {
      ObjectSetDouble(0,箭头名称,OBJPROP_PRICE,箭头价格);
     }
//---设置箭头风格
   if(ObjectGetInteger(0,箭头名称,OBJPROP_ARROWCODE)!=箭头风格)
     {
      ObjectSetInteger(0,箭头名称,OBJPROP_ARROWCODE,箭头风格);
     }
//---设置箭头锚点
   if(ObjectGetInteger(0,箭头名称,OBJPROP_ANCHOR)!=箭头锚点)
     {
      ObjectSetInteger(0,箭头名称,OBJPROP_ANCHOR,箭头锚点);
     }
//---设置箭头的颜色
   if(ObjectGetInteger(0,箭头名称,OBJPROP_COLOR)!=箭头颜色)
     {
      ObjectSetInteger(0,箭头名称,OBJPROP_COLOR,箭头颜色);
     }
//---设置箭头的线条类型
   if(ObjectGetInteger(0,箭头名称,OBJPROP_STYLE)!=箭头线条类型)
     {
      ObjectSetInteger(0,箭头名称,OBJPROP_STYLE,箭头线条类型);
     }
//---设置箭头的宽度
   if(ObjectGetInteger(0,箭头名称,OBJPROP_WIDTH)!=箭头宽度)
     {
      ObjectSetInteger(0,箭头名称,OBJPROP_WIDTH,箭头宽度);
     }
//---设置箭头的提示
   if(ObjectGetString(0,箭头名称,OBJPROP_TOOLTIP)!=箭头提示)
     {
      ObjectSetString(0,箭头名称,OBJPROP_TOOLTIP,箭头提示);
     }
//---设置箭头的背景
   if(ObjectGetInteger(0,箭头名称,OBJPROP_BACK)!=箭头背景)
     {
      ObjectSetInteger(0,箭头名称,OBJPROP_BACK,箭头背景);
     }
//---设置箭头的可选
   if(ObjectGetInteger(0,箭头名称,OBJPROP_SELECTABLE)!=箭头可选)
     {
      ObjectSetInteger(0,箭头名称,OBJPROP_SELECTABLE,箭头可选);
     }
//---设置箭头的移动
   if(ObjectGetInteger(0,箭头名称,OBJPROP_SELECTED)!=箭头移动)
     {
      ObjectSetInteger(0,箭头名称,OBJPROP_SELECTED,箭头移动);
     }
  };
//+------------------------------------------------------------------+
void 图形类::画文本标签
(
   string            文本标签名称,
   int               文本标签窗口,
   int               文本标签X轴,
   int               文本标签Y轴,
   ENUM_ANCHOR_POINT 文本标签锚点,
   ENUM_BASE_CORNER  文本标签角落,
   double            文本标签角度,
   string            文本标签内容,
   string            文本标签字体,
   int               文本标签字体大小,
   color             文本标签颜色,
   bool              文本标签背景,
   bool              文本标签可选
)
  {
//---创建文本标签
   if(ObjectFind(0,文本标签名称)<0)
     {
      bool 文本标签=ObjectCreate(0,文本标签名称,OBJ_LABEL,文本标签窗口,0,0);
      if(文本标签==false)
        {
         Print("文本标签创建失败："+IntegerToString(GetLastError()));
        }
     }
//---设置文本X轴和Y轴坐标
   if(ObjectGetInteger(0,文本标签名称,OBJPROP_XDISTANCE)!=文本标签X轴 ||ObjectGetInteger(0,文本标签名称,OBJPROP_YDISTANCE)!=文本标签Y轴)
     {
      ObjectSetInteger(0,文本标签名称,OBJPROP_XDISTANCE,文本标签X轴);
      ObjectSetInteger(0,文本标签名称,OBJPROP_YDISTANCE,文本标签Y轴);
     }
//---设置文本标签锚点
   if(ObjectGetInteger(0,文本标签名称,OBJPROP_ANCHOR)!=文本标签锚点)
     {
      ObjectSetInteger(0,文本标签名称,OBJPROP_ANCHOR,文本标签锚点);
     }
//---设置文本标签角落
   if(ObjectGetInteger(0,文本标签名称,OBJPROP_CORNER)!=文本标签角落)
     {
      ObjectSetInteger(0,文本标签名称,OBJPROP_CORNER,文本标签角落);
     }
//---设置文本标签角度
   if(ObjectGetDouble(0,文本标签名称,OBJPROP_ANGLE)!=文本标签角度)
     {
      ObjectSetDouble(0,文本标签名称,OBJPROP_ANGLE,文本标签角度);
     }
//---设置文本标签内容
   if(ObjectGetString(0,文本标签名称,OBJPROP_TEXT)!=文本标签内容)
     {
      ObjectSetString(0,文本标签名称,OBJPROP_TEXT,文本标签内容);
     }
//---设置文本标签字体
   if(ObjectGetString(0,文本标签名称,OBJPROP_FONT)!=文本标签字体)
     {
      ObjectSetString(0,文本标签名称,OBJPROP_FONT,文本标签字体);
     }
//---设置文本标签字体大小
   if(ObjectGetInteger(0,文本标签名称,OBJPROP_FONTSIZE)!=文本标签字体大小)
     {
      ObjectSetInteger(0,文本标签名称,OBJPROP_FONTSIZE,文本标签字体大小);
     }
//---设置文本标签颜色
   if(ObjectGetInteger(0,文本标签名称,OBJPROP_COLOR)!=文本标签颜色)
     {
      ObjectSetInteger(0,文本标签名称,OBJPROP_COLOR,文本标签颜色);
     }
//---设置文本标签的背景
   if(ObjectGetInteger(0,文本标签名称,OBJPROP_BACK)!=文本标签背景)
     {
      ObjectSetInteger(0,文本标签名称,OBJPROP_BACK,文本标签背景);
     }
//---设置文本标签的可选
   if(ObjectGetInteger(0,文本标签名称,OBJPROP_SELECTABLE)!=文本标签可选)
     {
      ObjectSetInteger(0,文本标签名称,OBJPROP_SELECTABLE,文本标签可选);
     }
  };
//+------------------------------------------------------------------+
void 图形类::画按钮
(
   string            按钮名称,
   int               按钮窗口,
   int               按钮X轴,
   int               按钮Y轴,
   int               按钮宽度,
   int               按钮高度,
   ENUM_BASE_CORNER  按钮角落,
   string            按钮内容,
   color             按钮颜色,
   color             边框颜色,
   color             字体颜色,
   string            按钮字体,
   int               字体大小,
   bool              按钮背景,
   bool              按钮可选,
   bool              按钮状态
)
  {
//---创建按钮
   if(ObjectFind(0,按钮名称)<0)
     {
      bool 按钮=ObjectCreate(0,按钮名称,OBJ_BUTTON,按钮窗口,0,0);
      if(按钮==false)
        {
         Print("按钮创建失败："+IntegerToString(GetLastError()));
        }
     }
//---设置按钮X轴和Y轴
   if(ObjectGetInteger(0,按钮名称,OBJPROP_XDISTANCE)!=按钮X轴 ||ObjectGetInteger(0,按钮名称,OBJPROP_YDISTANCE)!=按钮Y轴)
     {
      ObjectSetInteger(0,按钮名称,OBJPROP_XDISTANCE,按钮X轴);
      ObjectSetInteger(0,按钮名称,OBJPROP_YDISTANCE,按钮Y轴);
     }
//---设置按钮高度和宽度
   if(ObjectGetInteger(0,按钮名称,OBJPROP_XSIZE)!=按钮宽度 ||ObjectGetInteger(0,按钮名称,OBJPROP_YSIZE)!=按钮高度)
     {
      ObjectSetInteger(0,按钮名称,OBJPROP_XSIZE,按钮宽度);
      ObjectSetInteger(0,按钮名称,OBJPROP_YSIZE,按钮高度);
     }
//---设置按钮角落
   if(ObjectGetInteger(0,按钮名称,OBJPROP_CORNER)!=按钮角落)
     {
      ObjectSetInteger(0,按钮名称,OBJPROP_CORNER,按钮角落);
     }
//---设置按钮内容
   if(ObjectGetString(0,按钮名称,OBJPROP_TEXT)!=按钮内容)
     {
      ObjectSetString(0,按钮名称,OBJPROP_TEXT,按钮内容);
     }
//---设置按钮颜色
   if(ObjectGetInteger(0,按钮名称,OBJPROP_BGCOLOR)!=按钮颜色)
     {
      ObjectSetInteger(0,按钮名称,OBJPROP_BGCOLOR,按钮颜色);
     }
//---设置边框颜色
   if(ObjectGetInteger(0,按钮名称,OBJPROP_BORDER_COLOR)!=边框颜色)
     {
      ObjectSetInteger(0,按钮名称,OBJPROP_BORDER_COLOR,边框颜色);
     }
//---设置字体颜色
   if(ObjectGetInteger(0,按钮名称,OBJPROP_COLOR)!=字体颜色)
     {
      ObjectSetInteger(0,按钮名称,OBJPROP_COLOR,字体颜色);
     }
//---设置按钮字体
   if(ObjectGetString(0,按钮名称,OBJPROP_FONT)!=按钮字体)
     {
      ObjectSetString(0,按钮名称,OBJPROP_FONT,按钮字体);
     }
//---设置字体大小
   if(ObjectGetInteger(0,按钮名称,OBJPROP_FONTSIZE)!=字体大小)
     {
      ObjectSetInteger(0,按钮名称,OBJPROP_FONTSIZE,字体大小);
     }
//---设置文本标签的背景
   if(ObjectGetInteger(0,按钮名称,OBJPROP_BACK)!=按钮背景)
     {
      ObjectSetInteger(0,按钮名称,OBJPROP_BACK,按钮背景);
     }
//---设置文本标签的可选
   if(ObjectGetInteger(0,按钮名称,OBJPROP_SELECTABLE)!=按钮可选)
     {
      ObjectSetInteger(0,按钮名称,OBJPROP_SELECTABLE,按钮可选);
     }
//---设置按钮状态
   if(ObjectGetInteger(0,按钮名称,OBJPROP_STATE)!=按钮状态)
     {
      ObjectSetInteger(0,按钮名称,OBJPROP_STATE,按钮状态);
     }
  };
//+------------------------------------------------------------------+
void 图形类::画编辑框
(
   string            编辑框名称,
   int               编辑框窗口,
   int               编辑框X轴,
   int               编辑框Y轴,
   int               编辑框宽度,
   int               编辑框高度,
   bool              编辑框只读,
   ENUM_BASE_CORNER  编辑框角落,
   string            编辑框内容,
   color             编辑框背景色,
   color             编辑框边框色,
   color             字体颜色,
   string            编辑框字体,
   int               字体大小,
   ENUM_ALIGN_MODE   字体对齐,
   bool              编辑框前景,
   bool              编辑框可选,
   bool              编辑框移动
)
  {
//---创建编辑框
   if(ObjectFind(0,编辑框名称)<0)
     {
      bool 编辑框=ObjectCreate(0,编辑框名称,OBJ_EDIT,编辑框窗口,0,0);
      if(编辑框==false)
        {
         Print("编辑框创建失败："+IntegerToString(GetLastError()));
        }
     }
//---设置编辑框的X轴和Y轴
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_XDISTANCE)!=编辑框X轴 ||ObjectGetInteger(0,编辑框名称,OBJPROP_YDISTANCE)!=编辑框Y轴)
     {
      ObjectSetInteger(0,编辑框名称,OBJPROP_XDISTANCE,编辑框X轴);
      ObjectSetInteger(0,编辑框名称,OBJPROP_YDISTANCE,编辑框Y轴);
     }
//---设置编辑框的高度和宽度
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_XSIZE)!=编辑框宽度 ||ObjectGetInteger(0,编辑框名称,OBJPROP_YSIZE)!=编辑框高度)
     {
      ObjectSetInteger(0,编辑框名称,OBJPROP_XSIZE,编辑框宽度);
      ObjectSetInteger(0,编辑框名称,OBJPROP_YSIZE,编辑框高度);
     }
//---设置编辑框的状态
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_READONLY)!=编辑框只读)
     {
      ObjectSetInteger(0,编辑框名称,OBJPROP_READONLY,编辑框只读);
     }
//---设置编辑框的角落
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_CORNER)!=编辑框角落)
     {
      ObjectSetInteger(0,编辑框名称,OBJPROP_CORNER,编辑框角落);
     }
//---设置编辑框的内容
   if(ObjectGetString(0,编辑框名称,OBJPROP_TEXT)!=编辑框内容)
     {
      ObjectSetString(0,编辑框名称,OBJPROP_TEXT,编辑框内容);
     }
//---设置编辑的背景色
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_BGCOLOR)!=编辑框背景色)
     {
      ObjectSetInteger(0,编辑框名称,OBJPROP_BGCOLOR,编辑框背景色);
     }
//---设置编辑框的边框色
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_BORDER_COLOR)!=编辑框边框色)
     {
      ObjectSetInteger(0,编辑框名称,OBJPROP_BORDER_COLOR,编辑框边框色);
     }
//---设置编辑框的文本色
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_COLOR)!=字体颜色)
     {
      ObjectSetInteger(0,编辑框名称,OBJPROP_COLOR,字体颜色);
     }
//---设置编辑框文本字体
   if(ObjectGetString(0,编辑框名称,OBJPROP_FONT)!=编辑框字体)
     {
      ObjectSetString(0,编辑框名称,OBJPROP_FONT,编辑框字体);
     }
//---设置编辑框字体大小
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_FONTSIZE)!=字体大小)
     {
      ObjectSetInteger(0,编辑框名称,OBJPROP_FONTSIZE,字体大小);
     }
//---设置编辑框字体对齐
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_ALIGN)!=字体对齐)
     {
      ObjectSetInteger(0,编辑框名称,OBJPROP_ALIGN,字体对齐);
     }
//---设置编辑框前景
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_BACK)!=编辑框前景)
     {
      ObjectSetInteger(0,编辑框名称,OBJPROP_BACK,编辑框前景);
     }
//---设置编辑框可选
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_SELECTABLE)!=编辑框可选)
     {
      ObjectSetInteger(0,编辑框名称,OBJPROP_SELECTABLE,编辑框可选);
     }
//---设置编辑框移动
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_SELECTED)!=编辑框移动)
     {
      ObjectSetInteger(0,编辑框名称,OBJPROP_SELECTED,编辑框移动);
     }
  };
//+------------------------------------------------------------------+
void 图形类::画矩形标签
(
   string            矩形标签名称,
   int               矩形标签窗口,
   int               矩形标签X轴,
   int               矩形标签Y轴,
   int               矩形标签宽度,
   int               矩形标签高度,
   ENUM_BORDER_TYPE  矩形标签外观,
   color             矩形标签背景色,
   ENUM_LINE_STYLE   矩形标签边框类型,
   color             矩形标签边框色,
   int               矩形标签边框宽度,
   ENUM_BASE_CORNER  矩形标签角落,
   bool              矩形标签前景,
   bool              矩形标签可选,
   bool              矩形标签移动
)
  {
//---创建矩形标签
   if(ObjectFind(0,矩形标签名称)<0)
     {
      bool 矩形标签=ObjectCreate(0,矩形标签名称,OBJ_RECTANGLE_LABEL,矩形标签窗口,0,0);
      if(矩形标签==false)
        {
         Print("矩形标签创建失败："+IntegerToString(GetLastError()));
        }
     }
//---设置矩形标签X轴和Y轴
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_XDISTANCE)!=矩形标签X轴 ||ObjectGetInteger(0,矩形标签名称,OBJPROP_YDISTANCE)!=矩形标签Y轴)
     {
      ObjectSetInteger(0,矩形标签名称,OBJPROP_XDISTANCE,矩形标签X轴);
      ObjectSetInteger(0,矩形标签名称,OBJPROP_YDISTANCE,矩形标签Y轴);
     }
     //---设置矩形标签的角落
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_CORNER)!=矩形标签角落)
      ObjectSetInteger(0,矩形标签名称,OBJPROP_CORNER,矩形标签角落);
//---设置矩形标签的宽度和高度
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_XSIZE)!=矩形标签宽度 ||ObjectGetInteger(0,矩形标签名称,OBJPROP_YSIZE)!=矩形标签高度)
     {
      ObjectSetInteger(0,矩形标签名称,OBJPROP_XSIZE,矩形标签宽度);
      ObjectSetInteger(0,矩形标签名称,OBJPROP_YSIZE,矩形标签高度);
     }
//---设置矩形标签的外观
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_BORDER_TYPE)!=矩形标签外观)
     {
      ObjectSetInteger(0,矩形标签名称,OBJPROP_BORDER_TYPE,矩形标签外观);
     }
//---设置矩形标签背景色
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_BGCOLOR)!=矩形标签背景色)
     {
      ObjectSetInteger(0,矩形标签名称,OBJPROP_BGCOLOR,矩形标签背景色);
     }
//---设置矩形标签边框类型
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_STYLE)!=矩形标签边框类型)
     {
      ObjectSetInteger(0,矩形标签名称,OBJPROP_STYLE,矩形标签边框类型);
     }
//---设置矩形标签边框色
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_COLOR)!=矩形标签边框色)
     {
      ObjectSetInteger(0,矩形标签名称,OBJPROP_COLOR,矩形标签边框色);
     }
//---设置矩形标签边框宽度
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_WIDTH)!=矩形标签边框宽度)
     {
      ObjectSetInteger(0,矩形标签名称,OBJPROP_WIDTH,矩形标签边框宽度);
     }
//---设置矩形标签前景
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_BACK)!=矩形标签前景)
     {
      ObjectSetInteger(0,矩形标签名称,OBJPROP_BACK,矩形标签前景);
     }
//---设置矩形标签可选
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_SELECTABLE)!=矩形标签可选)
     {
      ObjectSetInteger(0,矩形标签名称,OBJPROP_SELECTABLE,矩形标签可选);
     }
//---设置矩形标签移动
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_SELECTED)!=矩形标签移动)
     {
      ObjectSetInteger(0,矩形标签名称,OBJPROP_SELECTED,矩形标签移动);
     }
  };
//+------------------------------------------------------------------+
bool 图形类::画位图标签
(
   string            位图标签名称,
   int               位图标签窗口,
   int               位图标签X轴,
   int               位图标签Y轴,
   ENUM_ANCHOR_POINT 位图标签锚点,
   ENUM_BASE_CORNER  位图标签角落,
   string            位图标签素材ON,
   string            位图标签素材OFF,
   bool              位图标签前景,
   bool              位图标签可选,
   bool              位图标签移动
)
  {
//---创建位图标签
   if(ObjectFind(0,位图标签名称)<0)
     {
      bool 位图标签=ObjectCreate(0,位图标签名称,OBJ_BITMAP_LABEL,位图标签窗口,0,0);
      if(位图标签==false)
        {
         Print("位图标签创建失败："+IntegerToString(GetLastError()));
        }
     }
//---设置位图标签X轴和Y轴
   if(ObjectGetInteger(0,位图标签名称,OBJPROP_XDISTANCE)!=位图标签X轴 ||ObjectGetInteger(0,位图标签名称,OBJPROP_YDISTANCE)!=位图标签Y轴)
     {
      ObjectSetInteger(0,位图标签名称,OBJPROP_XDISTANCE,位图标签X轴);
      ObjectSetInteger(0,位图标签名称,OBJPROP_YDISTANCE,位图标签Y轴);
     }
//---设置位图标签锚点
   if(ObjectGetInteger(0,位图标签名称,OBJPROP_ANCHOR)!=位图标签锚点)
     {
      ObjectSetInteger(0,位图标签名称,OBJPROP_ANCHOR,位图标签锚点);
     }
//---设置位图标签角落
   if(ObjectGetInteger(0,位图标签名称,OBJPROP_CORNER)!=位图标签角落)
     {
      ObjectSetInteger(0,位图标签名称,OBJPROP_CORNER,位图标签角落);
     }
//---设置位图标签素材ON
   if(ObjectGetString(0,位图标签名称,OBJPROP_BMPFILE,0)!=位图标签素材ON)
     {
      ObjectSetString(0,位图标签名称,OBJPROP_BMPFILE,0,位图标签素材ON);
     }
//---设置位图标签素材OFF
   if(ObjectGetString(0,位图标签名称,OBJPROP_BMPFILE,1)!=位图标签素材OFF)
     {
      ObjectSetString(0,位图标签名称,OBJPROP_BMPFILE,1,位图标签素材OFF);
     }
//---设置位图标签前景
   if(ObjectGetInteger(0,位图标签名称,OBJPROP_BACK)!=位图标签前景)
     {
      ObjectSetInteger(0,位图标签名称,OBJPROP_BACK,位图标签前景);
     }
//---设置位图标签可选
   if(ObjectGetInteger(0,位图标签名称,OBJPROP_SELECTABLE)!=位图标签可选)
     {
      ObjectSetInteger(0,位图标签名称,OBJPROP_SELECTABLE,位图标签可选);
     }
//---设置位图标签移动
   if(ObjectGetInteger(0,位图标签名称,OBJPROP_SELECTED)!=位图标签移动)
     {
      ObjectSetInteger(0,位图标签名称,OBJPROP_SELECTED,位图标签移动);
     }
//---获取位图标签状态
   bool 位图标签状态=ObjectGetInteger(0,位图标签名称,OBJPROP_STATE);
   return(位图标签状态);
  };
//+------------------------------------------------------------------+
void 图形类::画价格标签
(
   string           价格标签名称,
   int              价格标签窗口,
   datetime          定位点A时间,
   double            定位点A价格,
   color            价格标签颜色,
   ENUM_LINE_STYLE  价格标签类型,
   int              价格标签宽度,
   string           价格标签提示,
   bool             价格标签背景,
   bool             价格标签可选,
   bool             价格标签移动
)
  {
//---创建趋势线
   if(ObjectFind(0,价格标签名称)<0)
     {
      bool 价格标签=ObjectCreate(0,价格标签名称,OBJ_ARROW_RIGHT_PRICE,价格标签窗口,定位点A时间,定位点A价格);
      if(价格标签==false)
        {
         Print("价格标签创建失败："+IntegerToString(GetLastError()));
        }
     }
//---设置价格标签定位点A
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_TIME,0)!=定位点A时间||ObjectGetDouble(0,价格标签名称,OBJPROP_PRICE,0)!=定位点A价格)
     {
      ObjectSetInteger(0,价格标签名称,OBJPROP_TIME,0,定位点A时间);
      ObjectSetDouble(0,价格标签名称,OBJPROP_PRICE,0,定位点A价格);
     }
//---设置价格标签的颜色
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_COLOR)!=价格标签颜色)
     {
      ObjectSetInteger(0,价格标签名称,OBJPROP_COLOR,价格标签颜色);
     }
//---设置价格标签的类型
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_STYLE)!=价格标签类型)
     {
      ObjectSetInteger(0,价格标签名称,OBJPROP_STYLE,价格标签类型);
     }
//---设置价格标签的宽度
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_WIDTH)!=价格标签宽度)
     {
      ObjectSetInteger(0,价格标签名称,OBJPROP_WIDTH,价格标签宽度);
     }
//---设置价格标签的提示
   if(ObjectGetString(0,价格标签名称,OBJPROP_TOOLTIP)!=价格标签提示)
     {
      ObjectSetString(0,价格标签名称,OBJPROP_TOOLTIP,价格标签提示);
     }
//---设置价格标签的背景
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_BACK)!=价格标签背景)
     {
      ObjectSetInteger(0,价格标签名称,OBJPROP_BACK,价格标签背景);
     }
//---设置价格标签的可选
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_SELECTABLE)!=价格标签可选)
     {
      ObjectSetInteger(0,价格标签名称,OBJPROP_SELECTABLE,价格标签可选);
     }
//---设置价格标签的移动
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_SELECTED)!=价格标签移动)
     {
      ObjectSetInteger(0,价格标签名称,OBJPROP_SELECTED,价格标签移动);
     }
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 图形类::状态效果设置(string 名称,color 背景颜色1,color 字体颜色1,string  内容1,color  背景颜色0,color 字体颜色0,string  内容0,int 窗口=0)
  {
   if(状态检测(窗口,名称)==true)
     {
      if(ObjectGetInteger(窗口,名称,OBJPROP_BGCOLOR)!=背景颜色1)
         ObjectSetInteger(窗口,名称,OBJPROP_BGCOLOR,背景颜色1);
      if(ObjectGetInteger(窗口,名称,OBJPROP_COLOR)!=字体颜色1)
         ObjectSetInteger(窗口,名称,OBJPROP_COLOR,字体颜色1);
      if(ObjectGetString(窗口,名称,OBJPROP_TEXT)!=内容1)
         ObjectSetString(窗口,名称,OBJPROP_TEXT,内容1);
     }
   if(状态检测(窗口,名称)==false)
     {
      if(ObjectGetInteger(窗口,名称,OBJPROP_BGCOLOR)!=背景颜色0)
         ObjectSetInteger(窗口,名称,OBJPROP_BGCOLOR,背景颜色0);
      if(ObjectGetInteger(窗口,名称,OBJPROP_COLOR)!=字体颜色0)
         ObjectSetInteger(窗口,名称,OBJPROP_COLOR,字体颜色0);
      if(ObjectGetString(窗口,名称,OBJPROP_TEXT)!=内容0)
         ObjectSetString(窗口,名称,OBJPROP_TEXT,内容0);
     }
  }
//+------------------------------------------------------------------+
bool 图形类::状态检测(int 窗口,string 物件名称)
  {
   bool 检测=false;
   if(ObjectGetInteger(窗口,物件名称,OBJPROP_STATE)==1)
      检测= true;
   if(ObjectGetInteger(窗口,物件名称,OBJPROP_STATE)==0)
      检测= false;
   return 检测;
  }
//+------------------------------------------------------------------+
bool 图形类::发生图表事件检测(const int id,const long &lparam,const double &dparam,const string &sparam,ENUM_CHART_EVENT 图表事件类型,string 发生string事件物件名称,double 发生double事件物件名称=0,long 发生long事件物件名称=0)
  {
   if(id==图表事件类型&&sparam==发生string事件物件名称&&dparam==发生double事件物件名称&&lparam==发生long事件物件名称)
      return true;
   if(id==图表事件类型&&sparam==发生string事件物件名称&&dparam==发生double事件物件名称)
      return true;
   if(id==图表事件类型&&sparam==发生string事件物件名称&&lparam==发生long事件物件名称)
      return true;
   if(id==图表事件类型&&dparam==发生double事件物件名称&&lparam==发生long事件物件名称)
      return true;
   bool 检测=false;
   if(id==图表事件类型&&sparam==发生string事件物件名称)
      检测= true;
   if(id==图表事件类型&&dparam==发生double事件物件名称)
      检测= true;
   if(id==图表事件类型&&lparam==发生long事件物件名称)
      检测= true;
   return 检测;
  }
//+------------------------------------------------------------------+
void 图形类::get_object_names(string &object_names[],ENUM_OBJECT obj_type=OBJ_RECTANGLE,int chart=0,int subwin=0)
  {
   int objtotals = ObjectsTotal(chart,subwin,obj_type);
   ArrayResize(object_names,objtotals);
   for(int i=objtotals-1, j=0;i>=0;i--)
     {
      string objname = ObjectName(chart,i);
      if(ObjectGetInteger(chart,objname,OBJPROP_TYPE)==obj_type)
        {
         object_names[j]=objname;
         j++;
        }
     }
  }
//+------------------------------------------------------------------+
#endif 