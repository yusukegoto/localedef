require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe command('locale -a') do
  its(:stdout) { should match /^ja_JP.utf8$/ }
end

