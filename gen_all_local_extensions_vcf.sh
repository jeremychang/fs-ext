#!/bin/bash
START=1000
END=1099

rm local_extensions.vcf

for i in `seq $START $END`
do
  ./gen_vcf.sh $i >> local_extensions.vcf
done
