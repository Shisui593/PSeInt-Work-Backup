Proceso ventas_con_descuento
	Definir valor_unitario, valor_con_desc, valor_del_desc, valor_desc_adicional_200 Como Real
	Definir opcion_tabla, cantidad_item Como Entero
	Definir error_unidades_txt, error_precio_unitario_txt Como Cadena
	// Atajo para llamar directamente una funcion con un texto pre-elaborado para no
	// repetir el mismo mensaje muchas veces
	error_unidades_txt <- 'El número de unidades no puede ser 0'
	error_precio_unitario_txt <- 'El valor unitario no puede ser 0'
	Escribir '---- Las siguientes categorías poseen descuentos ----'
	Escribir '1) Técnologia : Relojes inteligentes'
	Escribir '2) Ropa : Sacos talla L'
	Escribir '3) Alimentos : Frutas enlatadas'
	Escribir '4) Hogar : Sillones (Desc - 8%)'
	Escribir '-----------------------------------------------------'
	Escribir 'Seleccione una opción'
	Leer opcion_tabla
	Si opcion_tabla<=0 O opcion_tabla>=5 Entonces
		Escribir 'Opción no disponible en el menú'
	SiNo
		Según opcion_tabla Hacer
			1:
				Escribir 'Categoria Tecnología : 5% de Descuento'
				Escribir 'Ingrese el valor unitario:'
				Leer valor_unitario
				Si valor_unitario<=0 Entonces
					Escribir error_precio_unitario_txt
				SiNo
					Escribir '¿Cuantos unidades desea comprar? ', valor_unitario, '$ c/u'
					Leer cantidad_item
					Si cantidad_item<=0 Entonces
						Escribir error_unidades_txt
					SiNo
						valor_del_desc <- (valor_unitario*cantidad_item)*0.05
						valor_con_desc <- (valor_unitario*cantidad_item)-valor_del_desc
					FinSi
				FinSi
			2:
				Escribir 'Categoria Ropa : 10% de Descuento'
				Escribir 'Ingrese el valor unitario:'
				Leer valor_unitario
				Si valor_unitario<=0 Entonces
					Escribir error_precio_unitario_txt
				SiNo
					Escribir '¿Cuantos unidades desea comprar? ', valor_unitario, '$ c/u'
					Leer cantidad_item
					Si cantidad_item<=0 Entonces
						Escribir error_unidades_txt
					SiNo
						valor_del_desc <- (valor_unitario*cantidad_item)*0.10
						valor_con_desc <- (valor_unitario*cantidad_item)-valor_del_desc
					FinSi
				FinSi
			3:
				Escribir 'Categoria Alimentos : 3% de Descuento'
				Escribir 'Ingrese el valor unitario:'
				Leer valor_unitario
				Si valor_unitario<=0 Entonces
					Escribir error_precio_unitario_txt
				SiNo
					Escribir '¿Cuantos unidades desea comprar? ', valor_unitario, '$ c/u'
					Leer cantidad_item
					Si cantidad_item<=0 Entonces
						Escribir error_unidades_txt
					SiNo
						valor_del_desc <- (valor_unitario*cantidad_item)*0.03
						valor_con_desc <- (valor_unitario*cantidad_item)-valor_del_desc
					FinSi
				FinSi
			4:
				Escribir 'Categoria Hogar : 8% de Descuento'
				Escribir 'Ingrese el valor unitario:'
				Leer valor_unitario
				Si valor_unitario<=0 Entonces
					Escribir error_precio_unitario_txt
				SiNo
					Escribir '¿Cuantos unidades desea comprar? ', valor_unitario, '$ c/u'
					Leer cantidad_item
					Si cantidad_item<=0 Entonces
						Escribir error_unidades_txt
					SiNo
						valor_del_desc <- (valor_unitario*cantidad_item)*0.08
						valor_con_desc <- (valor_unitario*cantidad_item)-valor_del_desc
					FinSi
				FinSi
		FinSegún
		Si valor_con_desc>200 Entonces
			Escribir '-----------------------------------------------------'
			Escribir 'Su compra supera los 200$'
			Escribir 'Se le aplicará un 5% de descuento adicional'
			valor_desc_adicional_200 <- valor_con_desc*.05
		SiNo
			valor_desc_adicional_200 <- 0
		FinSi
		Escribir '-----------------------------------------------------'
		Escribir 'Subtotal a pagar: ', (valor_unitario*cantidad_item), '$'
		Escribir 'Descuento de categoria: -', valor_del_desc, '$'
		Escribir 'Descuento adicional (+200$): -', valor_desc_adicional_200, '$'
		Escribir '-----------------------------------------------------'
		Escribir 'Total a pagar: ', (valor_con_desc-valor_desc_adicional_200), '$'
	FinSi
FinProceso
