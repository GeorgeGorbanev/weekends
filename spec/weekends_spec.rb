require 'spec_helper'

RSpec.describe 'gem' do
  it 'has a version number' do
    expect(Weekends::VERSION).not_to be nil
  end

  it 'import module Weekends' do
    expect(Weekends).to be_a(Module)
  end

  it 'import class Weekend' do
    expect(Weekend).to be_a(Class)
  end
end
