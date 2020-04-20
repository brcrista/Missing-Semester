# What I learned
- `grep` is for filtering lines of text
- `sed` (stream editor) is for replacing text in a line
- `awk` is for working with columns of text  
- This lecture also covered regular expressions, but I didn't see anything I wasn't familiar with.
- If you redirect a file's output to itself, like `cat input.txt > input.txt`, the result is an empty file. This is because `>` is a destructive operation, and it actually empties the contents of the file *before* the LHS executes.
