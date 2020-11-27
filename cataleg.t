#include "cataleg.hpp"

/* Constructora. Crea un catàleg buit on numelems és el nombre
    aproximat d'elements que com a màxim s'inseriran al catàleg. */
template <typename Valor>
cataleg<Valor>::cataleg(nat numelems) throw(error) {
    _arrel = NULL;
    _mida = numelems;
}

/* Constructora per còpia, assignació i destructora. */
template <typename Valor>
cataleg<Valor>::cataleg(const cataleg& c) throw(error) {
    _arrel = copia_cat(c->_arrel);
    _mida = c._mida;
}

template <typename Valor>
cataleg<Valor>& cataleg<Valor>::operator=(const cataleg& c) throw(error) {
    if(this != d) {
        node *aux;
        aux = copia_nodes(c._arrel);
        esborra_nodes(_arrel);
        _arrel = aux;
        _mida = c._mida;
    }
    return(*this);
}

template <typename Valor>
cataleg<Valor>::~cataleg() throw() {
    esborra_nodes(_arrel);
}

/* Mètode modificador. Insereix el parell <clau, valor> indicat.
    En cas que la clau k ja existeixi en el catàleg actualitza el valor
    associat. Genera un error en cas que la clau sigui l'string buit. */
template <typename Valor>
void cataleg<Valor>::assig(const string &k, const Valor &v) throw(error) {}

/* Elimina del catàleg el parell que té com a clau k.
    En cas que la clau k no existeixi en el catàleg genera un error. */
template <typename Valor>
void cataleg<Valor>::elimina(const string &k) throw(error) {}

/* Retorna true si i només si la clau k existeix dins del catàleg; false
    en cas contrari. */
template <typename Valor>
bool cataleg<Valor>::existeix(const string &k) const throw() {
    bool trobat;
    node *n = consulta_cat(_arrel, k);
    if(n == NULL) trobat = false;
    else trobat = true;
    return trobat;
}

/* Retorna el valor associat a la clau k; si no existeix cap parell amb
    clau k llavors genera un error. Exemple:
    cataleg<int> ct;
    ...
    int n = ct["dia"]; */
template <typename Valor>
Valor cataleg<Valor>::operator[](const string &k) const throw(error) {
    node *n = consulta_cat(_arrel, k);
    if(n == NULL) throw error(ClauInexistent);
    return n->_v;
}

/* Retorna el nombre d'elements que s'han inserit en el catàleg
    fins aquest moment. */
template <typename Valor>
nat cataleg<Valor>::quants() const throw() {
    return _mida;
}


// Mètodes privats
template <typename Valor>
typename cataleg<Valor>::node* cataleg<Valor>::copia_cat(node *n) {
    node *p;
    if(n == NULL) p = NULL;
    else {
        p = new node(copia_nodes(n->_fesq), copia_nodes(n->_fdret), n->_c, n->_v);
    }
    return p;
}

template <typename Valor>
void cataleg<Valor>::esborra_nodes(node *n) {
    if(n != NULL) {
        esborra_nodes(n->_fesq);
        esborra_nodes(n->_fdret);
        delete n;
    }
}

template <typename Valor>
typename cataleg<Valor>::node* cataleg<Valor>::consulta_cat(node *n, const string &c) {
    node *res = n;
    if(n != NULL) {
        if(n->_c > c) {
            res = consulta_cat(n->_fesq, c);
        }
        else if(n->_c < c) res = consulta_cat(n->_fdret, c);
    }
    return res;
}