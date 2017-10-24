require 'pry'
class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides

  def mood
    if self.happiness.nil? || self.happiness < 2
      "sad"
    else
      "happy"
    end
  end
end
