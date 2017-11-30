fork do
  5.times do
    sleep 1
    puts "I'm an orphan!"
  end
end

5.times do
  puts Process.wait
end
