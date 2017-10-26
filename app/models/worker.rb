class Worker < ApplicationRecord
  attr_accessor :first_name, :last_name
  before_save :save_full_name

  def save_full_name
    self.name = @first_name + " " + @last_name
  end

  def first_name
    self.name.split(' ')[0].capitalize
  end

  def last_name
    self.name.split(' ')[1].capitalize
  end

end
