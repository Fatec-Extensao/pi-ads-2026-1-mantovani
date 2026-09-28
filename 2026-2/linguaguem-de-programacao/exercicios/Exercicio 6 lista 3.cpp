#include <stdio.h>
#include <stdlib.h>

int main(){
	int num, cont=2;
	float h=1;
	
	printf("Digite um numero:\n");
	scanf("%d", &num);
	
	while(cont <=num){
	h=1+1/cont;	
	cont++;
	}
	printf("O resultado da soma e: %2f\n", h);
}
