#include <stdio.h> 
#include <stdlib.h>
#include <time.h>
int main(){
    srand(time(NULL));
	
	int max;
	int max_guess;
	while(1){
		printf("Digit max number for play : \n");
		scanf("%d",&max);
		printf("How many max guesses ? \n");
		scanf("%d",&max_guess);
		if((max>1)&&(max_guess<max)){
			break;
		}
	}
	
    int n, r = rand() %(max+1);
	int i;
	for(i=1;i<=max_guess;i++){
		printf("Try to guess! what is the mysterious number? (0-%d)\n",max);
		scanf("%d", &n);
		if(r==n){
			printf("That's correct! congratulations\n");
			printf("You win in %d guesses.\n",i+1);
			break;
		}    
		else if(i<max_guess){
			printf("Wrong number, number guess is ");
			if(n<r){
				printf("low");
			}
			else{
				printf("high");
			}
			printf(", try again!\n");
		}
		else{
			printf("You lose.\n");
		}
	}
	
	printf("\nThe number is %d\n",r);
    
    return 0;
}