# NOTE: THIS SCRIPT IS DESIGNED TO BE RUN AS PART OF AN AUTOMATOR WORKFLOW
#
# Arguments:
#   $0 - Path of the file or directory to compress and archive
#
Dir.chdir File.dirname(ARGV[0])
`tar -czf #{File.basename(ARGV[0]).gsub(/ /, '-')}.tgz '#{File.basename ARGV[0]}'`
puts File.basename(ARGV[0])
