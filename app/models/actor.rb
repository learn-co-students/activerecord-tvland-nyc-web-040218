require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name.capitalize} #{self.last_name.capitalize}"
  end

  def list_roles
    self.characters.map do |role|
      "#{self.characters[0].name} - #{self.characters[0].show.name}"
    end
  end

  def list_shows
    self.shows
  end

end
