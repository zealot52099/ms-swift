# 使用KL-Cov方法训练
swift \
    --model Qwen/Qwen2.5-7B-Instruct \
    --train_type grpo \
    --loss_type kl_cov \
    --k_percent 0.2 \
    --ppo_kl_coef 1.0 \
    --dataset math \
    --max_length 2048