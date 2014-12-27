require 'csv'

read_file=File.read("datafile.html")

output=read_file.scan(/(?:>)(?:")?([\w]+[\s]*[\w]*|\d+)(?:<\w+>\d+<\w+>)?(?:<)/)
output = output.flatten
#puts output
i = 0
File.open('user_profiles.csv','a') do |file|
  output.each do |data|
    file.write("#{data},")
    i+=1
    if i == 4
      file.write("\n")
      i=0
    end
  end
end

