require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  def change
    create_table :actors do |a|
      a.string :first_name
      a.string :last_name
    end
  end

  def full_name
    self.first_name + self.last_name
  end

  def list_roles
    self.characters
  end
end
