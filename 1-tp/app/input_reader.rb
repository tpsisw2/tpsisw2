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
