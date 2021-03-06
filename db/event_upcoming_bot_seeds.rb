# frozen_string_literal: true

# Event.unscoped.where(type: :upcoming_bot).delete_all

# Upcoming bots
[
  {
    type: :upcoming_bot,
    start_at: Time.parse('2018-12-06 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Jetfire', type: :tech).first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2018-11-01 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Scorponok', type: :warrior).first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2018-10-04 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Megatronus', type: :demolitions).first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2018-09-06 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Cyclonus', type: :tactician).first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2018-08-09 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Wheeljack', type: :tech).first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2018-07-12 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Tantrum', type: :brawler).first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2018-06-07 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Jazz', type: :scout).first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2018-05-10 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Cheetor', type: :scout).first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2018-04-12 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Blaster').first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2018-03-15 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Kickback').first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2018-02-08 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Hound').first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2018-02-01 00:00:00 PDT').utc,
    end_at: Time.parse('2018-02-08 00:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Sharkticon', type: :brawler).first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2018-01-04 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Optiminus Primal').first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2017-12-21 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Bumblebee', type: :scout).first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2017-11-30 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Megatron', type: :tactician).first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2017-11-02 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Dinobot').first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2017-10-05 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Galvatron').first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2017-09-21 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Ramjet').first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2017-08-24 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Starscream').first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2017-08-10 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Shockwave').first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2017-07-27 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Grimlock').first.id
  }
].each do |event_upcoming_bot|
  Event.upsert! event_upcoming_bot
end
