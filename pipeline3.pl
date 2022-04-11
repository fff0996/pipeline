#!/usr/bin/perl -w

use warnings;
use strict;

my @traits = ('ALP','ALT','AST','BMI','CRE','CYS','FFR','HEI','PHO','PLA','RBC','TC','TG','TP','WHR');

my @env = ('AL','SM','PA');




opendir(DIR, "/BiO/Hyein/our_hm3_GPS/env_effect/cor_result");
my @files=();

while(my $filename = readdir(DIR)){
        push @files,$filename;
        #print ($filename,"\n");
}
#close(DIR);

foreach my $f (@files){
        #print $f,"\n";
        open(R,"/BiO/Hyein/our_hm3_GPS/env_effect/cor_result/$f");

        my $line = <R>;
        chomp($line);
        $line = <R>;
        chomp($line);   #print $line[0];
        #print $line,"\n";
        my @element = split(/\s+/,$line);
        if($element[1] <= 0.05){
                `cp /BiO/Hyein/our_hm3_GPS/env_effect/cor_result/$f /BiO/Hyein/our_hm3_GPS/env_effect/cor_result/o_cor_result/$f`;
        }
        close R;
}
close DIR;

~                                                                                                                                                                                                                                           
~                                                                                                                                                                                                                                           
~         
