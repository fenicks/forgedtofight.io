# frozen_string_literal: true

class Mod
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String, unique: true
  field :type, type: Enum, default: :utility, in: %i[offense defense utility]
  field :description, type: String
  field :icon_url, type: String
  field :image_url, type: String
  DEFAULT_INDEX = { stars_1: nil,
                    stars_2: nil,
                    stars_3: nil,
                    stars_4: nil }.freeze
  field :health, type: Hash, default: DEFAULT_INDEX
  field :attack, type: Hash, default: DEFAULT_INDEX
  field :max_rating_sig0, type: Hash, default: DEFAULT_INDEX
  field :max_rating_sig100, type: Hash, default: DEFAULT_INDEX

  has_many :arena
end
