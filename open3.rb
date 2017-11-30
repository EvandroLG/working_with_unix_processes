require 'open3'

Open3.popen3('grep', 'data') {
  |stdin, stdout, stderr|
  stdin.puts "some \nany \ndata"
  stdin.close
  puts stdout.read
}

puts "\n---\n\n"

Open3.popen3('ls', '-uhh', err: :out) {
  |stdin, stdout, stderr|
  puts stdout.read
}
