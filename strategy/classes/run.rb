class Report
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(formatter)
    @title = 'Monthly Report'
    @text = ['Things are going', 'really, really well.']
    @formatter = formatter
  end

  def output_report
    @formatter.output_report(self)
  end
end

class HTMLFormatter
  def output_report(context)
    p '<html>'
    p '<head>'
    p "<title>#{context.title}</title>"
    p '</head>'
    p '<body>'
    context.text.each { |line| p "<p>#{line}</p>" }
    p '</body>'
    p '</html>'
  end
end

class PlainTextFormatter
  def output_report(context)
    p "***** #{context.title} *****"
    context.text.each { |line| puts line }
  end
end

report = Report.new(HTMLFormatter.new)
report.output_report

# Change the formatter at runtime
report.formatter = PlainTextFormatter.new
report.output_report