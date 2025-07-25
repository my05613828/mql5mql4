#property copyright "@Π.EA 大树My05613828"
#property link      "https://www.eahub.cn/space-uid-8564.html"
//#property version   "1.0"
//#property  icon     "//include//M4//logo.ico"
#define  _新图形类
#ifdef _新图形类
class 新图形类
  {
public:
                     新图形类();
                    ~新图形类();
   //|========================图形函数封装=============================
   void              画水平线(string 水平线名称,int 水平线窗口,double 水平线价格,color 水平线颜色=clrRed,int 水平线宽度=1,string 水平线提示="水平线",ENUM_LINE_STYLE 水平线类型=STYLE_DASH,bool 水平线背景=false,bool 水平线可选=false,bool 水平线移动=false);
   //+------------------------------------------------------------------+
   void              画垂直线(string 垂直线名称,int 垂直线窗口,datetime 垂直线时间,color 垂直线颜色=clrRed,int 垂直线宽度=1,string 垂直线提示="垂直线",ENUM_LINE_STYLE 垂直线类型=STYLE_DASH,bool 垂直线背景=false,bool 垂直线可选=false,bool 垂直线移动=false);
   //+------------------------------------------------------------------+
   void              画趋势线(string 趋势线名称,int 趋势线窗口,datetime 定位点A时间,double 定位点A价格,datetime 定位点B时间,double 定位点B价格,bool 左射线=false,bool 右射线=false,color 趋势线颜色=clrRed,int 趋势线宽度=1,string 趋势线提示="趋势线",ENUM_LINE_STYLE 趋势线类型=STYLE_DASH,bool 趋势线背景=false,bool 趋势线可选=false,bool 趋势线移动=false);
   //+------------------------------------------------------------------+
   void              画斐波那契回调线(string 回调线名称,int 回调线窗口,datetime 定位点A时间,double 定位点A价格,datetime 定位点B时间,double 定位点B价格,bool 左射线=false,bool 右射线=false,color 回调线颜色=clrGreen,string 回调线提示="回调线",ENUM_LINE_STYLE 回调线类型=STYLE_DASH,int 回调线宽度=1,int 回调线数量=6,bool 回调线背景=false,bool 回调线可选=false,bool 回调线移动=false);
   //+------------------------------------------------------------------+
   void              画箭头(string 箭头名称,int 箭头窗口,datetime 箭头时间,double 箭头价格,char 箭头风格,color 箭头颜色=clrGreen,int 箭头宽度=1,string 箭头提示="箭头",ENUM_LINE_STYLE 箭头线条类型=STYLE_DASH,ENUM_ARROW_ANCHOR 箭头锚点=ANCHOR_TOP,bool 箭头背景=false,bool 箭头可选=false,bool 箭头移动=false);
   //+------------------------------------------------------------------+
   void              画文本标签(string 文本标签名称,int 文本标签窗口,int 文本标签X轴,int 文本标签Y轴,string 文本标签内容="LABEL",color 文本标签颜色=clrBlack,int 文本标签字体大小=10,double 文本标签角度=0,ENUM_ANCHOR_POINT 文本标签锚点=ANCHOR_LEFT_UPPER,ENUM_BASE_CORNER  文本标签角落=CORNER_LEFT_UPPER,string 文本标签字体="楷体",bool 文本标签背景=false,bool 文本标签可选=false);
   //+------------------------------------------------------------------+

   void              画按钮(string 按钮名称,int 按钮窗口,int 按钮X轴,int 按钮Y轴,int 按钮宽度,int 按钮高度,string 按钮内容="BUTTON",color 按钮颜色=clrGreen,int 字体大小=10,color 字体颜色=clrBlack,color 边框颜色=clrBlack,string 按钮字体="楷体",ENUM_BASE_CORNER  按钮角落=CORNER_LEFT_UPPER,bool 按钮背景=false,bool 按钮可选=false,bool 按钮状态=false);
   //+------------------------------------------------------------------+
   void              画编辑框(string  编辑框名称,int 编辑框窗口,int 编辑框X轴,int 编辑框Y轴,int 编辑框宽度,int 编辑框高度,string 编辑框内容="EDIT",int 字体大小=10,bool 编辑框只读=false,color 字体颜色=clrBlack,color 编辑框背景色=clrWhite,color 编辑框边框色=clrBlack,ENUM_BASE_CORNER  编辑框角落=CORNER_LEFT_UPPER,string 编辑框字体="楷体",ENUM_ALIGN_MODE 字体对齐=ALIGN_CENTER,bool 编辑框前景=false,bool 编辑框可选=false,bool 编辑框移动=false);
   //+------------------------------------------------------------------+
   void              画矩形标签(string 矩形标签名称,int 矩形标签窗口,int 矩形标签X轴,int 矩形标签Y轴,int 矩形标签宽度,int 矩形标签高度,color 矩形标签背景色=clrBlack,ENUM_BORDER_TYPE  矩形标签造型=BORDER_FLAT,ENUM_LINE_STYLE 矩形标签边框类型=STYLE_DASH,color 矩形标签边框色=clrBlack,int 矩形标签边框宽度=1,ENUM_BASE_CORNER  矩形标签角落=CORNER_LEFT_UPPER,bool 矩形标签前景=false,bool 矩形标签可选=false,bool 矩形标签移动=false);
   //+------------------------------------------------------------------+
   bool              画位图标签(string 位图标签名称,int 位图标签窗口,int 位图标签X轴,int 位图标签Y轴,ENUM_BASE_CORNER 位图标签角落=CORNER_LEFT_UPPER,string 位图标签素材ON="位图01",string 位图标签素材OFF="位图02",ENUM_ANCHOR_POINT 位图标签锚点=ANCHOR_LEFT_UPPER,bool 位图标签前景=false,bool 位图标签可选=false,bool 位图标签移动=false);   //+------------------------------------------------------------------+
   void              画价格标签(string 价格标签名称,int 价格标签窗口,datetime 定位点A时间,double 定位点A价格,color 价格标签颜色=clrRed,ENUM_LINE_STYLE  价格标签类型=STYLE_DASH,int 价格标签宽度=1,string 价格标签提示="价格标签",bool 价格标签背景=false,bool 价格标签可选=false,bool 价格标签移动=false);
   void              画左价格标签(string 价格标签名称,int 价格标签窗口,datetime 定位点A时间,double 定位点A价格,color 价格标签颜色=clrRed,ENUM_LINE_STYLE  价格标签类型=STYLE_DASH,int 价格标签宽度=1,string 价格标签提示="价格标签",bool 价格标签背景=false,bool 价格标签可选=false,bool 价格标签移动=false);

   bool              状态检测(int 窗口,string 物件名称);
   bool              背景色检测(int 窗口,string 物件名称,color 物件背景色);
   //------
   bool              文本检测(string 物件名="运行1",string 现物件名="运行中");
   string            获取物件string值(string 名称);
   double            获取物件double值(string 名称);

   //+------------------------------------------------------------------+
   //-----
   void              状态效果设置(string 名称,color 背景颜色1,color 字体颜色1,string 内容1,color 背景颜色0,color 字体颜色0,string 内容0,int 窗口=0);
   void              状态效果设置(string 名称,color 背景颜色1,color  背景颜色0,int 窗口=0);
   void              状态效果设置(string 名称,string  内容1,string  内容0,int 窗口=0);
   bool              发生图表事件检测(const int id,const long &lparam,const double &dparam,const string &sparam,ENUM_CHART_EVENT 图表事件类型,string 发生string事件物件名称,double 发生double事件物件名称=0,long 发生long事件物件名称=0);
   double            鼠标单击图表返回价格(const int id,const long &lparam,const double &dparam,const string &sparam,bool 画水平线=false,bool 画垂直线=false);
   bool              ChannelCreate(const long            chart_ID=0,        // 图表 ID
                                   const string          name="Channel",    // 通道的名称
                                   const int             sub_window=0,      // 子窗口指数
                                   datetime              time1=0,           // 第一个点的时间
                                   double                price1=0,          //第一个点的价格
                                   datetime              time2=0,           // 第二个点的时间
                                   double                price2=0,          // 第二个点的价格
                                   datetime              time3=0,           //第三个点的时间
                                   double                price3=0,          // 第三个点的价格
                                   const color           clr=clrRed,        // 通道的颜色
                                   const ENUM_LINE_STYLE style=STYLE_SOLID, // 通道线的风格
                                   const int             width=1,           // 通道线的宽度
                                   const bool            fill=false,        // 填充通道颜色
                                   const bool            back=false,        // 在背景中
                                   const bool            selection=true,    // 突出移动
                                   const bool            ray_left=false,    // 通道延续向左
                                   const bool            ray_right=false,   // 通道延续向右
                                   const bool            hidden=true,       // 隐藏在对象列表
                                   const long            z_order=0);         // 鼠标单击优先
   //+------------------------------------------------------------------+
   bool              新图形类::ChannelPointChange(const long   chart_ID=0,     // 图表 ID
         const string name="Channel", // 通道的名称
         const int    point_index=0,  // 定位点指数
         datetime     time=0,         // 定位点时间坐标
         double       price=0);        // 定位点价格坐标
   //+------------------------------------------------------------------+
   bool              新图形类::TextCreate(const long              chart_ID=0,               // 图表 ID
         const string            name="Text",              // 对象名称
         const int               sub_window=0,             // 子窗口指数
         datetime                time=0,                   // 定位点时间
         double                  price=0,                  // 定位点价格
         const string            text="Text",              // 文本本身
         const string            font="Arial",             // 字体
         const int               font_size=10,             // 字体大小
         const color             clr=clrRed,               // 颜色
         const double            angle=0.0,                // 文本倾斜
         const ENUM_ANCHOR_POINT anchor=ANCHOR_LEFT_UPPER, // 定位类型
         const bool              back=false,               // 在背景中
         const bool              selection=false,          // 突出移动
         const bool              hidden=true,              // 隐藏在对象列表
         const long              z_order=0);                // 鼠标单击优先
   //+------------------------------------------------------------------+
   bool              新图形类::TextMove(const long   chart_ID=0,const string name="Text",datetime time=0,double price=0);     // 定位点价格坐标
   bool              新图形类::TextChange(const long   chart_ID=0,const string name="Text",const string text="Text"); // 文本
   bool              新图形类::TextDelete(const long   chart_ID=0, const string name="Text") ;// 对象名称
   //+------------------------------------------------------------------+
   void              ChangeTextEmptyPoint(datetime &time,double &price);
   void              背景切换(string 物件名称,color 初始颜色=clrRed,color 即时颜色=clrYellow);
   void              文字切换(string 物件名称,string 初始文字,string 即时文字);
   void              背景文字切换(string 物件名称,string 初始文字,string 即时文字,color 初始颜色=clrRed,color 即时颜色=clrYellow);
   void              ButtonCreate(string Name,string txt1,string txt2,int XX,int YX,int XL,int YL,int WZ,color A,color B);
   bool              RectangleCreate(const long            chart_ID=0,        // 图表 ID
                                     const string          name="Rectangle",  // 矩形名称
                                     const int             sub_window=0,      // 子窗口指数
                                     datetime              time1=0,           // 第一个点的时间
                                     double                price1=0,          // 第一个点的价格
                                     datetime              time2=0,           // 第二个点的时间
                                     double                price2=0,          // 第二个点的价格
                                     const color           clr=clrRed,        // 矩形颜色
                                     const ENUM_LINE_STYLE style=STYLE_SOLID, // 矩形线的风格
                                     const int             width=1,           // 矩形线的宽度
                                     const bool            fill=false,        // 填充矩形颜色
                                     const bool            back=false,        // 在背景中
                                     const bool            selection=true,    // 突出移动
                                     const bool            hidden=true,       // 隐藏在对象列表
                                     const long            z_order=0);         // 鼠标单击优先
   bool              RectanglePointChange(const long   chart_ID=0,       // 图表 ID
                                          const string name="Rectangle", // 矩形名称
                                          const int    point_index=0,    // 定位点指数
                                          datetime     time=0,           // 定位点时间坐标
                                          double       price=0);          // 定位点价格坐标
   bool              RectangleDelete(const long   chart_ID=0,const string name="Rectangle");// 矩形名称
   void              ChangeRectangleEmptyPoints(datetime &time1,double &price1,datetime &time2,double &price2);

   bool              TriangleCreate(const long            chart_ID=0,        //图表 ID
                                    const string          name="Triangle",   //三角形名称
                                    const int             sub_window=0,      // 子窗口指数
                                    datetime              time1=0,           // 第一个点的时间
                                    double                price1=0,          // 第一个点的价格
                                    datetime              time2=0,           // 第二个点的时间
                                    double                price2=0,          // 第二个点的价格
                                    datetime              time3=0,           //第三个点的时间
                                    double                price3=0,          // 第三个点的价格
                                    const color           clr=clrRed,        //三角形颜色
                                    const ENUM_LINE_STYLE style=STYLE_SOLID, // 三角形线条风格
                                    const int             width=1,           // 三角形线条宽度
                                    const bool            fill=false,        // 三角形填充颜色
                                    const bool            back=false,        // 在背景中
                                    const bool            selection=true,    // 突出移动
                                    const bool            hidden=true,       // 隐藏在对象列表
                                    const long            z_order=0);         // 鼠标单击优先


   bool              TrianglePointChange(const long   chart_ID=0,      // 图表 ID
                                         const string name="Triangle", // 三角形名称
                                         const int    point_index=0,   // 定位点指数
                                         datetime     time=0,          // 定位点时间坐标
                                         double       price=0);         // 定位点价格坐标

   bool              TriangleDelete(const long   chart_ID=0,      // 图表 ID
                                    const string name="Triangle"); // 三角形名称

   void              ChangeTriangleEmptyPoints(datetime &time1,double &price1,
         datetime &time2,double &price2,
         datetime &time3,double &price3);

   //+------------------------------------------------------------------+
   bool              EllipseCreate(const long            chart_ID=0,        // 图表ID
                                   const string          name="Ellipse",    // 椭圆形名称
                                   const int             sub_window=0,      // 子窗口指数
                                   datetime              time1=0,           // 第一个点的时间
                                   double                price1=0,          // 第一个点的价格
                                   datetime              time2=0,           // 第二个点的时间
                                   double                price2=0,          // 第二个点的价格
                                   datetime              time3=0,           // 第三个点的时间
                                   double                price3=0,          // 第三个点的价格
                                   const color           clr=clrRed,        // 椭圆形颜色
                                   const ENUM_LINE_STYLE style=STYLE_SOLID, // 椭圆形线条风格
                                   const int             width=1,           // 椭圆形线条的宽度
                                   const bool            fill=false,        // 椭圆形填充颜色
                                   const bool            back=false,        // 在背景中
                                   const bool            selection=true,    // 突出移动
                                   const bool            hidden=true,       // 隐藏在对象列表
                                   const long            z_order=0);         // 鼠标单击优先


   bool              EllipsePointChange(const long   chart_ID=0,     // 图表ID
                                        const string name="Ellipse", // 椭圆形名称
                                        const int    point_index=0,  // 定位点指数
                                        datetime     time=0,         // 定位点时间坐标
                                        double       price=0);        // 定位点价格坐标
   bool              EllipseDelete(const long   chart_ID=0,     // 图表 ID
                                   const string name="Ellipse"); // 椭圆形名称
   void              ChangeEllipseEmptyPoints(datetime &time1,double &price1,
         datetime &time2,double &price2,
         datetime &time3,double &price3);
   void              画回调线(double price_high,double price_low,long tim_high,long tim_low);
   void              删除物件(long 窗口,string 名称1,string 名称2="",string 名称3="",string 名称4="",string 名称5="",string 名称6="",string 名称7="",string 名称8="",string 名称9="");
   //+------------------------------------------------------------------+
   bool              FiboExpansionCreate(const long            chart_ID=0,           // 图表 ID
                                         const string          name="FiboExpansion", // 通道的名称
                                         const int             sub_window=0,         // 子窗口指数
                                         datetime              time1=0,              // 第一个点的时间
                                         double                price1=0,             // 第一个点的价格
                                         datetime              time2=0,              // 第二个点的时间
                                         double                price2=0,             // 第二个点的价格
                                         datetime              time3=0,              // 第三个点的时间
                                         double                price3=0,             // 第三个点的价格
                                         const color           clr=clrRed,           // 对象颜色
                                         const ENUM_LINE_STYLE style=STYLE_SOLID,    // 线的风格
                                         const int             width=1,              // 线的宽度
                                         const bool            back=false,           // 在背景中
                                         const bool            selection=true,       // 突出移动
                                         const bool            ray_left=false,       // 对象延续向左
                                         const bool            ray_right=false,      // 对象延续向右
                                         const bool            hidden=true,          // 隐藏在对象列表
                                         const long            z_order=0) ;           // 鼠标单击优先

   //+------------------------------------------------------------------+
   //| 设置水平的数量和参数                                                |
   //+------------------------------------------------------------------+
   bool              FiboExpansionLevelsSet(int             levels,               // 水平线的数量
         double          &values[],            // 水平线的值
         color           &colors[],            // 水平线的颜色
         ENUM_LINE_STYLE &styles[],            // 水平线的风格
         int             &widths[],            // 水平线的宽度
         const long      chart_ID=0,           // 图表 ID
         const string    name="FiboExpansion"); // 对象名称

   //+------------------------------------------------------------------+
   //| 移动斐波纳契扩展线的定位点                                           |
   //+------------------------------------------------------------------+
   bool              FiboExpansionPointChange(const long   chart_ID=0,           // 图表 ID
         const string name="FiboExpansion", // 对象名称
         const int    point_index=0,        // 定位点指数
         datetime     time=0,               // 定位点时间坐标
         double       price=0) ;             // 定位点价格坐标

   //+------------------------------------------------------------------+
   //| 删除斐波纳契扩展线                                                  |
   //+------------------------------------------------------------------+
   bool              FiboExpansionDelete(const long   chart_ID=0,           // 图表 ID
                                         const string name="FiboExpansion") ;

   void              ChangeFiboExpansionEmptyPoints(datetime &time1,double &price1,datetime &time2,
         double &price2,datetime &time3,double &price3) ;


   void              向上画斐波那契扩展(datetime tim_low1,double price_low1,datetime tim_high,double price_high,datetime tim_low,double price_low,string fbkz="feibo0");
   void              向下画斐波那契扩展(datetime tim_high1,double price_high1,datetime tim_low,double price_low,datetime tim_high,double price_high,string fbkz="feibo1");
   void              get_object_names(string &object_names[],ENUM_OBJECT obj_type=OBJ_RECTANGLE,int chart=0,int subwin=0);
   int               get_obj_orders(ENUM_OBJECT obj_type,string obj_name_find);
  };
