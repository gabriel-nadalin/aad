#define n_termos 10000

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_io.h"

void * endereco = 0x40000000;


double potencia(double base, double exp){
	double pot = 1;
	for(int i = 0; i < exp; i++){
		pot = pot * base;
	}

	return pot;
}

double leibniz(int start, int lenght){
	double sum = 0;
	for (int i = start; i < start + lenght; i++){
		sum += potencia(-1.0, i) / (2 * i + 1);
	}
	return sum * 4;
}

int main()
{
    print("Hello from core 2\n\r");
    init_platform();

    // Calculando o pr�prio pi
    double pi = leibniz(n_termos / 2, n_termos);

    // Escrevendo na mem�ria compartilhada
    *(double*)endereco += pi;


    cleanup_platform();
    return 0;

}
