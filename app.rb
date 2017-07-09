# frozen_string_literal: true

require 'fast_gettext'
require 'syro'
require 'securerandom'

# Application bootstrap
require_relative 'boot'

WebApp = Syro.new(BasicDeck) do
  unless @available_locales
    FastGettext.available_locales = (@available_locales ||= %w[en fr])
  end

  unless @text_domain
    @text_domain = 'forgedtofight'
    FastGettext.text_domain = @text_domain
  end

  @accepted_language ||= lambda do
    next 'en' unless req.env.include?('HTTP_ACCEPT_LANGUAGE')
    current_language = req.env['HTTP_ACCEPT_LANGUAGE'][0, 2]
    @available_locales.include?(current_language) ? current_language : 'en'
  end
  lang = req['lang']
  lang = nil if lang.to_s.empty?
  FastGettext.set_locale(lang || session['lang'] || @accepted_language.call)
  session['lang'] = FastGettext.locale

  run Rack::Cascade.new([Home, Accounts])
end

MainApp = Rack::Builder.new do
  use Rack::Chunked
  use Rack::CommonLogger
  use Rack::ContentLength
  use Rack::ContentType, 'text/html'
  use Rack::Deflater
  use Rack::Reloader unless %w[production staging].include?(ENV['RACK_ENV'])
  use(Rack::Session::Cookie,
      secret: ENV['APP_COOKIE_SECRET'] || SecureRandom.hex(64))
  use Rack::ShowExceptions
  use(Rack::Timeout,
      service_timeout: 20,
      wait_timeout: 30,
      wait_overtime: 60,
      service_past_wait: false)

  use Shield::Middleware, '/login'

  run(WebApp)
end
