# frozen_string_literal: true

Event.unscoped.where(type: :calendar_bot).delete_all
# Calendar's bot
[
  {
    type: :calendar_bot,
    start_at: Time.parse('2017-08-01 17:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Hot Rod').first.id
  }
].each do |event_calendar_bot|
  Event.upsert! event_calendar_bot
end