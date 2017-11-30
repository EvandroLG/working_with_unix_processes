puts Process.pid
trap(:INT) { puts 'you can not get me!' }
sleep
signal
