export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7

MODEL_SIZE=7B
NUM_GPUS=1
BATCH_SIZE_PER_GPU=1
TOTAL_BATCH_SIZE=32
GRADIENT_ACC_STEPS=$(($TOTAL_BATCH_SIZE/$NUM_GPUS/$BATCH_SIZE_PER_GPU))
echo "Training Mistral model ${MODEL_SIZE} using $NUM_GPUS GPUs, $BATCH_SIZE_PER_GPU batch size per GPU, $GRADIENT_ACC_STEPS gradient accumulation steps"

# Lora training
accelerate launch \
    --num_machines 1 \
    --num_processes $NUM_GPUS \
    open_instruct/finetune.py \
    --model_name_or_path ../kaggle/input/mistral/pytorch/7b-instruct-v0.1-hf/1/${MODEL_SIZE} \
    --gradient_checkpointing \
    --use_qlora \
    --use_lora \
    --use_flash_attn \
    --lora_rank 64 \
    --lora_alpha 16 \
    --lora_dropout 0.1 \
    --tokenizer_name ../kaggle/input/mistral/pytorch/7b-instruct-v0.1-hf/1/${MODEL_SIZE} \
    --use_slow_tokenizer \
    --train_file data/processed/tulu_v2/tulu_v2_data.jsonl \
    --max_seq_length 4096 \
    --preprocessing_num_workers 128 \
    --per_device_train_batch_size $BATCH_SIZE_PER_GPU \
    --gradient_accumulation_steps $GRADIENT_ACC_STEPS \
    --learning_rate 1e-4 \
    --lr_scheduler_type linear \
    --warmup_ratio 0.03 \
    --weight_decay 0. \
    --num_train_epochs 5 \
    --output_dir output/tulu_v2_${MODEL_SIZE}_qlora/ \
    --with_tracking \
    --report_to tensorboard \
    --logging_steps 1 &&

python open_instruct/merge_lora.py \
    --base_model_name_or_path ../hf_llama2_models/${MODEL_SIZE} \
    --lora_model_name_or_path output/tulu_v2_${MODEL_SIZE}_qlora/ \
    --output_dir output/tulu_v2_${MODEL_SIZE}_qlora_merged/ \
    --qlora \
    --save_tokenizer
