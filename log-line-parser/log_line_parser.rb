require 'minitest/pride'
class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line = @line.split(':');
    return @line[1].strip
  end

  def log_level
    @line = @line.split(':')
    return @line[0].to_s.gsub(/[\]\[]/,'').downcase
  end

  def reformat
    @line = @line.split(':')
    return "#{@line[1].strip} (#{@line[0].gsub(/[\[\]]/,'').downcase})"
  end
end

