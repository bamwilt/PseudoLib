Algoritmo sin_titulo
	//==============
	//direction RIGHT/LAST
	//(new set: routed)
	//add_50 = 1.5s
	//add_100 = 3.2s
	//add_200 = 6s
	//add_300 = 9s
	//add_400 = 12s
	//(old set/ linear)
	//add_50 = 2s
	//add_100 = 4s
	//add_200 = 12s
	//add_300 = 22s
	//add_400 = 31s
	//==============
	//(last)
	//(new : routed)
	//add_400 = 13 segundos
	//add_300 = 11 segundos
	//add_200 = 7 segundos
	//add_100 = 3.5 segundos
	//add_ 10 = 0.3 segundos
	//add_100+get(1)   = 5 segundos
	//add_100+get(100) = 5 segundos
	//add_100+get(50)  = 10 segundos
	//add_100+set(50)  = 10 segundos
	//add_100+remove(50)  = 10 segundos
	//(old : linear)
	//add_400 = 60 segundos
	//add_300 = 42 segundos
	//add_200 = 18 segundos
	//add_100 = 5 segundos
	//add_10 = 1 segundos
	//add_100+get(1) = 10 segundos
	//add_100+get(50) = 15 segundos
	//add_100+get(100) = 21 segundos
	//add_100+set(50) = 17 segundos
	//add_100+remove(50) = 16 segundos 
	//_________(first)
	//DIRECITION LEFT/FIRTS
	//(new : routed)
	//hacer 100 inserciones cada 3.4 segundos
	//old
	//hace 100 inserciones cada 1 segundo 
	//===========
	//las collection cercanas a map
	//(collectinoDictionary)
	//add(50) = 4s
	//add(100) = 7s
	//add(200) = 14s
	//add(300) = 28s
	//add(400) = 29s
	//add(500) = 37s
	//...
	//add(50)+ 50 veces get(1)  = 5.5s
	//add(50)+ 50 veces get(49) = 5.5s
	//add(100)+50 veces get(1) = 9s
	//add(100)+50 veces get(99) = 9s
	//_ _ _
	//(storageCellsCollection)
	//add(50) = 3s
	//add(100) = 5s
	//add(200) = 13s
	//add(300) = 24s
	//add(400) = 36s
	//add(500) = 50s
	//..
	//add(50)+ 50 veces get(1)  = 6s
	//add(50)+ 50 veces get(49) = 10s
	//add(100)+ 50 veces get(1) = 11s
	//add(100)+ 50 veces get(99) =19s
	//________
	//el nuevo requiere orden por si solo uniform
	//ya puede hacer eso de forma nativa
	//el que paga el precio de orden es routed
	//este requiere sumatorias para poder
	//mantenerse ordenado a la hora de insertar
	
	Escribir "[1m[37m"; // COLOR_BWHITE
	Escribir "[1m[33m"; // COLOR_YELLOW
	Escribir "[1m[35m"; // COLOR_LMAGENTA
	Escribir "[1m[31m"; // COLOR_LRED
	Escribir "[1m[36m"; // COLOR_LCYAN
	Escribir "[1m[32m"; // COLOR_LGREEN
	Escribir "[1m[34m"; // COLOR_LBLUE
	Escribir "[1m[30m"; // COLOR_GRAY
	Escribir "[0m[37m"; // COLOR_WHITE
	Escribir "[0m[33m"; // COLOR_BROWN
	Escribir "[0m[35m"; // COLOR_MAGENTA
	Escribir "[0m[31m"; // COLOR_RED
	Escribir "[0m[36m"; // COLOR_CYAN
	Escribir "[0m[32m"; // COLOR_GREEN
	Escribir "[0m[34m"; // COLOR_BLUE
	Escribir "[0m[30m"; // COLOR_BLACK
	
FinAlgoritmo
