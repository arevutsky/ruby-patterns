HTML_FORMATTER = lambda do |context|
  p '<html>'
  p '<head>'
  p "<title>#{context.title}</title>"
  p '</head>'
  p '<body>'
  context.text.each { |line| puts " <p>#{line}</p>" }
  p '</body>'
  p '</html>'
end

PLAIN_TEXT_FORMATTER = lambda do |context|
  p "***** #{context.title} *****"
  context.text.each { |line| puts line }
end

class Report
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(&formatter) # formatter should be like a block
    @title = 'Monthly Report'
    @text = ['Things are going', 'really, really well.']
    @formatter = formatter
  end

  def output_report
    @formatter.call(self)
  end
end

report = Report.new(&HTML_FORMATTER)
report.output_report

# Change the formatter at runtime
report.formatter = PLAIN_TEXT_FORMATTER
report.output_report

# For added flexibility, we can use an on-the-fly code block as a formatter
report = Report.new do |context|
  p '==== on-the-fly formatter 1 ==='
  p "==== #{context.title} ==="
  context.text.each { |line| p line }
end

report.output_report

report.formatter = lambda do |context|
  p '==== on-the-fly formatter 2 ==='
  p "==== #{context.title} ==="
  context.text.each { |line| puts(line) }
end

report.output_report