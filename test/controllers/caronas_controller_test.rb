require 'test_helper'

class CaronasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carona = caronas(:one)
  end

  test "should get index" do
    get caronas_url
    assert_response :success
  end

  test "should get new" do
    get new_carona_url
    assert_response :success
  end

  test "should create carona" do
    assert_difference('Carona.count') do
      post caronas_url, params: { carona: { destino: @carona.destino, dia: @carona.dia, hora: @carona.hora, nome: @carona.nome, observacao: @carona.observacao, partida: @carona.partida, passageiros: @carona.passageiros, valor: @carona.valor } }
    end

    assert_redirected_to carona_url(Carona.last)
  end

  test "should show carona" do
    get carona_url(@carona)
    assert_response :success
  end

  test "should get edit" do
    get edit_carona_url(@carona)
    assert_response :success
  end

  test "should update carona" do
    patch carona_url(@carona), params: { carona: { destino: @carona.destino, dia: @carona.dia, hora: @carona.hora, nome: @carona.nome, observacao: @carona.observacao, partida: @carona.partida, passageiros: @carona.passageiros, valor: @carona.valor } }
    assert_redirected_to carona_url(@carona)
  end

  test "should destroy carona" do
    assert_difference('Carona.count', -1) do
      delete carona_url(@carona)
    end

    assert_redirected_to caronas_url
  end
end
