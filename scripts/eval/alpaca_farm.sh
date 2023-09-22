# python -m eval.alpaca_farm.run_eval \
#     --model_name_or_path output/tulu_13B_qlora_v2_data/ \
#     --save_dir results/alpaca_farm/tulu_13B_qlora_v2_data/ \
#     --eval_batch_size 20 \
#     --use_vllm \
#     --use_chat_format \
#     --chat_formatting_function eval.templates.create_prompt_with_tulu_chat_format

# use vllm for generation
python -m eval.alpaca_farm.run_eval \
    --model_name_or_path ../checkpoints/tulu_v1_7B/ \
    --save_dir results/alpaca_farm/tulu_v1_7B/ \
    --eval_batch_size 20 \
    --use_vllm \
    --use_chat_format \
    --chat_formatting_function eval.templates.create_prompt_with_tulu_chat_format


# use normal huggingface generation function
python -m eval.alpaca_farm.run_eval \
    --model_name_or_path ../checkpoints/tulu_v1_7B/ \
    --save_dir results/alpaca_farm/tulu_v1_7B/ \
    --eval_batch_size 20 \
    --use_chat_format \
    --chat_formatting_function eval.templates.create_prompt_with_tulu_chat_format \
    --load_in_8bit