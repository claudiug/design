class Formater

  def out_report(title, text)
    raise 'Abstract method'
  end
end

class HtmlFormater < Formater

  def out_report(title, text)
    puts 'here we have some html'
  end
end

class PlainFormater < Formater

  def out_report(title, text)
    puts 'plain text here'
  end
end

class Report
  attr_reader :title, :text #just getter
  attr_accessor :formater #getter and setter

  def initialize(formater)
    @title = title
    @text = text
    @formater = formater
  end
  def out_report
    @formater.out_report(@title, @text)
  end
end

test = Report.new(PlainFormater.new)
p test.out_report