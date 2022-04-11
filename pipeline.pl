#!/usr/bin/perl

use warnings;
use strict;

my @traits = ('ALP','ALT','AST','BMI','CRE','CYS','FFR','HEI','PHO','PLA','RBC','TC','TG','TP','WHR');

my @env = ('AL','SM','PA');

for (my $i = 0; $i<=$#traits; $i=$i+1){
        for(my $j = 0 ; $j <= $#env;$j=$j+1){
                `/BiO/hae/00_exome/phase2_44_half_study_design/phase2_ldsc_genetic_heritability/ldsc/ldsc.py --ref-ld-chr /BiO/hae/00_exome/phase2_44_half_study_design/phase2_ldsc_genetic_heritability/ldsc/eur_w_ld_chr/ --w-ld-chr /BiO/hae/00_exome/phase2_44_half_study_design/phase2_ldsc_genetic_heritability/ldsc/eur_w_ld_chr/ --rg /BiO/hae/00_exome/phase2_44_half_study_design/phase2_ldsc_genetic_heritability/ourGWAS/$traits[$i]/$traits[$i]_v2.sumstats.gz,/BiO/hae/00_exome/phase2_44_half_study_design/phase2_ldsc_genetic_heritability/ourGWAS/$env[$j]/$env[$j]_v2.sumstats.gz --out $traits[$i]_$env[$j]`;
        }
}




for (my $i = 0; $i<=$#traits; $i=$i+1){
        for(my $s = $i+1 ; $s <= $#traits;$s=$s+1){
                `python /BiO/hae/00_exome/phase2_44_half_study_design/phase2_ldsc_genetic_heritability/ldsc/ldsc.py --ref-ld-chr /BiO/hae/00_exome/phase2_44_half_study_design/phase2_ldsc_genetic_heritability/ldsc/eur_w_ld_chr/ --w-ld-chr /BiO/hae/00_exome/phase2_44_half_study_design/phase2_ldsc_genetic_heritability/ldsc/eur_w_ld_chr/ --rg /BiO/hae/00_exome/phase2_44_half_study_design/phase2_ldsc_genetic_heritability/ourGWAS/$traits[$i]/$traits[$i]_v2.sumstats.gz,/BiO/hae/00_exome/phase2_44_half_study_design/phase2_ldsc_genetic_heritability/ourGWAS/$traits[$s]/$traits[$s]_v2.sumstats.gz --out $traits[$i]_$traits[$s]`;
}
