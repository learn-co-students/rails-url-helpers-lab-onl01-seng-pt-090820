class Student < ActiveRecord::Base

  def to_s
    self.first_name + " " + self.last_name
  end

  def is_active
    if self.active == false
      puts "<%=link_to This student is currently inactive., student_path(student)%>"
      self.active = true
    elsif @student.active == true
      puts "<%=link_to This student is currently active., student_path(student)%>"
      self.active = false
    end
  end

end
