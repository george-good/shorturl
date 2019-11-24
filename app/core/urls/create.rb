module Urls
  class Create < Rectify::Command
    LETTERS_AND_NUMBERS = [*('a'..'z'), *(0..9)].freeze

    def initialize(form)
      @form = form
    end

    def call
      broadcast(:invalid) if @form.invalid?

      url = Url.find_or_create_by!(
        original: @form.original
      )

      unless url.short_version
        url.update!(short_version: LETTERS_AND_NUMBERS.sample(6).join)
      end

      broadcast(:ok, url)
    end
  end
end
