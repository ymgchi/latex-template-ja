# セットアップ手順

## 1. 環境準備

### 必要なソフトウェア

- Docker 18.06以降
- Git

### Dockerのインストール

#### Ubuntu/Linux
```bash
sudo apt update
sudo apt install docker.io
sudo usermod -aG docker $USER
```

ログアウト後、再ログインしてください。

#### macOS
[Docker Desktop for Mac](https://www.docker.com/products/docker-desktop)をダウンロードしてインストール

#### Windows
[Docker Desktop for Windows](https://www.docker.com/products/docker-desktop)をダウンロードしてインストール

## 2. プロジェクトの取得

```bash
git clone https://github.com/your-username/latex-template-ja.git
cd latex-template-ja
```

## 3. Dockerイメージの取得

```bash
docker pull ghcr.io/being24/latex-docker:latest
```

## 4. 動作確認

```bash
make pdf
```

`main.pdf`が生成されれば成功です。

## トラブルシューティング

### Dockerが起動しない

Dockerデーモンが起動しているか確認してください：
```bash
sudo systemctl start docker  # Linux
```

### 権限エラーが出る

Dockerグループに追加されているか確認してください：
```bash
groups  # dockerが表示されるか確認
```

表示されない場合は、再ログインが必要です。
