#!/Users/marc/.rvm/bin/ruby

# require 'FileUtils'
require 'diffy'

GECCO    = 'gecco.sh'
TESTNAME = File.basename(__FILE__, '.rb')
GRAMFILE = File.basename(Dir.pwd) + '.g'
EXPECTED = "#{TESTNAME}/expected"
FOUND    = "#{TESTNAME}/found"
SOURCE   = "#{TESTNAME}/source"

system "#{GECCO} /gen #{GRAMFILE}"

exit if not $?.success?

system "#{GECCO} /run #{SOURCE}"

exit if not $?.success?

system "jasmin.sh Target.j"
system "java -cp .:../../auxFiles Target > #{FOUND}"

# Compare files 'expected' and 'found' and report any differences
unless FileUtils.cmp("#{EXPECTED}", "#{FOUND}")
  puts 'Differences found!'
  puts Diffy::Diff.new("#{EXPECTED}", "#{FOUND}",
                       :source => 'files', :diff => "-w")
end
