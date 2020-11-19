#include <iostream>
#include "ubicacio.hpp"

using namespace std;

int main() {
    ubicacio u1(1, 2 ,3);
    ubicacio u2(1, 1, 1);
    ubicacio u3(1, 1, 1);
    ubicacio u4(7, 7, 7);
    ubicacio u5(7, 5, 7);
    
    cout << "Ubicació u2 és igual a u3: " << (u2 == u3)<< endl;
    cout << "Ubicació u1 és diferent a u3: " << (u1 != u3) << endl;
    cout << "Ubicació u1 és més gran que u2: " << (u1 > u2) << endl;
    cout << "Ubicació u1 és més gran o igual que u2: " << (u1 >= u2) << endl;
    cout << "Ubicació u2 és més petit que u1: " << (u2 < u1) << endl;
    cout << "Ubicació u2 és més petit o igual que u1: " << (u2 <= u1) << endl;

    ubicacio u6(u1);
    cout << "Filera u6: " << u6.filera() << endl;
    cout << "Placa u6: " << u6.placa() << endl;
    cout << "Pis u6: " << u6.pis() << endl;

    ubicacio u7(-1, 0, 0);
    ubicacio u8(-1, -1,-1);
    ubicacio u9(-2, -3, -5);
}