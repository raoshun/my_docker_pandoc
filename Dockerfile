# ベースイメージとして公式のPandocイメージを使用
FROM pandoc/core:latest

# メタデータの設定
LABEL maintainer="your-email@example.com"
LABEL version="1.0"
LABEL description="This is a Docker image for Pandoc, a universal document converter."

# 必要に応じて追加のツールをインストール
# 例: LaTeXを使用してPDFを生成する場合
RUN apk add --no-cache \
    texlive-full \
    fontconfig \

# 作業ディレクトリを設定
WORKDIR /data

# デフォルトのコマンドを設定
CMD ["pandoc", "--help"]
