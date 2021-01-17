#include "terminal.hpp"

struct sort_by_name {
  bool operator()(string a, string b)
  { return a < b; }
};

/* Constructora. Crea una terminal buida amb n fileres de m places
    cadascuna, i una alçada màxima d'apilament h; a més fixa l'estratègia
    d'inserció i retirada dels contenidors respecte el paràmetre st.
    Genera un error si n=0, m=0, h=0, h > HMAX o
    st no pertany a {FIRST_FIT, LLIURE}. */

// Cost: O(n)
terminal::terminal(nat n, nat m, nat h, estrategia st) throw(error){
    if(n == 0) throw error(NumFileresIncorr);
    if(m == 0) throw error(NumPlacesIncorr);
    if(h == 0 or h > HMAX) throw error(AlcadaMaxIncorr);
    if(st != FIRST_FIT or st != LLIURE or not st) throw error(EstrategiaIncorr);
    _alc = h;
    _prof = m;
    _fil = n;
    if(not st) {
        _st = FIRST_FIT;
    }
    else _st = st;
    _mida = n*m*h;
    for(int i = 0; i < _mida; ++i) {
        _taula[i] = NULL;
    }
    _cat = new cataleg<ubicacio>(_mida); 
    _quants = 0;
    _num_ops = 0;

}

/* Constructora per còpia, assignació i destructora. */

// Cost: O(n)
terminal::terminal(const terminal& b) throw(error){
    _alc = b._alc;
    _prof = b._prof;
    _fil = b._fil;
    _st = b._st;    
    
    nodeterm **_taux = new nodeterm*[b._mida];
    int i = 0;
    while(i < b._mida) {
        _taux[i] = b._taula[i];
        ++i;
    }
    _taula = _taux;

    _mida = b._mida;
    _cat = b._cat;
    _quants = b._quants;
    _num_ops = b._num_ops;
    _espera = b._espera;
}

// Cost: O(n)
terminal& terminal::operator=(const terminal& b) throw(error){
    _alc = b._alc;
    _prof = b._prof;
    _fil = b._fil;
    _st = b._st;
    
    nodeterm **_taux = new nodeterm*[b._mida];
    int i = 0;
    while(i < b._mida) {
        _taux[i] = b._taula[i];
        ++i;
    }
    _taula = _taux;

    _mida = b._mida;
    _cat = b._cat;
    _quants = b._quants;
    _num_ops = b._num_ops;
    _espera = b._espera;
    return *this;
}

terminal::~terminal() throw(){}

/* Col·loca el contenidor c en l'àrea d'emmagatzematge de la terminal o
    en l'àrea d'espera si no troba lloc en l'àrea d'emmagatzematge usant
    l'estratègia prefixada en el moment de crear la terminal. Si el
    contenidor c es col·loca en l'àrea d'emmagatzematge pot succeir que
    un o més contenidors de l'àrea d'espera puguin ser moguts a l'àrea
    d'emmagatzematge.
    En aquest cas es mouran els contenidors de l'àrea d'espera a l'àrea
    d'emmagatzematge seguint l'ordre que indiqui l'estratègia que s'està
    usant. Finalment, genera un error si ja existís a la terminal un
    contenidor amb una matrícula idèntica que la del contenidor c. */

