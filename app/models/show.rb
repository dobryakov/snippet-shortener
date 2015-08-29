class Show < ActiveRecord::Base
  belongs_to :page, :counter_cache => :shows_count
end
