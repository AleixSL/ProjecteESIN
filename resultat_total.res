###!===========================================================
###! JOC DE PROVES PUBLIC
###!===========================================================
###!
###! Memoria general
#set_memory 100000 1000000000
###!
###!
###!
###!-----------------------------------------------------------
###! JOC DE PROVES DE CONTENIDOR
###!-----------------------------------------------------------
###!
#load jp_public_contenidor.in
###!----------------------------------------------
###!
###! JOCS DE PROVES DE LA CLASSE CONTENIDOR
###!
###!----------------------------------------------
###!
###!
###!------------------------------------------------------------------
###1 Errors
###!------------------------------------------------------------------
###!
###!------------------------------------------------------------------
###1.1 Error 20: Matricula incorrecta
###!------------------------------------------------------------------
###!
#init c contenidor AAAAAAAAAAAa 10
Error::contenidor:20:Matricula incorrecta.
##Error::contenidor:20:Matricula incorrecta.
#init c contenidor ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstxyz 10
Error::contenidor:20:Matricula incorrecta.
##Error::contenidor:20:Matricula incorrecta.
#init c contenidor ABCÇDEFGHIJKLMNÑOPQRSTUVWXYZ 10
Error::contenidor:20:Matricula incorrecta.
##Error::contenidor:20:Matricula incorrecta.
#init c contenidor ABCDEFGHIJKLMNOPQRSTUVWXYZÁÀÉÈÍÌÓÒÚÙÄËÏÖÜÂÊÎÔÛ 10
Error::contenidor:20:Matricula incorrecta.
##Error::contenidor:20:Matricula incorrecta.
#init c contenidor ABCDEFGHIJKLMNOPQRSTUVWXYZÇÑÁÀÉÈÍÌÓÒÚÙÄËÏÖÜÂÊÎÔÛabcdefghijklmnopqrstxyzçñáàéèíìóòúùäëïöüâêîôû[]()!"·$%&/=?¿*-_.:,;\ºª@#~¬{}´`^ 10
Error::contenidor:20:Matricula incorrecta.
##Error::contenidor:20:Matricula incorrecta.
#init c contenidor ABCDEFGHIJKLMNOPQRSTUVWXYZÇÑÁÀÉÈÍÌÓÒÚÙÄËÏÖÜÂÊÎÔÛabcdefghijklmnopqrstxyzçñáàéèíìóòúùäëïöüâêîôû 11
Error::contenidor:20:Matricula incorrecta.
##Error::contenidor:20:Matricula incorrecta.
###!
###!
###!----------------------------------------------
###1.2 Error 21: Longitud incorrecta
###!----------------------------------------------
###!
#init c contenidor ABCDEFGHIJKLMNOPQRSTUVWXYZ 11
Error::contenidor:21:Longitud incorrecta.
##Error::contenidor:21:Longitud incorrecta.
#init c contenidor ABCDEFGHIJKLMNOPQRSTUVWXYZ 100
Error::contenidor:21:Longitud incorrecta.
##Error::contenidor:21:Longitud incorrecta.
#init c contenidor ABCDEFGHIJKLMNOPQRSTUVWXYZ 12
Error::contenidor:21:Longitud incorrecta.
##Error::contenidor:21:Longitud incorrecta.
#init c contenidor ABCDEFGHIJKLMNOPQRSTUVWXYZ 210
Error::contenidor:21:Longitud incorrecta.
##Error::contenidor:21:Longitud incorrecta.
###!
###!
###!
###!----------------------------------------------
###2. Mètodes consultors
###!----------------------------------------------
###!
#init a1 contenidor A1 10
#init a2 contenidor A1 20
#init a3 contenidor A1 30
#init b1 contenidor B1 10
#init b2 contenidor B1 20
#init b3 contenidor B1 30
###!
###!
###!----------------------------------------------
###2.1 Matricula
###!----------------------------------------------
###!
#a1 matricula
A1
##A1
#a2 matricula
A1
##A1
#a3 matricula
A1
##A1
#b1 matricula
B1
##B1
#b2 matricula
B1
##B1
#b3 matricula
B1
##B1
###!
###!
###!----------------------------------------------
###2.2 Longitud
###!----------------------------------------------
###!
#a1 longitud
10
##10
#a2 longitud
20
##20
#a3 longitud
30
##30
#b1 longitud
10
##10
#b2 longitud
20
##20
#b3 longitud
30
##30
###!
###!
###!
###!----------------------------------------------
###3 Operadors de comparacio
###!----------------------------------------------
###!
###!----------------------------------------------
###3.1 Operador ==
###!----------------------------------------------
###!
#a1 == a1
true
##true
#a1 == a2
false
##false
#a1 == a3
false
##false
#a1 == b1
false
##false
#a1 == b2
false
##false
#a1 == b3
false
##false
#a2 == a1
false
##false
#a2 == a2
true
##true
#a2 == a3
false
##false
#a2 == b1
false
##false
#a2 == b2
false
##false
#a2 == b3
false
##false
#a3 == a1
false
##false
#a3 == a2
false
##false
#a3 == a3
true
##true
#a3 == b1
false
##false
#a3 == b2
false
##false
#a3 == b3
false
##false
#b1 == a1
false
##false
#b1 == a2
false
##false
#b1 == a3
false
##false
#b1 == b1
true
##true
#b1 == b2
false
##false
#b1 == b3
false
##false
#b2 == a1
false
##false
#b2 == a2
false
##false
#b2 == a3
false
##false
#b2 == b1
false
##false
#b2 == b2
true
##true
#b2 == b3
false
##false
#b3 == a1
false
##false
#b3 == a2
false
##false
#b3 == a3
false
##false
#b3 == b1
false
##false
#b3 == b2
false
##false
#b3 == b3
true
##true
###!
###!
###!----------------------------------------------
###3.2 Operador =!
###!----------------------------------------------
###!
#a1 != a1
false
##false
#a1 != a2
true
##true
#a1 != a3
true
##true
#a1 != b1
true
##true
#a1 != b2
true
##true
#a1 != b3
true
##true
#a2 != a1
true
##true
#a2 != a2
false
##false
#a2 != a3
true
##true
#a2 != b1
true
##true
#a2 != b2
true
##true
#a2 != b3
true
##true
#a3 != a1
true
##true
#a3 != a2
true
##true
#a3 != a3
false
##false
#a3 != b1
true
##true
#a3 != b2
true
##true
#a3 != b3
true
##true
#b1 != a1
true
##true
#b1 != a2
true
##true
#b1 != a3
true
##true
#b1 != b1
false
##false
#b1 != b2
true
##true
#b1 != b3
true
##true
#b2 != a2
true
##true
#b2 != a3
true
##true
#b2 != b1
true
##true
#b2 != b2
false
##false
#b2 != b3
true
##true
#b3 != a1
true
##true
#b3 != a2
true
##true
#b3 != a3
true
##true
#b3 != b1
true
##true
#b3 != b2
true
##true
#b3 != b3
false
##false
###!
###!
###!----------------------------------------------
###3.3 Operador <
###!----------------------------------------------
###!
#a1 < a1
false
##false
#a1 < a2
true
##true
#a1 < a3
true
##true
#a1 < b1
true
##true
#a1 < b2
true
##true
#a1 < b3
true
##true
#a2 < a1
false
##false
#a2 < a2
false
##false
#a2 < a3
true
##true
#a2 < b1
true
##true
#a2 < b2
true
##true
#a2 < b3
true
##true
#a3 < a1
false
##false
#a3 < a2
false
##false
#a3 < a3
false
##false
#a3 < b1
true
##true
#a3 < b2
true
##true
#a3 < b3
true
##true
#b1 < a1
false
##false
#b1 < a2
false
##false
#b1 < a3
false
##false
#b1 < b1
false
##false
#b1 < b2
true
##true
#b1 < b3
true
##true
#b2 < a1
false
##false
#b2 < a2
false
##false
#b2 < a3
false
##false
#b2 < b1
false
##false
#b2 < b2
false
##false
#b2 < b3
true
##true
#b3 < a1
false
##false
#b3 < a2
false
##false
#b3 < a3
false
##false
#b3 < b1
false
##false
#b3 < b2
false
##false
#b3 < b3
false
##false
###!
###!
###!----------------------------------------------
###3.4 Operador <=
###!----------------------------------------------
###!
#a1 <= a1
true
##true
#a1 <= a2
true
##true
#a1 <= a3
true
##true
#a1 <= b1
true
##true
#a1 <= b2
true
##true
#a1 <= b3
true
##true
#a2 <= a1
false
##false
#a2 <= a2
true
##true
#a2 <= a3
true
##true
#a2 <= b1
true
##true
#a2 <= b2
true
##true
#a2 <= b3
true
##true
#a3 <= a1
false
##false
#a3 <= a2
false
##false
#a3 <= a3
true
##true
#a3 <= b1
true
##true
#a3 <= b2
true
##true
#a3 <= b3
true
##true
#b1 <= a1
false
##false
#b1 <= a2
false
##false
#b1 <= a3
false
##false
#b1 <= b1
true
##true
#b1 <= b2
true
##true
#b1 <= b3
true
##true
#b2 <= a1
false
##false
#b2 <= a2
false
##false
#b2 <= a3
false
##false
#b2 <= b1
false
##false
#b2 <= b2
true
##true
#b2 <= b3
true
##true
#b3 <= a1
false
##false
#b3 <= a2
false
##false
#b3 <= a3
false
##false
#b3 <= b1
false
##false
#b3 <= b2
false
##false
#b3 <= b3
true
##true
###!
###!
###!----------------------------------------------
###3.5 Operador >
###!----------------------------------------------
###!
#a1 > a1
false
##false
#a1 > a2
false
##false
#a1 > a3
false
##false
#a1 > b1
false
##false
#a1 > b2
false
##false
#a1 > b3
false
##false
#a2 > a1
true
##true
#a2 > a2
false
##false
#a2 > a3
false
##false
#a2 > b1
false
##false
#a2 > b2
false
##false
#a2 > b3
false
##false
#a3 > a1
true
##true
#a3 > a2
true
##true
#a3 > a3
false
##false
#a3 > b1
false
##false
#a3 > b2
false
##false
#a3 > b3
false
##false
#b1 > a1
true
##true
#b1 > a2
true
##true
#b1 > a3
true
##true
#b1 > b1
false
##false
#b1 > b2
false
##false
#b1 > b3
false
##false
#b2 > a1
true
##true
#b2 > a2
true
##true
#b2 > a3
true
##true
#b2 > b1
true
##true
#b2 > b2
false
##false
#b2 > b3
false
##false
#b3 > a1
true
##true
#b3 > a2
true
##true
#b3 > a3
true
##true
#b3 > b1
true
##true
#b3 > b2
true
##true
#b3 > b3
false
##false
###!
###!
###!----------------------------------------------
###3.6 Operador >=
###!----------------------------------------------
###!
#a1 >= a1
true
##true
#a1 >= a2
false
##false
#a1 >= a3
false
##false
#a1 >= b1
false
##false
#a1 >= b2
false
##false
#a1 >= b3
false
##false
#a2 >= a1
true
##true
#a2 >= a2
true
##true
#a2 >= a3
false
##false
#a2 >= b1
false
##false
#a2 >= b2
false
##false
#a2 >= b3
false
##false
#a3 >= a1
true
##true
#a3 >= a2
true
##true
#a3 >= a3
true
##true
#a3 >= b1
false
##false
#a3 >= b2
false
##false
#a3 >= b3
false
##false
#b1 >= a1
true
##true
#b1 >= a2
true
##true
#b1 >= a3
true
##true
#b1 >= b1
true
##true
#b1 >= b2
false
##false
#b1 >= b3
false
##false
#b2 >= a1
true
##true
#b2 >= a2
true
##true
#b2 >= a3
true
##true
#b2 >= b1
true
##true
#b2 >= b2
true
##true
#b2 >= b3
false
##false
#b3 >= a1
true
##true
#b3 >= a2
true
##true
#b3 >= a3
true
##true
#b3 >= b1
true
##true
#b3 >= b2
true
##true
#b3 >= b3
true
##true
###!
###!
###!
###!----------------------------------------------
###4 Constructora per copia
###!----------------------------------------------
###!
#initcopy c1 = b1
#initcopy c2 = b2
#initcopy c3 = b3
###!
###!
###!----------------------------------------------
###4.1 Matricula
###!----------------------------------------------
###!
#c1 matricula
B1
##B1
#c2 matricula
B1
##B1
#c3 matricula
B1
##B1
###!
###!
###!----------------------------------------------
###4.2 Longitud
###!----------------------------------------------
###!
#c1 longitud
10
##10
#c2 longitud
20
##20
#c3 longitud
30
##30
###!
###!
###!----------------------------------------------
###4.3 Operador ==
###!----------------------------------------------
###!
#a1 == a1
true
##true
#a1 == a2
false
##false
#a1 == a3
false
##false
#a1 == c1
false
##false
#a1 == c2
false
##false
#a1 == c3
false
##false
#a2 == a1
false
##false
#a2 == a2
true
##true
#a2 == a3
false
##false
#a2 == c1
false
##false
#a2 == c2
false
##false
#a2 == c3
false
##false
#a3 == a1
false
##false
#a3 == a2
false
##false
#a3 == a3
true
##true
#a3 == c1
false
##false
#a3 == c2
false
##false
#a3 == c3
false
##false
#c1 == a1
false
##false
#c1 == a2
false
##false
#c1 == a3
false
##false
#c1 == c1
true
##true
#c1 == c2
false
##false
#c1 == c3
false
##false
#c2 == a1
false
##false
#c2 == a2
false
##false
#c2 == a3
false
##false
#c2 == c1
false
##false
#c2 == c2
true
##true
#c2 == c3
false
##false
#c3 == a1
false
##false
#c3 == a2
false
##false
#c3 == a3
false
##false
#c3 == c1
false
##false
#c3 == c2
false
##false
#c3 == c3
true
##true
###!
###!
###!----------------------------------------------
###4.4 Operador =!
###!----------------------------------------------
###!
#a1 != a1
false
##false
#a1 != a2
true
##true
#a1 != a3
true
##true
#a1 != c1
true
##true
#a1 != c2
true
##true
#a1 != c3
true
##true
#a2 != a1
true
##true
#a2 != a2
false
##false
#a2 != a3
true
##true
#a2 != c1
true
##true
#a2 != c2
true
##true
#a2 != c3
true
##true
#a3 != a1
true
##true
#a3 != a2
true
##true
#a3 != a3
false
##false
#a3 != c1
true
##true
#a3 != c2
true
##true
#a3 != c3
true
##true
#c1 != a1
true
##true
#c1 != a2
true
##true
#c1 != a3
true
##true
#c1 != c1
false
##false
#c1 != c2
true
##true
#c1 != c3
true
##true
#c2 != a2
true
##true
#c2 != a3
true
##true
#c2 != c1
true
##true
#c2 != c2
false
##false
#c2 != c3
true
##true
#c3 != a1
true
##true
#c3 != a2
true
##true
#c3 != a3
true
##true
#c3 != c1
true
##true
#c3 != c2
true
##true
#c3 != c3
false
##false
###!
###!
###!----------------------------------------------
###4.5 Operador <
###!----------------------------------------------
###!
#a1 < a1
false
##false
#a1 < a2
true
##true
#a1 < a3
true
##true
#a1 < c1
true
##true
#a1 < c2
true
##true
#a1 < c3
true
##true
#a2 < a1
false
##false
#a2 < a2
false
##false
#a2 < a3
true
##true
#a2 < c1
true
##true
#a2 < c2
true
##true
#a2 < c3
true
##true
#a3 < a1
false
##false
#a3 < a2
false
##false
#a3 < a3
false
##false
#a3 < c1
true
##true
#a3 < c2
true
##true
#a3 < c3
true
##true
#c1 < a1
false
##false
#c1 < a2
false
##false
#c1 < a3
false
##false
#c1 < c1
false
##false
#c1 < c2
true
##true
#c1 < c3
true
##true
#c2 < a1
false
##false
#c2 < a2
false
##false
#c2 < a3
false
##false
#c2 < c1
false
##false
#c2 < c2
false
##false
#c2 < c3
true
##true
#c3 < a1
false
##false
#c3 < a2
false
##false
#c3 < a3
false
##false
#c3 < c1
false
##false
#c3 < c2
false
##false
#c3 < c3
false
##false
###!
###!
###!----------------------------------------------
###4.6 Operador <=
###!----------------------------------------------
###!
#a1 <= a1
true
##true
#a1 <= a2
true
##true
#a1 <= a3
true
##true
#a1 <= c1
true
##true
#a1 <= c2
true
##true
#a1 <= c3
true
##true
#a2 <= a1
false
##false
#a2 <= a2
true
##true
#a2 <= a3
true
##true
#a2 <= c1
true
##true
#a2 <= c2
true
##true
#a2 <= c3
true
##true
#a3 <= a1
false
##false
#a3 <= a2
false
##false
#a3 <= a3
true
##true
#a3 <= c1
true
##true
#a3 <= c2
true
##true
#a3 <= c3
true
##true
#c1 <= a1
false
##false
#c1 <= a2
false
##false
#c1 <= a3
false
##false
#c1 <= c1
true
##true
#c1 <= c2
true
##true
#c1 <= c3
true
##true
#c2 <= a1
false
##false
#c2 <= a2
false
##false
#c2 <= a3
false
##false
#c2 <= c1
false
##false
#c2 <= c2
true
##true
#c2 <= c3
true
##true
#c3 <= a1
false
##false
#c3 <= a2
false
##false
#c3 <= a3
false
##false
#c3 <= c1
false
##false
#c3 <= c2
false
##false
#c3 <= c3
true
##true
###!
###!
###!----------------------------------------------
###4.7 Operador >
###!----------------------------------------------
###!
#a1 > a1
false
##false
#a1 > a2
false
##false
#a1 > a3
false
##false
#a1 > c1
false
##false
#a1 > c2
false
##false
#a1 > c3
false
##false
#a2 > a1
true
##true
#a2 > a2
false
##false
#a2 > a3
false
##false
#a2 > c1
false
##false
#a2 > c2
false
##false
#a2 > c3
false
##false
#a3 > a1
true
##true
#a3 > a2
true
##true
#a3 > a3
false
##false
#a3 > c1
false
##false
#a3 > c2
false
##false
#a3 > c3
false
##false
#c1 > a1
true
##true
#c1 > a2
true
##true
#c1 > a3
true
##true
#c1 > c1
false
##false
#c1 > c2
false
##false
#c1 > c3
false
##false
#c2 > a1
true
##true
#c2 > a2
true
##true
#c2 > a3
true
##true
#c2 > c1
true
##true
#c2 > c2
false
##false
#c2 > c3
false
##false
#c3 > a1
true
##true
#c3 > a2
true
##true
#c3 > a3
true
##true
#c3 > c1
true
##true
#c3 > c2
true
##true
#c3 > c3
false
##false
###!
###!
###!----------------------------------------------
###4.8 Operador >=
###!----------------------------------------------
###!
#a1 >= a1
true
##true
#a1 >= a2
false
##false
#a1 >= a3
false
##false
#a1 >= c1
false
##false
#a1 >= c2
false
##false
#a1 >= c3
false
##false
#a2 >= a1
true
##true
#a2 >= a2
true
##true
#a2 >= a3
false
##false
#a2 >= c1
false
##false
#a2 >= c2
false
##false
#a2 >= c3
false
##false
#a3 >= a1
true
##true
#a3 >= a2
true
##true
#a3 >= a3
true
##true
#a3 >= c1
false
##false
#a3 >= c2
false
##false
#a3 >= c3
false
##false
#c1 >= a1
true
##true
#c1 >= a2
true
##true
#c1 >= a3
true
##true
#c1 >= c1
true
##true
#c1 >= c2
false
##false
#c1 >= c3
false
##false
#c2 >= a1
true
##true
#c2 >= a2
true
##true
#c2 >= a3
true
##true
#c2 >= c1
true
##true
#c2 >= c2
true
##true
#c2 >= c3
false
##false
#c3 >= a1
true
##true
#c3 >= a2
true
##true
#c3 >= a3
true
##true
#c3 >= c1
true
##true
#c3 >= c2
true
##true
#c3 >= c3
true
##true
###!
###!
###!
###!----------------------------------------------
###5 Operador d'assignacio
###!----------------------------------------------
###!
#init z1 contenidor Z1 30
#init z2 contenidor Z1 10
#init z3 contenidor Z1 20
#init x1 contenidor X1 10
#init x2 contenidor X1 20
#init x3 contenidor X1 30
#z1 = x1
#z2 = x2
#z3 = x3
###!
###!
###!----------------------------------------------
###5.1 Matricula
###!----------------------------------------------
###!
#z1 matricula
X1
##X1
#z2 matricula
X1
##X1
#z3 matricula
X1
##X1
###!
###!
###!----------------------------------------------
###5.2 Longitud
###!----------------------------------------------
###!
#z1 longitud
10
##10
#z2 longitud
20
##20
#z3 longitud
30
##30
###!
###!
###!----------------------------------------------
###5.3 Operador ==
###!----------------------------------------------
###!
#a1 == a1
true
##true
#a1 == a2
false
##false
#a1 == a3
false
##false
#a1 == b1
false
##false
#a1 == b2
false
##false
#a1 == b3
false
##false
#a1 == z1
false
##false
#a1 == z2
false
##false
#a1 == z3
false
##false
#a2 == a1
false
##false
#a2 == a2
true
##true
#a2 == a3
false
##false
#a2 == b1
false
##false
#a2 == b2
false
##false
#a2 == b3
false
##false
#a2 == z1
false
##false
#a2 == z2
false
##false
#a2 == z3
false
##false
#a3 == a1
false
##false
#a3 == a2
false
##false
#a3 == a3
true
##true
#a3 == b1
false
##false
#a3 == b2
false
##false
#a3 == b3
false
##false
#a3 == z1
false
##false
#a3 == z2
false
##false
#a3 == z3
false
##false
#b1 == a1
false
##false
#b1 == a2
false
##false
#b1 == a3
false
##false
#b1 == b1
true
##true
#b1 == b2
false
##false
#b1 == b3
false
##false
#b1 == z1
false
##false
#b1 == z2
false
##false
#b1 == z3
false
##false
#b2 == a1
false
##false
#b2 == a2
false
##false
#b2 == a3
false
##false
#b2 == b1
false
##false
#b2 == b2
true
##true
#b2 == b3
false
##false
#b2 == z1
false
##false
#b2 == z2
false
##false
#b2 == z3
false
##false
#b3 == a1
false
##false
#b3 == a2
false
##false
#b3 == a3
false
##false
#b3 == b1
false
##false
#b3 == b2
false
##false
#b3 == b3
true
##true
#b3 == z1
false
##false
#b3 == z2
false
##false
#b3 == z3
false
##false
#z1 == a1
false
##false
#z1 == a2
false
##false
#z1 == a3
false
##false
#z1 == b1
false
##false
#z1 == b2
false
##false
#z1 == b3
false
##false
#z1 == z1
true
##true
#z1 == z2
false
##false
#z1 == z3
false
##false
#z2 == a1
false
##false
#z2 == a2
false
##false
#z2 == a3
false
##false
#z2 == b1
false
##false
#z2 == b2
false
##false
#z2 == b3
false
##false
#z2 == z1
false
##false
#z2 == z2
true
##true
#z2 == z3
false
##false
#z3 == a1
false
##false
#z3 == a2
false
##false
#z3 == a3
false
##false
#z3 == b1
false
##false
#z3 == b2
false
##false
#z3 == b3
false
##false
#z3 == z1
false
##false
#z3 == z2
false
##false
#z3 == z3
true
##true
###!
###!
###!----------------------------------------------
###5.4 Operador =!
###!----------------------------------------------
###!
#a1 != a1
false
##false
#a1 != a2
true
##true
#a1 != a3
true
##true
#a1 != b1
true
##true
#a1 != b2
true
##true
#a1 != b3
true
##true
#a1 != z1
true
##true
#a1 != z2
true
##true
#a1 != z3
true
##true
#a2 != a1
true
##true
#a2 != a2
false
##false
#a2 != a3
true
##true
#a2 != b1
true
##true
#a2 != b2
true
##true
#a2 != b3
true
##true
#a2 != z1
true
##true
#a2 != z2
true
##true
#a2 != z3
true
##true
#a3 != a1
true
##true
#a3 != a2
true
##true
#a3 != a3
false
##false
#a3 != b1
true
##true
#a3 != b2
true
##true
#a3 != b3
true
##true
#a3 != z1
true
##true
#a3 != z2
true
##true
#a3 != z3
true
##true
#b1 != a1
true
##true
#b1 != a2
true
##true
#b1 != a3
true
##true
#b1 != b1
false
##false
#b1 != b2
true
##true
#b1 != b3
true
##true
#b1 != z1
true
##true
#b1 != z2
true
##true
#b1 != z3
true
##true
#b2 != a1
true
##true
#b2 != a2
true
##true
#b2 != a3
true
##true
#b2 != b1
true
##true
#b2 != b2
false
##false
#b2 != b3
true
##true
#b2 != z1
true
##true
#b2 != z2
true
##true
#b2 != z3
true
##true
#b3 != a1
true
##true
#b3 != a2
true
##true
#b3 != a3
true
##true
#b3 != b1
true
##true
#b3 != b2
true
##true
#b3 != b3
false
##false
#b3 != z1
true
##true
#b3 != z2
true
##true
#b3 != z3
true
##true
#z1 != a1
true
##true
#z1 != a2
true
##true
#z1 != a3
true
##true
#z1 != b1
true
##true
#z1 != b2
true
##true
#z1 != b3
true
##true
#z1 != z1
false
##false
#z1 != z2
true
##true
#z1 != z3
true
##true
#z2 != a1
true
##true
#z2 != a2
true
##true
#z2 != a3
true
##true
#z2 != b1
true
##true
#z2 != b2
true
##true
#z2 != b3
true
##true
#z2 != z1
true
##true
#z2 != z2
false
##false
#z2 != z3
true
##true
#z3 != a1
true
##true
#z3 != a2
true
##true
#z3 != a3
true
##true
#z3 != b1
true
##true
#z3 != b2
true
##true
#z3 != b3
true
##true
#z3 != z1
true
##true
#z3 != z2
true
##true
#z3 != z3
false
##false
###!
###!
###!----------------------------------------------
###5.5 Operador <
###!----------------------------------------------
###!
#a1 < a1
false
##false
#a1 < a2
true
##true
#a1 < a3
true
##true
#a1 < b1
true
##true
#a1 < b2
true
##true
#a1 < b3
true
##true
#a1 < z1
true
##true
#a1 < z2
true
##true
#a1 < z3
true
##true
#a2 < a1
false
##false
#a2 < a2
false
##false
#a2 < a3
true
##true
#a2 < b1
true
##true
#a2 < b2
true
##true
#a2 < b3
true
##true
#a2 < z1
true
##true
#a2 < z2
true
##true
#a2 < z3
true
##true
#a3 < a1
false
##false
#a3 < a2
false
##false
#a3 < a3
false
##false
#a3 < b1
true
##true
#a3 < b2
true
##true
#a3 < b3
true
##true
#a3 < z1
true
##true
#a3 < z2
true
##true
#a3 < z3
true
##true
#b1 < a1
false
##false
#b1 < a2
false
##false
#b1 < a3
false
##false
#b1 < b1
false
##false
#b1 < b2
true
##true
#b1 < b3
true
##true
#b1 < z1
true
##true
#b1 < z2
true
##true
#b1 < z3
true
##true
#b2 < a1
false
##false
#b2 < a2
false
##false
#b2 < a3
false
##false
#b2 < b1
false
##false
#b2 < b2
false
##false
#b2 < b3
true
##true
#b2 < z1
true
##true
#b2 < z2
true
##true
#b2 < z3
true
##true
#b3 < a1
false
##false
#b3 < a2
false
##false
#b3 < a3
false
##false
#b3 < b1
false
##false
#b3 < b2
false
##false
#b3 < b3
false
##false
#b3 < z1
true
##true
#b3 < z2
true
##true
#b3 < z3
true
##true
#z1 < a1
false
##false
#z1 < a2
false
##false
#z1 < a3
false
##false
#z1 < b1
false
##false
#z1 < b2
false
##false
#z1 < b3
false
##false
#z1 < z1
false
##false
#z1 < z2
true
##true
#z1 < z3
true
##true
#z2 < a1
false
##false
#z2 < a2
false
##false
#z2 < a3
false
##false
#z2 < b1
false
##false
#z2 < b2
false
##false
#z2 < b3
false
##false
#z2 < z1
false
##false
#z2 < z2
false
##false
#z2 < z3
true
##true
#z3 < a1
false
##false
#z3 < a2
false
##false
#z3 < a3
false
##false
#z3 < b1
false
##false
#z3 < b2
false
##false
#z3 < b3
false
##false
#z3 < z1
false
##false
#z3 < z2
false
##false
#z3 < z3
false
##false
###!
###!
###!----------------------------------------------
###5.6 Operador <=
###!----------------------------------------------
###!
#a1 <= a1
true
##true
#a1 <= a2
true
##true
#a1 <= a3
true
##true
#a1 <= b1
true
##true
#a1 <= b2
true
##true
#a1 <= b3
true
##true
#a1 <= z1
true
##true
#a1 <= z2
true
##true
#a1 <= z3
true
##true
#a2 <= a1
false
##false
#a2 <= a2
true
##true
#a2 <= a3
true
##true
#a2 <= b1
true
##true
#a2 <= b2
true
##true
#a2 <= b3
true
##true
#a2 <= z1
true
##true
#a2 <= z2
true
##true
#a2 <= z3
true
##true
#a3 <= a1
false
##false
#a3 <= a2
false
##false
#a3 <= a3
true
##true
#a3 <= b1
true
##true
#a3 <= b2
true
##true
#a3 <= b3
true
##true
#a3 <= z1
true
##true
#a3 <= z2
true
##true
#a3 <= z3
true
##true
#b1 <= a1
false
##false
#b1 <= a2
false
##false
#b1 <= a3
false
##false
#b1 <= b1
true
##true
#b1 <= b2
true
##true
#b1 <= b3
true
##true
#b1 <= z1
true
##true
#b1 <= z2
true
##true
#b1 <= z3
true
##true
#b2 <= a1
false
##false
#b2 <= a2
false
##false
#b2 <= a3
false
##false
#b2 <= b1
false
##false
#b2 <= b2
true
##true
#b2 <= b3
true
##true
#b2 <= z1
true
##true
#b2 <= z2
true
##true
#b2 <= z3
true
##true
#b3 <= a1
false
##false
#b3 <= a2
false
##false
#b3 <= a3
false
##false
#b3 <= b1
false
##false
#b3 <= b2
false
##false
#b3 <= b3
true
##true
#b3 <= z1
true
##true
#b3 <= z2
true
##true
#b3 <= z3
true
##true
#z1 <= a1
false
##false
#z1 <= a2
false
##false
#z1 <= a3
false
##false
#z1 <= b1
false
##false
#z1 <= b2
false
##false
#z1 <= b3
false
##false
#z1 <= z1
true
##true
#z1 <= z2
true
##true
#z1 <= z3
true
##true
#z2 <= a1
false
##false
#z2 <= a2
false
##false
#z2 <= a3
false
##false
#z2 <= b1
false
##false
#z2 <= b2
false
##false
#z2 <= b3
false
##false
#z2 <= z1
false
##false
#z2 <= z2
true
##true
#z2 <= z3
true
##true
#z3 <= a1
false
##false
#z3 <= a2
false
##false
#z3 <= a3
false
##false
#z3 <= b1
false
##false
#z3 <= b2
false
##false
#z3 <= b3
false
##false
#z3 <= z1
false
##false
#z3 <= z2
false
##false
#z3 <= z3
true
##true
###!
###!
###!----------------------------------------------
###5.7 Operador >
###!----------------------------------------------
###!
#a1 > a1
false
##false
#a1 > a2
false
##false
#a1 > a3
false
##false
#a1 > b1
false
##false
#a1 > b2
false
##false
#a1 > b3
false
##false
#a1 > z1
false
##false
#a1 > z2
false
##false
#a1 > z3
false
##false
#a2 > a1
true
##true
#a2 > a2
false
##false
#a2 > a3
false
##false
#a2 > b1
false
##false
#a2 > b2
false
##false
#a2 > b3
false
##false
#a2 > z1
false
##false
#a2 > z2
false
##false
#a2 > z3
false
##false
#a3 > a1
true
##true
#a3 > a2
true
##true
#a3 > a3
false
##false
#a3 > b1
false
##false
#a3 > b2
false
##false
#a3 > b3
false
##false
#a3 > z1
false
##false
#a3 > z2
false
##false
#a3 > z3
false
##false
#b1 > a1
true
##true
#b1 > a2
true
##true
#b1 > a3
true
##true
#b1 > b1
false
##false
#b1 > b2
false
##false
#b1 > b3
false
##false
#b1 > z1
false
##false
#b1 > z2
false
##false
#b1 > z3
false
##false
#b2 > a1
true
##true
#b2 > a2
true
##true
#b2 > a3
true
##true
#b2 > b1
true
##true
#b2 > b2
false
##false
#b2 > b3
false
##false
#b2 > z1
false
##false
#b2 > z2
false
##false
#b2 > z3
false
##false
#b3 > a1
true
##true
#b3 > a2
true
##true
#b3 > a3
true
##true
#b3 > b1
true
##true
#b3 > b2
true
##true
#b3 > b3
false
##false
#b3 > z1
false
##false
#b3 > z2
false
##false
#b3 > z3
false
##false
#z1 > a1
true
##true
#z1 > a2
true
##true
#z1 > a3
true
##true
#z1 > b1
true
##true
#z1 > b2
true
##true
#z1 > b3
true
##true
#z1 > z1
false
##false
#z1 > z2
false
##false
#z1 > z3
false
##false
#z2 > a1
true
##true
#z2 > a2
true
##true
#z2 > a3
true
##true
#z2 > b1
true
##true
#z2 > b2
true
##true
#z2 > b3
true
##true
#z2 > z1
true
##true
#z2 > z2
false
##false
#z2 > z3
false
##false
#z3 > a1
true
##true
#z3 > a2
true
##true
#z3 > a3
true
##true
#z3 > b1
true
##true
#z3 > b2
true
##true
#z3 > b3
true
##true
#z3 > z1
true
##true
#z3 > z2
true
##true
#z3 > z3
false
##false
###!
###!
###!----------------------------------------------
###5.8 Operador >=
###!----------------------------------------------
###!
#a1 >= a1
true
##true
#a1 >= a2
false
##false
#a1 >= a3
false
##false
#a1 >= b1
false
##false
#a1 >= b2
false
##false
#a1 >= b3
false
##false
#a1 >= z1
false
##false
#a1 >= z2
false
##false
#a1 >= z3
false
##false
#a2 >= a1
true
##true
#a2 >= a2
true
##true
#a2 >= a3
false
##false
#a2 >= b1
false
##false
#a2 >= b2
false
##false
#a2 >= b3
false
##false
#a2 >= z1
false
##false
#a2 >= z2
false
##false
#a2 >= z3
false
##false
#a3 >= a1
true
##true
#a3 >= a2
true
##true
#a3 >= a3
true
##true
#a3 >= b1
false
##false
#a3 >= b2
false
##false
#a3 >= b3
false
##false
#a3 >= z1
false
##false
#a3 >= z2
false
##false
#a3 >= z3
false
##false
#b1 >= a1
true
##true
#b1 >= a2
true
##true
#b1 >= a3
true
##true
#b1 >= b1
true
##true
#b1 >= b2
false
##false
#b1 >= b3
false
##false
#b1 >= z1
false
##false
#b1 >= z2
false
##false
#b1 >= z3
false
##false
#b2 >= a1
true
##true
#b2 >= a2
true
##true
#b2 >= a3
true
##true
#b2 >= b1
true
##true
#b2 >= b2
true
##true
#b2 >= b3
false
##false
#b2 >= z1
false
##false
#b2 >= z2
false
##false
#b2 >= z3
false
##false
#b3 >= a1
true
##true
#b3 >= a2
true
##true
#b3 >= a3
true
##true
#b3 >= b1
true
##true
#b3 >= b2
true
##true
#b3 >= b3
true
##true
#b3 >= z1
false
##false
#b3 >= z2
false
##false
#b3 >= z3
false
##false
#z1 >= a1
true
##true
#z1 >= a2
true
##true
#z1 >= a3
true
##true
#z1 >= b1
true
##true
#z1 >= b2
true
##true
#z1 >= b3
true
##true
#z1 >= z1
true
##true
#z1 >= z2
false
##false
#z1 >= z3
false
##false
#z2 >= a1
true
##true
#z2 >= a2
true
##true
#z2 >= a3
true
##true
#z2 >= b1
true
##true
#z2 >= b2
true
##true
#z2 >= b3
true
##true
#z2 >= z1
true
##true
#z2 >= z2
true
##true
#z2 >= z3
false
##false
#z3 >= a1
true
##true
#z3 >= a2
true
##true
#z3 >= a3
true
##true
#z3 >= b1
true
##true
#z3 >= b2
true
##true
#z3 >= b3
true
##true
#z3 >= z1
true
##true
#z3 >= z2
true
##true
#z3 >= z3
true
##true
###!
###!
###!
###!----------------------------------------------
###6 Destructora
###!----------------------------------------------
###!
#a1 destroy
#a2 destroy
#a3 destroy
#b1 destroy
#b2 destroy
#b3 destroy
#c1 destroy
#c2 destroy
#c3 destroy
#x1 destroy
#x2 destroy
#x3 destroy
#z1 destroy
#z2 destroy
#z3 destroy
###!
###!
###!
###!
###!-----------------------------------------------------------
###! JOC DE PROVES DE UBICACIO
###!-----------------------------------------------------------
###!
#load jp_public_ubicacio.in
###!----------------------------------------------
###!
###! JOC DE PROVES DE LA CLASSE UBICACIO
###!
###!----------------------------------------------
###!
###!
###!------------------------------------------------------------------
###1 Errors
###!------------------------------------------------------------------
###!
###!------------------------------------------------------------------
###1.1 Error 10: Ubicacio incorrecta
###!------------------------------------------------------------------
###!
#init u ubicacio -2 0 0
Error::ubicacio:10:Ubicacio incorrecta.
##Error::ubicacio:10:Ubicacio incorrecta.
#init u ubicacio -2 -1 -1
Error::ubicacio:10:Ubicacio incorrecta.
##Error::ubicacio:10:Ubicacio incorrecta.
#init u ubicacio -1 -2 -1
Error::ubicacio:10:Ubicacio incorrecta.
##Error::ubicacio:10:Ubicacio incorrecta.
#init u ubicacio -1 -1 -2
Error::ubicacio:10:Ubicacio incorrecta.
##Error::ubicacio:10:Ubicacio incorrecta.
#init u ubicacio -1 10 10
Error::ubicacio:10:Ubicacio incorrecta.
##Error::ubicacio:10:Ubicacio incorrecta.
###!
###!
###!
###!------------------------------------------------------------------
###2 Mètodes consultors
###!------------------------------------------------------------------
###!
#init u000 ubicacio 0 0 0
#init u007 ubicacio 0 0 7
#init u064 ubicacio 0 6 4
#init u_100 ubicacio -1 0 0
#init u_1_1_1 ubicacio -1 -1 -1
###!
###!
###!------------------------------------------------------------------
###2.1 Filera
###!------------------------------------------------------------------
###!
#u000 filera
0
##0
#u007 filera
0
##0
#u064 filera
0
##0
#u_100 filera
-1
##-1
#u_1_1_1 filera
-1
##-1
###!
###!
###!------------------------------------------------------------------
###2.2 Placa
###!------------------------------------------------------------------
###!
#u000 placa
0
##0
#u007 placa
0
##0
#u064 placa
6
##6
#u_100 placa
0
##0
#u_1_1_1 placa
-1
##-1
###!
###!
###!------------------------------------------------------------------
###2.3 Pis
###!------------------------------------------------------------------
###!
#u000 pis
0
##0
#u007 pis
7
##7
#u064 pis
4
##4
#u_100 pis
0
##0
#u_1_1_1 pis
-1
##-1
###!
###!
###!
###!----------------------------------------------
###3 Operadors de comparacio
###!----------------------------------------------
###!
###!----------------------------------------------
###3.1 Operador ==
###!----------------------------------------------
###!
#u000 == u000
true
##true
#u000 == u007
false
##false
#u000 == u064
false
##false
#u000 == u_100
false
##false
#u000 == u_1_1_1
false
##false
#u007 == u000
false
##false
#u007 == u007
true
##true
#u007 == u064
false
##false
#u007 == u_100
false
##false
#u007 == u_1_1_1
false
##false
#u064 == u000
false
##false
#u064 == u007
false
##false
#u064 == u064
true
##true
#u064 == u_100
false
##false
#u064 == u_1_1_1
false
##false
#u_100 == u000
false
##false
#u_100 == u007
false
##false
#u_100 == u064
false
##false
#u_100 == u_100
true
##true
#u_100 == u_1_1_1
false
##false
#u_1_1_1 == u000
false
##false
#u_1_1_1 == u007
false
##false
#u_1_1_1 == u064
false
##false
#u_1_1_1 == u_100
false
##false
#u_1_1_1 == u_1_1_1
true
##true
###!
###!
###!----------------------------------------------
###3.2 Operador !=
###!----------------------------------------------
###!
#u000 != u000
false
##false
#u000 != u007
true
##true
#u000 != u064
true
##true
#u000 != u_100
true
##true
#u000 != u_1_1_1
true
##true
#u007 != u000
true
##true
#u007 != u007
false
##false
#u007 != u064
true
##true
#u007 != u_100
true
##true
#u007 != u_1_1_1
true
##true
#u064 != u000
true
##true
#u064 != u007
true
##true
#u064 != u064
false
##false
#u064 != u_100
true
##true
#u064 != u_1_1_1
true
##true
#u_100 != u000
true
##true
#u_100 != u007
true
##true
#u_100 != u064
true
##true
#u_100 != u_100
false
##false
#u_100 != u_1_1_1
true
##true
#u_1_1_1 != u000
true
##true
#u_1_1_1 != u007
true
##true
#u_1_1_1 != u064
true
##true
#u_1_1_1 != u_100
true
##true
#u_1_1_1 != u_1_1_1
false
##false
###!
###!
###!----------------------------------------------
###3.3 Operador <
###!----------------------------------------------
###!
#u000 < u000
false
##false
#u000 < u007
true
##true
#u000 < u064
true
##true
#u000 < u_100
false
##false
#u000 < u_1_1_1
false
##false
#u007 < u000
false
##false
#u007 < u007
false
##false
#u007 < u064
true
##true
#u007 < u_100
false
##false
#u007 < u_1_1_1
false
##false
#u064 < u000
false
##false
#u064 < u007
false
##false
#u064 < u064
false
##false
#u064 < u_100
false
##false
#u064 < u_1_1_1
false
##false
#u_100 < u000
true
##true
#u_100 < u007
true
##true
#u_100 < u064
true
##true
#u_100 < u_100
false
##false
#u_100 < u_1_1_1
false
##false
#u_1_1_1 < u000
true
##true
#u_1_1_1 < u007
true
##true
#u_1_1_1 < u064
true
##true
#u_1_1_1 < u_100
true
##true
#u_1_1_1 < u_1_1_1
false
##false
###!
###!
###!----------------------------------------------
###3.4 Operador <=
###!----------------------------------------------
###!
#u000 <= u000
true
##true
#u000 <= u007
true
##true
#u000 <= u064
true
##true
#u000 <= u_100
false
##false
#u000 <= u_1_1_1
false
##false
#u007 <= u000
false
##false
#u007 <= u007
true
##true
#u007 <= u064
true
##true
#u007 <= u_100
false
##false
#u007 <= u_1_1_1
false
##false
#u064 <= u000
false
##false
#u064 <= u007
false
##false
#u064 <= u064
true
##true
#u064 <= u_100
false
##false
#u064 <= u_1_1_1
false
##false
#u_100 <= u000
true
##true
#u_100 <= u007
true
##true
#u_100 <= u064
true
##true
#u_100 <= u_100
true
##true
#u_100 <= u_1_1_1
false
##false
#u_1_1_1 <= u000
true
##true
#u_1_1_1 <= u007
true
##true
#u_1_1_1 <= u064
true
##true
#u_1_1_1 <= u_100
true
##true
#u_1_1_1 <= u_1_1_1
true
##true
###!
###!
###!----------------------------------------------
###3.5 Operador >
###!----------------------------------------------
###!
#u000 > u000
false
##false
#u000 > u007
false
##false
#u000 > u064
false
##false
#u000 > u_100
true
##true
#u000 > u_1_1_1
true
##true
#u007 > u000
true
##true
#u007 > u007
false
##false
#u007 > u064
false
##false
#u007 > u_100
true
##true
#u007 > u_1_1_1
true
##true
#u064 > u000
true
##true
#u064 > u007
true
##true
#u064 > u064
false
##false
#u064 > u_100
true
##true
#u064 > u_1_1_1
true
##true
#u_100 > u000
false
##false
#u_100 > u007
false
##false
#u_100 > u064
false
##false
#u_100 > u_100
false
##false
#u_100 > u_1_1_1
true
##true
#u_1_1_1 > u000
false
##false
#u_1_1_1 > u007
false
##false
#u_1_1_1 > u064
false
##false
#u_1_1_1 > u_100
false
##false
#u_1_1_1 > u_1_1_1
false
##false
###!
###!
###!----------------------------------------------
###3.6 Operador >=
###!----------------------------------------------
###!
#u000 >= u000
true
##true
#u000 >= u007
false
##false
#u000 >= u064
false
##false
#u000 >= u_100
true
##true
#u000 >= u_1_1_1
true
##true
#u007 >= u000
true
##true
#u007 >= u007
true
##true
#u007 >= u064
false
##false
#u007 >= u_100
true
##true
#u007 >= u_1_1_1
true
##true
#u064 >= u000
true
##true
#u064 >= u007
true
##true
#u064 >= u064
true
##true
#u064 >= u_100
true
##true
#u064 >= u_1_1_1
true
##true
#u_100 >= u000
false
##false
#u_100 >= u007
false
##false
#u_100 >= u064
false
##false
#u_100 >= u_100
true
##true
#u_100 >= u_1_1_1
true
##true
#u_1_1_1 >= u000
false
##false
#u_1_1_1 >= u007
false
##false
#u_1_1_1 >= u064
false
##false
#u_1_1_1 >= u_100
false
##false
#u_1_1_1 >= u_1_1_1
true
##true
###!
###!
###!
###!----------------------------------------------
###4 Constructora per copia
###!----------------------------------------------
###!
#initcopy c000 = u000
#initcopy c007 = u007
#initcopy c064 = u064
#initcopy c_100 = u_100
#initcopy c_1_1_1 = u_1_1_1
###!
###!
###!------------------------------------------------------------------
###4.1 Filera
###!------------------------------------------------------------------
###!
#c000 filera
0
##0
#c007 filera
0
##0
#c064 filera
0
##0
#c_100 filera
-1
##-1
#c_1_1_1 filera
-1
##-1
###!
###!
###!------------------------------------------------------------------
###4.2 Placa
###!------------------------------------------------------------------
###!
#c000 placa
0
##0
#c007 placa
0
##0
#c064 placa
6
##6
#c_100 placa
0
##0
#c_1_1_1 placa
-1
##-1
###!
###!
###!------------------------------------------------------------------
###4.3 Pis
###!------------------------------------------------------------------
###!
#c000 pis
0
##0
#c007 pis
7
##7
#c064 pis
4
##4
#c_100 pis
0
##0
#c_1_1_1 pis
-1
##-1
###!
###!
###!----------------------------------------------
###4.4 Operador ==
###!----------------------------------------------
###!
#c000 == c000
true
##true
#c000 == c007
false
##false
#c000 == c064
false
##false
#c000 == c_100
false
##false
#c000 == c_1_1_1
false
##false
#c007 == c000
false
##false
#c007 == c007
true
##true
#c007 == c064
false
##false
#c007 == c_100
false
##false
#c007 == c_1_1_1
false
##false
#c064 == c000
false
##false
#c064 == c007
false
##false
#c064 == c064
true
##true
#c064 == c_100
false
##false
#c064 == c_1_1_1
false
##false
#c_100 == c000
false
##false
#c_100 == c007
false
##false
#c_100 == c064
false
##false
#c_100 == c_100
true
##true
#c_100 == c_1_1_1
false
##false
#c_1_1_1 == c000
false
##false
#c_1_1_1 == c007
false
##false
#c_1_1_1 == c064
false
##false
#c_1_1_1 == c_100
false
##false
#c_1_1_1 == c_1_1_1
true
##true
###!
###!
###!----------------------------------------------
###4.5 Operador !=
###!----------------------------------------------
###!
#c000 != c000
false
##false
#c000 != c007
true
##true
#c000 != c064
true
##true
#c000 != c_100
true
##true
#c000 != c_1_1_1
true
##true
#c007 != c000
true
##true
#c007 != c007
false
##false
#c007 != c064
true
##true
#c007 != c_100
true
##true
#c007 != c_1_1_1
true
##true
#c064 != c000
true
##true
#c064 != c007
true
##true
#c064 != c064
false
##false
#c064 != c_100
true
##true
#c064 != c_1_1_1
true
##true
#c_100 != c000
true
##true
#c_100 != c007
true
##true
#c_100 != c064
true
##true
#c_100 != c_100
false
##false
#c_100 != c_1_1_1
true
##true
#c_1_1_1 != c000
true
##true
#c_1_1_1 != c007
true
##true
#c_1_1_1 != c064
true
##true
#c_1_1_1 != c_100
true
##true
#c_1_1_1 != c_1_1_1
false
##false
###!
###!
###!----------------------------------------------
###4.6 Operador <
###!----------------------------------------------
###!
#c000 < c000
false
##false
#c000 < c007
true
##true
#c000 < c064
true
##true
#c000 < c_100
false
##false
#c000 < c_1_1_1
false
##false
#c007 < c000
false
##false
#c007 < c007
false
##false
#c007 < c064
true
##true
#c007 < c_100
false
##false
#c007 < c_1_1_1
false
##false
#c064 < c000
false
##false
#c064 < c007
false
##false
#c064 < c064
false
##false
#c064 < c_100
false
##false
#c064 < c_1_1_1
false
##false
#c_100 < c000
true
##true
#c_100 < c007
true
##true
#c_100 < c064
true
##true
#c_100 < c_100
false
##false
#c_100 < c_1_1_1
false
##false
#c_1_1_1 < c000
true
##true
#c_1_1_1 < c007
true
##true
#c_1_1_1 < c064
true
##true
#c_1_1_1 < c_100
true
##true
#c_1_1_1 < c_1_1_1
false
##false
###!
###!
###!----------------------------------------------
###4.7 Operador <=
###!----------------------------------------------
###!
#c000 <= c000
true
##true
#c000 <= c007
true
##true
#c000 <= c064
true
##true
#c000 <= c_100
false
##false
#c000 <= c_1_1_1
false
##false
#c007 <= c000
false
##false
#c007 <= c007
true
##true
#c007 <= c064
true
##true
#c007 <= c_100
false
##false
#c007 <= c_1_1_1
false
##false
#c064 <= c000
false
##false
#c064 <= c007
false
##false
#c064 <= c064
true
##true
#c064 <= c_100
false
##false
#c064 <= c_1_1_1
false
##false
#c_100 <= c000
true
##true
#c_100 <= c007
true
##true
#c_100 <= c064
true
##true
#c_100 <= c_100
true
##true
#c_100 <= c_1_1_1
false
##false
#c_1_1_1 <= c000
true
##true
#c_1_1_1 <= c007
true
##true
#c_1_1_1 <= c064
true
##true
#c_1_1_1 <= c_100
true
##true
#c_1_1_1 <= c_1_1_1
true
##true
###!
###!
###!----------------------------------------------
###4.8 Operador >
###!----------------------------------------------
###!
#c000 > c000
false
##false
#c000 > c007
false
##false
#c000 > c064
false
##false
#c000 > c_100
true
##true
#c000 > c_1_1_1
true
##true
#c007 > c000
true
##true
#c007 > c007
false
##false
#c007 > c064
false
##false
#c007 > c_100
true
##true
#c007 > c_1_1_1
true
##true
#c064 > c000
true
##true
#c064 > c007
true
##true
#c064 > c064
false
##false
#c064 > c_100
true
##true
#c064 > c_1_1_1
true
##true
#c_100 > c000
false
##false
#c_100 > c007
false
##false
#c_100 > c064
false
##false
#c_100 > c_100
false
##false
#c_100 > c_1_1_1
true
##true
#c_1_1_1 > c000
false
##false
#c_1_1_1 > c007
false
##false
#c_1_1_1 > c064
false
##false
#c_1_1_1 > c_100
false
##false
#c_1_1_1 > c_1_1_1
false
##false
###!
###!
###!----------------------------------------------
###4.9 Operador >=
###!----------------------------------------------
###!
#c000 >= c000
true
##true
#c000 >= c007
false
##false
#c000 >= c064
false
##false
#c000 >= c_100
true
##true
#c000 >= c_1_1_1
true
##true
#c007 >= c000
true
##true
#c007 >= c007
true
##true
#c007 >= c064
false
##false
#c007 >= c_100
true
##true
#c007 >= c_1_1_1
true
##true
#c064 >= c000
true
##true
#c064 >= c007
true
##true
#c064 >= c064
true
##true
#c064 >= c_100
true
##true
#c064 >= c_1_1_1
true
##true
#c_100 >= c000
false
##false
#c_100 >= c007
false
##false
#c_100 >= c064
false
##false
#c_100 >= c_100
true
##true
#c_100 >= c_1_1_1
true
##true
#c_1_1_1 >= c000
false
##false
#c_1_1_1 >= c007
false
##false
#c_1_1_1 >= c064
false
##false
#c_1_1_1 >= c_100
false
##false
#c_1_1_1 >= c_1_1_1
true
##true
###!
###!
###!
###!----------------------------------------------
###5 Operador d'assignacio
###!----------------------------------------------
###!
#init x000 ubicacio 1 2 3
#init x007 ubicacio 4 5 6
#init x064 ubicacio 6 7 8
#init x_100 ubicacio 9 10 11
#init x_1_1_1 ubicacio 12 13 14
###!
###!
###!------------------------------------------------------------------
###5.1 Filera
###!------------------------------------------------------------------
###!
#x000 filera
1
##1
#x007 filera
4
##4
#x064 filera
6
##6
#x_100 filera
9
##9
#x_1_1_1 filera
12
##12
###!
###!
###!------------------------------------------------------------------
###5.2 Placa
###!------------------------------------------------------------------
###!
#x000 placa
2
##2
#x007 placa
5
##5
#x064 placa
7
##7
#x_100 placa
10
##10
#x_1_1_1 placa
13
##13
###!
###!
###!------------------------------------------------------------------
###5.3 Pis
###!------------------------------------------------------------------
###!
#x000 pis
3
##3
#x007 pis
6
##6
#x064 pis
8
##8
#x_100 pis
11
##11
#x_1_1_1 pis
14
##14
###!
###!
###!------------------------------------------------------------------
###5.4 Assignacio
###!------------------------------------------------------------------
###!
#x000 = c000
#x007 = c007
#x064 = c064
#x_100 = c_100
#x_1_1_1 = c_1_1_1
###!
###!
###!----------------------------------------------
###5.5 Operador ==
###!----------------------------------------------
###!
#x000 == x000
true
##true
#x000 == x007
false
##false
#x000 == x064
false
##false
#x000 == x_100
false
##false
#x000 == x_1_1_1
false
##false
#x007 == x000
false
##false
#x007 == x007
true
##true
#x007 == x064
false
##false
#x007 == x_100
false
##false
#x007 == x_1_1_1
false
##false
#x064 == x000
false
##false
#x064 == x007
false
##false
#x064 == x064
true
##true
#x064 == x_100
false
##false
#x064 == x_1_1_1
false
##false
#x_100 == x000
false
##false
#x_100 == x007
false
##false
#x_100 == x064
false
##false
#x_100 == x_100
true
##true
#x_100 == x_1_1_1
false
##false
#x_1_1_1 == x000
false
##false
#x_1_1_1 == x007
false
##false
#x_1_1_1 == x064
false
##false
#x_1_1_1 == x_100
false
##false
#x_1_1_1 == x_1_1_1
true
##true
###!
###!
###!----------------------------------------------
###5.6 Operador !=
###!----------------------------------------------
###!
#x000 != x000
false
##false
#x000 != x007
true
##true
#x000 != x064
true
##true
#x000 != x_100
true
##true
#x000 != x_1_1_1
true
##true
#x007 != x000
true
##true
#x007 != x007
false
##false
#x007 != x064
true
##true
#x007 != x_100
true
##true
#x007 != x_1_1_1
true
##true
#x064 != x000
true
##true
#x064 != x007
true
##true
#x064 != x064
false
##false
#x064 != x_100
true
##true
#x064 != x_1_1_1
true
##true
#x_100 != x000
true
##true
#x_100 != x007
true
##true
#x_100 != x064
true
##true
#x_100 != x_100
false
##false
#x_100 != x_1_1_1
true
##true
#x_1_1_1 != x000
true
##true
#x_1_1_1 != x007
true
##true
#x_1_1_1 != x064
true
##true
#x_1_1_1 != x_100
true
##true
#x_1_1_1 != x_1_1_1
false
##false
###!
###!
###!----------------------------------------------
###5.7 Operador <
###!----------------------------------------------
###!
#x000 < x000
false
##false
#x000 < x007
true
##true
#x000 < x064
true
##true
#x000 < x_100
false
##false
#x000 < x_1_1_1
false
##false
#x007 < x000
false
##false
#x007 < x007
false
##false
#x007 < x064
true
##true
#x007 < x_100
false
##false
#x007 < x_1_1_1
false
##false
#x064 < x000
false
##false
#x064 < x007
false
##false
#x064 < x064
false
##false
#x064 < x_100
false
##false
#x064 < x_1_1_1
false
##false
#x_100 < x000
true
##true
#x_100 < x007
true
##true
#x_100 < x064
true
##true
#x_100 < x_100
false
##false
#x_100 < x_1_1_1
false
##false
#x_1_1_1 < x000
true
##true
#x_1_1_1 < x007
true
##true
#x_1_1_1 < x064
true
##true
#x_1_1_1 < x_100
true
##true
#x_1_1_1 < x_1_1_1
false
##false
###!
###!
###!----------------------------------------------
###5.8 Operador <=
###!----------------------------------------------
###!
#x000 <= x000
true
##true
#x000 <= x007
true
##true
#x000 <= x064
true
##true
#x000 <= x_100
false
##false
#x000 <= x_1_1_1
false
##false
#x007 <= x000
false
##false
#x007 <= x007
true
##true
#x007 <= x064
true
##true
#x007 <= x_100
false
##false
#x007 <= x_1_1_1
false
##false
#x064 <= x000
false
##false
#x064 <= x007
false
##false
#x064 <= x064
true
##true
#x064 <= x_100
false
##false
#x064 <= x_1_1_1
false
##false
#x_100 <= x000
true
##true
#x_100 <= x007
true
##true
#x_100 <= x064
true
##true
#x_100 <= x_100
true
##true
#x_100 <= x_1_1_1
false
##false
#x_1_1_1 <= x000
true
##true
#x_1_1_1 <= x007
true
##true
#x_1_1_1 <= x064
true
##true
#x_1_1_1 <= x_100
true
##true
#x_1_1_1 <= x_1_1_1
true
##true
###!
###!
###!----------------------------------------------
###5.9 Operador >
###!----------------------------------------------
###!
#x000 > x000
false
##false
#x000 > x007
false
##false
#x000 > x064
false
##false
#x000 > x_100
true
##true
#x000 > x_1_1_1
true
##true
#x007 > x000
true
##true
#x007 > x007
false
##false
#x007 > x064
false
##false
#x007 > x_100
true
##true
#x007 > x_1_1_1
true
##true
#x064 > x000
true
##true
#x064 > x007
true
##true
#x064 > x064
false
##false
#x064 > x_100
true
##true
#x064 > x_1_1_1
true
##true
#x_100 > x000
false
##false
#x_100 > x007
false
##false
#x_100 > x064
false
##false
#x_100 > x_100
false
##false
#x_100 > x_1_1_1
true
##true
#x_1_1_1 > x000
false
##false
#x_1_1_1 > x007
false
##false
#x_1_1_1 > x064
false
##false
#x_1_1_1 > x_100
false
##false
#x_1_1_1 > x_1_1_1
false
##false
###!
###!
###!----------------------------------------------
###5.10 Operador >=
###!----------------------------------------------
###!
#x000 >= x000
true
##true
#x000 >= x007
false
##false
#x000 >= x064
false
##false
#x000 >= x_100
true
##true
#x000 >= x_1_1_1
true
##true
#x007 >= x000
true
##true
#x007 >= x007
true
##true
#x007 >= x064
false
##false
#x007 >= x_100
true
##true
#x007 >= x_1_1_1
true
##true
#x064 >= x000
true
##true
#x064 >= x007
true
##true
#x064 >= x064
true
##true
#x064 >= x_100
true
##true
#x064 >= x_1_1_1
true
##true
#x_100 >= x000
false
##false
#x_100 >= x007
false
##false
#x_100 >= x064
false
##false
#x_100 >= x_100
true
##true
#x_100 >= x_1_1_1
true
##true
#x_1_1_1 >= x000
false
##false
#x_1_1_1 >= x007
false
##false
#x_1_1_1 >= x064
false
##false
#x_1_1_1 >= x_100
false
##false
#x_1_1_1 >= x_1_1_1
true
##true
###!
###!
###!
###!----------------------------------------------
###6 Destructora
###!----------------------------------------------
###!
#u000 destroy
#u007 destroy
#u064 destroy
#u_100 destroy
#u_1_1_1 destroy
#c000 destroy
#c007 destroy
#c064 destroy
#c_100 destroy
#c_1_1_1 destroy
#x000 destroy
#x007 destroy
#x064 destroy
#x_100 destroy
#x_1_1_1 destroy
###!
###!
###!
###!-----------------------------------------------------------
###! JOC DE PROVES DE CATALEG
###!-----------------------------------------------------------
###!
#load jp_public_cataleg.in
###!----------------------------------------------
###!
###! JOCS DE PROVES DE LA CLASSE CATALEG
###!
###!----------------------------------------------
###!
###!------------------------------------------------------------------
###1 Cataleg buit
###!------------------------------------------------------------------
###!
#init a1 cataleg<int> 0
###!
#val KuCha12
Error::cataleg:31:Clau inexistent.
##Error::cataleg:31:Clau inexistent.
###!
#existeix KuCha12
false
##false
#quants
0
##0
###!
#elimina KuCha12
Error::cataleg:31:Clau inexistent.
##Error::cataleg:31:Clau inexistent.
#existeix KuCha12
false
##false
#quants
0
##0
###!
#a1 destroy
###!
###!
###!
###!------------------------------------------------------------------
###2 Una clau
###!------------------------------------------------------------------
###!
###!------------------------------
###2.1 Clau NO present al cataleg
###!------------------------------
###!
#init a2 cataleg<int> 1
###!
#assig KuCha12 12
###!
#val KuCha12
12
##12
#val KuCha13
Error::cataleg:31:Clau inexistent.
##Error::cataleg:31:Clau inexistent.
###!
#existeix KuCha12
true
##true
#existeix KuCha13
false
##false
#quants
1
##1
###!
###!
###!------------------------------
###2.2 Clau present al cataleg
###!------------------------------
###!
#assig KuCha12 12
###!
#val KuCha12
12
##12
#val KuCha13
Error::cataleg:31:Clau inexistent.
##Error::cataleg:31:Clau inexistent.
###!
#existeix KuCha12
true
##true
#existeix KuCha13
false
##false
#quants
1
##1
###!
#elimina KuCha12
#existeix KuCha12
false
##false
#quants
0
##0
###!
#a2 destroy
###!
###!
###!
###!------------------------------------------------------------------
###3 Dues claus
###!------------------------------------------------------------------
###!
###!------------------------------
###3.1 Clau assignada al principi
###!------------------------------
###!
#init a31 cataleg<int> 2
###!
#assig KuCha1 1
#assig HuCha2 2
###!
#val KuCha1
1
##1
#val HuCha2
2
##2
#val HuCha13
Error::cataleg:31:Clau inexistent.
##Error::cataleg:31:Clau inexistent.
###!
#existeix KuCha1
true
##true
#existeix HuCha2
true
##true
#existeix HuCha13
false
##false
#quants
2
##2
###!
#elimina KuCha1
#elimina HuCha2
#existeix KuCha1
false
##false
#existeix HuCha2
false
##false
#existeix HuCha13
false
##false
#quants
0
##0
###!
#a31 destroy
###!
###!
###!------------------------------
###3.2 Clau assignada al final
###!------------------------------
###!
#init a32 cataleg<int> 2
###!
#assig HuCha1 1
#assig KuCha2 2
###!
#val KuCha2
2
##2
#val HuCha1
1
##1
#val HuCha13
Error::cataleg:31:Clau inexistent.
##Error::cataleg:31:Clau inexistent.
###!
#existeix HuCha1
true
##true
#existeix KuCha2
true
##true
#existeix HuCha13
false
##false
###!
#quants
2
##2
###!
#a32 destroy
###!
###!
###!
###!------------------------------------------------------------------
###4 Tres claus
###!------------------------------------------------------------------
###!
###!------------------------------
###4.1 Clau assignada al principi
###!------------------------------
###!
#init a41 cataleg<int> 3
###!
#assig HuCha1 1
#assig KuCha2 2
#assig AuCha3 3
