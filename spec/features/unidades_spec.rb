require 'rails_helper'

RSpec.feature "Unidades", type: :feature, js: true do
  it 'visit index' do
    visit unidades_path
    expect(page).to have_content('Unidades')
  end

  it 'create a new unidade' do
    visit new_unidade_path
    fill_in 'unidade[nome]', with: 'Unidade 1'
    fill_in 'unidade[endereco]', with: 'Endereço da Unidade'
    fill_in 'unidade[numero]', with: '123'
    fill_in 'unidade[bairro]', with: 'Bairro da Unidade'
    fill_in 'unidade[cidade]', with: 'Cidade da Unidade'
    fill_in 'unidade[cep]', with: '12345678'
    fill_in 'unidade[data_desativacao]', with: 'dd/mm/yyyy'

    click_button 'Salvar'
    expect(page).to have_content('sucesso')
  end

  it 'edit a unidade' do

    unidade = create(:unidade)
    visit edit_unidade_path(unidade)

    fill_in 'unidade[nome]', with: 'Novo Nome da Unidade'
    fill_in 'unidade[endereco]', with: 'Novo Endereço'
    fill_in 'unidade[numero]', with: '123'
    fill_in 'unidade[bairro]', with: 'Novo Bairro'
    fill_in 'unidade[cidade]', with: 'Nova Cidade'
    fill_in 'unidade[cep]', with: '12345678' 

    click_button 'Salvar'
    expect(page).to have_content('sucesso')
  end  

  it 'destroy a unidade' do
    visit unidades_path
    
    first('a', text: 'Delete').click
   
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content('sucesso')
  end

  it 'show unidades' do
    visit unidades_path
    first('a', text: 'Show').click
    expect(page).to have_content('Unidade')
  end
end
