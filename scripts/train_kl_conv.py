from swift import TrainerArguments, InferArguments, GRPOConfig
from swift import train

# KL-Cov 配置
grpo_config = GRPOConfig(
    loss_type="kl_cov",
    k_percent=0.2,
    ppo_kl_coef=1.0,
    # 其他参数...
)

train(
    model="Qwen/Qwen2.5-7B-Instruct",
    train_type="grpo",
    grpo_config=grpo_config,
    dataset="math",
    max_length=2048,
)