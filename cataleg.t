#include "cataleg.hpp"

/* Constructora. Crea un catàleg buit on numelems és el nombre
    aproximat d'elements que com a màxim s'inseriran al catàleg. 
    Cost: O(1)
*/
template <typename Valor>
cataleg<Valor>::cataleg(nat numelems) throw(error) {
    _arrel = NULL;
    _mida = numelems;
    _elems = 0;
}

/* Constructora per còpia, assignació i destructora. 
   Cost: O(h) on h = altura de l'arrel
*/
template <typename Valor>
cataleg<Valor>::cataleg(const cataleg& c) throw(error) {
    _arrel = copia_cat(c._arrel);
    _mida = c._mida;
    _elems = c._elems;
}

// Cost: O(h) on h = altura de l'arrel
template <typename Valor>
cataleg<Valor>& cataleg<Valor>::operator=(const cataleg& c) throw(error) {
    node *aux;
    aux = copia_cat(c._arrel);
    esborra_nodes(_arrel);
    _arrel = aux;
    _mida = c._mida;
    _elems = c._elems;
    return(*this);
}

// Cost: O(h) on h = altura de l'arrel
template <typename Valor>
cataleg<Valor>::~cataleg() throw() {
    esborra_nodes(_arrel);
}

/* Mètode modificador. Insereix el parell <clau, valor> indicat.
    En cas que la clau k ja existeixi en el catàleg actualitza el valor
    associat. Genera un error en cas que la clau sigui l'string buit. 
    Cost: O(log n)
*/
template <typename Valor>
void cataleg<Valor>::assig(const string &k, const Valor &v) throw(error) {
    if(k == "") throw error(ClauStringBuit);
    else {
        if(not existeix(k)) ++_elems;

        _arrel = insereix_node(_arrel, k, v);
    }
}

/* Elimina del catàleg el parell que té com a clau k.
    En cas que la clau k no existeixi en el catàleg genera un error. 
    Cost: O(log n) 
*/
template <typename Valor>
void cataleg<Valor>::elimina(const string &k) throw(error) {
    if(not existeix(k)) throw error(ClauInexistent);
    else {
        _arrel = elimina_node(_arrel, k);
        --_elems;
    }
}

/* Retorna true si i només si la clau k existeix dins del catàleg; false
    en cas contrari. 
    Cost: O(log n) 
*/
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
    int n = ct["dia"]; 
    
    Cost: O(log n)
*/
template <typename Valor>
Valor cataleg<Valor>::operator[](const string &k) const throw(error) {
    node *n = consulta_cat(_arrel, k);
    if(n == NULL) throw error(ClauInexistent);
    return n->_v;
}

/* Retorna el nombre d'elements que s'han inserit en el catàleg
    fins aquest moment. 
    Cost: O(1)
*/
template <typename Valor>
nat cataleg<Valor>::quants() const throw() {
    return _elems;
}



// Mètodes privats

//Cost: O(log n)
template <typename Valor>
typename cataleg<Valor>::node* cataleg<Valor>::insereix_node(node *n, const string &k, const Valor &v) {
    if(n == NULL) {
        node *nou = new node;
        nou->_c = k;
        nou->_v = v;
        nou->_fesq = NULL;
        nou->_fdret = NULL;
        nou->_altura = 1;
        n = nou;
        return n;
    }
    if(k < n->_c) {
        n->_fesq = insereix_node(n->_fesq, k, v);
        n->_altura = 1 + max(altura(n->_fesq), altura(n->_fdret));
    }
    else if(k > n->_c) {
        n->_fdret = insereix_node(n->_fdret, k, v);
        n->_altura = 1 + max(altura(n->_fesq), altura(n->_fdret));
    }
    else if(k == n->_c) {
        n->_v = v;
        return n;
    }


    // Equilibrem l'AVL. Primer calculem el balanç. Després mirem els possibles casos.
    int balanc = obteBalanc(n);

    // Cas esquerra esquerra
    if(balanc > 1 and k < n->_fesq->_c) n = rotaDreta(n);

    // Cas dreta dreta
    if(balanc < -1 and k > n->_fdret->_c) n = rotaEsq(n);

    // Cas esquerra dreta
    if(balanc > 1 and k > n->_fesq->_c) {
        n->_fesq = rotaEsq(n->_fesq);
        n = rotaDreta(n);
    }

    // Cas dreta esquerra
    if(balanc < -1 and k < n->_fdret->_c) {
        n->_fdret = rotaDreta(n->_fdret);
        n = rotaEsq(n);
    }
    return n;

}

