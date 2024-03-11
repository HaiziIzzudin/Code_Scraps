/******************************************************************************

Welcome to GDB Online.
  GDB online is an online compiler and debugger tool for C, C++, Python, PHP, Ruby, 
  C#, OCaml, VB, Perl, Swift, Prolog, Javascript, Pascal, COBOL, HTML, CSS, JS
  Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
#include <stdio.h>
#include <iostream>
using namespace std;

string salesmanName;
int salesNumber;
float sales;
float totalCommission;
float commission;

void TotalSale() {
    cout << "Insert salesman name: ";
    cin >> salesmanName;
    
    cout << "Input sales number: ";
    cin >> salesNumber;
    
    cout << "Input total sales: ";
    cin >> sales;
}

float CalculateCommission() {
    if (sales < 50) { 
        
        commission = 0;
        
    } else if (sales < 100) { 
        
        commission = 0.10;
        
    } else if (sales < 200) {
        
        commission = 0.15;
        
    } else if (sales > 200) {
        
        commission = 0.20;
        
    }
    return totalCommission = sales * commission;
}

void Display() {
    cout << "\n\nSalesman Name: " << salesmanName << "\n";
    cout << "Sales Number: " << salesNumber << "\n";
    cout << "Total Sales: RM" << sales << "\n";
    cout << "Total Commission Earned: RM" << totalCommission << "\n";
}

int main()
{
    TotalSale();
    CalculateCommission();
    Display();
    return 0;
}
