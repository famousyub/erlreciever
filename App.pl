










use warnings ;
use strict ;


my @a   =(1..9);


for(@a) {
	
    print("$_" , "\n");	
}


print "hello   there ";




my  @c = (1..6); 


for(my   $i = 0 ;  $i <= $#c ;  $i++) 


   {
      print("$c[$i] \n"); 
    
}
my $event_sum ;
my $num = 0;

do  {{
   
   
 $num = shift(@a);
 next if  $num %2 == 1 ;
 
 
 $event_sum += $num;
   


}}  until(!scalar @a > 0);




print(" sum of event === $event_sum");









my @haystack = qw(1 2 3 4 5 6 7 9);


my $count  =  scalar @haystack ;


my $i = 0;


my $needle ;


print ("enter  number to  search  (1-9) :") ;


$needle = int (<STDIN>);




fund_needle_stack: {
   
   
 do {
       if($haystack[$i] == $needle){
           print ("nubmber  $needle is found at $i \n");
           last ;
          }           
  
  $i+= 1;
} until($i==$count);

}



my $counter_  =  0  ;

my @keywords = qw (until while do for loop);

until (!scalar @keywords) 
{
    $counter_ ++ ;
    print (shift (@keywords) . "\n")   
  }
  
  
  print("counter is $counter_");
  
  


my $cmd  ;

print ("enter  a command , enter exit  to  quit \n" )  ;


do 


{
  
  
    print(">") ;
    chomp($cmd = <STDIN>) ;
    
    $cmd = lc($cmd);
    print( "you enterd  $cmd \n" ); 
 } until ( $cmd eq "exit") ;
  






use  constant MAX => 5 ;



my  @nums =   () ;

my $num_ =  0;

my $count_ = 0;


print "Enter " . MAX  . "positive\n" ;

while (  $count_  < MAX) {
    
    $num_ = int(<STDIN> );
    
    next if(  $num_ <= 0);
    push(@nums , $num_);
    
    $count_ ++; 
    
    }  



print ("youn  enterd @nums\n");





use strict ;

my  ($key , $value );


my  %h =  ( "apple" =>  1,
             "orange " =>  2 ,
             "mango" => 3 , 
             "coconut" => 4 ) ;
             
 print ("please enter a key to serach   \n" );
 
 $key = <STDIN>;
 
 
 chomp($key);
 
 $value  = 0 ;
 
 
 foreach ( keys %h){
     
         if ($_ eq $key){
        $value  = $h{$_};
        last;             
             }     
     }  
 if($value > 0){
   print("element $key found with value: $value\n");
}else{
   print("element $key not found\n");
}

 
 
 
 
 
 
 
 
 OUTER : while(<STDIN>)  {
       $key = $_;
       chomp($key);
       INNER : foreach ( keys %h){
              if ($_ eq   $key){
                    $value  = $h{$_};
                    last OUTER;
              }            
           }
           print ("NOT FOUNTER PLEASE TRY AGAIN") if  ($value == 0 ); 
     
     }
     
     
     print("element found with value: $value\n");
     
     
     
     
 
 
 
print ("regular expression " );


my  $s ="  Perl regular expression   is powerrufll";

$s =~ /ul/;


print "  $s l matched"  if   ($s =~ /ul/) ;



my @words =  (
   "perl " ,
   "ayoubo" ,
    "regular expression " ,
    "a very  powerfull " ,
    "feature "
);


foreach ( @words) {
      print ("$_")  if  ($_ !~ /er/);
      
      
    
    }



my @html   =  ( 
     "<p>" ,
     " html  fragement",
     "</p>",
     "<br/>" ,
     "<span>  this is a span </span>"

);

foreach (@html )
 {
   print ("$_")  if  ($_ =~ m"/");  
  }


my $time  = localtime() ;

print  $time ,"\n" ;


print ("match found \n")  if   ($time =~ /\d\d:\d\:\d\d/);





use  Data::Dumper ;

#!/usr/bin/perl
use warnings;
use strict;
use Data::Dumper; 

my $text = <<END;
name: Ayubo Ayubo, period: 1678-1741
name: Bob Smayen,period: 1696-1757
name: Ayubo Bobi, period: 1725-1750
END

my %composers;

for my $line (split /\n/, $text){
    print $line, "\n";
    if($line =~ /name:\s+(\w+\s+\w+),\s+period:\s*(\d{4}\-\d{4})/){
    	$composers{$1} = $2;
    }
}

print Dumper(\%composers);







#!/usr/bin/perl
use warnings;
use strict;

my @words = ('housemaid',
	     'housemate',
	     'household',
	     'houseman',
	     'house');

for(@words){
   print("$_\n") if(/house(maid|mate|man)/);
}