// Cost: O(1)
template <typename Valor>
int cataleg<Valor>::max(int a, int b) {
    return (a > b)? a : b;
}

// Cost: O(1)
template <typename Valor>
int cataleg<Valor>::altura(node *n) {
    int x = 0;
    if(n != NULL) x = n->_altura;
    return x;
}

// Cost: O(1)
template <typename Valor>
int cataleg<Valor>::obteBalanc(node *n) {
    int i = 0;
    if(n != NULL) i = altura(n->_fesq) - altura(n->_fdret);
    return i;
}

// Cost: O(1)
template <typename Valor>
typename cataleg<Valor>::node* cataleg<Valor>::rotaDreta(node *n) {
    node *esq = n->_fesq;
    node *esqdret = esq->_fdret;

    esq->_fdret = n;
    n->_fesq = esqdret;

    n->_altura = max(altura(n->_fesq), altura(n->_fdret)) + 1;
    esq->_altura = max(altura(esq->_fesq), altura(esq->_fdret)) + 1;

    return esq;
}

// Cost: O(1)
template <typename Valor>
typename cataleg<Valor>::node* cataleg<Valor>::rotaEsq(node *n) {
    node *dret = n->_fdret;
    node *dresq = dret->_fesq;

    dret->_fesq = n;
    n->_fdret = dresq;

    n->_altura = max(altura(n->_fesq), altura(n->_fdret)) + 1;
    dret->_altura = max(altura(dret->_fesq), altura(dret->_fdret)) + 1;

    return dret;
}

// Cost: O(log n)
template <typename Valor>
typename cataleg<Valor>::node* cataleg<Valor>::elimina_node(node *n, const string &k) {
    if(n == NULL) return n;

    if(k < n->_c) n->_fesq = elimina_node(n->_fesq, k);

    else if(k > n->_c) n->_fdret = elimina_node(n->_fdret, k);

    else {
        if(n->_fesq == NULL or n->_fdret == NULL) {
            node *temp = n->_fesq ? n->_fesq : n->_fdret;
            if(temp == NULL) {
                temp = n;
                n = NULL;
            }
            else *n = *temp;
            delete temp;
        }
        else {
            node *temp = valMin(n->_fdret);
            n->_c = temp->_c;
            n->_fdret = elimina_node(n->_fdret, temp->_c);
        }
    }
    
    if(n == NULL) {
        return n;
    }

    n->_altura = 1 + max(altura(n->_fesq), altura(n->_fdret));

    // Equilibrem l'AVL. Primer calculem el balanç. Després mirem els possibles casos.
    int balanc = obteBalanc(n);

    // Cas esquerra esquerra
    if(balanc > 1 and k < n->_fesq->_c) n = rotaDreta(n);

    // Cas dreta dreta
    if(balanc < -1 and k > n->_fdret->_c) n = rotaEsq(n);

    // Cas esquerra dreta
    if(balanc > 1 and k > n->_fesq->_c) {
        n->_fesq = rotaEsq(n->_fesq);
        n = rotaDreta(n);
    }

    // Cas dreta esquerra
    if(balanc < -1 and k < n->_fdret->_c) {
        n->_fdret = rotaDreta(n->_fdret);
        n = rotaEsq(n);
    }
    return n;
}

// Cost: O(n)
template <typename Valor>
typename cataleg<Valor>::node* cataleg<Valor>::valMin(node *n) {
    node *act = n;
    while(act->_fesq != NULL) {
        act = act->_fesq;
    }
    return act;
}

// Cost: O(h) on h = altura del node n
template <typename Valor>
typename cataleg<Valor>::node* cataleg<Valor>::copia_cat(node *n) {
    node *p;
    if(n == NULL) p = NULL;
    else {
        p = new node;
        p->_fesq = copia_cat(n->_fesq);
        p->_fdret = copia_cat(n->_fdret);
        p->_c = n->_c;
        p->_v = n->_v;
        p->_altura = n->_altura;
    }
    return p;
}

// Cost: O(log n)
template <typename Valor>
void cataleg<Valor>::esborra_nodes(node *n) {
    if(n != NULL) {
        esborra_nodes(n->_fesq);
        esborra_nodes(n->_fdret);
        delete n;
    }
}

// Cost: O(log n)
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