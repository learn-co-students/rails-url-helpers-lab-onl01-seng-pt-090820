class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active?
    self.active ? "This student is currently active." : "This student is currently inactive."
  end

  def activate_student_status
    self.active ? self.update(active: false) : self.update(active: true)
  end
end