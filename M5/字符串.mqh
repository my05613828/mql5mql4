#property copyright "@Π.EA 大树My05613828"
#property link      "https://www.eahub.cn/space-uid-8564.html"
//#property version   "1.0"
//#property  icon     "//include//M5//logo.ico"
#define  _字符串
#ifdef _字符串
class 字符串
  {
public:
                     字符串();
                    ~字符串();
   int               StringSplitTrim(string str_from,ushort delimiter,string &array[]);
   int               StringToArray(string str_from,string &array[],string delimiter=",");
   int               StringToArray(string str_from,int &array[],string delimiter=",");
   int               StringToArray(string str_from,double &array[],string delimiter=",");
   ENUM_TIMEFRAMES   StringToPeriod(string str_tf);
   string            PeriodToString(int tf=PERIOD_CURRENT);
   string            Trim(string Str);
   string            PeriodToString(ENUM_TIMEFRAMES tf=PERIOD_CURRENT);
   int               StringFindRev(string Str,string Find);
   string            TrimL(string Str,string List="\t\n ;");
   string            TrimR(string Str,string List="\t\n ;");
   int               ParamsToArray(string Str,double &Params[]);
   void              NotifyOnOff(string Str,int &Shift,bool &Alerts,bool &Sounds,bool &EMail,bool &Push);
   void              周期数组(ENUM_TIMEFRAMES &周期数组[]);
private:
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
字符串::字符串()
  {
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
字符串::~字符串()
  {
  }
//+------------------------------------------------------------------+
int 字符串::StringSplitTrim(string str_from,ushort delimiter,string &array[])
  {
   int size=StringSplit(str_from,delimiter,array);
//---
   if(size>0 && array[size-1]=="")
     {
      size --;
      ArrayResize(array,size);
     }
//---
   return(size);
  }
//+------------------------------------------------------------------+
//| StringToArray (string)
//+------------------------------------------------------------------+
int 字符串::StringToArray(string str_from,string &array[],string delimiter=",")
  {
   return(StringSplitTrim(str_from, StringGetCharacter(delimiter, 0), array));
  }
//+------------------------------------------------------------------+
//| StringToArray (int)
//+------------------------------------------------------------------+
int 字符串::StringToArray(string str_from,int &array[],string delimiter=",")
  {
   string str_array[];
   int size=StringSplitTrim(str_from,StringGetCharacter(delimiter,0),str_array);
//---
   if(size>0)
     {
      ArrayResize(array,size);
      for(int s=0; s<size; s++)
         array[s]=(int)StringToInteger(str_array[s]);
     }
//---
   return(size);
  }
//+------------------------------------------------------------------+
//| StringToArray (double)
//+------------------------------------------------------------------+
int 字符串::StringToArray(string str_from,double &array[],string delimiter=",")
  {
   string str_array[];
   int size=StringSplitTrim(str_from,StringGetCharacter(delimiter,0),str_array);
//---
   if(size>0)
     {
      ArrayResize(array,size);
      for(int s=0; s<size; s++)
         array[s]=StringToDouble(str_array[s]);
     }
//---
   return(size);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
ENUM_TIMEFRAMES 字符串::StringToPeriod(string str_tf)
  {
   if(str_tf == "M1")
      return(PERIOD_M1);
   if(str_tf == "M2")
      return(PERIOD_M2);
   if(str_tf == "M3")
      return(PERIOD_M3);
   if(str_tf == "M4")
      return(PERIOD_M4);
   if(str_tf == "M5")
      return(PERIOD_M5);
   if(str_tf == "M6")
      return(PERIOD_M6);
   if(str_tf == "M10")
      return(PERIOD_M10);
   if(str_tf == "M12")
      return(PERIOD_M12);
   if(str_tf == "M15")
      return(PERIOD_M15);
   if(str_tf == "M20")
      return(PERIOD_M20);
   if(str_tf == "M30")
      return(PERIOD_M30);
//---
   if(str_tf == "H1")
      return(PERIOD_H1);
   if(str_tf == "H2")
      return(PERIOD_H2);
   if(str_tf == "H3")
      return(PERIOD_H3);
   if(str_tf == "H4")
      return(PERIOD_H4);
   if(str_tf == "H6")
      return(PERIOD_H6);
   if(str_tf == "H8")
      return(PERIOD_H8);
   if(str_tf == "H12")
      return(PERIOD_H12);
//---
   if(str_tf == "D1")
      return(PERIOD_D1);
   if(str_tf == "W1")
      return(PERIOD_W1);
   if(str_tf == "MN1")
      return(PERIOD_MN1);
//---
   return(PERIOD_CURRENT);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
#ifdef __MQL4__
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void 字符串::周期数组(ENUM_TIMEFRAMES &周期数组[])
  {
   ArrayResize(周期数组,19);
   周期数组[0]=PERIOD_M1;
   周期数组[1]=PERIOD_M5;
   周期数组[2]=PERIOD_M15;
   周期数组[3]=PERIOD_M30;
   周期数组[4]=PERIOD_H1;
   周期数组[5]=PERIOD_H4;
   周期数组[6]=PERIOD_D1;
  }
//+------------------------------------------------------------------+
string 字符串::PeriodToString(int tf=PERIOD_CURRENT)
  {
   if(tf==PERIOD_CURRENT)
      tf=_Period;
//---
   switch(tf)
     {
      case PERIOD_M1:
         return("M1");
      case PERIOD_M2:
         return("M2");
      case PERIOD_M3:
         return("M3");
      case PERIOD_M4:
         return("M4");
      case PERIOD_M5:
         return("M5");
      case PERIOD_M6:
         return("M6");
      case PERIOD_M10:
         return("M10");
      case PERIOD_M12:
         return("M12");
      case PERIOD_M15:
         return("M15");
      case PERIOD_M20:
         return("M20");
      case PERIOD_M30:
         return("M30");
      //---
      case PERIOD_H1:
         return("H1");
      case PERIOD_H2:
         return("H2");
      case PERIOD_H3:
         return("H3");
      case PERIOD_H4:
         return("H4");
      case PERIOD_H6:
         return("H6");
      case PERIOD_H8:
         return("H8");
      case PERIOD_H12:
         return("H12");
      //---
      case PERIOD_D1:
         return("D1");
      case PERIOD_W1:
         return("W1");
      case PERIOD_MN1:
         return("MN1");
     }
//---
   return("M" + (string)tf);
  }
#endif
//---
#ifdef __MQL5__
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
string 字符串::PeriodToString(ENUM_TIMEFRAMES tf=PERIOD_CURRENT)
  {
   if(tf==PERIOD_CURRENT)
      tf=_Period;
//---
   switch(tf)
     {
      case PERIOD_M1:
         return("M1");
      case PERIOD_M2:
         return("M2");
      case PERIOD_M3:
         return("M3");
      case PERIOD_M4:
         return("M4");
      case PERIOD_M5:
         return("M5");
      case PERIOD_M6:
         return("M6");
      case PERIOD_M10:
         return("M10");
      case PERIOD_M12:
         return("M12");
      case PERIOD_M15:
         return("M15");
      case PERIOD_M20:
         return("M20");
      case PERIOD_M30:
         return("M30");
      //---
      case PERIOD_H1:
         return("H1");
      case PERIOD_H2:
         return("H2");
      case PERIOD_H3:
         return("H3");
      case PERIOD_H4:
         return("H4");
      case PERIOD_H6:
         return("H6");
      case PERIOD_H8:
         return("H8");
      case PERIOD_H12:
         return("H12");
      //---
      case PERIOD_D1:
         return("D1");
      case PERIOD_W1:
         return("W1");
      case PERIOD_MN1:
         return("MN1");
     }
//---
   return("");
  }
#endif
//----https://www.mql5.com/zh/articles/585  网址说明
//+------------------------------------------------------------------+
//| Deleting spaces at the ends of the string                        |
//+------------------------------------------------------------------+
string 字符串::Trim(string Str)
  {
   StringTrimLeft(Str);
   StringTrimRight(Str);
   return(Str);
  }
//+------------------------------------------------------------------+
//| Searching for a substring starting from the end of the string    |
//+------------------------------------------------------------------+
int 字符串::StringFindRev(string Str,string Find)
  {
//--- the pos variable for the returned value
   int pos;
//--- auxiliary variable initialized to -1,
//--- in case the substring is not found in the string
   int tmp=-1;
//--- loop. It will be executed at least once
   do
     {
      //--- assign the last known position of the substring
      pos=tmp;
      //--- continue searching (using the third parameter of the function)
      tmp=StringFind(Str,Find,tmp+1);
     }
   while(tmp!=-1); // If the substring is not found in the remaining part of the string, the loop
// is terminated and the pos variable stores the last
// known position
//--- return the position
   return(pos);
  }
//+------------------------------------------------------------------+
//| Deleting elements from the left end of the string according to the specified list|
//+------------------------------------------------------------------+
string 字符串::TrimL(string Str,string List="\t\n ;")
  {
//--- variable for one character of the Str string
   string ch;
   int Len=StringLen(Str);
   int i=0;
//--- loop iteration over all characters of the Str string
   for(; i<Len; i++)
     {
      //--- the next character of the Str string
      ch=StringSubstr(Str,i,1);
      //--- if this character is not on the List list, the string should start from this position
      if(StringFind(List,ch,0)==-1)
        {
         break; // terminate the loop
        }
     }
//--- get the substring and return it
   return(StringSubstr(Str,i));
  }
//+------------------------------------------------------------------+
//| Deleting elements from the right end of the string according to the specified list|
//+------------------------------------------------------------------+
string 字符串::TrimR(string Str,string List="\t\n ;")
  {
//--- variable for one character of the Str string
   string ch;
   int Len=StringLen(Str);
//--- characters in the string are numbered from 0, so the last character index is one less than the string length
   int i=Len-1;
//--- loop iteration over all characters of the Str string
   for(; i>=0; i--)
     {
      //--- the next character of the Str string
      ch=StringSubstr(Str,i,1);
      //--- if this character is not on the List list, the string should start from this position
      if(StringFind(List,ch,0)==-1)
        {
         break; // terminate the loop
        }
     }
//--- get the substring and return it
   return(StringSubstr(Str,0,i+1));
  }
//+------------------------------------------------------------------+
//| Converting the string with the ";" separator to an array of the double type|
//+------------------------------------------------------------------+
int 字符串::ParamsToArray(string Str,double &Params[])
  {
//--- delete spaces at the ends
   StringTrimLeft(Str);
   StringTrimRight(Str);
//--- if the string is empty
   if(StringLen(Str)==0)
     {
      ArrayFree(Params); // free the array
      return(0);         // function operation complete
     }
//--- auxiliary array
   string tmp[];
//--- split the string
   int size=StringSplit(Str,';',tmp);
//--- delete spaces at the ends for each element of the array
   for(int i=0; i<size; i++)
     {
      StringTrimLeft(tmp[i]);
      StringTrimRight(tmp[i]);
     }
//--- delete empty elements from the array (user could accidentally
//--- put the separator two times in a row or at the end of the string)
   for(int i=size-1; i>=0; i--)
     {
      if(StringLen(tmp[i])==0)
        {
         ArrayCopy(tmp,tmp,i,i+1);
         size--; // array size reduced
        }
     }
//--- scale the array according to the new size
   ArrayResize(tmp,size);
//--- replace commas with dots
   for(int i=0; i<size; i++)
     {
      StringReplace(tmp[i],",",".");
     }
//--- prepare the array to be returned
   ArrayResize(Params,size);
//--- convert all elements to the double type and fill the array to be returned
   for(int i=0; i<size; i++)
     {
      Params[i]=StringToDouble(tmp[i]);
     }
//--- the function returns the number of parameters
   return(size);
  }
//+------------------------------------------------------------------+
//| Enabling notifications in a string                               |
//+------------------------------------------------------------------+
void 字符串::NotifyOnOff(string Str,int &Shift,bool &Alerts,bool &Sounds,bool &EMail,bool &Push)
  {
//--- Convert the string to lower case to allow the user
//--- to use both lowercase and uppercase characters.
   StringToLower(Str);
//--- search for characters in the string
   Alerts=(StringFind(Str,"a")!=-1);    // "a" found
   Sounds=(StringFind(Str,"s")!=-1);    // "s" found
   EMail=(StringFind(Str,"e")!=-1);     // "e" found
   Push=(StringFind(Str,"p")!=-1);      // "p" found
//--- search for zero
   if(StringFind(Str,"0")!=-1)
      Shift=0; // "0" found in the string
   else
      Shift=1; // by default
  }
//+------------------------------------------------------------------+
void 字符串::周期数组(ENUM_TIMEFRAMES &周期数组[])
  {
   ArrayResize(周期数组,19);
   周期数组[0]=PERIOD_M1;
   周期数组[1]=PERIOD_M2;
   周期数组[2]=PERIOD_M3;
   周期数组[3]=PERIOD_M4;
   周期数组[4]=PERIOD_M5;
   周期数组[5]=PERIOD_M6;
   周期数组[6]=PERIOD_M10;
   周期数组[7]=PERIOD_M12;
   周期数组[8]=PERIOD_M15;
   周期数组[9]=PERIOD_M20;
   周期数组[10]=PERIOD_M30;
   周期数组[11]=PERIOD_H1;
   周期数组[12]=PERIOD_H2;
   周期数组[13]=PERIOD_H3;
   周期数组[14]=PERIOD_H4;
   周期数组[15]=PERIOD_H6;
   周期数组[16]=PERIOD_H8;
   周期数组[17]=PERIOD_H12;
   周期数组[18]=PERIOD_D1;
  }
//+------------------------------------------------------------------+
#endif 