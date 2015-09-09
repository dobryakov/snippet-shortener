class Page < ActiveRecord::Base

  has_many :shows

  validates_presence_of :original_url, :url => true

  before_save do
    if self.code.to_s == ''
      self.code = (0...8).map { ('a'..'z').to_a[rand(26)] }.join
    end
  end

  def hour_stat

    #{0=>0, 1=>0, 2=>0, 3=>0, 4=>0, 5=>0, 6=>0, 7=>0, 8=>0, 9=>20, 10=>0, 11=>17, 12=>0, 13=>15, 14=>0, 15=>0, 16=>0, 17=>0, 18=>6, 19=>3, 20=>0, 21=>0, 22=>0, 23=>0}

    defaults = {}
    (0..23).each{ |h| defaults[h] = 0 }
    #self.shows.select('count(*) as c, EXTRACT(HOUR FROM created_at) AS h').group('h').map{|i| { hour: i.h, count: i.c } }
    self.shows.select('count(*) as c, EXTRACT(HOUR FROM created_at) AS h').group('h').map{|i| defaults[(i.h).to_i] = i.c }

  end

end