//==================================================================
//|======================图形封装逻辑===============================
新图形类 :: 新图形类()
  {
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
新图形类   ::  ~新图形类()
  {
   ObjectDelete(0,"H Line");
   ObjectDelete(0,"V Line");
  };
//==================================================================
void 新图形类::画水平线(string 水平线名称,int 水平线窗口,double 水平线价格,color 水平线颜色=clrRed,int 水平线宽度=1,string 水平线提示="水平线",ENUM_LINE_STYLE 水平线类型=STYLE_DASH,bool 水平线背景=false,bool 水平线可选=false,bool 水平线移动=false)
  {
//---创建水平线
   if(ObjectFind(0,水平线名称)<0)
     {
      bool 水平线=ObjectCreate(0,水平线名称,OBJ_HLINE,水平线窗口,0,水平线价格);
      if(水平线==false)
         Print("水平线创建失败"+IntegerToString(GetLastError()));
     }
//---设置水平线价格
   if(ObjectGetDouble(0,水平线名称,OBJPROP_PRICE)!=水平线价格)
      ObjectSetDouble(0,水平线名称,OBJPROP_PRICE,水平线价格);
//---设置水平线颜色
   if(ObjectGetInteger(0,水平线名称,OBJPROP_COLOR)!=水平线颜色)
      ObjectSetInteger(0,水平线名称,OBJPROP_COLOR,水平线颜色);
//---设置水平线类型
   if(ObjectGetInteger(0,水平线名称,OBJPROP_STYLE)!=水平线类型)
      ObjectSetInteger(0,水平线名称,OBJPROP_STYLE,水平线类型);
//---设置水平线宽度
   if(ObjectGetInteger(0,水平线名称,OBJPROP_WIDTH)!=水平线宽度)
      ObjectSetInteger(0,水平线名称,OBJPROP_WIDTH,水平线宽度);
//---设置水平线提示
   if(ObjectGetString(0,水平线名称,OBJPROP_TOOLTIP)!=水平线提示)
      ObjectSetString(0,水平线名称,OBJPROP_TOOLTIP,水平线提示);
//---设置水平线背景
   if(ObjectGetInteger(0,水平线名称,OBJPROP_BACK)!=水平线背景)
      ObjectSetInteger(0,水平线名称,OBJPROP_BACK,水平线背景);
//---设置水平线可选
   if(ObjectGetInteger(0,水平线名称,OBJPROP_SELECTABLE)!=水平线可选)
      ObjectSetInteger(0,水平线名称,OBJPROP_SELECTABLE,水平线可选);
//---设置水平线移动
   if(ObjectGetInteger(0,水平线名称,OBJPROP_SELECTED)!=水平线移动)
      ObjectSetInteger(0,水平线名称,OBJPROP_SELECTED,水平线移动);
  };
//+------------------------------------------------------------------+
void 新图形类::画垂直线(string 垂直线名称,int 垂直线窗口,datetime 垂直线时间,color 垂直线颜色=clrRed,int 垂直线宽度=1,string 垂直线提示="垂直线",ENUM_LINE_STYLE 垂直线类型=STYLE_DASH,bool 垂直线背景=false,bool 垂直线可选=false,bool 垂直线移动=false)
  {
//---创建垂直线
   if(ObjectFind(0,垂直线名称)<0)
     {
      bool 垂直线=ObjectCreate(0,垂直线名称,OBJ_VLINE,垂直线窗口,垂直线时间,0);
      if(垂直线==false)
         Print("垂直线创建失败："+IntegerToString(GetLastError()));
     }
//---设置垂直线的时间
   if(ObjectGetInteger(0,垂直线名称,OBJPROP_TIME)!=垂直线时间)
      ObjectSetInteger(0,垂直线名称,OBJPROP_TIME,垂直线时间);
//---设置垂直线的颜色
   if(ObjectGetInteger(0,垂直线名称,OBJPROP_COLOR)!=垂直线颜色)
      ObjectSetInteger(0,垂直线名称,OBJPROP_COLOR,垂直线颜色);
//---设置垂直线的类型
   if(ObjectGetInteger(0,垂直线名称,OBJPROP_STYLE)!=垂直线类型)
      ObjectSetInteger(0,垂直线名称,OBJPROP_STYLE,垂直线类型);
//---设置垂直线的宽度
   if(ObjectGetInteger(0,垂直线名称,OBJPROP_WIDTH)!=垂直线宽度)
      ObjectSetInteger(0,垂直线名称,OBJPROP_WIDTH,垂直线宽度);
//---设置垂直线的提示
   if(ObjectGetString(0,垂直线名称,OBJPROP_TOOLTIP)!=垂直线提示)
      ObjectSetString(0,垂直线名称,OBJPROP_TOOLTIP,垂直线提示);
//---设置垂直线的背景
   if(ObjectGetInteger(0,垂直线名称,OBJPROP_BACK)!=垂直线背景)
      ObjectSetInteger(0,垂直线名称,OBJPROP_BACK,垂直线背景);
//---设置垂直线的可选
   if(ObjectGetInteger(0,垂直线名称,OBJPROP_SELECTABLE)!=垂直线可选)
      ObjectSetInteger(0,垂直线名称,OBJPROP_SELECTABLE,垂直线可选);
//---设置垂直线的移动
   if(ObjectGetInteger(0,垂直线名称,OBJPROP_SELECTED)!=垂直线移动)
      ObjectSetInteger(0,垂直线名称,OBJPROP_SELECTED,垂直线移动);
  };
//+------------------------------------------------------------------+
void 新图形类::画趋势线(string 趋势线名称,int 趋势线窗口,datetime 定位点A时间,double 定位点A价格,datetime 定位点B时间,double 定位点B价格,bool 左射线=false,bool 右射线=false,color 趋势线颜色=clrRed,int 趋势线宽度=1,string 趋势线提示="趋势线",ENUM_LINE_STYLE 趋势线类型=STYLE_DASH,bool 趋势线背景=false,bool 趋势线可选=false,bool 趋势线移动=false)
  {
//---创建趋势线
   if(ObjectFind(0,趋势线名称)<0)
     {
      bool 趋势线=ObjectCreate(0,趋势线名称,OBJ_TREND,趋势线窗口,定位点A时间,定位点A价格,定位点B时间,定位点B价格);
      if(趋势线==false)
         Print("趋势线创建失败："+IntegerToString(GetLastError()));
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
   if(ObjectGetInteger(0,趋势线名称,OBJPROP_RAY)!=左射线 ||ObjectGetInteger(0,趋势线名称,OBJPROP_RAY_RIGHT)!=右射线)
     {
      ObjectSetInteger(0,趋势线名称,OBJPROP_RAY,左射线);
      ObjectSetInteger(0,趋势线名称,OBJPROP_RAY_RIGHT,右射线);
     }
//---设置趋势线的颜色
   if(ObjectGetInteger(0,趋势线名称,OBJPROP_COLOR)!=趋势线颜色)
      ObjectSetInteger(0,趋势线名称,OBJPROP_COLOR,趋势线颜色);
//---设置趋势线的类型
   if(ObjectGetInteger(0,趋势线名称,OBJPROP_STYLE)!=趋势线类型)
      ObjectSetInteger(0,趋势线名称,OBJPROP_STYLE,趋势线类型);
//---设置趋势线的宽度
   if(ObjectGetInteger(0,趋势线名称,OBJPROP_WIDTH)!=趋势线宽度)
      ObjectSetInteger(0,趋势线名称,OBJPROP_WIDTH,趋势线宽度);
//---设置趋势线的提示
   if(ObjectGetString(0,趋势线名称,OBJPROP_TOOLTIP)!=趋势线提示)
      ObjectSetString(0,趋势线名称,OBJPROP_TOOLTIP,趋势线提示);
//---设置趋势线的背景
   if(ObjectGetInteger(0,趋势线名称,OBJPROP_BACK)!=趋势线背景)
      ObjectSetInteger(0,趋势线名称,OBJPROP_BACK,趋势线背景);
//---设置趋势线的可选
   if(ObjectGetInteger(0,趋势线名称,OBJPROP_SELECTABLE)!=趋势线可选)
      ObjectSetInteger(0,趋势线名称,OBJPROP_SELECTABLE,趋势线可选);
//---设置趋势线的移动
   if(ObjectGetInteger(0,趋势线名称,OBJPROP_SELECTED)!=趋势线移动)
      ObjectSetInteger(0,趋势线名称,OBJPROP_SELECTED,趋势线移动);
  };
//+------------------------------------------------------------------+
void 新图形类::画斐波那契回调线(string 回调线名称,int 回调线窗口,datetime 定位点A时间,double 定位点A价格,datetime 定位点B时间,double 定位点B价格,bool 左射线=false,bool 右射线=false,color 回调线颜色=clrGreen,string 回调线提示="回调线",ENUM_LINE_STYLE 回调线类型=STYLE_DASH,int 回调线宽度=1,int 回调线数量=6,bool 回调线背景=false,bool 回调线可选=false,bool 回调线移动=false)
  {
//---创建回调线
   if(ObjectFind(0,回调线名称)<0)
     {
      bool 回调线=ObjectCreate(0,回调线名称,OBJ_FIBO,回调线窗口,定位点A时间,定位点A价格,定位点B时间,定位点B价格);
      if(回调线==false)
         Print("回调线创建失败："+IntegerToString(GetLastError()));
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
      ObjectSetInteger(0,回调线名称,OBJPROP_COLOR,回调线颜色);
//---设置回调线的类型
   if(ObjectGetInteger(0,回调线名称,OBJPROP_STYLE)!=回调线类型)
      ObjectSetInteger(0,回调线名称,OBJPROP_STYLE,回调线类型);
//---设置回调线的宽度
   if(ObjectGetInteger(0,回调线名称,OBJPROP_WIDTH)!=回调线宽度)
      ObjectSetInteger(0,回调线名称,OBJPROP_WIDTH,回调线宽度);
//---设置回调线的提示
   if(ObjectGetString(0,回调线名称,OBJPROP_TOOLTIP)!=回调线提示)
      ObjectSetString(0,回调线名称,OBJPROP_TOOLTIP,回调线提示);
//---设置回调线的背景
   if(ObjectGetInteger(0,回调线名称,OBJPROP_BACK)!=回调线背景)
      ObjectSetInteger(0,回调线名称,OBJPROP_BACK,回调线背景);
//---设置回调线的可选
   if(ObjectGetInteger(0,回调线名称,OBJPROP_SELECTABLE)!=回调线可选)
      ObjectSetInteger(0,回调线名称,OBJPROP_SELECTABLE,回调线可选);
//---设置回调线的移动
   if(ObjectGetInteger(0,回调线名称,OBJPROP_SELECTED)!=回调线移动)
      ObjectSetInteger(0,回调线名称,OBJPROP_SELECTED,回调线移动);
//---设置回调线数量
   if(ObjectGetInteger(0,回调线名称,OBJPROP_LEVELS)!=回调线数量)
      ObjectSetInteger(0,回调线名称,OBJPROP_LEVELS,回调线数量);
//---可选类型设置
   ObjectSetInteger(0,回调线名称,OBJPROP_LEVELCOLOR,2,clrDeepSkyBlue);
   ObjectSetInteger(0,回调线名称,OBJPROP_LEVELCOLOR,4,clrDeepSkyBlue);
   ObjectSetInteger(0,回调线名称,OBJPROP_LEVELWIDTH,2,3);
   ObjectSetInteger(0,回调线名称,OBJPROP_LEVELWIDTH,4,3);
  };
//+------------------------------------------------------------------+
void 新图形类::画箭头(string 箭头名称,int 箭头窗口,datetime 箭头时间,double 箭头价格,char 箭头风格,color 箭头颜色=clrGreen,int 箭头宽度=1,string 箭头提示="箭头",ENUM_LINE_STYLE 箭头线条类型=STYLE_DASH,ENUM_ARROW_ANCHOR 箭头锚点=ANCHOR_TOP,bool 箭头背景=false,bool 箭头可选=false,bool 箭头移动=false)
  {
//---创建箭头
   if(ObjectFind(0,箭头名称)<0)
     {
      bool 箭头=ObjectCreate(0,箭头名称,OBJ_ARROW,箭头窗口,箭头时间,箭头价格);
      if(箭头==false)
         Print("箭头创建失败："+IntegerToString(GetLastError()));
     }
//---设置箭头时间
   if(ObjectGetInteger(0,箭头名称,OBJPROP_TIME)!=箭头时间)
      ObjectSetInteger(0,箭头名称,OBJPROP_TIME,箭头时间);
//---设置箭头价格
   if(ObjectGetDouble(0,箭头名称,OBJPROP_PRICE)!=箭头价格)
      ObjectSetDouble(0,箭头名称,OBJPROP_PRICE,箭头价格);
//---设置箭头风格
   if(ObjectGetInteger(0,箭头名称,OBJPROP_ARROWCODE)!=箭头风格)
      ObjectSetInteger(0,箭头名称,OBJPROP_ARROWCODE,箭头风格);
//---设置箭头锚点
   if(ObjectGetInteger(0,箭头名称,OBJPROP_ANCHOR)!=箭头锚点)
      ObjectSetInteger(0,箭头名称,OBJPROP_ANCHOR,箭头锚点);
//---设置箭头的颜色
   if(ObjectGetInteger(0,箭头名称,OBJPROP_COLOR)!=箭头颜色)
      ObjectSetInteger(0,箭头名称,OBJPROP_COLOR,箭头颜色);
//---设置箭头的线条类型
   if(ObjectGetInteger(0,箭头名称,OBJPROP_STYLE)!=箭头线条类型)
      ObjectSetInteger(0,箭头名称,OBJPROP_STYLE,箭头线条类型);
//---设置箭头的宽度
   if(ObjectGetInteger(0,箭头名称,OBJPROP_WIDTH)!=箭头宽度)
      ObjectSetInteger(0,箭头名称,OBJPROP_WIDTH,箭头宽度);
//---设置箭头的提示
   if(ObjectGetString(0,箭头名称,OBJPROP_TOOLTIP)!=箭头提示)
      ObjectSetString(0,箭头名称,OBJPROP_TOOLTIP,箭头提示);
//---设置箭头的背景
   if(ObjectGetInteger(0,箭头名称,OBJPROP_BACK)!=箭头背景)
      ObjectSetInteger(0,箭头名称,OBJPROP_BACK,箭头背景);
//---设置箭头的可选
   if(ObjectGetInteger(0,箭头名称,OBJPROP_SELECTABLE)!=箭头可选)
      ObjectSetInteger(0,箭头名称,OBJPROP_SELECTABLE,箭头可选);
//---设置箭头的移动
   if(ObjectGetInteger(0,箭头名称,OBJPROP_SELECTED)!=箭头移动)
      ObjectSetInteger(0,箭头名称,OBJPROP_SELECTED,箭头移动);
  };
//+------------------------------------------------------------------+
void 新图形类::画文本标签(string 文本标签名称,int 文本标签窗口,int 文本标签X轴,int 文本标签Y轴,string 文本标签内容="LABEL",color 文本标签颜色=clrBlack,int 文本标签字体大小=10,double 文本标签角度=0,ENUM_ANCHOR_POINT 文本标签锚点=ANCHOR_LEFT_UPPER,ENUM_BASE_CORNER  文本标签角落=CORNER_LEFT_UPPER,string 文本标签字体="楷体",bool 文本标签背景=false,bool 文本标签可选=false)
  {
//---创建文本标签
   if(ObjectFind(0,文本标签名称)<0)
     {
      bool 文本标签=ObjectCreate(0,文本标签名称,OBJ_LABEL,文本标签窗口,0,0);
      if(文本标签==false)
         Print("文本标签创建失败："+IntegerToString(GetLastError()));
     }
//---设置文本X轴和Y轴坐标
   if(ObjectGetInteger(0,文本标签名称,OBJPROP_XDISTANCE)!=文本标签X轴 ||ObjectGetInteger(0,文本标签名称,OBJPROP_YDISTANCE)!=文本标签Y轴)
     {
      ObjectSetInteger(0,文本标签名称,OBJPROP_XDISTANCE,文本标签X轴);
      ObjectSetInteger(0,文本标签名称,OBJPROP_YDISTANCE,文本标签Y轴);
     }
//---设置文本标签锚点
   if(ObjectGetInteger(0,文本标签名称,OBJPROP_ANCHOR)!=文本标签锚点)
      ObjectSetInteger(0,文本标签名称,OBJPROP_ANCHOR,文本标签锚点);
//---设置文本标签角落
   if(ObjectGetInteger(0,文本标签名称,OBJPROP_CORNER)!=文本标签角落)
      ObjectSetInteger(0,文本标签名称,OBJPROP_CORNER,文本标签角落);
//---设置文本标签角度
   if(ObjectGetDouble(0,文本标签名称,OBJPROP_ANGLE)!=文本标签角度)
      ObjectSetDouble(0,文本标签名称,OBJPROP_ANGLE,文本标签角度);
//---设置文本标签内容
   if(ObjectGetString(0,文本标签名称,OBJPROP_TEXT)!=文本标签内容)
      ObjectSetString(0,文本标签名称,OBJPROP_TEXT,文本标签内容);
//---设置文本标签字体
   if(ObjectGetString(0,文本标签名称,OBJPROP_FONT)!=文本标签字体)
      ObjectSetString(0,文本标签名称,OBJPROP_FONT,文本标签字体);
//---设置文本标签字体大小
   if(ObjectGetInteger(0,文本标签名称,OBJPROP_FONTSIZE)!=文本标签字体大小)
      ObjectSetInteger(0,文本标签名称,OBJPROP_FONTSIZE,文本标签字体大小);
//---设置文本标签颜色
   if(ObjectGetInteger(0,文本标签名称,OBJPROP_COLOR)!=文本标签颜色)
      ObjectSetInteger(0,文本标签名称,OBJPROP_COLOR,文本标签颜色);
//---设置文本标签的背景
   if(ObjectGetInteger(0,文本标签名称,OBJPROP_BACK)!=文本标签背景)
      ObjectSetInteger(0,文本标签名称,OBJPROP_BACK,文本标签背景);
//---设置文本标签的可选
   if(ObjectGetInteger(0,文本标签名称,OBJPROP_SELECTABLE)!=文本标签可选)
      ObjectSetInteger(0,文本标签名称,OBJPROP_SELECTABLE,文本标签可选);
  };
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新图形类::画按钮(string 按钮名称,int 按钮窗口,int 按钮X轴,int 按钮Y轴,int 按钮宽度,int 按钮高度,string 按钮内容="BUTTON",color 按钮颜色=clrGreen,int 字体大小=10,color 字体颜色=clrBlack,color 边框颜色=clrBlack,string 按钮字体="楷体",ENUM_BASE_CORNER  按钮角落=CORNER_LEFT_UPPER,bool 按钮背景=false,bool 按钮可选=false,bool 按钮状态=false)
  {
//---创建按钮
   if(ObjectFind(0,按钮名称)<0)
     {
      bool 按钮=ObjectCreate(0,按钮名称,OBJ_BUTTON,按钮窗口,0,0);
      if(按钮==false)
         Print("按钮创建失败："+IntegerToString(GetLastError()));
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
      ObjectSetInteger(0,按钮名称,OBJPROP_CORNER,按钮角落);
//---设置按钮内容
   if(ObjectGetString(0,按钮名称,OBJPROP_TEXT)!=按钮内容)
      ObjectSetString(0,按钮名称,OBJPROP_TEXT,按钮内容);
//---设置按钮颜色
   if(ObjectGetInteger(0,按钮名称,OBJPROP_BGCOLOR)!=按钮颜色)
      ObjectSetInteger(0,按钮名称,OBJPROP_BGCOLOR,按钮颜色);
//---设置边框颜色
   if(ObjectGetInteger(0,按钮名称,OBJPROP_BORDER_COLOR)!=边框颜色)
      ObjectSetInteger(0,按钮名称,OBJPROP_BORDER_COLOR,边框颜色);
//---设置字体颜色
   if(ObjectGetInteger(0,按钮名称,OBJPROP_COLOR)!=字体颜色)
      ObjectSetInteger(0,按钮名称,OBJPROP_COLOR,字体颜色);
//---设置按钮字体
   if(ObjectGetString(0,按钮名称,OBJPROP_FONT)!=按钮字体)
      ObjectSetString(0,按钮名称,OBJPROP_FONT,按钮字体);
//---设置字体大小
   if(ObjectGetInteger(0,按钮名称,OBJPROP_FONTSIZE)!=字体大小)
      ObjectSetInteger(0,按钮名称,OBJPROP_FONTSIZE,字体大小);
//---设置文本标签的背景
   if(ObjectGetInteger(0,按钮名称,OBJPROP_BACK)!=按钮背景)
      ObjectSetInteger(0,按钮名称,OBJPROP_BACK,按钮背景);
//---设置文本标签的可选
   if(ObjectGetInteger(0,按钮名称,OBJPROP_SELECTABLE)!=按钮可选)
      ObjectSetInteger(0,按钮名称,OBJPROP_SELECTABLE,按钮可选);
//---设置按钮状态
   if(ObjectGetInteger(0,按钮名称,OBJPROP_STATE)!=按钮状态)
      ObjectSetInteger(0,按钮名称,OBJPROP_STATE,按钮状态);
  };
//+------------------------------------------------------------------+
void 新图形类::画编辑框(string  编辑框名称,int 编辑框窗口,int 编辑框X轴,int 编辑框Y轴,int 编辑框宽度,int 编辑框高度,string 编辑框内容="EDIT",int 字体大小=10,bool 编辑框只读=false,color 字体颜色=clrBlack,color 编辑框背景色=clrWhite,color 编辑框边框色=clrBlack,ENUM_BASE_CORNER  编辑框角落=CORNER_LEFT_UPPER,string 编辑框字体="楷体",ENUM_ALIGN_MODE 字体对齐=ALIGN_CENTER,bool 编辑框前景=false,bool 编辑框可选=false,bool 编辑框移动=false)
  {
//---创建编辑框
   if(ObjectFind(0,编辑框名称)<0)
     {
      bool 编辑框=ObjectCreate(0,编辑框名称,OBJ_EDIT,编辑框窗口,0,0);
      if(编辑框==false)
         Print("编辑框创建失败："+IntegerToString(GetLastError()));
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
      ObjectSetInteger(0,编辑框名称,OBJPROP_READONLY,编辑框只读);
//---设置编辑框的角落
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_CORNER)!=编辑框角落)
      ObjectSetInteger(0,编辑框名称,OBJPROP_CORNER,编辑框角落);
//---设置编辑框的内容
   if(ObjectGetString(0,编辑框名称,OBJPROP_TEXT)!=编辑框内容)
      ObjectSetString(0,编辑框名称,OBJPROP_TEXT,编辑框内容);
//---设置编辑的背景色
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_BGCOLOR)!=编辑框背景色)
      ObjectSetInteger(0,编辑框名称,OBJPROP_BGCOLOR,编辑框背景色);
//---设置编辑框的边框色
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_BORDER_COLOR)!=编辑框边框色)
      ObjectSetInteger(0,编辑框名称,OBJPROP_BORDER_COLOR,编辑框边框色);
