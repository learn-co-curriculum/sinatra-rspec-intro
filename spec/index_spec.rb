require_relative 'spec_helper'

describe "index page" do

  def app
    TestApp
  end

  it "renders the index erb template" do
    get '/'
    expect(last_response.body).to include "Home Page"
    expect(last_response.body).to include "<!-- index.erb -->"
  end

end
