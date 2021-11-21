#include<stdio.h>
#include<stdlib.h>


void bulle(long long int* A, int n);
void afficher(long long int A[], int len){
  int i=0;
  while(i<len){
    printf("%lld\t",A[i]);i++;}
  printf("\n");}

int main(int argc, char* argv[]){
  long long int A[]={1,3,2,5,4,8,7};
  printf("-----------------------\n");
  afficher(A,7);
  printf("-----------------------\n");
    bulle(A,7);
  afficher(A,7);
  return 0;
}