//---设置编辑框的文本色
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_COLOR)!=字体颜色)
      ObjectSetInteger(0,编辑框名称,OBJPROP_COLOR,字体颜色);
//---设置编辑框文本字体
   if(ObjectGetString(0,编辑框名称,OBJPROP_FONT)!=编辑框字体)
      ObjectSetString(0,编辑框名称,OBJPROP_FONT,编辑框字体);
//---设置编辑框字体大小
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_FONTSIZE)!=字体大小)
      ObjectSetInteger(0,编辑框名称,OBJPROP_FONTSIZE,字体大小);
//---设置编辑框字体对齐
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_ALIGN)!=字体对齐)
      ObjectSetInteger(0,编辑框名称,OBJPROP_ALIGN,字体对齐);
//---设置编辑框前景
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_BACK)!=编辑框前景)
      ObjectSetInteger(0,编辑框名称,OBJPROP_BACK,编辑框前景);
//---设置编辑框可选
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_SELECTABLE)!=编辑框可选)
      ObjectSetInteger(0,编辑框名称,OBJPROP_SELECTABLE,编辑框可选);
//---设置编辑框移动
   if(ObjectGetInteger(0,编辑框名称,OBJPROP_SELECTED)!=编辑框移动)
      ObjectSetInteger(0,编辑框名称,OBJPROP_SELECTED,编辑框移动);
  };
