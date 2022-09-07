-- RECURSION

---- Examples
------ factorial
fact 0 = 1
fact n = n * fact(n - 1)

------ fibonacci
fibo 0 = 0
fibo 1 = 1
fibo n = fibo (n-1) + fibo (n-2)

------ list len
len [] = 0
-- (x:xs) patron para representar una lista
---- no valido para listas vacias
-- x primer elemento
-- xs resto de la lista sin x
len (x:xs) = 1 + len xs

------ summap
summap [] = 0
summap (x:xs) = x + summap xs

------ concatlist
concatlist [] [] = []
concatlist [] list = list
-- concatlist l [] = l 
-- NOTE: ":" añade un elemento al principio de la lista
-- Ex: 1 : [2,3] => [1,2,3]
concatlist (x:xs) list = x : concatlist xs list

------ reverselist
-- NOTE: "++" concatena dos listas
-- Ex: [1,3] ++ [4,6] => [1,3,4,6]
reverselist [] = []
reverselist (x:xs) = reverselist xs ++ [x]

------ minimo
minimo [] = error "Conjunto vacio"
minimo [x] = x
-- x e y elementos
-- t lista 
minimo (x:y:t) = if x < y then minimo (x:t) else minimo (y:t)

------ listtake
listtake [] _ = []
listtake list 0  = []
listtake (x:xs) n = x : listtake xs (n-1)

------ listdrop
listdrop [] _ = []
listdrop list 0 = []
listdrop (x:xs) n = listdrop xs (n-1)