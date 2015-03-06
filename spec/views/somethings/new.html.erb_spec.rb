require 'spec_helper'

describe "somethings/new" do
  before(:each) do
    assign(:something, stub_model(Something,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new something form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", somethings_path, "post" do
      assert_select "input#something_name[name=?]", "something[name]"
    end
  end
end
