class Report # like an abstract class
  def initialize(title = '', text = '')
    @title, @text = title, text
  end

  def output_report
    output_start
    output_head
    output_body_start
    @text.each { |line| output_line(line) }
    output_body_end
    output_end
  end

  def output_start; end
  def output_body_start; end
  def output_body_end; end
  def output_end; end

  def output_head
    output_line(@title)
  end

  protected

  def output_line(line)
    raise 'Called abstract method: output_line'
  end
end

class HTMLReport < Report
  def output_start
    p '<html>'
  end

  def output_head
    p "<head><title>#{@title}</title></head>"
  end

  def output_body_start
    p '<body>'
  end

  def output_line(line)
    p "<p>#{line}</p>"
  end

  def output_body_end
    p '</body>'
  end

  def output_end
    p '</html>'
  end
end

class PlainTextReport < Report
  def output_head
    p "**** #{@title} ****"
    p
  end

  def output_line(line)
    p line
  end
end

title = 'Monthly Report'
text = ['Things are going', 'really, really well.']

report = HTMLReport.new(title, text)
report.output_report

report = PlainTextReport.new(title, text)
report.output_report