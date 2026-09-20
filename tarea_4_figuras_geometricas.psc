Proceso tarea_4_figuras_geometricas
	Definir figura_Datos_1, figura_Datos_2, calculo_Area Como Real
	Definir seleccion_Tabla Como Entero
	Definir error_txt Como Cadena
	// Experimento de si puedo guardar un texto como una variable para no tener que repetir
	// el mismo texto muchas veces a manos, sino solo poder llamar a una funcion con el mensaje
	// pre-cargado
	error_txt <- 'El valor debe ser mayor que 0'
	Escribir 'Seleccione la figura geométrica'
	Escribir 'que desea calcular el área'
	Escribir '1.- Cuadrado'
	Escribir '2.- Rectángulo'
	Escribir '3.- Triángulo'
	Escribir '4.- Circulo'
	Leer seleccion_Tabla
	Si seleccion_Tabla<=0 O seleccion_Tabla>=5 Entonces
		Escribir 'Opción Incorrecta.'
	SiNo
		Según seleccion_Tabla Hacer
			1:
				Escribir 'Opción seleccionada : Cuadrado'
				Escribir 'Ingrese 1 de los lados'
				Leer figura_Datos_1
				Si figura_Datos_1<=0 Entonces
					Escribir error_txt
				SiNo
					calculo_Area <- figura_Datos_1*figura_Datos_1
				FinSi
			2:
				Escribir 'Opción seleccionada : Rectángulo'
				Escribir 'Ingrese el valor de la longitud'
				Leer figura_Datos_1
				Si figura_Datos_1<=0 Entonces
					Escribir error_txt
				SiNo
					Escribir 'Ingrese el valor del ancho'
					Leer figura_Datos_2
					Si figura_Datos_2<=0 Entonces
						Escribir 'El valor debe ser mayor de 0'
					SiNo
						calculo_Area <- figura_Datos_1*figura_Datos_2
					FinSi
				FinSi
			3:
				Escribir 'Opción seleccionada : Triángulo'
				Escribir 'Ingrese el valor de la base'
				Leer figura_Datos_1
				Si figura_Datos_1<=0 Entonces
					Escribir error_txt
				SiNo
					Escribir 'Ingrese el valor de la altura'
					Leer figura_Datos_2
					Si figura_Datos_2<=0 Entonces
						Escribir 'El valor debe ser mayor de 0'
					SiNo
						calculo_Area <- (figura_Datos_1*figura_Datos_2)/2
					FinSi
				FinSi
			4:
				Escribir 'Opción seleccionada : Circulo'
				Escribir 'Ingrese el valor del radio'
				Leer figura_Datos_1
				Si figura_Datos_1<=0 Entonces
					Escribir error_txt
				SiNo
					calculo_Area <- PI*(figura_Datos_1*figura_Datos_1)
				FinSi
		FinSegún
		Escribir 'El área total es: ', calculo_Area
	FinSi
FinProceso
