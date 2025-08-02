nproc_per_node=1 \
MASTER_PORT=29501 \
CUDA_VISIBLE_DEVICES=0 \
NPROC_PER_NODE=$nproc_per_node \
swift sft \
--model /home/yyp/dir \
--train_type full \
--model_type qwen2_5 \
--dataset /home/yyp/t_data/train.jsonl \
--num_train_epochs 3 \
--per_device_train_batch_size 1 \
--learning_rate 1e-5 \
--gradient_accumulation_steps 1 \
--weight_decay 0.1 \
--warmup_ratio 0.03 \
--save_strategy epoch \
--eval_strategy no \
--deepspeed zero2 \
--logging_steps 5 \
--torch_dtype bfloat16 \
--save_total_limit 1 \
--output_dir /home/yyp/model_save/qwen2_5_7b_ins/train_medical_base_model \
--gradient_checkpointing true \
--max_length 64