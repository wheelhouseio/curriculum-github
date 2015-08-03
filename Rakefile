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

  namespace :courses do
    desc "Run yaml-lint on courses directory"
    task :linter do
      output = `bundle exec yaml-lint courses`
      puts output
    end

    desc "Run kwalify schema validation on courses directory"
    task :schema do
      output = `bundle exec kwalify -lf schema_course.yml courses/*`
      puts output
    end

    task check: [:linter, :schema]
  end

  namespace :modules do
    desc "Run yaml-lint on modules directory"
    task :linter do
      output = `bundle exec yaml-lint modules`
      puts output
    end

    desc "Run kwalify schema validation on modules directory"
    task :schema do
      output = `bundle exec kwalify -lf schema_module.yml modules/*`
      puts output
    end

    task check: [:linter, :schema]
  end

task default: ["courses:check", "modules:check"]
