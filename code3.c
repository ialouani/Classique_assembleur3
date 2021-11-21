#include<stdio.h>
#include<stdlib.h>


int inverse(long long int* t,long long int len);
void afficher(long long int t[],int len){
  int i=0;
  while(i<len){
    printf("%lld\t",t[i]);i++;}
  printf("\n");return;}

int main(int argc, char* argv[]){
  long long int t[]={1,2,3,4,5,6,7};
  long long int len=7;
  afficher(t,len);
  inverse(t,len);
  printf("------------\n");
  afficher(t,len);
  return 0;}
