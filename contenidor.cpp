#include "contenidor.hpp"

using namespace std;
/* Constructora. Crea un contenidor amb matrícula m i longitud l.
    Es produeix un error si m no és una seqüència de un o més caràcters,
    formada exclusivament per lletres majúscules i dígits,
    o si l no pertany a {10, 20, 30} */
contenidor::contenidor(const string &m, nat l) throw(error) {
    int i = 0, mida = m.length();
    bool esNum = true, esMaj = true, correcte = true;
    while(i < mida and correcte) {
        esMaj = (int)m[i] >= 65 and (int)m[i] <= 90;
        esNum = (int)m[i] >= 48 and (int)m[i] <= 57;
        correcte = esNum or esMaj;
        ++i;
    }
    if(correcte) {
        if(l == 10 or l == 20 or l == 30) {
            _matr = m;
            _l = l;
        }
        else throw error(LongitudIncorrecta);
    }
    else throw error(MatriculaIncorrecta);
}

/* Constructora per còpia, assignació i destructora. */
contenidor::contenidor(const contenidor &u) throw(error) {
    _matr = u._matr;
    _l = u._l;
}
contenidor& contenidor::operator=(const contenidor &u) throw(error) {
    if(this != &u) {
        _matr = u._matr;
        _l = u._l;
    }
    return *this;
}
contenidor::~contenidor() throw() {}

/* Consultors. Retornen respectivament la longitud i la matrícula del
    contenidor. */
nat contenidor::longitud() const throw() {
    return _l;
}
string contenidor::matricula() const throw() {
    return _matr;
}

/* Operadors de comparació. L'operador d'igualtat retorna cert si i
    només si els dos contenidors contenen la mateixa matrícula i longitud.
    L'operador menor retorna cert si i només si la matrícula del
    paràmetre implícit es més petit en ordre alfabètic que la c o si les
    dues matrícules són iguals i la longitud del paràmetre implícit és més
    petita que la de c. La resta d'operadors es defineixen consistentment
    respecte a <. */
bool contenidor::operator==(const contenidor &c) const throw() {
    bool iguals = true;
    int i = 0, mida = _matr.size(), midac = c._matr.size();
    if(_l == c._l and mida == midac) {
        while(i < mida and iguals) {
            iguals = _matr[i] == c._matr[i];
            ++i;
        }
    }
    else iguals = false;
    return iguals;
}
bool contenidor::operator!=(const contenidor &c) const throw() {
    return !(*this == c);
}
bool contenidor::operator<(const contenidor &c) const throw() {
    // if(*this != c) {

    // }
}
bool contenidor::operator<=(const contenidor &c) const throw() {}
bool contenidor::operator>(const contenidor &c) const throw() {
    // if(*this != c) {

    // }
}
bool contenidor::operator>=(const contenidor &c) const throw() {}