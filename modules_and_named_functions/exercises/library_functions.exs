# Find the library functions to do the following, and then
# use each in iex. (If the word Elixir or Erlang appears at
# the end of the challenge, then you’ll find the answer in
# that set of libraries.)

# 1) Convert a float to a string with two decimal digits. (Erlang)
:io.format("~.2f~n", [2.45])

# 2) Get the value of an operating-system environment variable (Elixir)
import System, only: [get_env: 1]
get_env("RUBY_VERSION")

# 3) Return the extension component of a file name (Elixir)
import Path, only: [extname: 1]
extname("some_file.exs")

# 4) Return the process’s current working directory. (Elixir)
import System, only: [cwd: 0]
cwd()

# 5) Convert a string containing JSON into Elixir data structures.

# 6) Execute a command in your operating system’s shell.
:os.cmd('ls') # Erlang
System.cmd("echo", ["hello"]) # Elixir
