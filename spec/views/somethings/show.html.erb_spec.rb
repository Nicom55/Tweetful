require 'spec_helper'

describe "somethings/show" do
  before(:each) do
    @something = assign(:something, stub_model(Something,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
