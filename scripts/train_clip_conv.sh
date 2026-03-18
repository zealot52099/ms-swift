# 使用Clip-Cov方法训练
swift \
    --model Qwen/Qwen2.5-7B-Instruct \
    --train_type grpo \
    --loss_type clip_cov \
    --clip_cov_lb 1.0 \
    --clip_cov_ub 5.0 \
    --clip_cov_ratio 0.0002 \
    --dataset math \
    --max_length 2048