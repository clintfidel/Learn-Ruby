require 'rails_helper'

RSpec.describe NavigationHelper, :type => :helper do

  context "signed_in_user" do
    before(:each) { helper.stub(:user_signed_in?).and_return(true)}
    context "#collapsible_links_path" do
      it "return signed_in links " do
        expect(helper.collapsible_links_path).to(eq 'layouts/navigation/collapsible_elements/signed_in_links')  
      end
    end
  end

  context "non_signed_in_user" do
    before(:each) { helper.stub(:user_signed_in?).and_return(false)}
    context "#collapsible_links_path" do
      it "return non_signed_in links " do
        expect(helper.collapsible_links_path).to(eq 'layouts/navigation/collapsible_elements/non_signed_in_links')  
      end
    end
  end
  
end
