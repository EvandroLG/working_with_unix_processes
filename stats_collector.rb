message = 'Good morning'
recipient = 'evandrolgoncalves@gmail.com'

fork do
  StatsCollector.record message, recipient
end
