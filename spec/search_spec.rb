require_relative 'spec_helper'

describe "results page" do

  def app
    TestApp
  end

  it "takes a search query paramater and displays it to the user" do
    get '/search?q=Flatiron'
    expect(last_response.body).to include("You searched for Flatiron")
  end

end
