Algoritmo JuegoPokemon
	
	// Definimos el tipo de las variables que serás usadas
	Definir vidaPikachu, vidaJigglypuff Como Entero
	Definir ataquePikachu, ataqueJigglypuff Como Entero
	Definir turno Como Entero
	Definir ganador Como Caracter
	
	// Asignamos la cantidad de vida para ambos pokemones
	vidaPikachu <- 100
	vidaJigglypuff <- 100
	
	//Se define el turno aleatoriamente 
	// 0 para Pikachu
	// 1 para Jigglypuff
	turno <- azar(2)
	
	// Se asigna el valor aumentado en uno (+1) en'azar()' 
	// para que tomo los valores del 0 al numero indicado menos 1
	
	// Entramos en el ciclo
	Escribir 'Vida de Pikachu: ', vidaPikachu, ' HP'
	Escribir 'Vida de Jigglypuff: ', vidaJigglypuff, ' HP'
	
	Mientras vidaPikachu >= 0 & vidaJigglypuff >= 0 Hacer
		
		// Asignamos la cantidad de ataque que tendrá cada pokemon
		ataquePikachu <- azar(56)
		ataqueJigglypuff <- azar (46)
		
		Si turno = 1 Entonces
			Escribir ''
			Escribir 'Turno: Jigglypuff'
			Escribir 'La vida actual de Pikachu: ', vidaPikachu, ' HP' 
			vidaPikachu <- vidaPikachu - ataqueJigglypuff
			Escribir 'Ataque de Jigglypuff: -', ataqueJigglypuff
			Escribir 'Vida de Pikachu restante: ', vidaPikachu, ' HP'
			turno <- 0
		SiNo
			Escribir ''
			Escribir 'Turno: Pikachu'
			Escribir 'La vida actual de Jigglypuff: ', vidaJigglypuff, ' HP'
			vidaJigglypuff <- vidaJigglypuff - ataquePikachu			
			Escribir 'Ataque de Pikachu: -', ataquePikachu
			Escribir 'Vida de Jigglypuff restante: ', vidaJigglypuff, ' HP'
			turno <- 1
		FinSi
	FinMientras
	
	Si vidaPikachu <= 0 Entonces
		ganador <- 'El ganador es Jigglypuff'
		
	SiNo
		ganador <- 'El ganador es Pikachu'
	FinSi
	
	Escribir ''
	Escribir ganador
	
FinAlgoritmo
