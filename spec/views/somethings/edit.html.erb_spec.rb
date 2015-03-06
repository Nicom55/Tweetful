require 'spec_helper'

describe "somethings/edit" do
  before(:each) do
    @something = assign(:something, stub_model(Something,
      :name => "MyString"
    ))
  end

  it "renders the edit something form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", something_path(@something), "post" do
      assert_select "input#something_name[name=?]", "something[name]"
    end
  end
end
