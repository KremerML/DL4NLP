#!/usr/bin/env bash

# xlmr_base not working
models="xlmr_base" #mbert_base xlm_base
batch_size=20
# M = 10, T = 20

#   REDO JAPAN (JP --> SHOULD BE --> JA)
langs="ru ja vi zh hu ko tr he el war mr mg bn tl sw pa ceb yo ilo"
# from BN ONWARDS PROBLEM
# BN ('ben') problem


#langs="vi zh hu ko tr he el war mr mg bn tl sw pa ceb yo ilo"
#langs="ja"
for lang in $langs; do
    for model in $models; do
        # default decoding - all 
        part="all"
        experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
        pred_dir=./pred_dir/${part}/default/${model}/${lang}

        echo Running default decoding for 
        echo portion: ${part}
        echo language: ${lang}
        echo model: ${model}
        echo batch_size: ${batch_size}

        python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --part ${part}

        # confidence decoding - all
        experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
        pred_dir=./pred_dir/${part}/confidence/${model}/${lang}

        echo Running confidence decoding for 
        echo portion: ${part}
        echo language: ${lang}
        echo model: ${model}

        python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --max_iter 10 --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --part ${part}

        # default decoding - single 
        part="single"
        experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
        pred_dir=./pred_dir/${part}/default/${model}/${lang}

        echo Running default decoding for 
        echo portion: ${part}
        echo language: ${lang}
        echo model: ${model}
        echo batch_size: ${batch_size}

        python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --skip_multi_word --part ${part}

        # confidence decoding - single
        experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
        pred_dir=./pred_dir/${part}/confidence/${model}/${lang}

        echo Running confidence decoding for 
        echo portion: ${part}
        echo language: ${lang}
        echo model: ${model}

        python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --max_iter 10 --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --skip_multi_word --part ${part}

        # default decoding - multi
        part="multi"
        experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
        pred_dir=./pred_dir/${part}/default/${model}/${lang}
        
        echo Running default decoding for 
        echo portion: ${part}
        echo language: ${lang}
        echo model: ${model}
        echo batch_size: ${batch_size}

        python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --skip_single_word --part ${part}

        # confidence decoding - multi
        experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
        pred_dir=./pred_dir/${part}/confidence/${model}/${lang}
        
        echo Running confidence decoding for 
        echo portion: ${part}
        echo language: ${lang}
        echo model: ${model}
        
        python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --max_iter 10 --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --skip_single_word --part ${part}
    done
done

# M = 5, T = 10
langs="en fr nl es"
for lang in $langs; do
    for model in $models; do
        # default decoding - all 
        part="all"
        experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
        pred_dir=./pred_dir/${part}/default/${model}/${lang}

        echo Running default decoding for 
        echo portion: ${part}
        echo language: ${lang}
        echo model: ${model}
        echo batch_size: ${batch_size}

        python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --part ${part}

        # confidence decoding - all
        experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
        pred_dir=./pred_dir/${part}/confidence/${model}/${lang}

        echo Running confidence decoding for 
        echo portion: ${part}
        echo language: ${lang}
        echo model: ${model}

        python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --part ${part}

        # default decoding - single 
        part="single"
        experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
        pred_dir=./pred_dir/${part}/default/${model}/${lang}

        echo Running default decoding for 
        echo portion: ${part}
        echo language: ${lang}
        echo model: ${model}
        echo batch_size: ${batch_size}

        python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_multi_word --part ${part}

        # confidence decoding - single
        experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
        pred_dir=./pred_dir/${part}/confidence/${model}/${lang}

        echo Running confidence decoding for 
        echo portion: ${part}
        echo language: ${lang}
        echo model: ${model}

        python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_multi_word --part ${part}

        # default decoding - multi
        part="multi"
        experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
        pred_dir=./pred_dir/${part}/default/${model}/${lang}
        
        echo Running default decoding for 
        echo portion: ${part}
        echo language: ${lang}
        echo model: ${model}
        echo batch_size: ${batch_size}

        python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_single_word --part ${part}

        # confidence decoding - multi
        experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
        pred_dir=./pred_dir/${part}/confidence/${model}/${lang}
        
        echo Running confidence decoding for 
        echo portion: ${part}
        echo language: ${lang}
        echo model: ${model}
        
        python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_single_word --part ${part}
    done
done