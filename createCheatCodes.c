#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main(int argc, char *argv[]) {
  if(argc<3){
    printf("Error\nUssage: %s <input-file> <output-file>\n",*argv);
    exit(1);
  }
  FILE *in,*out;
  char buffer[2000];
  int i=0,j=0,k=0;
  in=out=NULL;
  in=fopen(*(argv+1),"r");
  out=fopen(*(argv+2),"w");
  if(in==NULL){
    printf("Error input file cannot be read it\n");
    exit(2);
  }
  if(out==NULL){
    printf("Error output file cannot be create it\n");
    exit(2);
  }
  while(fgets(buffer,2000,in)){
    if(*(buffer)=='#'){
      fprintf(out,"%s\n",buffer);
      continue;
    }
    i++;
  }
  fprintf(out, "cheats = %d\n\n", i);
  fclose(in);
  in=fopen(*(argv+1),"r");
  if(in==NULL){
    printf("Error input file cannot be read it for second time\n");
    exit(2);
  }
  i=0;
  while(fgets(buffer,2000,in)){
    j=k=0;
    if(*buffer=='#'){
      continue;
    }
    fprintf(out,"cheat%d_desc = \"",i);
    for(j=0;j<strlen(buffer);j++){
      if(*(buffer+j)=='-'){
        j++;
        break;
      }
      fprintf(out,"%c",*(buffer+j));
    }
    fprintf(out,"\"\ncheat%d_code = \"",i);
    for(k=j;k<strlen(buffer)-1;k++){
      fprintf(out,"%c",*(buffer+k));
    }
    fprintf(out,"\"\ncheat%d_enable = false\n\n",i);
    i++;
  }
  fclose(out);
  fclose(in);
  return 0;
}
