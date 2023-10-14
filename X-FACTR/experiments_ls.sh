#!/usr/bin/env bash


####### English #######
part="multi"
batch_size=20
model="bert_base" # 
lang="en"

# default decoding
experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
pred_dir=./pred_dir/${part}/default/${model}/${lang}
python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_single_word --part ${part}

# confidence decoding
experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
pred_dir=./pred_dir/${part}/confidence/${model}/${lang}
python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_single_word --part ${part}


########################################################### SINGLE ######################################################
######## English #######
#part="single"
#batch_size=20
#model="bert_base" # 
#lang="en"
#
## default decoding
#experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
#pred_dir=./pred_dir/${part}/default/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_multi_word --part ${part}
#
## confidence decoding
#experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
#pred_dir=./pred_dir/${part}/confidence/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_multi_word --part ${part}
#
######## Dutch #######
#part="single"
#batch_size=20
#model="nl_bert_base"
#lang="nl"
#
## default decoding
#experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
#pred_dir=./pred_dir/${part}/default/${model}/${lang}
#echo ${pred_dir}
#echo ${experiment_log_dir}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_multi_word --part ${part}
#
## confidence decoding
#experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
#pred_dir=./pred_dir/${part}/confidence/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_multi_word --part ${part}
#
######## French #######
#part="single"
#batch_size=20
#model="fr_roberta_base"
#lang="fr"
#
## default decoding
#experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
#pred_dir=./pred_dir/${part}/default/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_multi_word --part ${part}
#
## confidence decoding
#experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
#pred_dir=./pred_dir/${part}/confidence/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_multi_word --part ${part}
#
######## Spanish #######
#part="single"
#batch_size=20
#model="es_bert_base"
#lang="es"
#
## default decoding
#experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
#pred_dir=./pred_dir/${part}/default/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_multi_word --part ${part}
#
## confidence decoding
#experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
#pred_dir=./pred_dir/${part}/confidence/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_multi_word --part ${part}
#
######## Russian #######
#part="single"
#batch_size=20
#model="ru_bert_base"
#lang="ru"
#
## default decoding
#experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
#pred_dir=./pred_dir/${part}/default/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --skip_multi_word --part ${part}
#
## confidence decoding
#experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
#pred_dir=./pred_dir/${part}/confidence/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --skip_multi_word --part ${part}
#
######## Chinese #######
#part="single"
#batch_size=20
#model="zh_bert_base"
#lang="zh"
#
## default decoding
#experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
#pred_dir=./pred_dir/${part}/default/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --skip_multi_word --part ${part}
#
## confidence decoding
#experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
#pred_dir=./pred_dir/${part}/confidence/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --skip_multi_word --part ${part}
#
######## Turkish #######
#part="single"
#batch_size=20
#model="tr_bert_base"
#lang="tr"
#
## default decoding
#experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
#pred_dir=./pred_dir/${part}/default/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --skip_multi_word --part ${part}
#
## confidence decoding
#experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
#pred_dir=./pred_dir/${part}/confidence/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --skip_multi_word --part ${part}
#
######## Greek #######
#part="single"
#batch_size=20
#model="el_bert_base"
#lang="el"
#
## default decoding
#experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
#pred_dir=./pred_dir/${part}/default/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --skip_multi_word --part ${part}
#
## confidence decoding
#experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
#pred_dir=./pred_dir/${part}/confidence/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --skip_multi_word --part ${part}
#
############################################################################### MULTI ################################################################
#
#
######## English #######
#part="multi"
#batch_size=20
#model="mbert_base" # 
#lang="en"
#
## default decoding
#experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
#pred_dir=./pred_dir/${part}/default/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_single_word --part ${part}
#
## confidence decoding
#experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
#pred_dir=./pred_dir/${part}/confidence/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_single_word --part ${part}
#
######## Dutch #######
#part="multi"
#batch_size=20
#model="nl_bert_base"
#lang="nl"
#
## default decoding
#experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
#pred_dir=./pred_dir/${part}/default/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_single_word --part ${part}
#
## confidence decoding
#experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
#pred_dir=./pred_dir/${part}/confidence/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_single_word --part ${part}
#
######## French #######
#part="multi"
#batch_size=20
#model="fr_roberta_base"
#lang="fr"
#
## default decoding
#experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
#pred_dir=./pred_dir/${part}/default/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_single_word --part ${part}
#
## confidence decoding
#experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
#pred_dir=./pred_dir/${part}/confidence/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_single_word --part ${part}
#
######## Spanish #######
#part="multi"
#batch_size=20
#model="es_bert_base"
#lang="es"
#
## default decoding
#experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
#pred_dir=./pred_dir/${part}/default/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_single_word --part ${part}
#
## confidence decoding
#experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
#pred_dir=./pred_dir/${part}/confidence/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --skip_single_word --part ${part}
#
######## Russian #######
#part="multi"
#batch_size=20
#model="ru_bert_base"
#lang="ru"
#
## default decoding
#experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
#pred_dir=./pred_dir/${part}/default/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --skip_single_word --part ${part}
#
## confidence decoding
#experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
#pred_dir=./pred_dir/${part}/confidence/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --skip_single_word --part ${part}
#
######## Chinese #######
#part="multi"
#batch_size=20
#model="zh_bert_base"
#lang="zh"
#
## default decoding
#experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
#pred_dir=./pred_dir/${part}/default/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --skip_single_word --part ${part}
#
## confidence decoding
#experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
#pred_dir=./pred_dir/${part}/confidence/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --skip_single_word --part ${part}
#
######## Turkish #######
#part="multi"
#batch_size=20
#model="tr_bert_base"
#lang="tr"
#
## default decoding
#experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
#pred_dir=./pred_dir/${part}/default/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --skip_single_word --part ${part}
#
## confidence decoding
#experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
#pred_dir=./pred_dir/${part}/confidence/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --skip_single_word --part ${part}
#
######## Greek #######
#part="multi"
#batch_size=20
#model="el_bert_base"
#lang="el"
#
## default decoding
#experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
#pred_dir=./pred_dir/${part}/default/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --skip_single_word --part ${part}
#
## confidence decoding
#experiment_log_dir=./experiment_log/${part}/confidence/${model}/${lang}
#pred_dir=./pred_dir/${part}/confidence/${model}/${lang}
#python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --init_method confidence --iter_method confidence --log_acc true  --batch_size ${batch_size} --num_mask 10 --max_iter 20 --skip_single_word --part ${part}
