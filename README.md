## Setup

```powershell
docker-compose exec php bash
```

```bash
# composerのインストール
# https://getcomposer.org/doc/00-intro.md#globally
# apt update
# apt install -y git zip unzip
# symfony-cliのインストール
# https://symfony.com/download
```

## In Docker

```bash
# symfony new my_project_directory --version="6.1.*" --webapp
composer create-project symfony/website-skeleton my_project_directory  4.4.*
cd my_project_directory
symfony server:start
```

https://localhost:8091

## 参考ページ

- [Installing & Setting up the Symfony Framework (Symfony Docs)](https://symfony.com/doc/current/setup.html#creating-symfony-applications)
- [Profiler (Symfony Docs)](https://symfony.com/doc/current/profiler.html#installation)
- [docker-composeを利用した環境構築 · GitBook](http://ccg-textbook.codecamp.jp/docker/0300_compose.html)
- [Docker(docker-compose) を使って PHP / MySQL 開発環境構築](https://zenn.dev/aono/articles/0856cf4d4e3e25)
- [Symfony 4.4 LTS のプロジェクトの作り方 - Qiita](https://qiita.com/idani/items/a15b185221bfbd9bd338)
