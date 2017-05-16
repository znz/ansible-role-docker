require 'spec_helper'

describe package('docker-engine') do
  it { should be_installed }
end
