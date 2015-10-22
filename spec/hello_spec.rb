require_relative 'spec_helper'

describe "hello page" do

  def app
    TestApp
  end

  it "takes a search query paramater and displays it to the user" do
    get '/hello/Constantine'
    expect(last_response.body).to include("Hello, Constantine!")
  end

end
