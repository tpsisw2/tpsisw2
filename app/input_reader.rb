require 'optparse'

class InputReader
    
    def get_filename
        filename = ""
        options = OptionParser.new do |opts|    
            opts.banner = "Usage: notroll.rb [options]"

            opts.on("-h", "--help", "Display this screen") do
                puts opts
            end
            opts.on( '-f', '--file FILE', "Mandatory argument" ) do |name|
                filename = name
            end

        end.parse!
        return filename
    end
end

class FileHandler

    def initialize(filename)
        @file = File.new(filename, "r")
    end
    def get_lines()
        return @file.readlines
    end

end


input_reader = InputReader.new
filename = input_reader.get_filename
file_handler = FileHandler.new(filename)
lines = file_handler.get_lines
puts lines[0]


