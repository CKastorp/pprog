#include "stdio.h"
#include "limits.h"
#include "float.h"
#include "math.h"
void float_sums(void){
int n=1;
int Nmax=INT_MAX/2;
float sum_up_float=0;
for (n=1;n<=Nmax;n++){sum_up_float+=1.0/n;}
float sum_down_float=0;
for (n=Nmax;n>=1;n--){sum_down_float+=1.0/n;}
printf("Float sum for increasing n: %f.\n Sum for decreasing n: %f.\n",sum_up_float,sum_down_float);
}
