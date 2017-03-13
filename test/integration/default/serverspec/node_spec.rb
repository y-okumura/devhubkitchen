require 'serverspec'

set :backend, :exec

describe port(3000) do
  it { should be_listening }
end
