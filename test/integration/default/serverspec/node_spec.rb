require 'serverspec'

set :backend, :exec

describe command('pwd') do
  its(:stdout) {should contain 'home'}
end
