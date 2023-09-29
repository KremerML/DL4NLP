#!/usr/bin/env bash

#langs="en fr nl ru es jp vi zh hu ko tr he el war mr mg bn tl sw pa ceb yo ilo"

# models="mbert_base xlm_base xlmr_base"

# xlmr_base not working
models="mbert_base xlm_base"

# all single multi (as in Table 10 appendix)
# parts="all non trans"

# 'all' and 'non' not working
parts="trans"





langs="zh ko vi ceb hu he mr war tl sw pa mg yo ilo"


##############################################
# Finished: en, fr, nl, es, ru (MBERT, XLM)

# TODO: language specific
# en
# fr
# nl
# es
# ru
# zh
# el
# hu
# tr 

# TODO: XLM-R
# all 


# TODO: M-BERT, XLM
# zh, with M = 10, T = 20
# ko, with M = 10, T = 20
# vi, with M = 10, T = 20
# ceb, with M = 10, T = 20
# hu, with M = 10, T = 20
# he, with M = 10, T = 20
# mr, with M = 10, T = 20
# war, with M = 10, T = 20
# tl, with M = 10, T = 20
# sw, with M = 10, T = 20
# pa, with M = 10, T = 20
# mg, with M = 10, T = 20
# yo, with M = 10, T = 20
# ilo, with M = 10, T = 20
for part in $parts; do
    for lang in $langs; do
        for model in $models; do

            # the xlmr_base model requires more VRAM, therefore, reduce batch_size
            if [ ${model} = "xlmr_base" ];
            then
                batch_size=10
            else
                batch_size=20
            fi

            echo Running default decoding for 
            echo portion: ${part}
            echo language: ${lang}
            echo model: ${model}
            echo batch_size: ${batch_size}

            # default decoding            
            experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
            pred_dir=./pred_dir/${part}/default/${model}/${lang}

            python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true --portion ${part} --batch_size ${batch_size} --num_mask 10 --max_iter 20
            echo Running confidence decoding for 
            echo portion: ${part}
            echo language: ${lang}
            echo model: ${model}

            # confidence decoding
            experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
            pred_dir=./pred_dir/${part}/confidence/${model}/${lang}
            python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --max_iter 10 --log_acc true --portion ${part} --batch_size ${batch_size} --num_mask 10 --max_iter 20
        done
    done
done