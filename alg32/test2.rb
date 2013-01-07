#!/usr/bin/ruby

require 'FileUtils'

# Checks if the current alg compiler detects certain errors in alg32
# programs (double declarations or missing declarations of variables,
# type errors)
# Applies the compiler to several short alg32 programs, which contain
# one such error each, writes the outputs into a file FOUND2.OUT,
# compares this file with file EXPECTED2 and reports any differences.

GECCO = 'gecco.sh'

# This procedure carries out 1 test:
# It expects any number of parameters (at least 1), writes them all
# into a file ALG.TMP and applies the current alg compiler to that file.
# The file ALG.TMP and the ouptut of the alg compiler is appended to
# file FOUND2.OUT.
def run_gecco str
  puts str
  system "echo '#{str}' > tmp"
  system "echo '#{str}' >> FOUND2.OUT"
  system "#{GECCO} /run tmp >> FOUND2.OUT"
  # system "echo '' >> FOUND2.OUT"
end

File.new('FOUND2.OUT', 'w')

# Double declarations
run_gecco 'int    x; int    x;'
run_gecco 'bool   x; bool   x;'
run_gecco 'string x; string x;'

run_gecco 'int    x; bool   x;'
run_gecco 'bool   x; string x;'
run_gecco 'string x; int    x;'

run_gecco 'int    x; write(17); int    x;'
run_gecco 'bool   x; write(17); bool   x;'
run_gecco 'string x; write(17); string x;'

# Applications of undeclared variables in various commands

# write, writeln
run_gecco 'write(x);'
run_gecco 'writeln(x);'

# Variable declaration:
run_gecco 'int    x := y;'
run_gecco 'bool   x := y;'
run_gecco 'string x := y;'

# Assignment
run_gecco 'int    x; x := y;'
run_gecco 'bool   x; x := y;'
run_gecco 'string x; x := y;'

# read
run_gecco 'read(x);'

# Applications of undeclared variables in various expressions
run_gecco 'int    x; write(x+x+y);'
run_gecco 'int    x; write(x-y-x);'
run_gecco 'int    x; write(y*x*y);'
run_gecco 'int    x; write(x/x/y);'
run_gecco 'int    x; write(x+x-x*x/y);'
run_gecco 'int    x; write(x/x*y+x-x);'

run_gecco 'int    x; write( x + -y);'
run_gecco 'int    x; write(-y -  x);'

run_gecco 'bool   x; write(x or  x or  y);'
run_gecco 'bool   x; write(y and x and x);'

run_gecco 'bool   x; write(x or  not y);'
run_gecco 'bool   x; write(not y and x);'

run_gecco 'string x; write(x & x & y);'
run_gecco 'string x; write(x & y & x);'

run_gecco 'int    x; write(x =  y);'
run_gecco 'bool   x; write(y =  x);'
run_gecco 'string x; write(x =  y);'

run_gecco 'int    x; write(y != x);'
run_gecco 'bool   x; write(x != y);'
run_gecco 'string x; write(y != x);'

# Type errors

# Variable declarations, initialization with literals
run_gecco 'int    x := true ;'
run_gecco 'int    x := "123";'
run_gecco 'bool   x := "123";'
run_gecco 'bool   x := 2    ;'
run_gecco 'string x := 2    ;'
run_gecco 'string x := true ;'

# Variable declarations, initialization with variables
run_gecco 'bool   y; int    x := y;'
run_gecco 'string y; int    x := y;'
run_gecco 'string y; bool   x := y;'
run_gecco 'int    y; bool   x := y;'
run_gecco 'int    y; string x := y;'
run_gecco 'bool   y; string x := y;'

# Assignment
run_gecco 'int    x; x:= true ;'
run_gecco 'int    x; x:= "123";'
run_gecco 'bool   x; x:= "123";'
run_gecco 'bool   x; x:= 2    ;'
run_gecco 'string x; x:= 2    ;'
run_gecco 'string x; x:= true ;'

run_gecco 'bool   y; int    x; x := y;'
run_gecco 'string y; int    x; x := y;'
run_gecco 'string y; bool   x; x := y;'
run_gecco 'int    y; bool   x; x := y;'
run_gecco 'int    y; string x; x := y;'
run_gecco 'bool   y; string x; x := y;'

# Type errors in expressions with arithmetic operators and literals
run_gecco 'writeln(   3 + true );'
run_gecco 'writeln(   3 + "123");'
run_gecco 'writeln(true + "123");'
run_gecco 'writeln(true +    3 );'
run_gecco 'writeln("123"+    3 );'
run_gecco 'writeln("123"+ true );'
run_gecco 'writeln(true + true );'
run_gecco 'writeln("123"+ "123");'

run_gecco 'writeln(   3 - true );'
run_gecco 'writeln(   3 - "123");'
run_gecco 'writeln(true - "123");'
run_gecco 'writeln(true -    3 );'
run_gecco 'writeln("123"-    3 );'
run_gecco 'writeln("123"- true );'
run_gecco 'writeln(true - true );'
run_gecco 'writeln("123"- "123");'

run_gecco 'writeln(   3 * true );'
run_gecco 'writeln(   3 * "123");'
run_gecco 'writeln(true * "123");'
run_gecco 'writeln(true *    3 );'
run_gecco 'writeln("123"*    3 );'
run_gecco 'writeln("123"* true );'
run_gecco 'writeln(true * true );'
run_gecco 'writeln("123"* "123");'

run_gecco 'writeln(   3 / true );'
run_gecco 'writeln(   3 / "123");'
run_gecco 'writeln(true / "123");'
run_gecco 'writeln(true /    3 );'
run_gecco 'writeln("123"/    3 );'
run_gecco 'writeln("123"/ true );'
run_gecco 'writeln(true / true );'
run_gecco 'writeln("123"/ "123");'

