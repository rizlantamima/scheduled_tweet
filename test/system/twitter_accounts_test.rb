require "application_system_test_case"

class TwitterAccountsTest < ApplicationSystemTestCase
  setup do
    @twitter_account = twitter_accounts(:one)
  end

  test "visiting the index" do
    visit twitter_accounts_url
    assert_selector "h1", text: "Twitter accounts"
  end

  test "should create twitter account" do
    visit twitter_accounts_url
    click_on "New twitter account"

    click_on "Create Twitter account"

    assert_text "Twitter account was successfully created"
    click_on "Back"
  end

  test "should update Twitter account" do
    visit twitter_account_url(@twitter_account)
    click_on "Edit this twitter account", match: :first

    click_on "Update Twitter account"

    assert_text "Twitter account was successfully updated"
    click_on "Back"
  end

  test "should destroy Twitter account" do
    visit twitter_account_url(@twitter_account)
    click_on "Destroy this twitter account", match: :first

    assert_text "Twitter account was successfully destroyed"
  end
end
