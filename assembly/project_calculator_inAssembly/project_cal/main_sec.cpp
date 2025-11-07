#include <stdio.h>
#include <iostream>
#include <stdint.h>
#include <string>
#include <math.h>


using namespace std;

//zmienne

//funkcje assemblerowe
extern "C" int64_t addd(int64_t a, int64_t b);
extern "C" int64_t subb(int64_t a, int64_t b);
extern "C" int64_t mltply(int64_t a, int64_t b); //multiply integer values
extern "C" int64_t divide(int64_t a, int64_t b); //divide integer values
extern "C" int64_t expo(int64_t a, int64_t b); //exponentiate integer values
extern "C" int64_t modulo(int64_t a, int64_t b); //modulo integer values
extern "C" int64_t silnia(int64_t a); //silnia integer values

//funkcje dla dużych liczb
extern "C" void addBig(int a[], int b[], int sizeA, int sizeB);
extern "C" void subBig(int a[], int b[], int sizeA, int sizeB);
extern "C" void mulBig(int a[], int b[], int sizeA, int sizeB, int result[]);

//funkcje C
int* stringToArray(string liczba, int* number, int size); //zwraca wskaźnik na tablicę z liczbą
char wprowadz_znak(); //zwraca znak
void addBigNumbers(int a[], int b[], int sizeA, int sizeB, bool sa, bool sb);
void subbBigNumbers(int a[], int b[], int sizeA, int sizeB, bool sa, bool sb);
bool checkIfNumberIsBigger(int a[], int b[], int sizeA, int sizeB);
void mulBigNumbers(int a[], int b[], int sizeA, int sizeB, bool sa, bool sb);
void deleteSign(string &num);
bool isNegative(string num);
void displayNumber(int a[], int size);

//funkcja wykonaj obliczenia
int* calculate(char operation, int a[], int b[], int sizeA, int sizeB, bool sa, bool sb);

int main() {

    bool end = false;

    while(!end){
    int* numA = nullptr;
    int* numB = nullptr;
   
   string num1;
   printf("Podaj liczbe: ");
   cin >> num1;
   string copy1 = num1;
   
   char operation = wprowadz_znak();
   string num2;
   
   
   printf("Podaj liczbe: ");
   cin >> num2;
   string copy2 = num2;

    deleteSign(num1);
    deleteSign(num2);

   int size_of_result = num1.length() + num2.length();
   
   numA = stringToArray(num1, numA, size_of_result);
   numB = stringToArray(num2, numB, size_of_result);


  calculate(operation, numA, numB, num1.length(), num2.length(), isNegative(copy1), isNegative(copy2));

    printf("Czy chcesz kontynuować? (t/n): ");
    char c;
    cin >> c;
    if(c == 'n'){
        end = true;
    }
    }


    return 0;
}


//liczenie wyniku
int* calculate(char operation, int a[], int b[], int sizeA, int sizeB, bool sa, bool sb){
    
    switch(operation){
        case '+':
            addBigNumbers(a, b, sizeA, sizeB, sa, sb);
                break;
        
        case '-':
            subbBigNumbers(a, b, sizeA, sizeB, sa, sb);
            break;

        case '*':
            
            mulBigNumbers(a, b, sizeA, sizeB, sa, sb);
            break;

        case '/':
        
            break;
        case '%':
        
            break;
        case '^':
        
            break;
        case '!':
            
            break;
        default:
            cout << "Nieznane działanie" << endl;
            break;
    }
    return a;
}

char wprowadz_znak(){
    char operation;
    printf("Podaj dzialanie: ");
    cin >> operation;
    return operation;
}


int* stringToArray(string liczba, int* number, int size){
    number = new int[size];
    
    
    for (int i = 0; i < liczba.length(); i++)
    {
        number[i+(size - liczba.length())] = stoll(liczba.substr(i, 1));
    }


    return number; 
}

