class Student < ActiveRecord::Base
  
  def to_s
    self.first_name + " " + self.last_name
  end

  def self.is_active
    if @student.active != true
      puts "<%=link_to This student is currently inactive., student_path(student)%>"
      @student.active = true
    elsif @student.active != false
      puts "<%=link_to This student is currently active., student_path(student)%>"
      @student.active = false
    end
  end

end
