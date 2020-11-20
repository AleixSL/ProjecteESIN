#include <iostream>
#include "contenidor.hpp"

using namespace std;

int main() {
    contenidor c1("ABCD23", 10);
    contenidor c2("AB53", 20);

    cout << "Longitud c1: " << c1.longitud() << endl;
    cout << "Matricula c1: " << c1.matricula() << endl;
    cout << "Longitud c2: " << c2.longitud() << endl;
    cout << "Matricula c2: " << c2.matricula() << endl;
    
    contenidor c3(c2);
    c2 = c1;
    cout << "Ara c2 = c1" << endl;
    cout << "Longitud c2: " << c2.longitud() << endl;
    cout << "Matricula c2: " << c2.matricula() << endl;
    cout << "Longitud c3: " << c3.longitud() << endl;
    cout << "Matricula c3: " << c3.matricula() << endl;

    cout << "c1 i c2 son iguals: " << (c1 == c2) << endl;
    cout << "c1 i c2 son diferents: " << (c1 != c2) << endl;
}