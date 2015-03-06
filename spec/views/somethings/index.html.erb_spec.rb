require 'spec_helper'

describe "somethings/index" do
  before(:each) do
    assign(:somethings, [
      stub_model(Something,
        :name => "Name"
      ),
      stub_model(Something,
        :name => "Name"
      )
    ])
  end

  it "renders a list of somethings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
