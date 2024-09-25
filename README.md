# my-docker-pandoc

## 概要
`my-docker-pandoc`は、汎用のドキュメントコンバータであるPandocに関する学習履歴を管理するためのリポジトリです。このリポジトリではGitHub Copilotの助けを借りながら実装を進めていき、その履歴を記録していきます。

## 前提条件

- Dockerがインストールされていること

## 使用方法

1. Dockerイメージをビルドします。
    ```sh
    docker build my-docker-pandoc .
    ```
2. Pandocを使用してドキュメントを変換します。
    ```sh
    docker run --rm -v $(pwd):/data my-docker-pandoc /data/sample.md -o /data/sample.pdf --pdf-engine=pdflatex
    ```

## 課題

- [ ] 日本語を含むMarkdownファイルをPDFに変換する方法を調査する
- [ ] makeコマンドを使用してドキュメントを変換する方法を調査する

## todo

- [ ] 日本語を含むMarkdownファイルをPDFに変換する方法を調査する
- [ ] 日本語のPDFファイルが生成できるようになったら学習記録をREADME.mdから別のファイルに分割し、そのファイルをPDFに変換するようにする