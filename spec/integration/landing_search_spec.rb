describe "Landing Search" do
   describe "GET /home" do
      it "displays search filtering" do
         visit home_index_path
         page.should have_content("Search for Text to Memorize")
         page.should have_content("ESV Bible")
         page.should have_content("Westminster Shorter Catechism")
         page.should have_content("Go")
      end
   end

   describe "POST /memory_searches" do
    it "creates memory search" do
      visit memory_searches_path
      fill_in "Search for Text to Memorize", :with => "James 1"
      click_button "Go"
      page.should have_content("James 1")
    end
  end
end
