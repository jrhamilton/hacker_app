require 'spec_helper'

describe Upload do
  it "should work" do
    test_name = FactoryGirl.create(:upload,name: "test name")
    test_link = FactoryGirl.create(:upload,link: "https://test_link.com")
    test_title = FactoryGirl.create(:upload,title: "test title")
    test_vote_count = FactoryGirl.create(:upload,vote_count: 4)
  end
end
