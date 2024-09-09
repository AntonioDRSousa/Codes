#include<iostream>
#include<complex>
#include<vector>
using namespace std;

int main(){
	double d1 = 2.3;
	double d2 {2.3};
	
	complex<double> z1 = 1;
	complex<double> z2 {d1,d2};
	complex<double> z3 = {d1,d2};
	
	cout << d1 << "\n";
	cout << d2 << "\n";
	cout << z1 << "\n";
	cout << z2 << "\n";
	cout << z3 << "\n";
	
	vector<int> v {1,2,3,4,5,6};
	
	auto b = true;
	auto ch = 'x';
	auto i = 123;
	auto d = 1.2;
	
	const double pi = 3.14159;
	//constexpr double tau = 2*pi; 
}