# Experimenting some libaries

# format float output
IO.puts :io.format("~.2f~n", [3.12345])

# get env variable value
IO.puts System.get_env("PATH")

# get file extension
IO.puts Path.extname("yolo_yolo.yada")

# current working dir
IO.puts System.cwd

# execute command in shell
IO.puts System.cmd("ls")
