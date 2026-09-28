#include <stdio.h>
#include <stdlib.h>

int main (){

	int num=100;
	
	printf("Numeros impares entre 100 e 200: \n");
	
	while(num<=200 ){
		
		if (num % 2 != 0){	
		printf("%d\n", num);	
	}
	num++;	
	}
}