//+------------------------------------------------------------------+
void 新图形类::画矩形标签(string 矩形标签名称,int 矩形标签窗口,int 矩形标签X轴,int 矩形标签Y轴,int 矩形标签宽度,int 矩形标签高度,color 矩形标签背景色=clrBlack,ENUM_BORDER_TYPE  矩形标签造型=BORDER_FLAT,ENUM_LINE_STYLE 矩形标签边框类型=STYLE_DASH,color 矩形标签边框色=clrBlack,int 矩形标签边框宽度=1,ENUM_BASE_CORNER  矩形标签角落=CORNER_LEFT_UPPER,bool 矩形标签前景=false,bool 矩形标签可选=false,bool 矩形标签移动=false)
  {
//---创建矩形标签
   if(ObjectFind(0,矩形标签名称)<0)
     {
      bool 矩形标签=ObjectCreate(0,矩形标签名称,OBJ_RECTANGLE_LABEL,矩形标签窗口,0,0);
      if(矩形标签==false)
         Print("矩形标签创建失败："+IntegerToString(GetLastError()));
     }
//---设置矩形标签X轴和Y轴
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_XDISTANCE)!=矩形标签X轴 ||ObjectGetInteger(0,矩形标签名称,OBJPROP_YDISTANCE)!=矩形标签Y轴)
     {
      ObjectSetInteger(0,矩形标签名称,OBJPROP_XDISTANCE,矩形标签X轴);
      ObjectSetInteger(0,矩形标签名称,OBJPROP_YDISTANCE,矩形标签Y轴);
     }
//---设置矩形标签的宽度和高度
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_XSIZE)!=矩形标签宽度 ||ObjectGetInteger(0,矩形标签名称,OBJPROP_YSIZE)!=矩形标签高度)
     {
      ObjectSetInteger(0,矩形标签名称,OBJPROP_XSIZE,矩形标签宽度);
      ObjectSetInteger(0,矩形标签名称,OBJPROP_YSIZE,矩形标签高度);
     }

//---设置矩形标签的角落
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_CORNER)!=矩形标签角落)
      ObjectSetInteger(0,矩形标签名称,OBJPROP_CORNER,矩形标签角落);
//---设置矩形标签的外观
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_BORDER_TYPE)!=矩形标签造型)
      ObjectSetInteger(0,矩形标签名称,OBJPROP_BORDER_TYPE,矩形标签造型);
//---设置矩形标签背景色
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_BGCOLOR)!=矩形标签背景色)
      ObjectSetInteger(0,矩形标签名称,OBJPROP_BGCOLOR,矩形标签背景色);


//---设置矩形标签边框类型
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_STYLE)!=矩形标签边框类型)
      ObjectSetInteger(0,矩形标签名称,OBJPROP_STYLE,矩形标签边框类型);
//---设置矩形标签边框色
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_COLOR)!=矩形标签边框色)
      ObjectSetInteger(0,矩形标签名称,OBJPROP_COLOR,矩形标签边框色);
//---设置矩形标签边框宽度
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_WIDTH)!=矩形标签边框宽度)
      ObjectSetInteger(0,矩形标签名称,OBJPROP_WIDTH,矩形标签边框宽度);
//---设置矩形标签前景
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_BACK)!=矩形标签前景)
      ObjectSetInteger(0,矩形标签名称,OBJPROP_BACK,矩形标签前景);
//---设置矩形标签可选
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_SELECTABLE)!=矩形标签可选)
      ObjectSetInteger(0,矩形标签名称,OBJPROP_SELECTABLE,矩形标签可选);
//---设置矩形标签移动
   if(ObjectGetInteger(0,矩形标签名称,OBJPROP_SELECTED)!=矩形标签移动)
      ObjectSetInteger(0,矩形标签名称,OBJPROP_SELECTED,矩形标签移动);
  };
//+------------------------------------------------------------------+
bool 新图形类::画位图标签(string 位图标签名称,int 位图标签窗口,int 位图标签X轴,int 位图标签Y轴,ENUM_BASE_CORNER 位图标签角落=CORNER_LEFT_UPPER,string 位图标签素材ON="位图01",string 位图标签素材OFF="位图02",ENUM_ANCHOR_POINT 位图标签锚点=ANCHOR_LEFT_UPPER,bool 位图标签前景=false,bool 位图标签可选=false,bool 位图标签移动=false)
  {
//---创建位图标签
   if(ObjectFind(0,位图标签名称)<0)
     {
      bool 位图标签=ObjectCreate(0,位图标签名称,OBJ_BITMAP_LABEL,位图标签窗口,0,0);
      if(位图标签==false)
         Print("位图标签创建失败："+IntegerToString(GetLastError()));
     }
//---设置位图标签X轴和Y轴
   if(ObjectGetInteger(0,位图标签名称,OBJPROP_XDISTANCE)!=位图标签X轴 ||ObjectGetInteger(0,位图标签名称,OBJPROP_YDISTANCE)!=位图标签Y轴)
     {
      ObjectSetInteger(0,位图标签名称,OBJPROP_XDISTANCE,位图标签X轴);
      ObjectSetInteger(0,位图标签名称,OBJPROP_YDISTANCE,位图标签Y轴);
     }
//---设置位图标签锚点
   if(ObjectGetInteger(0,位图标签名称,OBJPROP_ANCHOR)!=位图标签锚点)
      ObjectSetInteger(0,位图标签名称,OBJPROP_ANCHOR,位图标签锚点);
//---设置位图标签角落
   if(ObjectGetInteger(0,位图标签名称,OBJPROP_CORNER)!=位图标签角落)
      ObjectSetInteger(0,位图标签名称,OBJPROP_CORNER,位图标签角落);
//---设置位图标签素材ON
   if(ObjectGetString(0,位图标签名称,OBJPROP_BMPFILE,0)!=位图标签素材ON)
      ObjectSetString(0,位图标签名称,OBJPROP_BMPFILE,0,位图标签素材ON);
//---设置位图标签素材OFF
   if(ObjectGetString(0,位图标签名称,OBJPROP_BMPFILE,1)!=位图标签素材OFF)
      ObjectSetString(0,位图标签名称,OBJPROP_BMPFILE,1,位图标签素材OFF);
//---设置位图标签前景
   if(ObjectGetInteger(0,位图标签名称,OBJPROP_BACK)!=位图标签前景)
      ObjectSetInteger(0,位图标签名称,OBJPROP_BACK,位图标签前景);
//---设置位图标签可选
   if(ObjectGetInteger(0,位图标签名称,OBJPROP_SELECTABLE)!=位图标签可选)
      ObjectSetInteger(0,位图标签名称,OBJPROP_SELECTABLE,位图标签可选);
//---设置位图标签移动
   if(ObjectGetInteger(0,位图标签名称,OBJPROP_SELECTED)!=位图标签移动)
      ObjectSetInteger(0,位图标签名称,OBJPROP_SELECTED,位图标签移动);
//---获取位图标签状态
   bool 位图标签状态=ObjectGetInteger(0,位图标签名称,OBJPROP_STATE);
   return(位图标签状态);
  };
//+------------------------------------------------------------------+
void 新图形类::画左价格标签(string 价格标签名称,int 价格标签窗口,datetime 定位点A时间,double 定位点A价格,color 价格标签颜色=clrRed,ENUM_LINE_STYLE  价格标签类型=STYLE_DASH,int 价格标签宽度=1,string 价格标签提示="价格标签",bool 价格标签背景=false,bool 价格标签可选=false,bool 价格标签移动=false)
  {
//---创建趋势线
   if(ObjectFind(0,价格标签名称)<0)
     {
      bool 价格标签=ObjectCreate(0,价格标签名称,OBJ_ARROW_LEFT_PRICE,价格标签窗口,定位点A时间,定位点A价格);
      if(价格标签==false)
         Print("价格标签创建失败："+IntegerToString(GetLastError()));
     }
//---设置价格标签定位点A
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_TIME,0)!=定位点A时间||ObjectGetDouble(0,价格标签名称,OBJPROP_PRICE,0)!=定位点A价格)
     {
      ObjectSetInteger(0,价格标签名称,OBJPROP_TIME,0,定位点A时间);
      ObjectSetDouble(0,价格标签名称,OBJPROP_PRICE,0,定位点A价格);
     }
