require 'rails_helper'

RSpec.feature "Caronas", type: :feature, js: true do
  it 'visit index' do
    visit caronas_path
    expect(page).to have_content('Caronas')
  end

  it 'destroy a carona' do
    visit caronas_path
    
    first('a', text: 'Delete').click

    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content('sucesso')
  end
  
  it 'create a new carona'do
    visit new_carona_path

    fill_in 'carona[nome]', with: 'Pedro'
    find('#unidade_tipo').set('partida')
    select 'partida', from: 'unidade_tipo'
    find('#partida_select').set('1')
    #select 'partida', from: 'unidade_tipo'
    #select '1', from: 'partida_select'
    fill_in 'carona[destino]', with: 'Uff'

    fill_in 'carona[dia]', with: '2021-10-10'
    binding.pry
    fill_in 'carona_hora', with: "13:32"
    fill_in 'carona[passageiros]', with: '1'
    fill_in 'carona[valor]', with: '10.00'
    fill_in 'carona[observacao]', with: 'Carona 1'

    click_button 'Salvar'
    expect(page).to have_content('sucesso')
  end
end
