source 'https://rubygems.org'

# Ruby と rails のバージョンは最新でメンテナンスしたい
ruby '2.2.3'
gem 'rails', '4.2.4'

# Heroku にデプロイするため、ORDBMS に PostgreSQL を選択する
gem 'pg'

# スタイルシートに SCSS を使用する
gem 'sass-rails', '~> 5.0'

# JavaScript のホワイトスペースを削除したり、条件分岐を条件演算子に変更したりで圧縮する
# config/environments/production.rb の config.assets.js_compressor = :uglifier で活性
gem 'uglifier', '>= 1.3.0'

# Assets と View で CoffeeScript を使用する
gem 'coffee-rails', '~> 4.1.0'

# JavaScript のエンジン V8 を Ruby から利用する
# gem 'therubyracer', platforms: :ruby

# JavaScript のライブラリ jQuery を使用する
gem 'jquery-rails'

# ページの移動をAjaxに置き換えることで、JavaScriptやCSSの読み込みを省略して高速化する
gem 'turbolinks'

# JSON 形式でレスポンスを出力してくれるテンプレートエンジンを利用する
gem 'jbuilder', '~> 2.0'

# 'bundle exec rake doc:rails' で doc/api にドキュメントを生成する
gem 'sdoc', '~> 0.4.0', group: :doc

# テンプレートエンジンに slim を使用する
gem 'slim-rails'

# 'bundle exec annotate' コマンドで各ファイルに schema 情報などをコメントする
gem 'annotate'

group :development do
  # n + 1 問題を検出する
  gem 'bullet'

  # コーディングルールの準拠チェックを実施する
  gem 'rubocop'
end

group :development, :test do
  # rails c で起動する対話式コンソールを irb から pry に変更する
  gem 'pry-rails'

  # binding.pry コールした場所がブレークポイントとなる
  gem 'pry-byebug'

  # 例外ページにコンソールを設置し、View ファイルから console を呼ぶとコンソールを起動する
  gem 'web-console', '~> 2.0'

  # アプリケーションプリローダー
  gem 'spring'

  # ファイルシステムの変更イベントを監視する
  gem 'guard'

  # ファイルの保存時に自動で rubocop を実行する
  gem 'guard-rubocop'

  # Guard に OS の通知センターを利用させる
  gem 'terminal-notifier-guard'
end

group :test do
  # コードのカバレッジを計測する
  gem 'simplecov', require: false

  # テスト時にデータベースを綺麗にする
  gem 'database_cleaner'

  # テストの結果をプログレスバーで表示する
  gem 'minitest-reporters'

  # ファイルの保存時に自動でテストを実行する
  gem 'guard-minitest'
end
