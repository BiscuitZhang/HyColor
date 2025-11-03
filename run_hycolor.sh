#!/bin/bash

# Replace with your benchmark directory
dataset_dir="-----------"
p=20

for folder in ${dataset_dir}/*
do
    if [ -d "${folder}" ]; then
        for graph in ${folder}/*
        do
            for seed in {1..10}
            do
                ./color -f ${graph} -s ${seed} -t 60 -p ${p} & 
            done
            wait
        done
    fi
done

