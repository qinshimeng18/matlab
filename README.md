# matlab
===============================================
  数模校赛
===================================================

###	比赛问题：
> 一个独立的小房间连接着一个太阳能房，太阳能房除了接收太阳光能外没有其他热源。不考虑房间之间门的作用，两个房间之
 间通过热风扇连接，在太阳能房内，有一个温控装置，当房内温度达到业主设定的温度r（比如32度）时，热风扇开始连续工
 作，直到温度降到r-m(m≥0，比如m=7度)停止工作。热风扇通过电能运行，工作时两个房间的空气交换，产生热交换。房间是
 独立的区域，可通过燃气锅炉供热。供热季中，设定室内温度为t（比如5度）时燃气锅炉开始工作，温度为k（比如18度）时
 锅炉停止工作，温度降到t时锅炉再次开始工作。<br/>
    根据房间情况，考虑其热量交换状况，解决以下问题：<br/>
    （1）不考虑房间墙体因素，合理假设燃气及电力成本（比如0.5元/度）、房间几何尺寸及一些其他参数，建立该问题的数
    学模型，并确定最优的热风扇方案。<br/>
    （2）考虑房间墙体等因素的影响，再次考虑上述问题。<br/>
    （3）因城市化等的影响，太阳辐射热的逐渐变化。考虑该变化对结果的影响。<br/>


### 摘要
>本文研究了两个房间在题设条件下的温度变化模型和风扇工作方式，保证满足业主温度要求的条件下，以热风扇和锅炉工作费用最低为目标，确定热风扇的启、停温度，并对房间的温度变化及锅炉、热风扇工作情况进行分析。
我们首先通过能量守恒定律建立热平衡方程，然后求出各个因素分别对房间温度的影响，再通过热平衡条件得到房间温度变化速率的方程，通过计算每时每刻的房间温度。以此判断某时刻及下一时刻锅炉、风扇是否工作，并记录其工作时间，计算系统运行成本M。通过设定不同的风扇启、停温度r、m，得到相应的运行成本M。对r、m在合理区间内的扫描，通过观察使用MATLAB绘制的M=F(r,m)三维图像，逐步减小区间和步长进行逼近计算，最终确定最低成本下的r、m。并以此得到两房间内温度随时间的变化（Ts-t、Ta-t）曲线，分析实际工作状态，解释取得最优解的原因。
对于问题一，我们采用这种迭代温度场模型，设定满足问题一的条件和系数，得到考虑不同因素下风扇的最优解以及此时系统的实际工作状况。绘制M=F（r,m）的三维函数图像以及Ts-t、Ta-t的曲线分析确定最优解及变化趋势。得到在假设条件下，问题一中最优解为r=16.8℃，m=14.9℃，此时M=6.4741元。
对于问题二，我们考虑墙体的保温作用使得散热系数减小，以180粘土砖墙为例，计算锅炉启停温度t=15℃、k=20℃，r=20.0℃时总成本最低，M=5.6905元。并通过M=F（r,m）的三维函数图像及Ts-t、Ta-t曲线分析实际工作状态，解释取得最优解的原因。
对于问题三，我们着重分析了天气变化、城市热岛效应、温室效应、建筑有效光照时长等因素对最优解的影响，及模型在考虑这些因素时的计算方法。
通过比较三个问题，可以发现此模型在考虑更多实际因素之后能更加符合实际结果。


								关键词：能量守恒、热平衡方程、温度场迭代、三维图像绘制、逼近计算

### Coding
        分别用matlab和C++实现。matlab中分为二维和三维图文件夹，即多一个main.m函数。因为用的是大循环所以matlab会
        跑二十分钟左右但c++会在几秒内完成。

![github](https://github.com/qinshimeng18/matlab/blob/master/pics%20of%20%20result/TsTa%E5%9B%BE.PNG)
![github](https://github.com/qinshimeng18/matlab/blob/master/pics%20of%20%20result/%E4%B8%89%E7%BB%B4%E5%9B%BE%E6%B8%85%E6%99%B0%E7%89%881.PNG)
