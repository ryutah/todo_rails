# 僕のRailsデフォルトGemfile
# 半年に１回は内容の更新などを考えること
source 'https://rubygems.org'

group :default do
  gem 'rails', '4.2.6'

  # railsでsassを使用できるようにする
  # 参考:https://github.com/rails/sass-rails
  gem 'sass-rails', '~> 5.0'
  # JavaScriptの圧縮をする
  # 参考:https://github.com/lautis/uglifier
  gem 'uglifier', '>= 1.3.0'
  # railsでCoffeeScriptを使えるようにする
  # 参考:https://github.com/rails/coffee-rails
  gem 'coffee-rails', '~> 4.1.0'
  # jqueryを使用する
  gem 'jquery-rails'
  # ページ遷移をajaxで置き換える
  # 参考:http://reed.github.io/turbolinks-compatibility/
  # 参考:https://github.com/turbolinks/turbolinks
  gem 'turbolinks'
  # JavaScriptのエンジンであるV8をRubyから使えるようにする
  # See https://github.com/rails/execjs#readme for more supported runtimes
  # gem 'therubyracer', platforms: :ruby

  # パスワードの暗号化をする
  # 参考:https://github.com/codahale/bcrypt-ruby
  gem 'bcrypt', '~> 3.1.7'

  # APサーバにPumaを使う場合
  # 参考:http://puma.io/
  gem 'puma'
  # APサーバにUnicornを使う場合
  # 参考:https://unicorn.bogomips.org/
  # gem 'unicorn'

  # JSON形式でのレスポンスをやりやすくする
  # 参考:https://github.com/rails-api/active_model_serializers
  gem 'active_model_serializers'

  # シンプルにフォームを記述できるようにする
  # 参考:https://github.com/plataformatec/simple_form
  gem 'simple_form'

  # ページング機能を簡単に実現できるようにする
  # 参考:https://github.com/amatsuda/kaminari
  gem 'kaminari'

  # BootStrapとSassを組み合わせて使えるようにする
  # 参考:https://github.com/twbs/bootstrap-sass
  gem 'bootstrap-sass'

  # テンプレートエンジンとしてslimを使用する
  # 参考:https://github.com/slim-template/slim-rails
  gem 'slim-rails'

  # railsでbowerを利用したJavaScriptのライブラリ管理を簡単にできるようにする
  # 参考:https://github.com/rharriso/bower-rails
  gem 'bower-rails'

  # 画像操作を行う
  # 参考:https://github.com/GUI/mini_magick
  # gem 'mini_magick'
  # 画像保存を簡単にできるようにする
  # 参考:https://github.com/carrierwaveuploader/carrierwave
  # gem 'carrierwave'
  # carrierwaveの画像保存先をDropBoxにする
  # 参考:https://github.com/robin850/carrierwave-dropbox
  # gem 'carrierwave-dropbox'

  gem 'seed-fu'
end

group :development, :test do
  gem 'sqlite3'
end

group :development do
  # railsでpryを使えるようにする
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'pry-stack_explorer'
  gem 'pry-byebug'

  # N+1問題を検出する
  # 参考:https://github.com/flyerhzm/bullet
  gem 'bullet'

  # ページレンダリングにかかる時間を計測する
  # 参考:https://github.com/MiniProfiler/rack-mini-profiler
  gem 'rack-mini-profiler'

  # railsログを見やすくする（アセットロードなどが表示されなくなる）
  # 参考:https://github.com/evrone/quiet_assets
  gem 'quiet_assets'

  # ソースコードのチェックをしてくれる
  # コマンド:rails_best_practices -f html .
  # 参考:https://github.com/railsbp/rails_best_practices
  gem 'rails_best_practices'
  # エラー発生時の画面を綺麗にする
  # 参考: https://github.com/charliesome/better_errors
  gem 'better_errors'
  # better_errorsの画面でirbを使えるようにする
  gem 'binding_of_caller'

  # バックグラウンドでライブラリなどをプリロードして高速化する
  # 参考:https://github.com/rails/spring
  gem 'spring'
  # rspecでspringを使うようにする
  # 参考:https://github.com/jonleighton/spring-commands-rspec
  gem 'spring-commands-rspec'

  # schema情報を自動生成する
  # 参考:https://github.com/ctran/annotate_models
  gem 'annotate'

  # アプリケーションの自動デプロイをできるようにする
  # 参考:http://qiita.com/Salinger/items/4ee4f3c5ebd5227196c0
  # gem 'capistrano-rails'
end

group :test do
  # railsのテストツールでrspecを利用する
  gem 'rspec-rails'
  # テストデータの作成を簡単にできるようにする
  gem 'factory_girl_rails'

  # テスト毎にデータをクリアする
  # 参考:https://github.com/amatsuda/database_rewinder
  gem 'database_rewinder'

  # テストにautodoc: trueを書くと、ドキュメントを自動生成してくれる
  # 参考:https://github.com/r7kamura/autodoc
  gem 'autodoc'

  # リクエスト単位のテストがやりやすくなるそうだが最終更新日が古いので様子見
  # 参考:https://github.com/r7kamura/rspec-request_describer
  # gem 'rspec-request_describer'
  # JSONのテストをやりやすくするらしいが、最終更新日が古いので様子見
  # 参考:https://github.com/collectiveidea/json_spec
  # gem 'json_spec'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4.0', group: :doc
end

group :production do
  # Herokuにデプロイするとき用
  gem 'pg'
  gem 'rails_12factor'
end
