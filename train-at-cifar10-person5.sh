#!/usr/bin/env zsh

# TRADES_rm 按比例删除部分 train data，然后计算 person 系数
echo "开始训练 1......"
CUDA_VISIBLE_DEVICES=2 python train_trades_cifar10.py --model preactresnet --AT-method TRADES_rm  --dataset CIFAR10 --gpu-id 2 --seed 1 --rmlabel 5 --percent 0.2
wait
echo "开始训练 2......"
CUDA_VISIBLE_DEVICES=2 python train_trades_cifar10.py --model preactresnet --AT-method TRADES_rm  --dataset CIFAR10 --gpu-id 2 --seed 1 --rmlabel 5 --percent 0.4
wait
echo "开始训练 3......"
CUDA_VISIBLE_DEVICES=2 python train_trades_cifar10.py --model preactresnet --AT-method TRADES_rm  --dataset CIFAR10 --gpu-id 2 --seed 1 --rmlabel 5 --percent 0.6
wait
echo "开始训练 4......"
CUDA_VISIBLE_DEVICES=2 python train_trades_cifar10.py --model preactresnet --AT-method TRADES_rm  --dataset CIFAR10 --gpu-id 2 --seed 1 --rmlabel 5 --percent 0.8
wait
echo "开始训练 5......"
CUDA_VISIBLE_DEVICES=2 python train_trades_cifar10.py --model preactresnet --AT-method TRADES_rm  --dataset CIFAR10 --gpu-id 2 --seed 1 --rmlabel 5 --percent 1
wait
echo "结束训练......"