//+------------------------------------------------------------------+
//|                                                    M4ZB 持仓信息.mq4 |
//|                                  Copyright 2024, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "江苏鑫起点信息技术服务有限公司@大树My05613828"
#property link      "https://www.eahub.cn/space-uid-8564.html"
#property version   "1.0"
#property  icon     "//include//M5//logo.ico"
#property indicator_chart_window
#property indicator_plots 0
#include <m4/position_information.mqh>
position_information pi(0,100);
#include <M4/指标类.mqh>
指标类 指标;
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
  // 指标.授权模拟();
   EventSetMillisecondTimer(100);
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
   EventKillTimer();
  }
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

//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
//| Timer function                                                   |
//+------------------------------------------------------------------+
void OnTimer()
  {
//---
   pi.持仓信息();
  }
//+------------------------------------------------------------------+
