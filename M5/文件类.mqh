#property copyright "@Π.EA 大树My05613828"
#property link      "https://www.eahub.cn/space-uid-8564.html"
//#property version   "1.0"
//#property  icon     "//include//M5//logo.ico"
#define  _文件类
#ifdef _文件类
class 文件类
  {
private:

public:
                     文件类();
                    ~文件类();

   struct SLine
     {
      string            field[];
     };
     SLine             Array[],array[];
   //+------------------------------------------------------------------+
   int               打开文件(string 文件名,string 间隔符=",");
   bool              文件是否存在(string 文件名,int 位置=0);
   void              复制文件(string 原文件名, string 现文件名,int 起始位置=0,int 结束位置=FILE_COMMON);
   bool              移动文件(string 原文件名, string 现文件名,int 起始位置=0,int 结束位置=FILE_COMMON);
   string            重写文件(string 文件名,int 替换某行=0);
   void              删除文件(int 位置=0,string 文件名称1="",string 文件名称2="",string 文件名称3="",string 文件名称4="",string 文件名称5="",string 文件名称6="",string 文件名称7="",string 文件名称8="",string 文件名称9="");
   string            TmpFileName(string Name,string Ext);

   void              读取文件(int hd);
   bool              文件非空判断(int hd);
   void              信息写入文件夹(int hd,int 写入次数,string 写入信息1,string 写入信息2="",string 写入信息3="",string 写入信息4="",string 写入信息5="",string 写入信息6="",string 写入信息7="",string 写入信息8="",string 写入信息9="",string 写入信息10=""
                                           ,string 写入信息11="",string 写入信息12="",string 写入信息13="",string 写入信息14="",string 写入信息15="",string 写入信息16="",string 写入信息17="",string 写入信息18="",string 写入信息19="",string 写入信息20="");

   bool              ReadFileToArray(int hd,string & Lines[]);
   bool              ReadFileToArrayCSV(int hd,SLine & Lines[]);
   string            读取数组内容(int hd,int 数列序号,int field序号, SLine & lines[]);
   string            读取数组内容(int hd,int field序号, SLine & lines[]);
   void              读取数组文件至数组(int hd,SLine & lines[],double &值数组[],int field序号);
   //+------------------------------------------------------------------+
   //+------------------------------------------------------------------+

   template<typename x>
   void              倒序数组(x &传入数组[],bool 是否倒序);
   //---------------
   struct 持仓列表
     {
      long               格治时间;
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
     };
   历史列表      历员;
   历史列表      历表[];
   //+------------------------------------------------------------------+
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
文件类::文件类()
  {
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
文件类::~文件类()
  {
  }
//+------------------------------------------------------------------+
int  文件类::打开文件(string 文件名,string 间隔符=",")
  {
   int hd=FileOpen(文件名+".csv",FILE_READ|FILE_WRITE|FILE_REWRITE|FILE_SHARE_READ|FILE_SHARE_WRITE|FILE_ANSI|FILE_CSV|FILE_COMMON,StringGetCharacter(间隔符,0));
   if(hd==INVALID_HANDLE)
     {
      Print("打开文件错误");
      FileClose(hd);
      return 0;
     }
   return hd;
  }
//+------------------------------------------------------------------+
bool 文件类::文件是否存在(string 文件名,int 位置=0)
  {
   bool 文件是否存在= FileIsExist(文件名+".csv",位置);
   return(文件是否存在);
  }
//+------------------------------------------------------------------+
void 文件类::复制文件(string 原文件名, string 现文件名,int 起始位置=0,int 结束位置=FILE_COMMON)
  {
   if(!FileCopy(原文件名+".csv",起始位置,现文件名+".csv",结束位置|FILE_REWRITE))
      Print("文件复制错误");
  }
//+------------------------------------------------------------------+
string  文件类::重写文件(string 文件名,int 替换某行=0)
  {
   int hd=FileOpen(文件名+".csv",FILE_READ|FILE_ANSI|FILE_CSV);
   string tmpName=TmpFileName(文件名,".csv");
   int tmph=FileOpen(tmpName,FILE_WRITE|FILE_ANSI|FILE_CSV);
   int cnt=0;
   while(!FileIsEnding(hd))
     {
      cnt++;
      string str=FileReadString(hd);
      if(替换某行>0&&cnt==替换某行)
         FileWrite(tmph,"New line-2");
      else
         FileWrite(tmph,str);
     }
   FileClose(tmph);
   FileClose(hd);
   return tmpName;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
bool 文件类::移动文件(string 原文件名, string 现文件名,int 起始位置=0,int 结束位置=FILE_COMMON)
  {
   bool 检测=FileMove(原文件名+".csv",起始位置,现文件名+".csv",结束位置|FILE_REWRITE);
   if(!检测)
      Print("文件移动错误");
   return 检测;
  }
//+------------------------------------------------------------------+
void 文件类::删除文件(int 位置=0,string 文件名称1="",string 文件名称2="",string 文件名称3="",string 文件名称4="",string 文件名称5="",string 文件名称6="",string 文件名称7="",string 文件名称8="",string 文件名称9="")
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
void 文件类::读取文件(int hd)
  {
   Print("=== 读取文件一轮开始 ===");
   while(!FileIsEnding(hd))
     {
      string str=FileReadString(hd);
      Print(str);
      if(FileIsLineEnding(hd))
         Print("=== 读取文件一轮结束 ===");
     }
   FileClose(hd);
  }
///---------------
//+------------------------------------------------------------------
bool 文件类::文件非空判断(int hd)
  {
   bool 非空判断=false;
   while(!FileIsEnding(hd))
     {
      string str=FileReadString(hd);
      if(FileIsLineEnding(hd)&&str!="")
        {
         非空判断=true;
         break;
        }
     }
   FileClose(hd);
   return(非空判断);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void            文件类::  信息写入文件夹(int hd,int 写入次数,string 写入信息1,string 写入信息2="",string 写入信息3="",string 写入信息4="",string 写入信息5="",string 写入信息6="",string 写入信息7="",string 写入信息8="",string 写入信息9="",string 写入信息10=""
      ,string 写入信息11="",string 写入信息12="",string 写入信息13="",string 写入信息14="",string 写入信息15="",string 写入信息16="",string 写入信息17="",string 写入信息18="",string 写入信息19="",string 写入信息20="")
  {
   for(int i=0; i<写入次数 && !IsStopped(); i++) // 尝试若干次
     {
      if(hd!=INVALID_HANDLE)
        {
         FileSeek(hd,0,SEEK_END);
         FileWrite(hd,写入信息1,写入信息2,写入信息3,写入信息4,写入信息5,写入信息6,写入信息7,写入信息8,写入信息9,写入信息10,写入信息11,写入信息12,写入信息13,写入信息14,写入信息15,写入信息16,写入信息17,写入信息18,写入信息19,写入信息20);
        }
     }
   FileClose(hd); // 写入文件
  }
//---------------
//+------------------------------------------------------------------+
string 文件类::TmpFileName(string Name,string Ext)
  {
   string fn=Name+"."+Ext; // 形成名字
   int n=0;
   while(FileIsExist(fn))  // 如果文件存在
     {
      n++;
      fn=Name+IntegerToString(n)+"."+Ext; // 在名字里添加数字
     }
   return(fn);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool 文件类::ReadFileToArrayCSV(int hd,SLine & Lines[])
  {
   ResetLastError();
   if(hd==INVALID_HANDLE)
     {
      int ErrNum=GetLastError();
      printf("读取csv文件至数组 句柄错误 ",ErrNum);
      return(false);
     }
   int lcnt=0; // 计算行数的变量
   int fcnt=0; // 计算行内字段数的变量
   while(!FileIsEnding(hd))
     {
      string str=FileReadString(hd);
      // 新行 (结构数组的新元素)
      if(lcnt>=ArraySize(Lines))  // 结构数组完整填充
        {
         ArrayResize(Lines,ArraySize(Lines)+1024); // 增加 1024 个元素的数组大小
        }
      ArrayResize(Lines[lcnt].field,64);// 改变结构的数组大小
      Lines[lcnt].field[0]=str; // 分配第一个字段值
      // 开始读取行内其它字段
      fcnt=1; // 直到行数组中的一个元素被占用
      while(!FileIsLineEnding(hd))  // 读取行内剩余字段
        {
         str=FileReadString(hd);
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
   FileClose(hd);
   return(true);
  }
//+------------------------------------------------------------------+

template<typename x>
void 文件类::倒序数组(x &传入数组[],bool 是否倒序)
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
bool 文件类::ReadFileToArray(int hd,string & Lines[])
  {
   ResetLastError();
   if(hd==INVALID_HANDLE)
     {
      int ErrNum=GetLastError();
      printf("读取文件至数组错误 ",ErrNum);
      return(false);
     }
   int cnt=0; // 使用变量作为文件行数计数器
   while(!FileIsEnding(hd))
     {
      string str=FileReadString(hd); // 从文件里读取下一行
      // 删除左右两侧的空格, 检测并避免使用空行
      StringTrimLeft(str);
      StringTrimRight(str);
      if(str!="")
        {
         if(cnt>=ArraySize(Lines))  // 数组填充完毕
           {
            ArrayResize(Lines,ArraySize(Lines)+1024); // 增加 1024 个元素的数组大小
           }
         Lines[cnt]=str; // 发送读取的行至数组
         cnt++; // 增加读取行数计数
        }
     }
   ArrayResize(Lines,cnt);
   FileClose(hd);
   return(true);
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
string  文件类::读取数组内容(int hd,int field序号, SLine & lines[])
  {
   string 值="";
   if(ReadFileToArrayCSV(hd,lines))
     {
      倒序数组(lines,true);
      for(int i=0; i<ArraySize(lines); i++)
        {
         for(int j=0; j<ArraySize(lines[i].field); j++)
            值=lines[i].field[field序号];
        }
     }
   return(值);
  }
//+------------------------------------------------------------------+//+------------------------------------------------------------------+
string  文件类::读取数组内容(int hd,int 数列序号,int field序号, SLine & lines[])
  {
   string 值="";
   if(ReadFileToArrayCSV(hd,lines))
     {
      倒序数组(lines,true);
      值=lines[数列序号].field[field序号];
     }
   return(值);
  }
//+------------------------------------------------------------------+
void  文件类::读取数组文件至数组(int hd,SLine & lines[],double &值数组[],int field序号)
  {
   if(ReadFileToArrayCSV(hd,lines))
     {
      倒序数组(lines,true);
      for(int i=0; i<ArraySize(lines); i++)
        {
         for(int j=0; j<ArraySize(lines[i].field); j++)
            值数组[i]=(double)lines[i].field[field序号];
        }
     }
  }
//+------------------------------------------------------------------+
#endif 