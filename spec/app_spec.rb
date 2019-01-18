require File.expand_path '../../server.rb', __FILE__
require 'rspec'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

describe 'Prototype App' do
  include Rack::Test::Methods

  def app() Sinatra::Application end

  it 'displays the homepage' do
    get '/'
    expect(last_response.status).to eq 200
  end
  
  it 'display company name: Prototype Inc.' do
    get '/'
    expect(last_response.body).to include "Prototype Inc."
  end
  
  it 'display the correct company cont' do
    get '/'
    expect(last_response.body).to include "Home of the World's Best Prototypes"
  end

end