#include<iostream>
#include<string>
#include<limits>

using namespace std;

template<typename T>
string showDetails() {
   return " digits: " + to_string(numeric_limits<T>::digits) + " min: " + to_string(numeric_limits<T>::min()) + " max: " + to_string(numeric_limits<T>::max()) + '\n';
}

int main(int argc, char *argv[])
{
	cout << "bool - " << showDetails<bool>();
	cout << "char - " << showDetails<char>();
	cout << "unsigned char - " << showDetails<unsigned char>();
	cout << "short - " << showDetails<short>();
	cout << "unsigned short - " << showDetails<unsigned short>();
	cout << "int - " << showDetails<int>();
	cout << "unsigned int - " << showDetails<unsigned int>();
	cout << "long - " << showDetails<long>();
	cout << "unsigned long - " << showDetails<unsigned long>();
	cout << "float - " << showDetails<float>();
	cout << "double - " << showDetails<double>();
	cout << "long double - " << showDetails<long double>();
}

