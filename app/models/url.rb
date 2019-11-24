class Url < ApplicationRecord
  def to_param
    short_version
  end
end
