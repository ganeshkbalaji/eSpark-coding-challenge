require 'csv'

class Student
attr_reader :student_test, :domain_order, :common_standards, :print_standards
  def initialize
    # @student_test = CSV.new(body, :headers => true, :header_converters => :symbol)
    @student = CSV.read('student_tests.csv', headers: true, converters: :all)
    @common_core = CSV.read('domain_order.csv', header_converters: :symbol, converters: :all)
    @common_standards = []
    @print_standards = []
    @print = []

    # @domain_rder = CSV.new(body).to_a
  end

  def print_student_test_scores
    @student.each do |stud|
      student_test = stud.to_hash
      # p student_test
      student_test.each do |k, v|
        if k.length < 3
          @print_standards << { k => v }
        end
      end
    end
    # p @print_standards
    (0...@print_standards.length).step(4) do |i|
      @print_sub = []
      @print_sub << @print_standards[i]
      @print_sub << @print_standards[i+1]
      @print_sub << @print_standards[i+2]
      @print_sub << @print_standards[i+3]
      @print << @print_sub
        # p @print_standards[i+1]
        # p @print_standards[i+2]
        # p @print_standards[i+3]
    end
    p @print
  end

  def print_common_core
    @common_core.each do |common|
      p common
      # @common_standards << common
    end
  end

  def compare
    # if @print == "K"
  end
end


student1 = Student.new
student1.print_student_test_scores
student1.print_common_core

# p student1.common_standards
# p student1.print_standards
# to_a.map {|row| row.to_h}
# student_test.map {|row| p row.to_hash}
# csv.to_a.map {|row| row.to_hash }
