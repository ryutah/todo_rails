require File.expand_path('../boot', __FILE__)

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# Railsの各種設定
# 参考:http://railsdoc.com/config
module Todo
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # TimeZone, localeの設定
    # 使用可能なTimeZoneは、「rake time:zones:all」で調べる
    config.time_zone = 'Tokyo'
    # 言語ファイルの読み込み先の設定
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '*', '*.{rb,yml}').to_s]
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', 'models', '*', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :ja

    # generatorの設定
    # rails g {generaters} を実行した時に自動生成されるファイルの制御
    # 「bundle exec rails g scaffold」でオプションを調べられる
    config.generators do |g|
      # テンプレートエンジンとしてslimを生成するようにする
      g.template_engine = :slim
      # jsの自動生成
      g.javascripts false
      # cssの自動生成
      g.stylesheets false
      # helperの自動生成
      g.helper false
      # 自動生成されるテストでrspecを使用するように設定
      g.test_framework :rspec,
        fixture: true,
        view_spec: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: true,
        request_specs: true
      # FactoryGirlの生成先フォルダの設定(変更が必要なら)
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end
    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
  end
end
