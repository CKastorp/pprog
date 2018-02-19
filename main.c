#include "komplex.h"
#include"stdio.h"
#include"math.h"
#define TINY 1e-6

int main(){
komplex a={1,2};
komplex b={3,5};
komplex R={4,7};
printf("Testing komplex_add\n");
komplex r=komplex_add(a,b);
komplex_print("a=",a);
komplex_print("b=",b);
komplex_print("a+b should be", R);
komplex_print("a+b really is",r);

return(0);
}
