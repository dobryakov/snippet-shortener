class Page < ActiveRecord::Base

  has_many :shows

  validates_presence_of :original_url, :url => true

  before_save do
    if self.code.to_s == ''
      self.code = (0...8).map { ('a'..'z').to_a[rand(26)] }.join
    end
  end

end
