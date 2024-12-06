require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    fill_in "Birthdate", with: @user.birthdate
    fill_in "Email", with: @user.email
    fill_in "First name", with: @user.first_name
    fill_in "First name kana", with: @user.first_name_kana
    fill_in "Gender", with: @user.gender
    fill_in "Last name", with: @user.last_name
    fill_in "Last name kana", with: @user.last_name_kana
    fill_in "Password digest", with: @user.password_digest
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    fill_in "Birthdate", with: @user.birthdate
    fill_in "Email", with: @user.email
    fill_in "First name", with: @user.first_name
    fill_in "First name kana", with: @user.first_name_kana
    fill_in "Gender", with: @user.gender
    fill_in "Last name", with: @user.last_name
    fill_in "Last name kana", with: @user.last_name_kana
    fill_in "Password digest", with: @user.password_digest
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
