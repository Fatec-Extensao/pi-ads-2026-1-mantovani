#include <stdio.h>
#include <stdlib.h>

int main () {
    float soma=0, num, cont = 1;
    
    while(cont<10){
        soma=soma+cont;
        cont++;
        }
    printf("A soma dos numeros eh: %f", soma);
}