//---设置价格标签的颜色
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_COLOR)!=价格标签颜色)
      ObjectSetInteger(0,价格标签名称,OBJPROP_COLOR,价格标签颜色);
//---设置价格标签的类型
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_STYLE)!=价格标签类型)
      ObjectSetInteger(0,价格标签名称,OBJPROP_STYLE,价格标签类型);
//---设置价格标签的宽度
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_WIDTH)!=价格标签宽度)
      ObjectSetInteger(0,价格标签名称,OBJPROP_WIDTH,价格标签宽度);
//---设置价格标签的提示
   if(ObjectGetString(0,价格标签名称,OBJPROP_TOOLTIP)!=价格标签提示)
      ObjectSetString(0,价格标签名称,OBJPROP_TOOLTIP,价格标签提示);
//---设置价格标签的背景
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_BACK)!=价格标签背景)
      ObjectSetInteger(0,价格标签名称,OBJPROP_BACK,价格标签背景);
//---设置价格标签的可选
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_SELECTABLE)!=价格标签可选)
      ObjectSetInteger(0,价格标签名称,OBJPROP_SELECTABLE,价格标签可选);
//---设置价格标签的移动
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_SELECTED)!=价格标签移动)
      ObjectSetInteger(0,价格标签名称,OBJPROP_SELECTED,价格标签移动);
  };
//------------------------
void 新图形类::画价格标签(string 价格标签名称,int 价格标签窗口,datetime 定位点A时间,double 定位点A价格,color 价格标签颜色=clrRed,ENUM_LINE_STYLE  价格标签类型=STYLE_DASH,int 价格标签宽度=1,string 价格标签提示="价格标签",bool 价格标签背景=false,bool 价格标签可选=false,bool 价格标签移动=false)
  {
//---创建趋势线
   if(ObjectFind(0,价格标签名称)<0)
     {
      bool 价格标签=ObjectCreate(0,价格标签名称,OBJ_ARROW_RIGHT_PRICE,价格标签窗口,定位点A时间,定位点A价格);
      if(价格标签==false)
         Print("价格标签创建失败："+IntegerToString(GetLastError()));
     }
//---设置价格标签定位点A
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_TIME,0)!=定位点A时间||ObjectGetDouble(0,价格标签名称,OBJPROP_PRICE,0)!=定位点A价格)
     {
      ObjectSetInteger(0,价格标签名称,OBJPROP_TIME,0,定位点A时间);
      ObjectSetDouble(0,价格标签名称,OBJPROP_PRICE,0,定位点A价格);
     }
//---设置价格标签的颜色
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_COLOR)!=价格标签颜色)
      ObjectSetInteger(0,价格标签名称,OBJPROP_COLOR,价格标签颜色);
//---设置价格标签的类型
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_STYLE)!=价格标签类型)
      ObjectSetInteger(0,价格标签名称,OBJPROP_STYLE,价格标签类型);
//---设置价格标签的宽度
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_WIDTH)!=价格标签宽度)
      ObjectSetInteger(0,价格标签名称,OBJPROP_WIDTH,价格标签宽度);
//---设置价格标签的提示
   if(ObjectGetString(0,价格标签名称,OBJPROP_TOOLTIP)!=价格标签提示)
      ObjectSetString(0,价格标签名称,OBJPROP_TOOLTIP,价格标签提示);
//---设置价格标签的背景
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_BACK)!=价格标签背景)
      ObjectSetInteger(0,价格标签名称,OBJPROP_BACK,价格标签背景);
//---设置价格标签的可选
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_SELECTABLE)!=价格标签可选)
      ObjectSetInteger(0,价格标签名称,OBJPROP_SELECTABLE,价格标签可选);
//---设置价格标签的移动
   if(ObjectGetInteger(0,价格标签名称,OBJPROP_SELECTED)!=价格标签移动)
      ObjectSetInteger(0,价格标签名称,OBJPROP_SELECTED,价格标签移动);
  };
//------------------------
//+------------------------------------------------------------------+
void 新图形类::状态效果设置(string 名称,color 背景颜色1,color 字体颜色1,string  内容1,color  背景颜色0,color 字体颜色0,string  内容0,int 窗口=0)
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
//+------------------------------------------------------------------+
void 新图形类::状态效果设置(string 名称,color 背景颜色1,color  背景颜色0,int 窗口=0)
  {
   if(状态检测(窗口,名称)==true)
     {
      if(ObjectGetInteger(窗口,名称,OBJPROP_BGCOLOR)!=背景颜色1)
         ObjectSetInteger(窗口,名称,OBJPROP_BGCOLOR,背景颜色1);
     }
   if(状态检测(窗口,名称)==false)
     {
      if(ObjectGetInteger(窗口,名称,OBJPROP_BGCOLOR)!=背景颜色0)
         ObjectSetInteger(窗口,名称,OBJPROP_BGCOLOR,背景颜色0);
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新图形类::状态效果设置(string 名称,string  内容1,string  内容0,int 窗口=0)
  {
   if(状态检测(窗口,名称)==true)
     {
      if(ObjectGetString(窗口,名称,OBJPROP_TEXT)!=内容1)
         ObjectSetString(窗口,名称,OBJPROP_TEXT,内容1);
     }
   if(状态检测(窗口,名称)==false)
     {
      if(ObjectGetString(窗口,名称,OBJPROP_TEXT)!=内容0)
         ObjectSetString(窗口,名称,OBJPROP_TEXT,内容0);
     }
  }
//+------------------------------------------------------------------+
bool 新图形类::状态检测(int 窗口,string 物件名称)
  {
   bool 检测=false;
   if(ObjectGetInteger(窗口,物件名称,OBJPROP_STATE)==1)
      检测= true;
   if(ObjectGetInteger(窗口,物件名称,OBJPROP_STATE)==0)
      检测= false;
   return 检测;
  }
//+------------------------------------------------------------------+
bool 新图形类::背景色检测(int 窗口,string 物件名称,color 物件背景色)
  {
   bool 检测=ObjectGetInteger(窗口,物件名称,OBJPROP_BGCOLOR)==物件背景色;
   return 检测;
  }
//------
bool 新图形类::文本检测(string 物件名="运行1",string 现物件名="运行中")
  {
   bool  检测=获取物件string值(物件名)==现物件名;
   return 检测;
  }
//-----
//+------------------------------------------------------------------+
string  新图形类::获取物件string值(string 名称)
  {
   string 内容=ObjectGetString(0,名称,OBJPROP_TEXT);
   return 内容;
  }
//+------------------------------------------------------------------+
double  新图形类::获取物件double值(string 名称)
  {
   string 内容=ObjectGetString(0,名称,OBJPROP_TEXT);
   return StringToDouble(内容);
  }
//+------------------------------------------------------------------+
bool 新图形类::发生图表事件检测(const int id,const long &lparam,const double &dparam,const string &sparam,ENUM_CHART_EVENT 图表事件类型,string 发生string事件物件名称,double 发生double事件物件名称=0,long 发生long事件物件名称=0)
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

//----
double 新图形类::鼠标单击图表返回价格(const int id,const long &lparam,const double &dparam,const string &sparam,bool 画水平线=false,bool 画垂直线=false)
  {
//--- 在图表上显示事件参数
   Comment(__FUNCTION__,": id=",id," lparam=",lparam," dparam=",dparam," sparam=",sparam);
//--- 如果这是鼠标点击事件图表
   double 价格=0;
   if(id==CHARTEVENT_CLICK&&id!=CHARTEVENT_OBJECT_CLICK)
     {
      //--- 准备变量
      int      x     =(int)lparam;
      int      y     =(int)dparam;
      datetime dt    =0;
      double   price =0;
      int      window=0;
      //--- 依据日期/时间转换X和Y坐标
      if(ChartXYToTimePrice(0,x,y,window,dt,price))
        {
         PrintFormat("Window=%d X=%d  Y=%d  =>  Time=%s  Price=%G",window,x,y,TimeToString(dt),price);
         //--- 执行反向转换：(X,Y) => (时间，价格)
         if(ChartTimePriceToXY(0,window,dt,price,x,y))
            PrintFormat("Time=%s  Price=%G  =>  X=%d  Y=%d",TimeToString(dt),price,x,y);
         else
            Print("ChartTimePriceToXY return error code: ",GetLastError());
         //--- 创建十字光标的水平线和垂直线
         if(画水平线)
           {
            ObjectDelete(0,"H Line");
            ObjectCreate(0,"H Line",OBJ_HLINE,window,dt,price);
           }
         else
            ObjectDelete(0,"H Line");
         if(画垂直线)
           {
            ObjectDelete(0,"V Line");
            ObjectCreate(0,"V Line",OBJ_VLINE,window,dt,price);
           }
         else
            ObjectDelete(0,"V Line");
         ChartRedraw(0);
         价格=price;
        }
      else
         Print("ChartXYToTimePrice return error code: ",GetLastError());
      Print("+--------------------------------------------------------------+");
     }
   return  价格;
  }
//+------------------------------------------------------------------+
bool 新图形类::ChannelCreate(const long            chart_ID=0,        // 图表 ID
                                 const string          name="Channel",    // 通道的名称
                                 const int             sub_window=0,      // 子窗口指数
                                 datetime              time1=0,           // 第一个点的时间
                                 double                price1=0,          //第一个点的价格
                                 datetime              time2=0,           // 第二个点的时间
                                 double                price2=0,          // 第二个点的价格
                                 datetime              time3=0,           //第三个点的时间
                                 double                price3=0,          // 第三个点的价格
                                 const color           clr=clrRed,        // 通道的颜色
                                 const ENUM_LINE_STYLE style=STYLE_SOLID, // 通道线的风格
                                 const int             width=1,           // 通道线的宽度
                                 const bool            fill=false,        // 填充通道颜色
                                 const bool            back=false,        // 在背景中
                                 const bool            selection=true,    // 突出移动
                                 const bool            ray_left=false,    // 通道延续向左
                                 const bool            ray_right=false,   // 通道延续向右
                                 const bool            hidden=true,       // 隐藏在对象列表
                                 const long            z_order=0)         // 鼠标单击优先
  {
//--- 重置错误的值
   ResetLastError();
//--- 通过已给的坐标创建通道
   if(!ObjectCreate(chart_ID,name,OBJ_CHANNEL,sub_window,time1,price1,time2,price2,time3,price3))
     {
      Print(__FUNCTION__,
            ": failed to create an equidistant channel! Error code = ",GetLastError());
      return(false);
     }
//--- 设置通道颜色
   ObjectSetInteger(chart_ID,name,OBJPROP_COLOR,clr);
//--- 设置通道线的风格
   ObjectSetInteger(chart_ID,name,OBJPROP_STYLE,style);
//--- 设置通道线的宽度
   ObjectSetInteger(chart_ID,name,OBJPROP_WIDTH,width);
//--- 启用 (true) 或禁用 (false) 填充通道的模式
   ObjectSetInteger(chart_ID,name,OBJPROP_FILL,fill);
//--- 显示前景 (false) 或背景 (true)
   ObjectSetInteger(chart_ID,name,OBJPROP_BACK,back);
//--- 启用 (true) 或禁用 (false) 突出通道移动的模式
//--- 当使用ObjectCreate函数创建图形对象时，对象不能
//--- 默认下突出并移动。在这个方法中，默认选择参数
//--- true 可以突出移动对象
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTABLE,selection);
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTED,selection);
//--- 启用 (true) 或禁用 (false) 延续向左显示通道的模式
   ObjectSetInteger(chart_ID,name,OBJPROP_RAY_LEFT,ray_left);
//--- 启用 (true) 或禁用 (false) 延续向右显示通道的模式
   ObjectSetInteger(chart_ID,name,OBJPROP_RAY_RIGHT,ray_right);
//--- 在对象列表隐藏(true) 或显示 (false) 图形对象名称
   ObjectSetInteger(chart_ID,name,OBJPROP_HIDDEN,hidden);
//--- 设置在图表中优先接收鼠标点击事件
   ObjectSetInteger(chart_ID,name,OBJPROP_ZORDER,z_order);
//--- 成功执行
   return(true);
  }
