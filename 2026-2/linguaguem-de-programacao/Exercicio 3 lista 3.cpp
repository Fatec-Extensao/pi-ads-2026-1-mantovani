#include <stdio.h>
#include <stdlib.h>

int main(){
	int num=0;
	printf("Todos numeros divisiveis por 5 menores que 55:\n");
	while(num<55){
		
		if(num % 5 ==0){
		printf("%d \n", num);
		}
		num++;	
	}
	
}