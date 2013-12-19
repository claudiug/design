class Writer
  attr_reader :check_sum

  def initialize(path)
    @file = File.open(path, 'w')
    @check_sum = 0
    @line_number = 1
  end

  def write_line(line)
    @file.print(line)
    @file.print('\n')
  end

  def check_sum_write_line(data)
    data.each_byte{|byte| @check_sum = (@check_sum + byte) % 256}
    @check_sum += '\n[0]' % 256
    write_line(data)
  end

  def time_stamp_write_line(data)
    write_line("#{Time.new}: #{data}")
  end

  def number_write_line(data)
    write_line("#{@line_number}: #{data}")
    @line_number += 1
  end

  def close
    @file.close
  end

end

writer = Writer.new('out.txt')
writer.write_line('Here is my text')
puts "out: #{writer.check_sum}"