//+------------------------------------------------------------------+
//| 移动通道的定位点                                                   |
//+------------------------------------------------------------------+
bool 新图形类::ChannelPointChange(const long   chart_ID=0,     // 图表 ID
                                      const string name="Channel", // 通道的名称
                                      const int    point_index=0,  // 定位点指数
                                      datetime     time=0,         // 定位点时间坐标
                                      double       price=0)        // 定位点价格坐标
  {
//--- 如果没有设置点的位置，则将其移动到当前的卖价柱
   if(!time)
      time=TimeCurrent();
   if(!price)
      price=SymbolInfoDouble(Symbol(),SYMBOL_BID);
//--- 重置错误的值
   ResetLastError();
//--- 移动定位点
   if(!ObjectMove(chart_ID,name,point_index,time,price))
     {
      Print(__FUNCTION__,
            ": failed to move the anchor point! Error code = ",GetLastError());
      return(false);
     }
//--- 成功执行
   return(true);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//| 创建文本对象                                                       |
//+------------------------------------------------------------------+
bool 新图形类::TextCreate(const long              chart_ID=0,               // 图表 ID
                              const string            name="Text",              // 对象名称
                              const int               sub_window=0,             // 子窗口指数
                              datetime                time=0,                   // 定位点时间
                              double                  price=0,                  // 定位点价格
                              const string            text="Text",              // 文本本身
                              const string            font="Arial",             // 字体
                              const int               font_size=10,             // 字体大小
                              const color             clr=clrRed,               // 颜色
                              const double            angle=0.0,                // 文本倾斜
                              const ENUM_ANCHOR_POINT anchor=ANCHOR_LEFT_UPPER, // 定位类型
                              const bool              back=false,               // 在背景中
                              const bool              selection=false,          // 突出移动
                              const bool              hidden=true,              // 隐藏在对象列表
                              const long              z_order=0)                // 鼠标单击优先
  {
//--- 若未设置则设置定位点的坐标
   ChangeTextEmptyPoint(time,price);
//--- 重置错误的值
   ResetLastError();
//--- 创建文本对象
   if(!ObjectCreate(chart_ID,name,OBJ_TEXT,sub_window,time,price))
     {
      Print(__FUNCTION__,
            ": failed to create \"Text\" object! Error code = ",GetLastError());
      return(false);
     }
//--- 设置文本
   ObjectSetString(chart_ID,name,OBJPROP_TEXT,text);
//--- 设置文本字体
   ObjectSetString(chart_ID,name,OBJPROP_FONT,font);
//--- 设置字体大小
   ObjectSetInteger(chart_ID,name,OBJPROP_FONTSIZE,font_size);
//--- 设置文本的倾斜角
   ObjectSetDouble(chart_ID,name,OBJPROP_ANGLE,angle);
//--- 设置定位类型
   ObjectSetInteger(chart_ID,name,OBJPROP_ANCHOR,anchor);
//--- 设置颜色
   ObjectSetInteger(chart_ID,name,OBJPROP_COLOR,clr);
//--- 显示前景 (false) 或背景 (true)
   ObjectSetInteger(chart_ID,name,OBJPROP_BACK,back);
//--- 启用 (true) 或禁用 (false) 通过鼠标移动对象的模式
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTABLE,selection);
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTED,selection);
//--- 在对象列表隐藏(true) 或显示 (false) 图形对象名称
   ObjectSetInteger(chart_ID,name,OBJPROP_HIDDEN,hidden);
//--- 设置在图表中优先接收鼠标点击事件
   ObjectSetInteger(chart_ID,name,OBJPROP_ZORDER,z_order);
//--- 成功执行
   return(true);
  }
//+------------------------------------------------------------------+
bool 新图形类::TextMove(const long   chart_ID=0,const string name="Text",datetime time=0,double price=0)
  {
   if(!time)
      time=TimeCurrent();
   if(!price)
      price=SymbolInfoDouble(Symbol(),SYMBOL_BID);
   ResetLastError();
   if(!ObjectMove(chart_ID,name,0,time,price))
     {
      Print(__FUNCTION__,
            ": failed to move the anchor point! Error code = ",GetLastError());
      return(false);
     }
//--- 成功执行
   return(true);
  }
//+------------------------------------------------------------------+
bool 新图形类::TextChange(const long   chart_ID=0,const string name="Text",const string text="Text")
  {
   ResetLastError();
   if(!ObjectSetString(chart_ID,name,OBJPROP_TEXT,text))
     {
      Print(__FUNCTION__,
            ": failed to change the text! Error code = ",GetLastError());
      return(false);
     }
   return(true);
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 新图形类::TextDelete(const long  chart_ID=0,const string name="Text")
  {
   ResetLastError();
   if(!ObjectDelete(chart_ID,name))
     {
      Print(__FUNCTION__,
            ": failed to delete \"Text\" object! Error code = ",GetLastError());
      return(false);
     }
//--- 成功执行
   return(true);
  }
//+------------------------------------------------------------------+
void 新图形类::ChangeTextEmptyPoint(datetime &time,double &price)
  {
//--- 如果点的时间没有设置，它将位于当前柱
   if(!time)
      time=TimeCurrent();
//--- 如果点的价格没有设置，则它将用卖价值
   if(!price)
      price=SymbolInfoDouble(Symbol(),SYMBOL_BID);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新图形类::背景切换(string 物件名称,color 初始颜色=clrRed,color 即时颜色=clrYellow)
  {
   if(状态检测(0,物件名称)==false)
      ObjectSetInteger(0,物件名称,OBJPROP_BGCOLOR,初始颜色);
   if(状态检测(0,物件名称)==true)
      ObjectSetInteger(0,物件名称,OBJPROP_BGCOLOR,即时颜色);
  }
//---
void 新图形类::文字切换(string 物件名称,string 初始文字,string 即时文字)
  {
   if(状态检测(0,物件名称)==false)
      ObjectSetString(0,物件名称,OBJPROP_TEXT,初始文字);
   if(状态检测(0,物件名称)==true)
      ObjectSetString(0,物件名称,OBJPROP_TEXT,即时文字);
  }
//---
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void 新图形类::背景文字切换(string 物件名称,string 初始文字,string 即时文字,color 初始颜色=clrRed,color 即时颜色=clrYellow)
  {
   if(状态检测(0,物件名称)==false)
     {
      ObjectSetInteger(0,物件名称,OBJPROP_BGCOLOR,初始颜色);
      ObjectSetString(0,物件名称,OBJPROP_TEXT,初始文字);
     }
   if(状态检测(0,物件名称)==true)
     {
      ObjectSetInteger(0,物件名称,OBJPROP_BGCOLOR,即时颜色);
      ObjectSetString(0,物件名称,OBJPROP_TEXT,即时文字);
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void 新图形类::ButtonCreate(string Name,string txt1,string txt2,int XX,int YX,int XL,int YL,int WZ,color A,color B)
  {
   if(ObjectFind(0,Name)==-1)
     {
      ObjectCreate(0,Name,OBJ_BUTTON,0,0,0);
      ObjectSetInteger(0,Name,OBJPROP_XDISTANCE,XX);
      ObjectSetInteger(0,Name,OBJPROP_YDISTANCE,YX);
      ObjectSetInteger(0,Name,OBJPROP_XSIZE,XL);
      ObjectSetInteger(0,Name,OBJPROP_YSIZE,YL);
      ObjectSetInteger(0,Name,OBJPROP_CORNER,WZ);
      ObjectSetString(0,Name,OBJPROP_FONT,"微软雅黑");
      ObjectSetInteger(0,Name,OBJPROP_FONTSIZE,11);
      ObjectSetInteger(0,Name,OBJPROP_BORDER_COLOR,clrYellow);
     }
   if(ObjectGetInteger(0,Name,OBJPROP_STATE)==1)
     {
      ObjectSetInteger(0,Name,OBJPROP_COLOR,A);
      ObjectSetInteger(0,Name,OBJPROP_BGCOLOR,B);
      ObjectSetString(0,Name,OBJPROP_TEXT,txt2);
     }
   else
     {
      ObjectSetInteger(0,Name,OBJPROP_COLOR,B);
      ObjectSetInteger(0,Name,OBJPROP_BGCOLOR,A);
      ObjectSetString(0,Name,OBJPROP_TEXT,txt1);
     }
  }
//+------------------------------------------------------------------+
bool 新图形类::RectangleCreate(const long            chart_ID=0,        // 图表 ID
                                   const string          name="Rectangle",  // 矩形名称
                                   const int             sub_window=0,      // 子窗口指数
                                   datetime              time1=0,           // 第一个点的时间
                                   double                price1=0,          // 第一个点的价格
                                   datetime              time2=0,           // 第二个点的时间
                                   double                price2=0,          // 第二个点的价格
                                   const color           clr=clrRed,        // 矩形颜色
                                   const ENUM_LINE_STYLE style=STYLE_SOLID, // 矩形线的风格
                                   const int             width=1,           // 矩形线的宽度
                                   const bool            fill=false,        // 填充矩形颜色
                                   const bool            back=false,        // 在背景中
                                   const bool            selection=true,    // 突出移动
                                   const bool            hidden=true,       // 隐藏在对象列表
                                   const long            z_order=0)         // 鼠标单击优先
  {
//--- 若未设置则设置定位点的坐标
   ChangeRectangleEmptyPoints(time1,price1,time2,price2);
//--- 重置错误的值
   ResetLastError();
//--- 通过已给的坐标创建矩形
   if(!ObjectCreate(chart_ID,name,OBJ_RECTANGLE,sub_window,time1,price1,time2,price2))
     {
      Print(__FUNCTION__,
            ": failed to create a rectangle! Error code = ",GetLastError());
      return(false);
     }
//--- 设置矩形颜色
   ObjectSetInteger(chart_ID,name,OBJPROP_COLOR,clr);
//--- 设置矩形线的风格
   ObjectSetInteger(chart_ID,name,OBJPROP_STYLE,style);
//--- 设置矩形线的宽度
   ObjectSetInteger(chart_ID,name,OBJPROP_WIDTH,width);
//--- 启用 (true) 或禁用 (false) 填充矩形的模式
   ObjectSetInteger(chart_ID,name,OBJPROP_FILL,fill);
//--- 显示前景 (false) 或背景 (true)
   ObjectSetInteger(chart_ID,name,OBJPROP_BACK,back);
//--- 启用 (true) 或禁用 (false) 突出矩形移动的模式
//--- 当使用ObjectCreate函数创建图形对象时，对象不能
//--- 默认下突出并移动。在这个方法中，默认选择参数
//--- true 可以突出移动对象
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTABLE,selection);
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTED,selection);
//--- 在对象列表隐藏(true) 或显示 (false) 图形对象名称
   ObjectSetInteger(chart_ID,name,OBJPROP_HIDDEN,hidden);
//--- 设置在图表中优先接收鼠标点击事件
   ObjectSetInteger(chart_ID,name,OBJPROP_ZORDER,z_order);
//--- 成功执行
   return(true);
  }
//+------------------------------------------------------------------+
//| 移动矩形定位点                                                     |
//+------------------------------------------------------------------+
bool 新图形类::RectanglePointChange(const long   chart_ID=0,       // 图表 ID
                                        const string name="Rectangle", // 矩形名称
                                        const int    point_index=0,    // 定位点指数
                                        datetime     time=0,           // 定位点时间坐标
                                        double       price=0)          // 定位点价格坐标
  {
//--- 如果没有设置点的位置，则将其移动到当前的卖价柱
   if(!time)
      time=TimeCurrent();
   if(!price)
      price=SymbolInfoDouble(Symbol(),SYMBOL_BID);
//--- 重置错误的值
   ResetLastError();
//--- 移动定位点
   if(!ObjectMove(chart_ID,name,point_index,time,price))
     {
      Print(__FUNCTION__,
            ": failed to move the anchor point! Error code = ",GetLastError());
      return(false);
     }
//--- 成功执行
   return(true);
  }
//+------------------------------------------------------------------+
//| 删除矩形                                                          |
//+------------------------------------------------------------------+
bool 新图形类::RectangleDelete(const long   chart_ID=0,       // 图表 ID
                                   const string name="Rectangle") // 矩形名称
  {
//--- 重置错误的值
   ResetLastError();
//--- 删除矩形
   if(!ObjectDelete(chart_ID,name))
     {
      Print(__FUNCTION__,
            ": failed to delete rectangle! Error code = ",GetLastError());
      return(false);
     }
//--- 成功执行
   return(true);
  }
//+------------------------------------------------------------------+
//| 检查矩形定位点的值和为空点设置                                       |
//| 默认的值                                                          |
//+------------------------------------------------------------------+
void 新图形类::ChangeRectangleEmptyPoints(datetime &time1,double &price1,
      datetime &time2,double &price2)
  {
//--- 如果第一点的时间没有设置，它将位于当前柱
   if(!time1)
      time1=TimeCurrent();
//--- 如果第一点的价格没有设置，则它将用卖价值
   if(!price1)
      price1=SymbolInfoDouble(Symbol(),SYMBOL_BID);
//--- 如果第二点的时间没有设置，它则位于第二点左侧的9个柱
   if(!time2)
     {
      //--- 接收最近10柱开盘时间的数组
      datetime temp[10];
      CopyTime(Symbol(),Period(),time1,10,temp);
      //--- 在第一点左侧9柱设置第二点
      time2=temp[0];
     }
//--- 如果第二个点的价格没有设置，则低于第一个点移动300点
   if(!price2)
      price2=price1-300*SymbolInfoDouble(Symbol(),SYMBOL_POINT);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 新图形类::TriangleCreate(const long            chart_ID=0,        //图表 ID
                                  const string          name="Triangle",   //三角形名称
                                  const int             sub_window=0,      // 子窗口指数
                                  datetime              time1=0,           // 第一个点的时间
                                  double                price1=0,          // 第一个点的价格
                                  datetime              time2=0,           // 第二个点的时间
                                  double                price2=0,          // 第二个点的价格
                                  datetime              time3=0,           //第三个点的时间
                                  double                price3=0,          // 第三个点的价格
                                  const color           clr=clrRed,        //三角形颜色
                                  const ENUM_LINE_STYLE style=STYLE_SOLID, // 三角形线条风格
                                  const int             width=1,           // 三角形线条宽度
                                  const bool            fill=false,        // 三角形填充颜色
                                  const bool            back=false,        // 在背景中
                                  const bool            selection=true,    // 突出移动
                                  const bool            hidden=true,       // 隐藏在对象列表
                                  const long            z_order=0)         // 鼠标单击优先
  {
//--- 若未设置则设置定位点的坐标
   ChangeTriangleEmptyPoints(time1,price1,time2,price2,time3,price3);
//--- 重置错误的值
   ResetLastError();
//--- 通过已给的坐标创建三角形
   if(!ObjectCreate(chart_ID,name,OBJ_TRIANGLE,sub_window,time1,price1,time2,price2,time3,price3))
     {
      Print(__FUNCTION__,
            ": failed to create a triangle! Error code = ",GetLastError());
      return(false);
     }
//--- 设置三角形颜色
   ObjectSetInteger(chart_ID,name,OBJPROP_COLOR,clr);
//--- 设置三角形线条风格
   ObjectSetInteger(chart_ID,name,OBJPROP_STYLE,style);
//--- 设置三角形线条宽度
   ObjectSetInteger(chart_ID,name,OBJPROP_WIDTH,width);
//--- 启用 (true) 或禁用 (false) 填充三角形的模式
   ObjectSetInteger(chart_ID,name,OBJPROP_FILL,fill);
//--- 显示前景 (false) 或背景 (true)
   ObjectSetInteger(chart_ID,name,OBJPROP_BACK,back);
//--- 启用 (true) 或禁用 (false) 突出三角形移动的模式
//--- 当使用ObjectCreate函数创建图形对象时，对象不能
//--- 默认下突出并移动。在这个方法中，默认选择参数
//--- true 可以突出移动对象
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTABLE,selection);
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTED,selection);
//--- 在对象列表隐藏(true) 或显示 (false) 图形对象名称
   ObjectSetInteger(chart_ID,name,OBJPROP_HIDDEN,hidden);
//--- 设置在图表中优先接收鼠标点击事件
   ObjectSetInteger(chart_ID,name,OBJPROP_ZORDER,z_order);
//--- 成功执行
   return(true);
  }
//+------------------------------------------------------------------+
//| 移动三角形定位点                                                   |
//+------------------------------------------------------------------+
bool 新图形类::TrianglePointChange(const long   chart_ID=0,      // 图表 ID
                                       const string name="Triangle", // 三角形名称
                                       const int    point_index=0,   // 定位点指数
                                       datetime     time=0,          // 定位点时间坐标
                                       double       price=0)         // 定位点价格坐标
  {
//--- 如果没有设置点的位置，则将其移动到当前的卖价柱
   if(!time)
      time=TimeCurrent();
   if(!price)
      price=SymbolInfoDouble(Symbol(),SYMBOL_BID);
//--- 重置错误的值
   ResetLastError();
//--- 移动定位点
   if(!ObjectMove(chart_ID,name,point_index,time,price))
     {
      Print(__FUNCTION__,
            ": failed to move the anchor point! Error code = ",GetLastError());
      return(false);
     }
//--- 成功执行
   return(true);
  }
//+------------------------------------------------------------------+
//| 删除三角形                                                        |
//+------------------------------------------------------------------+
bool 新图形类::TriangleDelete(const long   chart_ID=0,      // 图表 ID
                                  const string name="Triangle") // 三角形名称
  {
//--- 重置错误的值
   ResetLastError();
//--- 删除三角形
   if(!ObjectDelete(chart_ID,name))
     {
      Print(__FUNCTION__,
            ": failed to delete the ellipse! Error code = ",GetLastError());
      return(false);
     }
//--- 成功执行
   return(true);
  }
//+------------------------------------------------------------------+
//| 检查三角形定位点的值和为空点设置                                     |
//| 默认的值                                                          |
//+------------------------------------------------------------------+
void 新图形类::ChangeTriangleEmptyPoints(datetime &time1,double &price1,
      datetime &time2,double &price2,
      datetime &time3,double &price3)
  {
//--- 如果第一点的时间没有设置，它将位于当前柱
   if(!time1)
      time1=TimeCurrent();
//--- 如果第一点的价格没有设置，则它将用卖价值
   if(!price1)
      price1=SymbolInfoDouble(Symbol(),SYMBOL_BID);
//--- 如果第二点的时间没有设置，它则位于第二点左侧的9个柱
   if(!time2)
     {
      //--- 接收最近10柱开盘时间的数组
      datetime temp[10];
      CopyTime(Symbol(),Period(),time1,10,temp);
      //--- 在第一点左侧9柱设置第二点
      time2=temp[0];
     }
//--- 如果第二个点的价格没有设置，则低于第一个点移动300点
   if(!price2)
      price2=price1-300*SymbolInfoDouble(Symbol(),SYMBOL_POINT);
//--- 如果第三个点的时间没有设置，则它与第二个点的日期相一致
   if(!time3)
      time3=time2;
//--- 如果第三点的价格没有设置，则它与第一点的价格相等
   if(!price3)
      price3=price1;
  }
//+------------------------------------------------------------------+
bool  新图形类::EllipseCreate(const long            chart_ID=0,        // 图表ID
                                  const string          name="Ellipse",    // 椭圆形名称
                                  const int             sub_window=0,      // 子窗口指数
                                  datetime              time1=0,           // 第一个点的时间
                                  double                price1=0,          // 第一个点的价格
                                  datetime              time2=0,           // 第二个点的时间
                                  double                price2=0,          // 第二个点的价格
                                  datetime              time3=0,           // 第三个点的时间
                                  double                price3=0,          // 第三个点的价格
                                  const color           clr=clrRed,        // 椭圆形颜色
                                  const ENUM_LINE_STYLE style=STYLE_SOLID, // 椭圆形线条风格
                                  const int             width=1,           // 椭圆形线条的宽度
                                  const bool            fill=false,        // 椭圆形填充颜色
                                  const bool            back=false,        // 在背景中
                                  const bool            selection=true,    // 突出移动
                                  const bool            hidden=true,       // 隐藏在对象列表
                                  const long            z_order=0)         // 鼠标单击优先
  {
//--- 若未设置则设置定位点的坐标
   ChangeEllipseEmptyPoints(time1,price1,time2,price2,time3,price3);
//--- 重置错误的值
   ResetLastError();
//--- 由给定坐标创建椭圆形
   if(!ObjectCreate(chart_ID,name,OBJ_ELLIPSE,sub_window,time1,price1,time2,price2,time3,price3))
     {
      Print(__FUNCTION__,
            ": failed to create an ellipse! Error code = ",GetLastError());
      return(false);
     }
//--- 设置椭圆形颜色
   ObjectSetInteger(chart_ID,name,OBJPROP_COLOR,clr);
//--- 设置椭圆形线条风格
   ObjectSetInteger(chart_ID,name,OBJPROP_STYLE,style);
//--- 设置椭圆形线条的宽度
   ObjectSetInteger(chart_ID,name,OBJPROP_WIDTH,width);
//--- 启用 (true) 或禁用 (false) 填充椭圆形的模式
   ObjectSetInteger(chart_ID,name,OBJPROP_FILL,fill);
//--- 显示前景 (false) 或背景 (true)
   ObjectSetInteger(chart_ID,name,OBJPROP_BACK,back);
//--- 启用 (true) 或禁用 (false) 突出椭圆形移动的模式
//--- 当使用ObjectCreate函数创建图形对象时，对象不能
//--- 默认下突出并移动。在这个方法中，默认选择参数
//--- true 可以突出移动对象
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTABLE,selection);
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTED,selection);
//--- 在对象列表隐藏(true) 或显示 (false) 图形对象名称
   ObjectSetInteger(chart_ID,name,OBJPROP_HIDDEN,hidden);
