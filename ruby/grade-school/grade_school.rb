class School
  def initialize
    @school = {}
  end

  def add(new_name, grade)
    unless @school[grade]
      @school[grade] = [new_name]
      return @school[grade]
    end

    insert_index = @school[grade].bsearch_index { |name| name > new_name } || @school[grade].size

    @school[grade] = @school[grade].insert(insert_index, new_name)
  end

  def students(grade)
    @school[grade] || []
  end

  def students_by_grade
    @school.each.map do |grade, students|
      {
        grade: grade,
        students: students
      }
    end.sort { |x, y| x[:grade] <=> y[:grade] }
  end
end

module BookKeeping
  VERSION = 3
end
