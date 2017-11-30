# any dead process whose status hasn't been waited on is a zombie process
pid = fork { sleep 1 }
puts pid
sleep 5
