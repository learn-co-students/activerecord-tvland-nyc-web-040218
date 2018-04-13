class Show < ActiveRecord::Base
  def change
    create_table :shows do |s|
      s.string :name
      s.string :genre
    end
  end

end
