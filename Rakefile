require "yaml"

task :validate do
  valid = []
  errors = []

  yaml_files = Dir.glob(File.join("**", "*.yml"))
  yaml_files.each do |yaml_file|
    print "."
    begin
      YAML.load_file yaml_file
      valid << yaml_file
    rescue Exception => e
      errors << e
    end
  end
  puts
  puts
  puts "Validated #{yaml_files.count} YAML files"

  if errors.any?
    puts
    puts "ERRORS in #{errors.size} files:"
    puts
    errors.each do |error|
      puts error
    end
    exit 1
  end
end

task default: :validate
