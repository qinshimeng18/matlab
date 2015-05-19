#include<iostream>
using namespace std;

double ts[43200];
double ta[43200];
int t0 = 5;
double w = 3.1415 / (12 * 3600);
int flags = 0, flaga = 0;
double dys=0, dya=0;
int time = 43200;
int times=0, timea=0;
double r=0, m=0, h=15, k=20;
double money;
double guolu = 0.21285;
double ys(int t, double ts, double ta){
	if (flags==1){
		return 0.185*sin(w*t) - 0.007*(ts - t0) - 0.00129*8 * (ts - ta);
	}
	else{
		double aa = 0.185*sin(w*t) - 0.007*(ts - t0);
		return aa;
	}
}
double ya(int t, double ts, double ta){
	if (flags == 0 && flaga == 0){
		return -0.01*(ta - t0);
	}
	else if (flags == 1 && flaga == 0){
		return -0.01*(ta - t0) + 0.00387*8*(ts - ta);
	}
	else if (flags == 0 && flaga == 1){
		return -0.01*(ta - t0) + guolu;
	}
	else if (flags == 1 && flaga == 1){
		return -0.01*(ta - t0) + guolu + 0.00387*8 * (ts - ta);
	}
}
void isflag_s(int t){
	if (flags == 1){
		flags = (ts[t]<r) ? 0 : 1;
		times++;
	}
	else
		flags = (ts[t]>m) ? 1 : 0;

}
void isflag_a(int t){
	if (flaga == 1){

		flaga = (ta[t]>k) ? 0 : 1;
		timea++;
	}
	else
		flaga = (ta[t]<=h) ? 1 : 0;
}

int main(){
	for (double s1 = 10; s1 <= 30; s1+=1){
		for (double s2 = 12; s2 <= 30; s2+=1){
			ts[0] = 5;
			ta[0] = 18;
			r = s1;
			m = s2;
			times = 0;
			timea = 0;
			for (int t = 0; t < time; t++){
				isflag_s(t);
				isflag_a(t);
				dys = ys(t, ts[t], ta[t]);
				dya = ya(t, ts[t], ta[t]);
				//cout << "dys" << dys << "  dya" << dya<<endl;
				ts[t + 1] = ts[t] + dys;
				ta[t + 1] = ta[t] + dya;
				//cout << "ts"<<ts[t]  <<"  ta"<< ta[t]<<endl;
				//cout <<"t: "<<t<< "   ts:" << ts[t] << "  ta:" << ta[t] << "   times:" << times << "  timea:" << timea<<"|||"<<flags<<flaga<<endl;
			}
			money = timea*5.5 / 35700 * 2.2 + times*0.8 / 3600 * 0.5;
			cout <<"ta:"<< timea << "  ts:" << times<<"| |"<<r<<"/"<<m<<"  money: "<<money<< endl;
		}
	}

		cin >> times;
}