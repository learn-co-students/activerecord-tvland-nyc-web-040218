class Character < ActiveRecord::Base
  def change
    create_table :characters do |c|
      c.string :name
      c.integer :show_id
      c.string :catchphrase
    end
  end

  def say_that_thing_you_say
    self.catchphrase
  end
end
