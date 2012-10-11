task :default => :test

desc "Run ArithmeticTools.rb "
task :simple do
  sh "ruby -Ilib ArithmeticTools.rb"
end

desc "Run tc_ArithmeticTools.rb "
task :test do 
  sh "ruby -Ilib tc_ArithmeticTools.rb"
end
