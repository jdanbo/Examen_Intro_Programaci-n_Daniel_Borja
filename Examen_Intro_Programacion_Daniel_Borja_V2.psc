Funcion opcMenu <- menu
	
	Escribir "*******************************"
	Escribir ""
	Escribir "Menu de Calculo de Notas"
	Escribir "1. Ingreso de Notas"
	Escribir "2. Registro de Inasistencias"
	Escribir "3. Listado de Estudiantes"
	Escribir "4. Calculo de Notas Finales"
	Escribir "5. Salir del Programa"
	Escribir ""
	Escribir "*******************************"
	Leer opcMenu
	Esperar 100 Milisegundos
	
Fin Funcion

Algoritmo Examenv2
	
	//Registro de 10 estudiantes
	//Necesitamos nombre y codigo
	
	//Asignar 3 notas parciales a cada estudiante
	//Registro de inasistencias
	//Mostrar listado de estudiantes
	
	//Calcular nota finals
	//Calcular por nota aritmetica
	//Deberá disminuir segun inasistencias
	//10 o mas y menos de 15 - -0.5
	//15 o mas - -1
	//Se muestra la lista de estudiantes con notas parciales, inasistencias y nota finals
	
	Definir codigoEstudiantes, nota1, nota2, nota3, opcMenu, i, notaFinal Como Real
	Definir nombreEstudiantes Como Caracter
	
	Escribir "Bienvenido al Registro de Estudiantes"
	Escribir ""
	
	Dimensionar nombreEstudiantes[10]
	Dimensionar codigoEstudiantes[10]
	Dimensionar nota1[10]
	Dimensionar nota2[10]
	Dimensionar nota3[10]
	Dimensionar inasistencias[10]

	
	Para i Desde 0 Hasta 9 Hacer
		Escribir "*********************************************"
		Escribir "Bienvenido, porfavor ingrese NOMBRE del estudiante #", i+1
		Leer nombreEstudiantes[i]
		Escribir "Bienvenido, porfavor ingrese CODIGO del estudiante", i
		Leer codigoEstudiantes[i]
		Esperar 100 Milisegundos
		Escribir ""
	Fin Para
	
	Escribir "Lista de Estudiantes Completa"
	Escribir ""
	
	Repetir
		Escribir "Bienvenido al programa para calcular notas"
		Escribir "Porfavor ingrese la opcion que desee"
		opcMenu <- menu
		
		
		Segun opcMenu Hacer
			1:
				Escribir "Bienvenido al Registro de Notas"
				Escribir ""
				
				Para i Desde 0 Hasta 9 Hacer
					Escribir "*********************************************"
					Escribir "Bienvenido, porfavor ingresar las 3 notas del estudiante: ", nombreEstudiantes[i]
					Escribir ""
					Escribir "Ingrese la nota 1 del estudiante", i+1
					Leer nota1[i]
					Escribir "Ingrese la nota 2 del estudiante", i
					Leer nota2[i]
					Escribir "Ingrese la nota 3 del estudiante", i
					Leer nota3[i]
					Escribir ""
					Escribir "Nota 1: ", nota1[i], " Nota 2: ", nota2[i], " Nota 3: ", nota3[i]
					Esperar 100 Milisegundos
					Escribir ""
				Fin Para
				
				Escribir "Volviendo al Menu Principal"
				Escribir ""
				
			2:
				Escribir "Bienvenido al Registro de Inasistencias"
				Escribir ""
								
				Para i Desde 0 Hasta 9 Hacer
					Escribir "*********************************************"
					Escribir "Bienvenido, porfavor ingresar las inasistencias del estudiante: ", nombreEstudiantes[i]
					Escribir ""
					Escribir "Ingrese la inasistencia del estudiante", i+1
					Leer inasistencias[i]
					Escribir ""
					Escribir "Estudiante #", nombreEstudiantes[i], " Inasistencias: ", inasistencias[i]
					Esperar 100 Milisegundos
					Escribir ""
				Fin Para
				
				Escribir "Volviendo al Menu Principal"
				Escribir ""
				
			3:
				Escribir "Bienvenido al Listado de Estudiantes"
				Escribir ""
				Para i Desde 0 Hasta 9 Hacer
					Escribir "*********************************************"
					Escribir "Estudiante: ", nombreEstudiantes[i]
					Escribir ""
					Escribir "Codigo: ", codigoEstudiantes[i]
					Escribir ""
					Escribir "Nota1: ", nota1[i]
					Escribir ""
					Escribir "Nota2: ", nota2[i]
					Escribir ""
					Escribir "Nota3: ", nota3[i]
					Escribir ""
					Esperar 100 Milisegundos
					Escribir ""
				Fin Para
				
				Escribir "Volviendo al Menu Principal"
				Escribir ""
				
			4:
				Escribir "Bienvenido al Calculo de Notas Finales"
				Escribir ""
				
				//notaFinal = (nota1[i] + nota2[i] + nota3[i]) /3
				
				Para i Desde 0 Hasta 9 Hacer
					
					notaFinal = (nota1[i] + nota2[i] + nota3[i]) /3
					
					Escribir "*********************************************"
					Escribir "Estudiante: ", nombreEstudiantes[i]
					Escribir ""
					Escribir "Codigo: ", codigoEstudiantes[i]
					Escribir ""
					Escribir "Nota1: ", nota1[i]
					Escribir ""
					Escribir "Nota2: ", nota2[i]
					Escribir ""
					Escribir "Nota3: ", nota3[i]
					Escribir ""
					Escribir "Nota Final: ", notaFinal
					Escribir ""
					
					Si notaFinal > 15 Entonces
						
						Escribir "Por inasistencias el estudiante tiene -1pt!"
						Escribir "Nota Final Total = ", notaFinal - 1
						
					SiNo
						Si notaFinal >= 10 Entonces
							
							Escribir "Por inasistencias el estudiante tiene -1pt!"
							Escribir "Nota Final Total = ", notaFinal - 0.5
							
						Fin Si
					Fin Si
				Fin Para
				
				Escribir "Volviendo al Menu Principal"
				Escribir ""
				
				
			De Otro Modo:
				Escribir "Error. Porfavor, ingrese un numero correcto"
		Fin Segun
		
	Hasta Que opcMenu = 5
	
	
FinAlgoritmo


