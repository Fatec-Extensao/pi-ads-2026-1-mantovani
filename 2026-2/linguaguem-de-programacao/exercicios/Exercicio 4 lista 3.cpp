#include <stdio.h>
#include <stdlib.h>

int main(){
	int num=10, soma=0;
	
	printf("Somatoria dos numeros pares existente na faixa de 10 ate 60: \n");
	while(num<=60){
		if(num % 2 == 0){
		soma=soma+num;
		}
		num++;	
	}
	printf("%d", soma);
}