void addBigNumbers(int a[], int b[], int sizeA, int sizeB, bool sa, bool sb){
    cout << endl;
    if( sa!=true && sb!=true){
        addBig(a, b, sizeA, sizeB);
         displayNumber(a, sizeA+sizeB);

    } 
    else if(sa==true && sb==true){
        
        addBig(a, b, sizeA, sizeB);
        cout << "-";
        displayNumber(a, sizeA+sizeB);

    }else if(checkIfNumberIsBigger(a, b, sizeA, sizeB) && sa==true && !sb==true){
        subBig(a, b, sizeA, sizeB);
        cout << "-";
       displayNumber(a, sizeA+sizeB);

    } else if(checkIfNumberIsBigger(a, b, sizeA, sizeB) && !sa==true && sb==true){
        subBig(a, b, sizeA, sizeB);
     displayNumber(a, sizeA+sizeB);
    

    } else if(!checkIfNumberIsBigger(a, b, sizeA, sizeB) && sa==true && !sb==true){
        subBig(b, a, sizeB, sizeA);
        displayNumber(b, sizeA+sizeB);

    } else if(!checkIfNumberIsBigger(a, b, sizeA, sizeB) && !sa==true && sb==true){
        subBig(b, a, sizeB, sizeA);
        cout << "-";
    displayNumber(b, sizeA+sizeB);
    
    };
   
    cout << endl;
}
void subbBigNumbers(int a[], int b[], int sizeA, int sizeB, bool sa, bool sb){

    if(checkIfNumberIsBigger(a, b, sizeA, sizeB) && sa!=true && sb!=true){
        subBig(a, b, sizeA, sizeB);
        displayNumber(a, sizeA+sizeB);
    }
    else if(checkIfNumberIsBigger(a, b, sizeA, sizeB) && sa==true && sb==true){
        addBig(a, b, sizeA, sizeB);
        cout << "-";
        displayNumber(a, sizeA+sizeB);
    }
    else if(!checkIfNumberIsBigger(a, b, sizeA, sizeB) && sa!=true && sb!=true){
        subBig(b, a, sizeB, sizeA);
        cout << "-";
        displayNumber(b, sizeA+sizeB);
    }
    else if(!checkIfNumberIsBigger(a, b, sizeA, sizeB) && sa==true && sb==true){
        subBig(b, a, sizeB, sizeA);
        cout << "-";
        displayNumber(b, sizeA+sizeB);
    }else if(checkIfNumberIsBigger(a, b, sizeA, sizeB) && sa==true && !sb==true){
        addBig(a, b, sizeA, sizeB);
        cout << "-";
        displayNumber(a, sizeA+sizeB);
    } else if(checkIfNumberIsBigger(a, b, sizeA, sizeB) && !sa==true && sb==true){
        addBig(a, b, sizeA, sizeB);
        displayNumber(a, sizeA+sizeB);
    } else if(!checkIfNumberIsBigger(a, b, sizeA, sizeB) && sa==true && !sb==true){
        addBig(b, a, sizeB, sizeA);
        cout << "-";
        displayNumber(b, sizeA+sizeB);
    } else if(!checkIfNumberIsBigger(a, b, sizeA, sizeB) && !sa==true && sb==true){
        addBig(b, a, sizeB, sizeA);
        displayNumber(b, sizeA+sizeB);
    }

        
}

bool checkIfNumberIsBigger(int a[], int b[], int sizeA, int sizeB){
    if(sizeA > sizeB){
        return true;
    } else if(sizeA < sizeB){
        return false;
    } else {
       if(a[sizeA] > b[sizeB]){
           return true;
       } else {
           return false;
       }
    }

}

void mulBigNumbers(int a[], int b[], int sizeA, int sizeB, bool sa, bool sb){
    int c[sizeA+sizeB]={0};
    cout << endl;
    
    if(sa==true && sb==true || sa!=true && sb!=true){
    }
    else{
        cout << "-";
    }

    if(checkIfNumberIsBigger(a, b, sizeA, sizeB)){
        mulBig(a, b, sizeA, sizeB, c);

    }else{
        mulBig(a, b, sizeA, sizeB, c);
    }
    displayNumber(c, sizeA+sizeB);
    cout << endl;
}
    

void deleteSign(string &num){
    if(num[0] == '-'){
        num.erase(0, 1);
    }
}
bool isNegative(string num){
    if(num[0] == '-'){
    
        return true;
    }
    return false;
}

void displayNumber(int a[], int size) {
    bool leadingZero = true; // Flag to handle leading zeros

    for (int i = 0; i < size; ++i) {
        if (leadingZero && a[i] == 0) {
            continue; 
        }
        leadingZero = false; 
        cout << a[i];
    }

    if (leadingZero) {
        cout << '0'; 
    }
    
    cout << endl;
}

