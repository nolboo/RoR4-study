class Movie < ActiveRecord::Base
  validates_presence_of :name, :director
  validates_numericality_of :year, :length, :greater_than => 0
  validates_uniqueness_of :name, :message => "이미 저장되어 있는 영화입니다."
  validates_length_of :format, :maximum => 5, :minimum => 2

  def proper_name
    name.titleize
  end
end