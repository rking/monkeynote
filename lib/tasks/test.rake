task :test do
  sh 'testrb', *Dir['test/**/*_test.rb']
end
