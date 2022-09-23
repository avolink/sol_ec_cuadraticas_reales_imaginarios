// Programa: Solucion Ecuacion Cuadratica con Numeros Imaginarios
// Autor: Juan David Gutierrez Naranjo
// Clase: Fund. de Programacion con Herramientas Graficas - Vieres 4 p.m.

Algoritmo sol_ecuacion_cuadratica
	
	Definir a, b, c, d Como Real; // Actualizacion  coeficientes Entero a Reales
	Definir x1, x2, x1_real, x1_imag, x2_real, x2_imag, disc Como Real;
	Definir reiniciar Como Texto;
	
	Definir x Como Texto;
	
	Escribir "Solucion ecuacion cuadratica: x = -b  +-  raiz ( b^2 - 4*a*(c-d) / 2*a";
	Esperar 1 Segundos;
	Escribir "Por: Juan D. Gutierrez N."; 
	Esperar 1 Segundos;
	
	
	Repetir
		Escribir 'Por favor ingrese el coeficiente del factor cuadratico: a.x^2';
		Leer a;
		
		Escribir 'Por favor ingrese el coeficiente del factor lineal: b.x';
		Leer b;
		
		Escribir 'Por favor ingrese el valor del numero independiente: c';
		Leer c;
		
		Escribir 'Por favor ingrese el valor del numero al otro lado de la igualdad = d';
		Leer d;
		
		
		Si a == 0 Entonces
			Escribir 'El polinomio ingresado es: (' + ConvertirATexto(a) + ')x^2 + (' + ConvertirATexto(b) + ')x + (' + ConvertirATexto(c) + ')' +' = ' + ConvertirATexto(d);
			Escribir 'Si el coeficiente (a) es cero, NO es una ecuacion cuadratica';
		SiNo
			// Asignar discriminante a la variable disc
			disc = ( (b*b) - (4*a*(c-d)) );
			
			Si disc >= 0 Entonces
				
				x1 = ( (-b) + raiz( disc ) )/(2*a);
				x2 = ( (-b) - raiz( disc ) )/(2*a);
				
				x = 'Primera Soluci?n: ' + ConvertirATexto(x1) + ' Segunda Solucion: ' + ConvertirATexto(x2);
				
				Escribir 'El polinomio ingresado es: (' + ConvertirATexto(a) + ')x^2 + (' + ConvertirATexto(b) + ')x + (' + ConvertirATexto(c) + ')' +' = ' + ConvertirATexto(d);
				Escribir 'La solucion a la ecuacion es => ' + x;
				Si x1 == x2 Entonces
					Escribir 'La ecuacion tiene multiplicidad (' + ConvertirATexto(x1) + ')';
				FinSi
			SiNo
				// Implementaci?n de raices negativas mediante n?meros imaginarios
				disc = ( (b*b) - (4*a*(c-d)) );
				Si disc < 0 Entonces
					
					x1_real = (-b) / (2*a); // Parte Real
					x1_imag = ( raiz( -disc ) )/(2*a); // Parte imaginaria
					
					x2_real = (-b) / (2*a); // Parte Real
					x2_imag = raiz( -disc )/(2*a); // Parte imaginaria
					
					x = '  Primera Solucion: ' + ConvertirATexto(x1_real) + ' + ' +  ConvertirATexto(x1_imag) + '.i   Segunda Solucion: ' + ConvertirATexto(x2_real) + ' - ' +ConvertirATexto(x2_imag) + '.i' + '   (( i = raiz de -1 ))';
					
					Escribir 'El polinomio ingresado es: (' + ConvertirATexto(a) + ')x^2 + (' + ConvertirATexto(b) + ')x + (' + ConvertirATexto(c) + ')' +' = ' + ConvertirATexto(d);
					Escribir 'La solucion a la ecuacion es => ' + x;
					Si x1 == x2 Entonces
						Escribir 'La ecuacion tiene multiplicidad (' + ConvertirATexto(x1) + ')';
					FinSi
					
				FinSi
				
			FinSi
			
		FinSi
		
		Escribir 'Desea calcular otra ecuacion??...  Escriba    1   para REINICIAR,   o   2  para SALIR';
		Leer reiniciar_algoritmo;
		
	Hasta Que reiniciar_algoritmo == '2';
	
FinAlgoritmo
