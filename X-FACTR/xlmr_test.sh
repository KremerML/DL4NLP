#!/usr/bin/env bash


part="all"
batch_size=20
model="xlmr_base"
lang="en"

experiment_log_dir=./experiment_log/${part}/default/${model}/${lang}
pred_dir=./pred_dir/${part}/default/${model}/${lang}
python scripts/probe.py --model ${model} --lang ${lang} --pred_dir ${pred_dir} --log_dir ${experiment_log_dir} --log_acc true  --batch_size ${batch_size} --num_mask 5 --max_iter 10 --part ${part} --no_cuda
