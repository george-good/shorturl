module Urls
  class Form < Rectify::Form
    mimic :url

    attribute :original, String

    validates :original, presence: true, url: true
  end
end
