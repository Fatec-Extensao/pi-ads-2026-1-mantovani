#include <stdio.h>
#include <stdlib.h>

int main(){
	int num, maior, menor, cont=0;
	while(cont<20){
	printf("Digite um numero inteiro:\n");
	scanf("%d", &num);	
	
	if(cont==0){
	maior=num;
	menor=num;
	}
	else if (num>maior){
	maior=num;
	}
	else{
		if (num<menor)
		menor=num;
	}
		cont++;
		
} 
printf("o maior numero e: %d\n", maior); 
printf("o menor numero e: %d\n", menor); 
}
           
       