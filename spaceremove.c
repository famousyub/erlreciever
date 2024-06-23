
#include <string.h>
#include<stdlib.h>
#include <stdio.h>

void _removespaces(char  *espace_)
{
 

   char res[1024];

          int i = 0;
           int P=0;
           int lenst = strlen(espace_);
     	  while (espace_[i] != '\0' &&  i<lenst)
                 {
                     if ((espace_[i] == ' ' && espace_[i+1] == ' ') != 1) {
                             res[P] = espace_[i];
                             P++;
                               
                             }
                             i++;
                 }

                 puts(res);
}



int main(int argc , const char *argv[])

{

     
      char *me = "         lp pl0         987 ";

    _removespaces(me);
    return  1;
}