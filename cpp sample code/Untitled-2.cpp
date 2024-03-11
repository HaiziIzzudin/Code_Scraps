/******************************************************************************

Welcome to GDB Online.
  GDB online is an online compiler and debugger tool for C, C++, Python, PHP, Ruby, 
  C#, OCaml, VB, Perl, Swift, Prolog, Javascript, Pascal, COBOL, HTML, CSS, JS
  Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
#include <stdio.h>
#include <iostream>
using namespace std;

int choices;
string twoWayOptions;
float ticketPrice;
string placeToGo;
int multiplier;
string continueChoices = "y";
int userCount = 0;
float totalAfterMultiply;
int i;
float totalSales;

void menuDisplay() {
    cout << "\nWELCOME TO ERL TICKETING SYSTEM\n";
    cout << "1. Kuala Lumpur          RM2.00\n";
    cout << "2. Putrajaya             RM2.80\n";
    cout << "3. Cyberjaya             RM2.50\n\n";
    cout << "Please enter your destination code [1,2,3]: ";
    cin >> choices;
    
    cout << "Do you want to purchase a two-way ticket? [y/n]: ";
    cin >> twoWayOptions;
    
    if (choices == 1) {
        placeToGo = "KUALA LUMPUR";
        ticketPrice = 2.00;
    }
    else if (choices == 2) {
        placeToGo = "PUTRAJAYA";
        ticketPrice = 2.80;
    }
    else if (choices == 3) {
        placeToGo = "CYBERJAYA";
        ticketPrice = 2.50;
    }
    
    
    if (twoWayOptions == "y") {
        twoWayOptions = "two-way";
        multiplier = 2;
    }
    else {
        twoWayOptions = "one-way";
        multiplier = 1;
    }
}

void displayOutput() {
    cout << "\n________________________________________________";
    cout << "\n                Express Rail Link";
    cout << "\n------------------------------------------------";
    
    cout << "\nThis is a " << twoWayOptions << " ticket to " << placeToGo;
    
    totalAfterMultiply = ticketPrice * multiplier;
    
    cout << "\nPrice : RM " << totalAfterMultiply;
    cout << "\nThank You!";
    
    cout << "\n\nDo you want to continue using the system? [y/n]: ";
    cin >> continueChoices;
    
}


int main() {
    while (continueChoices == "y") {
        menuDisplay();
        displayOutput();
        
        i++;
        totalSales = totalSales + totalAfterMultiply;
    }
    
    cout << "\nTotal user count: " << i;
    cout << "\nTotal sales of the day: RM" << totalSales;
    
}



