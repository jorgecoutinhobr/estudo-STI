require "application_system_test_case"

class UnidadesTest < ApplicationSystemTestCase
  setup do
    @unidade = unidades(:one)
  end

  test "visiting the index" do
    visit unidades_url
    assert_selector "h1", text: "Unidades"
  end

  test "creating a Unidade" do
    visit unidades_url
    click_on "New Unidade"

    fill_in "Bairro", with: @unidade.bairro
    fill_in "Cep", with: @unidade.cep
    fill_in "Cidade", with: @unidade.cidade
    fill_in "Data desativacao", with: @unidade.data_desativacao
    fill_in "Endereco", with: @unidade.endereco
    fill_in "Nome", with: @unidade.nome
    fill_in "Numero", with: @unidade.numero
    click_on "Create Unidade"

    assert_text "Unidade was successfully created"
    click_on "Back"
  end

  test "updating a Unidade" do
    visit unidades_url
    click_on "Edit", match: :first

    fill_in "Bairro", with: @unidade.bairro
    fill_in "Cep", with: @unidade.cep
    fill_in "Cidade", with: @unidade.cidade
    fill_in "Data desativacao", with: @unidade.data_desativacao
    fill_in "Endereco", with: @unidade.endereco
    fill_in "Nome", with: @unidade.nome
    fill_in "Numero", with: @unidade.numero
    click_on "Update Unidade"

    assert_text "Unidade was successfully updated"
    click_on "Back"
  end

  test "destroying a Unidade" do
    visit unidades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Unidade was successfully destroyed"
  end
end
