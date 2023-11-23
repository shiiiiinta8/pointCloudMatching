import os
import sys
import torch
import torch.optim as optim
import torchvision.transforms as transforms
from torch.utils.data import DataLoader

# addpath('../')
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), os.pardir)))
import ptlk

# データセットのパス
dataset_path = 'dataset/PointCloudSet/'

# trainフォルダ内のファイルを読み込む
train_folder = os.path.join(dataset_path, 'train')
train_files = ptlk.data.globset.glob_dataset(train_folder, class_to_idx, ['*.ply'])
train_pointclouds = [o3d.io.read_point_cloud(file) for file, _ in train_files]

# testフォルダ内のファイルを読み込む
test_folder = os.path.join(dataset_path, 'test')
test_files = ptlk.data.globset.glob_dataset(test_folder, class_to_idx, ['*.ply'])
test_pointclouds = [o3d.io.read_point_cloud(file) for file, _ in test_files]

# 新しいデータセットを読み込んでPointCloudDatasetを作成
train_dataset = ptlk.data.datasets.PointCloud(dataset_path, train=1)
test_dataset = ptlk.data.datasets.PointCloud(dataset_path, train=0)

# DataLoaderを作成
train_loader = DataLoader(train_dataset, batch_size=32, shuffle=True, num_workers=4)
test_loader = DataLoader(test_dataset, batch_size=32, shuffle=False, num_workers=4)

# モデルを読み込む
ptnet = ptlk.pointnet.PointNet_features()
model = ptlk.pointlk.PointLK(ptnet=ptnet)

# モデルの最後の層以外の重みを固定する
for param in model.parameters():
    param.requires_grad = False

# 重みを読み込む
weights = torch.load('./results/ex1_pointlk_1110_model_best.pth')
model.load_state_dict(weights)

# 新しいデータセットを使用してモデルをトレーニングするコードを追加
# この部分は新しいデータセットに合わせて適切なトレーニングコードを記述する必要があります

# モデルを評価する
model.eval()

# テストデータで評価
total_correct = 0
total_samples = 0

with torch.no_grad():
    for data in test_loader:
        inputs, targets = data
        outputs = model(inputs)

        # ここで適切な評価メトリクスを計算する

        # 例: 分類タスクの場合
        _, predicted = outputs.max(1)
        total_samples += targets.size(0)
        total_correct += predicted.eq(targets).sum().item()

# 必要に応じて、モデルの他の層の重みを微調整するコードを追加します
# この部分はモデルの他の層に微調整が必要な場合に対応するためのコードです