// Cost: O(n⁴)
void terminal::insereix_contenidor(const contenidor &c) throw(error){
    (void) c;
    // if(not _cat->existeix(c.matricula())) {
    //     if(_mida < _quants) { 
    //         if(_st == FIRST_FIT) {
    //             //mirar la llista de lliures y agafar el primer
    //             for(int i=0;i<_fil;i++)
    //                 for(int j=0;j<_prof;j++)
    //                     for(int k=0;k<_alc;k++){
    //                         ubicacio ubi(i,j,k);
    //                         int posicio=hash(ubi, _mida);
    //                         if(_taula[posicio]->_estat!=ocupat) {

    //                             //comprovar si la mida del contenidor entra a la posicio
    //                             if((c.longitud()+j)<=_prof) {
    //                                 //Calcular la posicio al hash
    //                                 //inserir al hash
    //                                 _taula[posicio]->_ubi=ubi;
    //                                 _taula[posicio]->_cont=contenidor(c);
    //                                 _taula[posicio]->_estat=ocupat;

    //                                 //liberar posicio de sobre
    //                                 ubicacio ubisobre(i,j,k+1);
    //                                 int posiciosobre=hash(ubisobre, _mida);
    //                                 _taula[posiciosobre]->_estat=lliure;

    //                                 //segons la mida inserir a la resta de ubicacions
    //                                 if(c.longitud()==2){
    //                                     ubicacio ubi2(i,j+1,k);
    //                                     int posicio2=hash(ubi2, _mida);
    //                                     _taula[posicio2]->_ubi=ubi2;
    //                                     _taula[posicio2]->_cont=contenidor(c);
    //                                     _taula[posicio2]->_estat=ocupat;

    //                                     //alliberar posicio de sobre
    //                                     ubicacio ubisobre2(i,j+1,k+1);
    //                                     int posiciosobre2=hash(ubisobre2, _mida);
    //                                     _taula[posiciosobre2]->_estat=lliure;
    //                                 }
    //                                 else if(c.longitud()==3){
    //                                     ubicacio ubi2(i,j+1,k);
    //                                     int posicio2=hash(ubi2, _mida);
    //                                     _taula[posicio2]->_ubi=ubi2;
    //                                     _taula[posicio2]->_cont=contenidor(c);
    //                                     _taula[posicio2]->_estat=ocupat;

    //                                     //liberar posicio de sobre
    //                                     ubicacio ubisobre2(i,j+1,k+1);
    //                                     int posiciosobre2=hash(ubisobre2, _mida);
    //                                     _taula[posiciosobre2]->_estat=lliure;
    //                                     ubicacio ubi3(i,j+2,k);
    //                                     int posicio3=hash(ubi3, _mida);
    //                                     _taula[posicio3]->_ubi=ubi3;
    //                                     _taula[posicio3]->_cont=contenidor(c);
    //                                     _taula[posicio3]->_estat=ocupat;

    //                                     //liberar posicio de sobre
    //                                     ubicacio ubisobre3(i,j+1,k+1);
    //                                     int posiciosobre3=hash(ubisobre3, _mida);
    //                                     _taula[posiciosobre3]->_estat=lliure;
    //                                 }
                        
    //                                 //afegir al cataleg
    //                                 _cat->assig(c.matricula(), ubi);
    //                                 _quants++;
    //                                 _num_ops++;

    //                                 //comprovar si es pot afegir algun contenidor de la llista d'espera i cridar a inserir contenidor si fos el cas
    //                                 for(list<contenidor>::const_iterator it = _espera.begin(); it != _espera.end(); ++it){
    //                                     insereix_contenidor(*it);
    //                                 }
    //                             }
    //                         }
    //                     }
    //                 }
    //             }
    //             else {
    //                 _espera.push_back(c);
    //                 ubicacio ubiesp(-1, 0, 0);
    //                 _cat->assig(c.matricula(), ubiesp);
    //         }
    //     }
    // else throw error(MatriculaDuplicada);
}

/* Retira de la terminal el contenidor c la matrícula del qual és igual
    a m. Aquest contenidor pot estar a l'àrea d'emmagatzematge o a l'àrea
    d'espera. Si el contenidor estigués a l'àrea d'emmagatzematge llavors
    s'hauran de moure a l'àrea d'espera tots els contenidors que siguin
    necessaris per netejar la part superior de c, s'hauran de retirar
    possiblement diversos contenidors, començant pel contenidor sense cap
    altre a sobre amb el número de plaça més baix (més a l'esquerra) i així
    successivament (veure exemple amb detall a la subsecció Estratègia
    FIRST_FIT). Un cop s'hagi eliminat el contenidor indicat, s'intenta
    moure contenidors de l'àrea d'espera a l'àrea d'emmagatzematge, seguint
    l'ordre que indiqui l'estratègia que s'està usant. Genera un error si a
    la terminal no hi ha cap contenidor la matrícula del qual sigui igual a m. */
void terminal::retira_contenidor(const string &m) throw(error){
    (void) m;
    // if(_cat.existeix(m)) {
    //     ubicacio ubi = _cat[m];
    //     int posicio=hash(ubi);
    //     //_taula[posicio]._cont.longitud();
    //     for(int i = 0; i< _taula[posicio]._cont.longitud();i++){
    //         ubicacio ubi2(ubi.filera(),ubi.placa()+i,ubi.pis()+1);
    //         int posicio2=hash(ubi2);
    //         if(_taula[posicio2]._estat==ocupat){
    //             mover_espera(ubi2);
    //         }
    //     }
    //     //Eliminem de la taula i del cataleg
    //     _taula[posicio].estat=retirat;
    //     _cat.elimina(_taula[posicio]._cont);
    //     _quants--;
    //     _num_ops++;
    // }
    // else throw error(MatriculaDuplicada);
}

/* Retorna la ubicació <i, j, k> del contenidor la matrícula del qual és
    igual a m si el contenidor està a l'àrea d'emmagatzematge de la terminal,
    la ubicació <-1, 0, 0> si el contenidor està a l'àrea d'espera, i la
    ubicació <-1, -1, -1> si no existeix cap contenidor que tingui una
    matrícula igual a m.
    Cal recordar que si un contenidor té més de 10 peus, la seva ubicació
    correspon a la plaça que tingui el número de plaça més petit. */

// Cost: O(log n)
ubicacio terminal::on(const string &m) const throw(){
    ubicacio u(-1, -1, -1);
    if(_cat->existeix(m)){
        u = (*_cat) [m];
    }
    return u;
}

/* Retorna la longitud del contenidor la matrícula del qual és igual
    a m. Genera un error si no existeix un contenidor a la terminal
    la matrícula del qual sigui igual a m. */

