require 'test_helper'

class AlimentarCarrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alimentar_carro = alimentar_carros(:one)
  end

  test "should get index" do
    get alimentar_carros_url
    assert_response :success
  end

  test "should get new" do
    get new_alimentar_carro_url
    assert_response :success
  end

  test "should create alimentar_carro" do
    assert_difference('AlimentarCarro.count') do
      post alimentar_carros_url, params: { alimentar_carro: {  } }
    end

    assert_redirected_to alimentar_carro_url(AlimentarCarro.last)
  end

  test "should show alimentar_carro" do
    get alimentar_carro_url(@alimentar_carro)
    assert_response :success
  end

  test "should get edit" do
    get edit_alimentar_carro_url(@alimentar_carro)
    assert_response :success
  end

  test "should update alimentar_carro" do
    patch alimentar_carro_url(@alimentar_carro), params: { alimentar_carro: {  } }
    assert_redirected_to alimentar_carro_url(@alimentar_carro)
  end

  test "should destroy alimentar_carro" do
    assert_difference('AlimentarCarro.count', -1) do
      delete alimentar_carro_url(@alimentar_carro)
    end

    assert_redirected_to alimentar_carros_url
  end
end