//--- 设置在图表中优先接收鼠标点击事件
   ObjectSetInteger(chart_ID,name,OBJPROP_ZORDER,z_order);
//--- 成功执行
   return(true);
  }
//+------------------------------------------------------------------+
//| 移动椭圆形定位点                                                   |
//+------------------------------------------------------------------+
bool  新图形类::EllipsePointChange(const long   chart_ID=0,     // 图表ID
                                       const string name="Ellipse", // 椭圆形名称
                                       const int    point_index=0,  // 定位点指数
                                       datetime     time=0,         // 定位点时间坐标
                                       double       price=0)        // 定位点价格坐标
  {
//--- 如果没有设置点的位置，则将其移动到当前的卖价柱
   if(!time)
      time=TimeCurrent();
   if(!price)
      price=SymbolInfoDouble(Symbol(),SYMBOL_BID);
//--- 重置错误的值
   ResetLastError();
//--- 移动定位点
   if(!ObjectMove(chart_ID,name,point_index,time,price))
     {
      Print(__FUNCTION__,
            ": failed to move the anchor point! Error code = ",GetLastError());
      return(false);
     }
//--- 成功执行
   return(true);
  }
//+------------------------------------------------------------------+
//| 删除椭圆形                                                        |
//+------------------------------------------------------------------+
bool 新图形类:: EllipseDelete(const long   chart_ID=0,     // 图表 ID
                                  const string name="Ellipse") // 椭圆形名称
  {
//--- 重置错误的值
   ResetLastError();
//--- 删除椭圆形
   if(!ObjectDelete(chart_ID,name))
     {
      Print(__FUNCTION__,
            ": failed to delete an ellipse! Error code = ",GetLastError());
      return(false);
     }
//--- 成功执行
   return(true);
  }
//+------------------------------------------------------------------+
//| 检查椭圆形定位点的值和为空点设置                                      |
//| 默认的值                                                          |
//+------------------------------------------------------------------+
void  新图形类::ChangeEllipseEmptyPoints(datetime &time1,double &price1,
      datetime &time2,double &price2,
      datetime &time3,double &price3)
  {
//--- 如果第一点的时间没有设置，它将位于当前柱
   if(!time1)
      time1=TimeCurrent();
//--- 如果第一点的价格没有设置，则它将用卖价值
   if(!price1)
      price1=SymbolInfoDouble(Symbol(),SYMBOL_BID);
//--- 如果第二点的时间没有设置，它则位于第二点左侧的9个柱
   if(!time2)
     {
      //--- 接收最近10柱开盘时间的数组
      datetime temp[10];
      CopyTime(Symbol(),Period(),time1,10,temp);
      //--- 在第一点左侧9柱设置第二点
      time2=temp[0];
     }
//--- 如果第二个点的价格没有设置，则低于第一个点移动300点
   if(!price2)
      price2=price1-300*SymbolInfoDouble(Symbol(),SYMBOL_POINT);
//--- 如果第三个点的时间没有设置，则它与第二个点的日期相一致
   if(!time3)
      time3=time2;
//--- 如果第三点的价格没有设置，则它与第一点的价格相等
   if(!price3)
      price3=price1;
  }
//+------------------------------------------------------------------+


