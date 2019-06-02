require 'test_helper'

class AlimentarCarroControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get alimentar_carro_index_url
    assert_response :success
  end

  test "should get import" do
    get alimentar_carro_import_url
    assert_response :success
  end

end
