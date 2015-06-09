def parse_args(domain_order, student_test)

end


def levels_from_strng(string)
  string = string.gsub(None, '[]')
  return [Level(x.split('.')[0].replace(), x.split('.')[1].strip())

    for x in string.split(',')]
    end
end

class Level(object)


  def initialize(self, grade, domain)
    if grade == "K" | grade == "k"
      return grade = 0
    elsif grade is None | grade == "None" | grade = ""
      return grade = -1
      @grade = int(grade)
      @domain = domain
  end

  def str(grade)
    if grade == 0;
      return grade = 'K'
    elsif grade == -1
      grade = None
      return
end
