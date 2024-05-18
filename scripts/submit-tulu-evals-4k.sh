#!/bin/bash

# to do:
model_list=(
    # "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_2500_0.1"
    # "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_2500_0.2"
    # "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_2500_0.3"
    # "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_2500_0.4"
    # "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_2500_0.5"
    # "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_2500_0.6"
    # "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_2500_0.7"
    # "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_2500_0.8"
    # "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_2500_0.9"
    # "linear_weighted-llama_2_7b-tulu_all_0.9-llama_2_7b-tulu_none-science_2500_0.1"
    # "linear_weighted-llama_2_7b-tulu_all_0.8-llama_2_7b-tulu_none-science_2500_0.2"
    # "linear_weighted-llama_2_7b-tulu_all_0.7-llama_2_7b-tulu_none-science_2500_0.3"
    # "linear_weighted-llama_2_7b-tulu_all_0.6-llama_2_7b-tulu_none-science_2500_0.4"
    # "linear_weighted-llama_2_7b-tulu_all_0.5-llama_2_7b-tulu_none-science_2500_0.5"
    # "linear_weighted-llama_2_7b-tulu_all_0.4-llama_2_7b-tulu_none-science_2500_0.6"
    # "linear_weighted-llama_2_7b-tulu_all_0.3-llama_2_7b-tulu_none-science_2500_0.7"
    # "linear_weighted-llama_2_7b-tulu_all_0.2-llama_2_7b-tulu_none-science_2500_0.8"
    # "linear_weighted-llama_2_7b-tulu_all_0.1-llama_2_7b-tulu_none-science_2500_0.9"
    # "linear_weighted-llama_2_7b-tulu_all_0.9-tulu_2_7b-tulu_none-safety_100_0.1"
    # "linear_weighted-llama_2_7b-tulu_all_0.8-tulu_2_7b-tulu_none-safety_100_0.2"
    # "linear_weighted-llama_2_7b-tulu_all_0.7-tulu_2_7b-tulu_none-safety_100_0.3"
    # "linear_weighted-llama_2_7b-tulu_all_0.6-tulu_2_7b-tulu_none-safety_100_0.4"
    # "linear_weighted-llama_2_7b-tulu_all_0.5-tulu_2_7b-tulu_none-safety_100_0.5"
    # "linear_weighted-llama_2_7b-tulu_all_0.4-tulu_2_7b-tulu_none-safety_100_0.6"
    # "linear_weighted-llama_2_7b-tulu_all_0.3-tulu_2_7b-tulu_none-safety_100_0.7"
    # "linear_weighted-llama_2_7b-tulu_all_0.2-tulu_2_7b-tulu_none-safety_100_0.8"
    # "linear_weighted-llama_2_7b-tulu_all_0.1-tulu_2_7b-tulu_none-safety_100_0.9"
    # "linear_weighted-llama_2_7b-tulu_all_0.9-tulu_2_7b-tulu_none-science_2500_0.1"
    # "linear_weighted-llama_2_7b-tulu_all_0.8-tulu_2_7b-tulu_none-science_2500_0.2"
    # "linear_weighted-llama_2_7b-tulu_all_0.7-tulu_2_7b-tulu_none-science_2500_0.3"
    # "linear_weighted-llama_2_7b-tulu_all_0.6-tulu_2_7b-tulu_none-science_2500_0.4"
    # "linear_weighted-llama_2_7b-tulu_all_0.5-tulu_2_7b-tulu_none-science_2500_0.5"
    # "linear_weighted-llama_2_7b-tulu_all_0.4-tulu_2_7b-tulu_none-science_2500_0.6"
    # "linear_weighted-llama_2_7b-tulu_all_0.3-tulu_2_7b-tulu_none-science_2500_0.7"
    # "linear_weighted-llama_2_7b-tulu_all_0.2-tulu_2_7b-tulu_none-science_2500_0.8"
    # "linear_weighted-llama_2_7b-tulu_all_0.1-tulu_2_7b-tulu_none-science_2500_0.9"
    # "llama_2_7b-tulu_none-coding_100"
    # "linear_weighted-llama_2_7b-tulu_all_0.9-tulu_2_7b-tulu_none-coding_100_0.1"
    # "linear_weighted-llama_2_7b-tulu_all_0.8-tulu_2_7b-tulu_none-coding_100_0.2"
    # "linear_weighted-llama_2_7b-tulu_all_0.7-tulu_2_7b-tulu_none-coding_100_0.3"
    # "linear_weighted-llama_2_7b-tulu_all_0.6-tulu_2_7b-tulu_none-coding_100_0.4"
    # "linear_weighted-llama_2_7b-tulu_all_0.5-tulu_2_7b-tulu_none-coding_100_0.5"
    # "linear_weighted-llama_2_7b-tulu_all_0.4-tulu_2_7b-tulu_none-coding_100_0.6"
    # "linear_weighted-llama_2_7b-tulu_all_0.3-tulu_2_7b-tulu_none-coding_100_0.7"
    # "linear_weighted-llama_2_7b-tulu_all_0.2-tulu_2_7b-tulu_none-coding_100_0.8"
    # "linear_weighted-llama_2_7b-tulu_all_0.1-tulu_2_7b-tulu_none-coding_100_0.9"
    # "llama_2_7b-tulu_all-safety_100"
    # "llama_2_7b-tulu_all-coding_100"
    # "tulu_2_7b-tulu_none-coding_100"
    "linear_weighted-llama_2_7b-tulu_all_0.9-llama_2_7b-tulu_none-science_1000_0.1"
    "linear_weighted-llama_2_7b-tulu_all_0.8-llama_2_7b-tulu_none-science_1000_0.2"
    "linear_weighted-llama_2_7b-tulu_all_0.7-llama_2_7b-tulu_none-science_1000_0.3"
    "linear_weighted-llama_2_7b-tulu_all_0.6-llama_2_7b-tulu_none-science_1000_0.4"
    "linear_weighted-llama_2_7b-tulu_all_0.5-llama_2_7b-tulu_none-science_1000_0.5"
    "linear_weighted-llama_2_7b-tulu_all_0.4-llama_2_7b-tulu_none-science_1000_0.6"
    "linear_weighted-llama_2_7b-tulu_all_0.3-llama_2_7b-tulu_none-science_1000_0.7"
    "linear_weighted-llama_2_7b-tulu_all_0.2-llama_2_7b-tulu_none-science_1000_0.8"
    "linear_weighted-llama_2_7b-tulu_all_0.1-llama_2_7b-tulu_none-science_1000_0.9"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_500_0.1"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_500_0.2"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_500_0.3"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_500_0.4"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_500_0.5"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_500_0.6"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_500_0.7"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_500_0.8"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_500_0.9"
    "linear_weighted-llama_2_7b-tulu_all_0.9-llama_2_7b-tulu_none-science_500_0.1"
    "linear_weighted-llama_2_7b-tulu_all_0.8-llama_2_7b-tulu_none-science_500_0.2"
    "linear_weighted-llama_2_7b-tulu_all_0.7-llama_2_7b-tulu_none-science_500_0.3"
    "linear_weighted-llama_2_7b-tulu_all_0.6-llama_2_7b-tulu_none-science_500_0.4"
    "linear_weighted-llama_2_7b-tulu_all_0.5-llama_2_7b-tulu_none-science_500_0.5"
    "linear_weighted-llama_2_7b-tulu_all_0.4-llama_2_7b-tulu_none-science_500_0.6"
    "linear_weighted-llama_2_7b-tulu_all_0.3-llama_2_7b-tulu_none-science_500_0.7"
    "linear_weighted-llama_2_7b-tulu_all_0.2-llama_2_7b-tulu_none-science_500_0.8"
    "linear_weighted-llama_2_7b-tulu_all_0.1-llama_2_7b-tulu_none-science_500_0.9"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_200_0.1"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_200_0.2"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_200_0.3"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_200_0.4"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_200_0.5"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_200_0.6"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_200_0.7"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_200_0.8"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_200_0.9"
    "linear_weighted-llama_2_7b-tulu_all_0.9-llama_2_7b-tulu_none-science_200_0.1"
    "linear_weighted-llama_2_7b-tulu_all_0.8-llama_2_7b-tulu_none-science_200_0.2"
    "linear_weighted-llama_2_7b-tulu_all_0.7-llama_2_7b-tulu_none-science_200_0.3"
    "linear_weighted-llama_2_7b-tulu_all_0.6-llama_2_7b-tulu_none-science_200_0.4"
    "linear_weighted-llama_2_7b-tulu_all_0.5-llama_2_7b-tulu_none-science_200_0.5"
    "linear_weighted-llama_2_7b-tulu_all_0.4-llama_2_7b-tulu_none-science_200_0.6"
    "linear_weighted-llama_2_7b-tulu_all_0.3-llama_2_7b-tulu_none-science_200_0.7"
    "linear_weighted-llama_2_7b-tulu_all_0.2-llama_2_7b-tulu_none-science_200_0.8"
    "linear_weighted-llama_2_7b-tulu_all_0.1-llama_2_7b-tulu_none-science_200_0.9"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_100_0.1"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_100_0.2"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_100_0.3"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_100_0.4"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_100_0.5"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_100_0.6"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_100_0.7"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_100_0.8"
    "task_arithmetic-llama_2_7b-tulu_all_1.0-llama_2_7b-tulu_none-science_100_0.9"
    "linear_weighted-llama_2_7b-tulu_all_0.9-llama_2_7b-tulu_none-science_100_0.1"
    "linear_weighted-llama_2_7b-tulu_all_0.8-llama_2_7b-tulu_none-science_100_0.2"
    "linear_weighted-llama_2_7b-tulu_all_0.7-llama_2_7b-tulu_none-science_100_0.3"
    "linear_weighted-llama_2_7b-tulu_all_0.6-llama_2_7b-tulu_none-science_100_0.4"
    "linear_weighted-llama_2_7b-tulu_all_0.5-llama_2_7b-tulu_none-science_100_0.5"
    "linear_weighted-llama_2_7b-tulu_all_0.4-llama_2_7b-tulu_none-science_100_0.6"
    "linear_weighted-llama_2_7b-tulu_all_0.3-llama_2_7b-tulu_none-science_100_0.7"
    "linear_weighted-llama_2_7b-tulu_all_0.2-llama_2_7b-tulu_none-science_100_0.8"
    "linear_weighted-llama_2_7b-tulu_all_0.1-llama_2_7b-tulu_none-science_100_0.9"
)

# for tuple in "${model_list[@]}"
for MODEL in "${model_list[@]}"
do

python scripts/submit_eval_jobs.py \
    --workspace modular_adaptation \
    --model_name ${MODEL} \
    --location jacobm \
    --priority normal \
    --is_tuned \
    --output_dir /net/nfs.cirrascale/allennlp/jacobm/modular_adaptation/results/domain_addition/consistent_mix/tulu_evals/${MODEL}/
done