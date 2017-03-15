require 'serverspec'

set :backend, :exec

describe service(:devhub) do
  it { should be_running }
end

describe command('curl http://127.0.0.1:3000 -o /dev/null -w "%{http_code}\n" -s') do
  its(:stdout) { should match /^200$/ }
end
