#include<iostream>
#include"koolplot.h"
using namespace std;

class graph
{
	public:
	graph()
	{
		double p,P,s,x1;
		int c;
		double arr[8],c_arr[8];
		double formula;
		for (int i=0; i<8; i++){
			cout<<"\n\tPlease Enter the value "<<i+1<<" of Praportion of parallel process:- ";
			cin>>p;
			cout<<"\n\tPlease Enter the number of cores:- ";
			cin>>c;
			P = p/100;
			s =  1-P;
			x1 = P / c;
			cout<<"\n\tPraportion of series process:- "<<s*100<<" % \n";
			formula = 1/(s+x1);
			arr[i] = formula;
			c_arr[i] = c;
		}
	     
		cout<<"\n\n\tTherefore the speed of process for "<<c<<" cores will be "<<formula<<" \n\n";
		cout<<"\t And the array of speeds of processes = ";
		for (int i=0;i<8;i++){
			plotdata x = arr[i];
			plotdata y = c_arr[i] ;
			plot(x,y);
		}
	}		
};

int main()
{
	graph obj;
	return 0;
}
