module NavigationHelper
  def collapsible_links_path
    if user_signed_in? 
      'layouts/navigation/collapsible_elements/signed_in_links'

    else # user not signed it 
      'layouts/navigation/collapsible_elements/non_signed_in_links'
    end # if user is signed it 
  end
end