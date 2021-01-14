#include "ubicacio.hpp"

/* Constructora. Crea la ubicació <i, j, k>. Genera un error si
    <i, j, k> no pertany a {<u, v, w> | u >= 0 ^ v >= 0 ^ w >= 0}
    o a {<-1, 0, 0>,  <-1,-1,-1>}. */
ubicacio::ubicacio(int i, int j, int k) throw(error) {
    if((i == -1 and j == 0 and k == 0) or
    (i == -1 and j == -1 and k == -1) or
    (i >= 0 and
    j >= 0 and
    k >= 0)) {
        _i = i;
        _j = j;
        _k = k;
    }
    else {
        throw error(UbicacioIncorrecta);
    }
}

/* Constructora per còpia, assignació i destructora. */
ubicacio::ubicacio(const ubicacio& u) throw(error) {
    _i = u._i;
    _j = u._j;
    _k = u._k;
}
ubicacio& ubicacio::operator=(const ubicacio& u) throw(error) {
    if(this != &u) {
        _i = u._i;
        _j = u._j;
        _k = u._k;
    }
    return *this;
}
ubicacio::~ubicacio() throw() {}

/* Consultors. Retornen respectivament el primer, segon i tercer
    component de la ubicació. */
int ubicacio::filera() const throw() {
    return _i;
}
int ubicacio::placa() const throw() {
    return _j;
}
int ubicacio::pis() const throw() {
    return _k;
}

/* Operadors de comparació.
    L'operador d'igualtat retorna cert si i només si les dues ubicacions
    tenen la mateixa filera, plaça i pis. L'operador menor retorna cert si
    i només si la filera del paràmetre implícit és més petit que la
    d'u, o si les dues fileres són iguals i la plaça del paràmetre
    implícit és més petita que la d'u, o si les fileres i les places
    coincideixen i el pis del paràmetre implícit és més petit que el d'u.
    La resta d'operadors es defineixen consistentment respecte <. */
bool ubicacio::operator==(const ubicacio &u) const throw() {
    bool iguals;
    if(_i == u._i and
    _j == u._j and
    _k == u._k) {
        iguals = true;
    }
    else iguals = false;
    return iguals;
}
bool ubicacio::operator!=(const ubicacio &u) const throw() {
    return !(*this == u);
}
bool ubicacio::operator<(const ubicacio &u) const throw() {
    bool menor;
    if(_i < u._i or
    (_i == u._i and _j < u._j) or
    (_i == u._i and _j == u._j and _k < u._k)) {
        menor = true;
    }
    else menor = false;
    return menor;
}
bool ubicacio::operator<=(const ubicacio &u) const throw() {
    return !(*this > u);
}
bool ubicacio::operator>(const ubicacio &u) const throw() {
    bool major;
    if(_i > u._i or
    (_i == u._i and _j > u._j) or
    (_i == u._i and _j == u._j and _k > u._k)) {
        major = true;
    }
    else major = false;
    return major;
}
bool ubicacio::operator>=(const ubicacio &u) const throw() {
    return !(*this < u);
}