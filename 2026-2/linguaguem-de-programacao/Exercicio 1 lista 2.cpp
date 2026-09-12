#include <stdio.h>
#include <stdlib.h>

int main (){
    char sex;
    float alt, peso;
    
    printf("Digite sua altura:\n");
    scanf("%f", &alt);
    printf("Digite seu sexo, M - Masculino ou F - Feminino\n");
    fflush (stdin);
    scanf("%c", &sex);
    if ((sex =='F' ) || (sex == 'f')){
        peso=(62.1*alt);
    }
    else 
        if((sex == 'M') || (sex =='m')){
            peso=(72.7*alt);            
        }
        else{
            printf("Sexo invalido");
        }   
        printf("Seu peso ideal e:%f", peso);
}   