//+------------------------------------------------------------------+
void 新图形类::画回调线(double price_high,double price_low,long tim_high,long tim_low)
  {
   if(price_high>0&&price_low>0&&tim_high>0&&tim_low>0)
     {
      if(price_high>price_low)
        {
         if(tim_high>tim_low)
           {
            double ht20 = price_high-0.2*(price_high-price_low);
            double ht25 = price_high-0.25*(price_high-price_low);
            double ht50 = price_high-0.5*(price_high-price_low);
            double ht75 = price_high-0.75*(price_high-price_low);
            double ht80 = price_high-0.8*(price_high-price_low);
            double ht100 = price_high-1.0*(price_high-price_low);
            double ht1382 = price_high-1.382*(price_high-price_low);

            画趋势线("回调00",0,tim_low,price_low,tim_high,price_high,false,false,clrRed,0,"回调00",1);
            画趋势线("回调0",0,tim_low,price_high,tim_high,price_high,false,true,clrRed,1,"回调0",0);
            画趋势线("回调20",0,tim_low,ht20,tim_high,ht20,false,true,clrOrange,1,"回调20",0);
            画趋势线("回调25",0,tim_low,ht25,tim_high,ht25,false,true,clrYellow,1,"回调25",0);
            画趋势线("回调50",0,tim_low,ht50,tim_high,ht50,false,true,clrGreen,1,"回调50",0);
            画趋势线("回调75",0,tim_low,ht75,tim_high,ht75,false,true,clrAqua,1,"回调75",0);
            画趋势线("回调80",0,tim_low,ht80,tim_high,ht80,false,true,clrBlue,1,"回调80",0);
            画趋势线("回调100",0,tim_low,ht100,tim_high,ht100,false,true,clrRoyalBlue,1,"回调100",0);
            画趋势线("回调1382",0,tim_low,ht1382,tim_high,ht1382,false,true,clrAliceBlue,1,"回调1382",0);
           }
         else
           {
            double ht200 = price_low+0.2*(price_high-price_low);
            double ht250 = price_low+0.25*(price_high-price_low);
            double ht500 = price_low+0.5*(price_high-price_low);
            double ht750 = price_low+0.75*(price_high-price_low);
            double ht800 = price_low+0.8*(price_high-price_low);
            double ht1000 = price_low+1.0*(price_high-price_low);
            double ht13820 = price_low+1.382*(price_high-price_low);

            画趋势线("回调00",0,tim_high,price_high,tim_low,price_low,false,false,clrRed,0,"回调00",1);
            画趋势线("回调0",0,tim_high,price_low,tim_low,price_low,false,true,clrRed,1,"回调0",0);
            画趋势线("回调20",0,tim_high,ht200,tim_low,ht200,false,true,clrOrange,1,"回调20",0);
            画趋势线("回调25",0,tim_high,ht250,tim_low,ht250,false,true,clrYellow,1,"回调25",0);
            画趋势线("回调50",0,tim_high,ht500,tim_low,ht500,false,true,clrGreen,1,"回调50",0);
            画趋势线("回调75",0,tim_high,ht750,tim_low,ht750,false,true,clrAqua,1,"回调75",0);
            画趋势线("回调80",0,tim_high,ht800,tim_low,ht800,false,true,clrBlue,1,"回调80",0);
            画趋势线("回调100",0,tim_high,ht1000,tim_low,ht1000,false,true,clrRoyalBlue,1,"回调100",0);
            画趋势线("回调1382",0,tim_high,ht13820,tim_low,ht13820,false,true,clrAliceBlue,1,"回调1382",0);
           }
        }
      else
         删除物件(0,"回调00","回调0","回调20","回调25","回调50","回调75","回调80","回调100","回调1382");
     }
  }
//+------------------------------------------------------------------+
void   新图形类::删除物件(long 窗口,string 名称1,string 名称2="",string 名称3="",string 名称4="",string 名称5="",string 名称6="",string 名称7="",string 名称8="",string 名称9="")
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
bool 新图形类::FiboExpansionCreate(const long            chart_ID=0,           // 图表 ID
                                       const string          name="FiboExpansion", // 通道的名称
                                       const int             sub_window=0,         // 子窗口指数
                                       datetime              time1=0,              // 第一个点的时间
                                       double                price1=0,             // 第一个点的价格
                                       datetime              time2=0,              // 第二个点的时间
                                       double                price2=0,             // 第二个点的价格
                                       datetime              time3=0,              // 第三个点的时间
                                       double                price3=0,             // 第三个点的价格
                                       const color           clr=clrRed,           // 对象颜色
                                       const ENUM_LINE_STYLE style=STYLE_SOLID,    // 线的风格
                                       const int             width=1,              // 线的宽度
                                       const bool            back=false,           // 在背景中
                                       const bool            selection=true,       // 突出移动
                                       const bool            ray_left=false,       // 对象延续向左
                                       const bool            ray_right=false,      // 对象延续向右
                                       const bool            hidden=true,          // 隐藏在对象列表
                                       const long            z_order=0)            // 鼠标单击优先
  {
//--- 若未设置则设置定位点的坐标
   ChangeFiboExpansionEmptyPoints(time1,price1,time2,price2,time3,price3);
//--- 重置错误的值
   ResetLastError();
//--- 通过已给的坐标创建斐波纳契扩展线
   if(!ObjectCreate(chart_ID,name,OBJ_EXPANSION,sub_window,time1,price1,time2,price2,time3,price3))
     {
      Print(__FUNCTION__,
            ": failed to create \"Fibonacci Extension\"! Error code = ",GetLastError());
      return(false);
     }
//--- 设置对象的颜色
   ObjectSetInteger(chart_ID,name,OBJPROP_COLOR,clr);
//---设置线的风格
   ObjectSetInteger(chart_ID,name,OBJPROP_STYLE,style);
//--- 设置线的宽度
   ObjectSetInteger(chart_ID,name,OBJPROP_WIDTH,width);
//--- 显示前景 (false) 或背景 (true)
   ObjectSetInteger(chart_ID,name,OBJPROP_BACK,back);
//--- 启用 (true) 或禁用 (false) 突出通道移动的模式
//--- 当使用ObjectCreate函数创建图形对象时，对象不能
//--- 默认下突出并移动。在这个方法中，默认选择参数
//--- true 可以突出移动对象
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTABLE,selection);
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTED,selection);
//--- 启用 (true) 或禁用 (false) 延续向左的对象可视化的模式
   ObjectSetInteger(chart_ID,name,OBJPROP_RAY_LEFT,ray_left);
//--- 启用 (true) 或禁用 (false) 延续向右的对象可视化的模式
   ObjectSetInteger(chart_ID,name,OBJPROP_RAY_RIGHT,ray_right);
//--- 在对象列表隐藏(true) 或显示 (false) 图形对象名称
   ObjectSetInteger(chart_ID,name,OBJPROP_HIDDEN,hidden);
//--- 设置在图表中优先接收鼠标点击事件
   ObjectSetInteger(chart_ID,name,OBJPROP_ZORDER,z_order);
//--- 成功执行
   return(true);
  }
//+------------------------------------------------------------------+
//| 设置水平的数量和参数                                                |
//+------------------------------------------------------------------+
bool 新图形类::FiboExpansionLevelsSet(int             levels,               // 水平线的数量
      double          &values[],            // 水平线的值
      color           &colors[],            // 水平线的颜色
      ENUM_LINE_STYLE &styles[],            // 水平线的风格
      int             &widths[],            // 水平线的宽度
      const long      chart_ID=0,           // 图表 ID
      const string    name="FiboExpansion") // 对象名称
  {
//--- 检查数组大小
   if(levels!=ArraySize(colors) || levels!=ArraySize(styles) ||
      levels!=ArraySize(widths) || levels!=ArraySize(widths))
     {
      Print(__FUNCTION__,": array length does not correspond to the number of levels, error!");
      return(false);
     }
//--- 设置水平数量
   ObjectSetInteger(chart_ID,name,OBJPROP_LEVELS,levels);
//--- 设置循环中水平的属性
   for(int i=0; i<levels; i++)
     {
      //--- 水平的值
      ObjectSetDouble(chart_ID,name,OBJPROP_LEVELVALUE,i,values[i]);
      //--- 水平的颜色
      ObjectSetInteger(chart_ID,name,OBJPROP_LEVELCOLOR,i,colors[i]);
      //--- 水平的风格
      ObjectSetInteger(chart_ID,name,OBJPROP_LEVELSTYLE,i,styles[i]);
      //--- 水平的宽度
      ObjectSetInteger(chart_ID,name,OBJPROP_LEVELWIDTH,i,widths[i]);
      //--- 水平的描述
      ObjectSetString(chart_ID,name,OBJPROP_LEVELTEXT,i,"FE "+DoubleToString(100*values[i],1));
     }
//--- 成功执行
   return(true);
  }
//+------------------------------------------------------------------+
//| 移动斐波纳契扩展线的定位点                                           |
//+------------------------------------------------------------------+
bool 新图形类::FiboExpansionPointChange(const long   chart_ID=0,           // 图表 ID
      const string name="FiboExpansion", // 对象名称
      const int    point_index=0,        // 定位点指数
      datetime     time=0,               // 定位点时间坐标
      double       price=0)              // 定位点价格坐标
  {
//--- 如果没有设置点的位置，则将其移动到当前的卖价柱
   if(!time)
      time=TimeCurrent();
   if(!price)
      price=SymbolInfoDouble(Symbol(),SYMBOL_BID);
//--- 重置错误的值
   ResetLastError();
//--- 移动定位点
   if(!ObjectMove(chart_ID,name,point_index,time,price))
     {
      Print(__FUNCTION__,
            ": failed to move the anchor point! Error code = ",GetLastError());
      return(false);
     }
//--- 成功执行
   return(true);
  }
//+------------------------------------------------------------------+
//| 删除斐波纳契扩展线                                                  |
//+------------------------------------------------------------------+
bool 新图形类::FiboExpansionDelete(const long   chart_ID=0,           // 图表 ID
                                       const string name="FiboExpansion") // 对象名称
  {
//--- 重置错误的值
   ResetLastError();
//--- 删除对象
   if(!ObjectDelete(chart_ID,name))
     {
      Print(__FUNCTION__,
            ": failed to delete \"Fibonacci Expansion\"! Error code = ",GetLastError());
      return(false);
     }
//--- 成功执行
   return(true);
  }
//+------------------------------------------------------------------+
//| 检查斐波纳契扩展线定位点的值和为空点设置                               |
//| 默认的值                                                          |
//+------------------------------------------------------------------+
void 新图形类::ChangeFiboExpansionEmptyPoints(datetime &time1,double &price1,datetime &time2,
      double &price2,datetime &time3,double &price3)
  {
//--- 如果第三点（右侧）的时间没有设置，它将位于当前柱
   if(!time3)
      time3=TimeCurrent();
//--- 如果第三点的价格没有设置，则它将用卖价值
   if(!price3)
      price3=SymbolInfoDouble(Symbol(),SYMBOL_BID);
//--- 如果第一点（左侧）的时间没有设置，它则位于第三点左侧的9个柱
//--- 接收最近10柱开盘时间的数组
   datetime temp[];
   ArrayResize(temp,10);
   if(!time1)
     {
      CopyTime(Symbol(),Period(),time3,10,temp);
      //--- 在第二点左侧9柱设置第一点
      time1=temp[0];
     }
//--- 如果第一点的价格没有设置，则它与第三点的价格相等
   if(!price1)
      price1=price3;
//--- 如果第二点的时间没有设置，它则位于第三点左侧的7个柱
   if(!time2)
      time2=temp[2];
//--- 如果第二个点的价格没有设置，则低于第一个点移动250点
   if(!price2)
      price2=price1-250*SymbolInfoDouble(Symbol(),SYMBOL_POINT);
  }
//------------------
//+------------------------------------------------------------------+


//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void 新图形类::向上画斐波那契扩展(datetime tim_low1,double price_low1,datetime tim_high,double price_high,datetime tim_low,double price_low,string fbkz="feibo0")
  {
   bool chk = tim_high>0&&tim_low>0&&tim_low1>0&&price_high>price_low&&price_high>price_low1&&price_low1<price_low&&tim_high>tim_low1&&tim_high<tim_low;
   if(chk)
      FiboExpansionCreate(0,fbkz,0,tim_low1,price_low1,tim_high,price_high, tim_low, price_low);
   else
      删除物件(0,fbkz);
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void 新图形类::向下画斐波那契扩展(datetime tim_high1,double price_high1,datetime tim_low,double price_low,datetime tim_high,double price_high,string fbkz="feibo1")
  {
   bool chk2 = tim_high>0&&tim_low>0&&tim_high1>0&&price_high>price_low&&price_high1>price_high&&tim_high1<tim_low&&tim_low<tim_high;
   if(chk2)
      FiboExpansionCreate(0,fbkz,0,tim_high1,price_high1,tim_low,price_low, tim_high, price_high);
   else
      删除物件(0,fbkz);
  }
//+------------------------------------------------------------------+
void 新图形类::get_object_names(string &object_names[],ENUM_OBJECT obj_type=OBJ_RECTANGLE,int chart=0,int subwin=0)
  {
   int objtotals = ObjectsTotal(chart,subwin,obj_type);
   ArrayResize(object_names,objtotals);
   for(int i=objtotals-1, j=0; i>=0; i--)
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
int 新图形类::get_obj_orders(ENUM_OBJECT obj_type,string obj_name_find)
  {
   int cnt= 0;
   for(int i=0; i<ObjectsTotal(0,0,obj_type); i++)
     {
      string obj_name = ObjectName(0,i,0,obj_type);
      if(StringFind(obj_name,obj_name_find)!=-1)
         cnt++;
     }
   return cnt;
  }
//+------------------------------------------------------------------+

#endif
//+------------------------------------------------------------------+
