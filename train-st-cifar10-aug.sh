#!/usr/bin/env zsh

# ST keep percent data(CIFAR-10)
# 对 2-5 调整 ce loss 的权重 ： 1-beta
echo "开始训练 1......"
CUDA_VISIBLE_DEVICES=1 python train_trades_cifar10.py --model preactresnet --AT-method ST_adp  --dataset CIFAR10 --gpu-id 1 --seed 1 --beta 0.5 --list_aug 2 3 4 5
wait
echo "开始训练 2......"
CUDA_VISIBLE_DEVICES=1 python train_trades_cifar10.py --model preactresnet --AT-method ST_adp  --dataset CIFAR10 --gpu-id 1 --seed 2 --beta 0.1 --list_aug 2 3 4 5
wait
echo "开始训练 3......"
CUDA_VISIBLE_DEVICES=1 python train_trades_cifar10.py --model preactresnet --AT-method ST_adp  --dataset CIFAR10 --gpu-id 1 --seed 3 --beta 0.2 --list_aug 2 3 4 5
wait
echo "开始训练 4......"
CUDA_VISIBLE_DEVICES=1 python train_trades_cifar10.py --model preactresnet --AT-method ST_adp  --dataset CIFAR10 --gpu-id 1 --seed 4 --beta 0.4 --list_aug 2 3 4 5
wait
echo "开始训练 5......"
CUDA_VISIBLE_DEVICES=1 python train_trades_cifar10.py --model preactresnet --AT-method ST_adp  --dataset CIFAR10 --gpu-id 1 --seed 5 --beta 0.3 --list_aug 2 3 4 5
wait
echo "结束训练......"
#CUDA_VISIBLE_DEVICES=1 python train_trades_cifar10.py --model preactresnet --AT-method ST_adp  --dataset CIFAR10 --gpu-id 1 --seed 6 --beta 1
#CUDA_VISIBLE_DEVICES=1 python train_trades_cifar10.py --model preactresnet --AT-method ST_adp  --dataset CIFAR10 --gpu-id 1 --seed 7 --beta 0.01

CUDA_VISIBLE_DEVICES=1 python train_trades_cifar10.py --model preactresnet --AT-method ST_adp  --dataset CIFAR10 --gpu-id 1 --seed 8 --beta 0.05 --list_aug 3