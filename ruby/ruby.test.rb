require 'rspec'

RSpec.describe 'Ruby Scavenger Hunt' do
  it 'outputs the correct string' do
    output = `ruby ruby.rb`
    expect(output.strip).to eq('h')
  end
end
