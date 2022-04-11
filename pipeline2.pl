#!/usr/bin/perl


use warnings;
use strict;

my @traits = ('ALP','ALT','AST','BMI','CRE','CYS','FFR','HEI','PHO','PLA','RBC','TC','TG','TP','WHR');

my @env = ('AL','SM','PA');




for (my $i = 0; $i<=$#traits; $i=$i+1){
        for(my $j = 0 ; $j <= $#env;$j=$j+1){
                `(grep "^Genetic Correlation:" $traits[$i]_$env[$j].log && grep "^P" $traits[$i]_$env[$j].log) >  $traits[$i]_$env[$j].txt`;
        }
}


~                                                                                                                                                                                                                                           
~    
