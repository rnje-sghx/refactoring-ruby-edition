require 'rake/testtask'

Rake::TestTask.new do |test_task|
  test_task.libs << 'tests'
  test_task.test_files = FileList['tests/test_*.rb']
  test_task.verbose    = true
end
