require "application_system_test_case"

class CaronasTest < ApplicationSystemTestCase
  setup do
    @carona = caronas(:one)
  end

  test "visiting the index" do
    visit caronas_url
    assert_selector "h1", text: "Caronas"
  end

  test "creating a Carona" do
    visit caronas_url
    click_on "New Carona"

    fill_in "Destino", with: @carona.destino
    fill_in "Dia", with: @carona.dia
    fill_in "Hora", with: @carona.hora
    fill_in "Nome", with: @carona.nome
    fill_in "Observacao", with: @carona.observacao
    fill_in "Partida", with: @carona.partida
    fill_in "Passageiros", with: @carona.passageiros
    fill_in "Valor", with: @carona.valor
    click_on "Create Carona"

    assert_text "Carona was successfully created"
    click_on "Back"
  end

  test "updating a Carona" do
    visit caronas_url
    click_on "Edit", match: :first

    fill_in "Destino", with: @carona.destino
    fill_in "Dia", with: @carona.dia
    fill_in "Hora", with: @carona.hora
    fill_in "Nome", with: @carona.nome
    fill_in "Observacao", with: @carona.observacao
    fill_in "Partida", with: @carona.partida
    fill_in "Passageiros", with: @carona.passageiros
    fill_in "Valor", with: @carona.valor
    click_on "Update Carona"

    assert_text "Carona was successfully updated"
    click_on "Back"
  end

  test "destroying a Carona" do
    visit caronas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Carona was successfully destroyed"
  end
end