run_gecco 'writeln(-"123");'
run_gecco 'writeln(-true);'

# Type errors in expressions with arithmetic operators and variables
run_gecco 'int    x; bool   y; writeln(x+y);'
run_gecco 'int    x; string y; writeln(x+y);'
run_gecco 'bool   x; string y; writeln(x+y);'
run_gecco 'bool   x; int    y; writeln(x+y);'
run_gecco 'string x; int    y; writeln(x+y);'
run_gecco 'string x; bool   y; writeln(x+y);'
run_gecco 'bool   x; bool   y; writeln(x+y);'
run_gecco 'string x; string y; writeln(x+y);'

run_gecco 'int    x; bool   y; writeln(x-y);'
run_gecco 'int    x; string y; writeln(x-y);'
run_gecco 'bool   x; string y; writeln(x-y);'
run_gecco 'bool   x; int    y; writeln(x-y);'
run_gecco 'string x; int    y; writeln(x-y);'
run_gecco 'string x; bool   y; writeln(x-y);'
run_gecco 'bool   x; bool   y; writeln(x-y);'
run_gecco 'string x; string y; writeln(x-y);'

run_gecco 'int    x; bool   y; writeln(x*y);'
run_gecco 'int    x; string y; writeln(x*y);'
run_gecco 'bool   x; string y; writeln(x*y);'
run_gecco 'bool   x; int    y; writeln(x*y);'
run_gecco 'string x; int    y; writeln(x*y);'
run_gecco 'string x; bool   y; writeln(x*y);'
run_gecco 'bool   x; bool   y; writeln(x*y);'
run_gecco 'string x; string y; writeln(x*y);'

run_gecco 'int    x; bool   y; writeln(x/y);'
run_gecco 'int    x; string y; writeln(x/y);'
run_gecco 'bool   x; string y; writeln(x/y);'
run_gecco 'bool   x; int    y; writeln(x/y);'
run_gecco 'string x; int    y; writeln(x/y);'
run_gecco 'string x; bool   y; writeln(x/y);'
run_gecco 'bool   x; bool   y; writeln(x/y);'
run_gecco 'string x; string y; writeln(x/y);'

run_gecco 'string x; writeln(-x);'
run_gecco 'bool   x; writeln(-x);'

# Type errors in expressions with bool operators and literals
run_gecco 'writeln(   3  or true );'
run_gecco 'writeln(   3  or "123");'
run_gecco 'writeln(true  or "123");'
run_gecco 'writeln(true  or    3 );'
run_gecco 'writeln("123" or    3 );'
run_gecco 'writeln("123" or true );'

run_gecco 'writeln(   3  and true );'
run_gecco 'writeln(   3  and "123");'
run_gecco 'writeln(true  and "123");'
run_gecco 'writeln(true  and    3 );'
run_gecco 'writeln("123" and    3 );'
run_gecco 'writeln("123" and true );'

run_gecco 'writeln(not "123");'
run_gecco 'writeln(not    3 );'

# Type errors in expressions with bool operators and variables
run_gecco 'int    x; bool   y; writeln(x or y);'
run_gecco 'int    x; string y; writeln(x or y);'
run_gecco 'bool   x; string y; writeln(x or y);'
run_gecco 'bool   x; int    y; writeln(x or y);'
run_gecco 'string x; int    y; writeln(x or y);'
run_gecco 'string x; bool   y; writeln(x or y);'

run_gecco 'int    x; bool   y; writeln(x and y);'
run_gecco 'int    x; string y; writeln(x and y);'
run_gecco 'bool   x; string y; writeln(x and y);'
run_gecco 'bool   x; int    y; writeln(x and y);'
run_gecco 'string x; int    y; writeln(x and y);'
run_gecco 'string x; bool   y; writeln(x and y);'

run_gecco 'string x; writeln(not x);'
run_gecco 'int    x; writeln(not x);'

# Type errors in expressions with comparison operators and literals
# (only the operators = and != are tested here)
run_gecco 'writeln(   3 = true );'
run_gecco 'writeln(   3 = "123");'
run_gecco 'writeln(true = "123");'
run_gecco 'writeln(true =    3 );'
run_gecco 'writeln("123"=    3 );'
run_gecco 'writeln("123"= true );'

run_gecco 'writeln(   3 != true );'
run_gecco 'writeln(   3 != "123");'
run_gecco 'writeln(true != "123");'
run_gecco 'writeln(true !=    3 );'
run_gecco 'writeln("123"!=    3 );'
run_gecco 'writeln("123"!= true );'

# Type errors in expressions with comparison operators and variables
# (only the operators = and != are tested here)
run_gecco 'int    x; bool   y; writeln(x=y);'
run_gecco 'int    x; string y; writeln(x=y);'
run_gecco 'bool   x; string y; writeln(x=y);'
run_gecco 'bool   x; int    y; writeln(x=y);'
run_gecco 'string x; int    y; writeln(x=y);'
run_gecco 'string x; bool   y; writeln(x=y);'

run_gecco 'int    x; bool   y; writeln(x!=y);'
run_gecco 'int    x; string y; writeln(x!=y);'
run_gecco 'bool   x; string y; writeln(x!=y);'
run_gecco 'bool   x; int    y; writeln(x!=y);'
run_gecco 'string x; int    y; writeln(x!=y);'
run_gecco 'string x; bool   y; writeln(x!=y);'

# Compare files EXPECTED2.OUT and FOUND2.OUT and report any differences
if FileUtils.compare_file('EXPECTED2.OUT', 'FOUND2.OUT')
  puts 'No differences found'
else
  puts 'Still differences found'
end
