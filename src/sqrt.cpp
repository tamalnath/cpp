#include<iostream>
#include<cmath>

using namespace std;

int main(int argc, char *argv[])
{
	float n;
	if (argc == 1)
	{
		cout << "Enter a number: ";
		cin >> n;
		cout << "Square root of " << n << " is " << sqrt(n) << endl;
	}
	else
	{
		for (int i = 1; i < argc; i++)
		{
			n = stof(argv[i]);
			cout << "Square root of " << n << " is " << sqrt(n) << endl;
		}
	}
}

