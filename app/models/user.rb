class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides


  def mood
    if self.happiness > 2
      "happy"
      else
      "sad"
    end
  end
end
