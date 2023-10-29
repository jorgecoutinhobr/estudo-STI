require "application_system_test_case"

class ParadasTest < ApplicationSystemTestCase
  setup do
    @parada = paradas(:one)
  end

  test "visiting the index" do
    visit paradas_url
    assert_selector "h1", text: "Paradas"
  end

  test "creating a Parada" do
    visit paradas_url
    click_on "New Parada"

    fill_in "Carona", with: @parada.carona_id
    fill_in "Endereco", with: @parada.endereco
    click_on "Create Parada"

    assert_text "Parada was successfully created"
    click_on "Back"
  end

  test "updating a Parada" do
    visit paradas_url
    click_on "Edit", match: :first

    fill_in "Carona", with: @parada.carona_id
    fill_in "Endereco", with: @parada.endereco
    click_on "Update Parada"

    assert_text "Parada was successfully updated"
    click_on "Back"
  end

  test "destroying a Parada" do
    visit paradas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parada was successfully destroyed"
  end
end
