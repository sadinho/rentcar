require "application_system_test_case"

class AlimentarCarrosTest < ApplicationSystemTestCase
  setup do
    @alimentar_carro = alimentar_carros(:one)
  end

  test "visiting the index" do
    visit alimentar_carros_url
    assert_selector "h1", text: "Alimentar Carros"
  end

  test "creating a Alimentar carro" do
    visit alimentar_carros_url
    click_on "New Alimentar Carro"

    click_on "Create Alimentar carro"

    assert_text "Alimentar carro was successfully created"
    click_on "Back"
  end

  test "updating a Alimentar carro" do
    visit alimentar_carros_url
    click_on "Edit", match: :first

    click_on "Update Alimentar carro"

    assert_text "Alimentar carro was successfully updated"
    click_on "Back"
  end

  test "destroying a Alimentar carro" do
    visit alimentar_carros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alimentar carro was successfully destroyed"
  end
end
