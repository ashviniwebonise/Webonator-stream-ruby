require 'csv'
#This class is for taking file csv file as
class MetaProgram
  def getfile_name
    puts 'enetr faile name'
    file_name = gets.chomp
    name_capitalize = File.basename(file_name, '.csv').split(/_/)
    class_name = name_capitalize.map { |name| name.capitalize }.join('')
      @@main_class = Object.const_set(class_name,Class.new)
      puts @@main_class
  end

  def get_header
    csv_contents = CSV.read('user_profiles.csv')
    headers=csv_contents.shift
    puts headers
    csv_contents
    @@main_class.class_eval do
    attr_accessor *headers
    define_method(:initialize) do |*data|
      csv_contents.each_with_index do |name , i|
        instance_variable_set("@"+name,data[i])
        end
    end
  end
end
end
objmeta = MetaProgram.new
objmeta.getfile_name
objmeta.get_header

