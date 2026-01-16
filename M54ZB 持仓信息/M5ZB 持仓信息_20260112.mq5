//+------------------------------------------------------------------+
//|                                        M4ZB 单币种持仓信息_20260112.mq4 |
//|                                  Copyright 2026, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "@江苏宇桐科技"
#property link      "https://b23.tv/V7EZfe6"
#property version   "1.0"
#property  icon     "//include//M5//ytkj.ico"
#include <m5/持信类.mqh>
持信类* 持信;

enum mode_choose
  {
   symbol,
   symbols

  };
input mode_choose mode_chooses =symbol;
#property strict
#property indicator_chart_window
#property indicator_plots 0
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+-----------------------------------------------------------------+
/*
string address = "8.218.249.59";
ushort port_ = 80;
#include <M5/dll_tcp网络类.mqh>
dll_tcp网络类* tp = new dll_tcp网络类(address,port_,"ZB","M5ZB orders_information");
*/
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int OnInit()
  {
//---

//--- indicator buffers mapping
   if(mode_chooses ==symbol)
      持信 =   new 持信类(Symbol(),2);
   if(mode_chooses ==symbols)
      持信 =  new 持信类(0,100);
   //tp.EAZB_oninit(true);
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
   delete 持信;
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
  {
//---
   if(mode_chooses ==symbol)
      持信.持仓信息(3);
   if(mode_chooses ==symbols)
      持信.持仓信息();
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
