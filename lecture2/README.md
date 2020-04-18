# What I learned

See the diff of this commit for all the commands I learned.

- `$_` to repeat the argument from the last command.
- Basic shell scripting: functions, conditions, loops, and arithmetic.
- Using the `env` command in the shebang line to make a script portable.
- Using `{}` syntax to expand multiple arguments following a pattern.
- Google has a [shell style guide](https://google.github.io/styleguide/shellguide.html).
- `xargs`
    - `echo hello | cat` is equivalent to `echo hello | xargs echo` 
    - `ls | xargs rm` is equialent to `rm *` 
