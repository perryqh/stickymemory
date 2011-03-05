namespace :deploy do
  PRODUCTION_APP = 'stickymemory-production'
  STAGING_APP = 'stickymemory-staging'
  QA_APP = 'stickymemory-qa'
  SANDBOX_APP = 'stickymemory-sandbox'
  CI_APP = 'stickymemory-ci'
  UAT_APP = 'stickymemory-uat'

  def run(*cmd)
    system(*cmd)
    raise "Command #{cmd.inspect} failed!" unless $?.success?
  end

  def confirm(message)
    print "\n#{message}\nAre you sure? [Yn] "
    raise 'Aborted' unless STDIN.gets.chomp == 'Y'
  end

  def deploy(env)
    confirm("This will deploy your current master branch to #{env}.") if [:production].include?(env)

    root_path = File.expand_path("../../..", __FILE__)
    app_name = self.class.const_get(env.to_s.upcase + '_APP')
    tag_name = "#{env}-#{Time.now.strftime('%Y-%m-%dT%H%M%S')}"

    puts "Tagging as #{tag_name}..."
    run "git tag #{tag_name} master"

    puts "Pushing..."
    run "git push git@heroku.com:#{app_name}.git #{tag_name}:master -f"

    puts "Migrating..."
    run "heroku rake db:migrate --app #{app_name}"
    run "heroku rake db:seed --app #{app_name}"
    #run "heroku rake fake:all --app #{app_name}" unless env == :production || env == :staging
  end

  [:sandbox, :qa, :ci, :staging, :production, :uat].each do |env|
    desc "Deploy to #{env}"
    task env do
      deploy(env)
    end
  end
end