// Cost: O(1)
nat terminal::longitud(const string &m) const throw(error){
    if(not _cat->existeix(m)) throw error(MatriculaInexistent);
    nat i = 0;
    ubicacio u = on(m);
    if(u.filera() == -1 and u.placa() == 0 and u.pis() == 0) {
        list<contenidor>::const_iterator prin = _espera.begin();
        list<contenidor>::const_iterator fi = _espera.end();
        contenidor c = busca_espera(prin, fi, m);
        i = c.longitud();
    }
    else {
        ubicacio u = this->on(m);
        int pos = hash(u, this->_mida);
        nodeterm *n = _taula[pos];
        i = n->_cont.longitud();
    }
    return i;
}

/* Retorna la matrícula del contenidor que ocupa la ubicació u = <i, j, k>
    o la cadena buida si la ubicació està buida. Genera un error si
    i < 0, i >= n, j < 0, j >= m, k < 0 o k >= h, o sigui si <i, j, k> no
    identifica una ubicació vàlida de l'àrea d'emmagatzematge. Cal observar
    que si m, obtinguda amb t.contenidor_ocupa(u, m), és una matrícula (no
    la cadena buida) pot succeir que u != t.on(m), ja que un contenidor pot 
    ocupar diverses places i la seva ubicació es correspon amb la de la
    plaça ocupada amb número de plaça més baix. */

// Cost: O(1)
void terminal::contenidor_ocupa(const ubicacio &u, string &m) const throw(error){
    if((u.filera() < 0 or u.filera() >= this->_fil) and 
        (u.placa() < 0 or u.placa() >= this->_prof) and
        (u.pis() < 0 or u.pis() >= this->_alc)) {
        throw error(UbicacioNoMagatzem);
    }
    int pos = hash(u, this->_mida);
    nodeterm *n = _taula[pos];
    if(n != NULL) m = n->_cont.matricula();
    else m = "";
}

/* Retorna el nombre de places de la terminal que en aquest instant
    només hi cabrien un contenidor de 10 peus, però no un de més llarg.
    Per exemple, la filera de la figura 1 de l'enunciat contribuirà amb
    7 unitats a la fragmentació total (corresponen a les ubicacions
    <f, 0, 1>, <f, 1, 2>, <f, 2, 1>, <f, 7, 1>, <f, 8, 0>, <f, 9, 1> i
    <f, 10, 0>). */
nat terminal::fragmentacio() const throw(){
    return 0;
}

/* Retorna el número d'operacions de grua realitzades des del moment
    de creació de la terminal.
    Es requereix d'una operació de grua per moure un contenidor
    des de l'àrea d'espera a l'àrea d'emmagatzematge o viceversa.
    També es requereix d'una operació de grua per inserir o
    retirar directament un contenidor de l'àrea d'emmagatzematge.
    En canvi no requereix cap operació de grua inserir o
    retirar directament un contenidor de l'àrea d'espera. */

// Cost: O(1)
nat terminal::ops_grua() const throw(){
    return _num_ops;
}

/* Retorna la llista de les matrícules de tots els contenidors
    de l'àrea d'espera de la terminal, en ordre alfabètic creixent. */
// Cost: O(n)
void terminal::area_espera(list<string> &l) const throw(){
    //l.insert(l.begin(),_espera.begin(),_espera.end());
    //l.sort(sort_by_name());
    (void) l;
}

/* Retorna el número de fileres de la terminal. */
// Cost: O(1)
nat terminal::num_fileres() const throw(){
    return _fil;
}

/* Retorna el número de places per filera de la terminal. */
// Cost: O(1)
nat terminal::num_places() const throw(){
    return _prof;
}

/* Retorna l'alçada màxima d'apilament de la terminal. */
// Cost: O(1)
nat terminal::num_pisos() const throw(){
    return _alc;
}

/* Retorna l'estratègia d'inserció i retirada de contenidors de
    la terminal. */
// Cost: O(1)
terminal::estrategia terminal::quina_estrategia() const throw(){
    return _st;
}


// Mètodes privats

void terminal::insereix_ff(const contenidor &c) {
    (void)c;
}

void terminal::insereix_lliure(const contenidor &c) {
    (void)c;
}

// Cost: O(n)
contenidor terminal::busca_espera(list<contenidor>::const_iterator prin, list<contenidor>::const_iterator fi, const string &m) {
    bool trobat = false;
    contenidor c = *prin;
    while(prin != fi and not trobat) {
        if(c.matricula() == m) trobat = true;
        else { 
            c = *prin;
            ++prin;
        }
    }
    return c;
}

// void terminal::mover_espera(const ubicació &u); {
//     if ubi lliure {
//         mou area_espera;
//     }
//     else {
//         if cont.longitud() == 10 {
//             mira ubi adalt;  // Crida recursiva
//             treu el cont;
//         }
//         else if cont.long() == 20 {
//             mira costats; // Crida recursiva
//             mira adalt; // Crida recursiva
//             treu cont:
//         }
//         else if cont.long() == 30 {
//             mira costats o 3 endevant o 3 endarrera;
//             mira adalt;
//             treu cont;
//         }
//     }
// }

// Cost: O(1)
int terminal::hash(const ubicacio &k, int mida) throw() {
    return (k.filera()*100 + k.placa()*10 + k.pis()) % mida;
}