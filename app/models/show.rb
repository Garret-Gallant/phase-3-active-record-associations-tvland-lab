class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    # self.characters.map {|c| c.actor.full_name}
    self.actors.map do |actor|
      actor.full_name
    end
  end
end
