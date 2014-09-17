Dir.chdir File.dirname(ARGV[0])
`tar -czf #{File.basename ARGV[0]}.tgz #{File.basename ARGV[0]}`
puts File.basename(ARGV[0])