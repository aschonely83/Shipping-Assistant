require "application_system_test_case"

class FinishedProductsTest < ApplicationSystemTestCase
  setup do
    @finished_product = finished_products(:one)
  end

  test "visiting the index" do
    visit finished_products_url
    assert_selector "h1", text: "Finished products"
  end

  test "should create finished product" do
    visit finished_products_url
    click_on "New finished product"

    fill_in "Boxes", with: @finished_product.boxes
    fill_in "Pallet", with: @finished_product.pallet
    click_on "Create Finished product"

    assert_text "Finished product was successfully created"
    click_on "Back"
  end

  test "should update Finished product" do
    visit finished_product_url(@finished_product)
    click_on "Edit this finished product", match: :first

    fill_in "Boxes", with: @finished_product.boxes
    fill_in "Pallet", with: @finished_product.pallet
    click_on "Update Finished product"

    assert_text "Finished product was successfully updated"
    click_on "Back"
  end

  test "should destroy Finished product" do
    visit finished_product_url(@finished_product)
    click_on "Destroy this finished product", match: :first

    assert_text "Finished product was successfully destroyed"
  end
end
