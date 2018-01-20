require 'spec_helper'

if os[:family] == 'ubuntu'
  describe file('/opt/jenkins.war') do
    it { should be_file }
  end

  describe file('/opt/jenkins-cli.jar') do
    it { should be_file }
  end

  describe port(8080) do
    it { should be_listening }
  end

  describe file('/var/run/jenkins/jenkins.pid') do
    it { should be_file }
  end

  describe file('/var/log/jenkins/jenkins.log') do
    it { should be_file }
  end

  describe file('/var/cache/jenkins/war') do
    it { should be_directory }
  end

  describe file('/var/jenkins/plugins/git.jpi') do
    it { should be_file }
  end

  describe command('java -version') do
    its(:stdout) { should match /java version "1\.8.+"/ }
  end
end
