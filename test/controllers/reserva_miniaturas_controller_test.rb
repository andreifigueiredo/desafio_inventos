require 'test_helper'

class ReservaMiniaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reserva_miniatura = reserva_miniaturas(:one)
  end

  test "should get index" do
    get reserva_miniaturas_url
    assert_response :success
  end

  test "should get new" do
    get new_reserva_miniatura_url
    assert_response :success
  end

  test "should create reserva_miniatura" do
    assert_difference('ReservaMiniatura.count') do
      post reserva_miniaturas_url, params: { reserva_miniatura: { quantidade: @reserva_miniatura.quantidade } }
    end

    assert_redirected_to reserva_miniatura_url(ReservaMiniatura.last)
  end

  test "should show reserva_miniatura" do
    get reserva_miniatura_url(@reserva_miniatura)
    assert_response :success
  end

  test "should get edit" do
    get edit_reserva_miniatura_url(@reserva_miniatura)
    assert_response :success
  end

  test "should update reserva_miniatura" do
    patch reserva_miniatura_url(@reserva_miniatura), params: { reserva_miniatura: { quantidade: @reserva_miniatura.quantidade } }
    assert_redirected_to reserva_miniatura_url(@reserva_miniatura)
  end

  test "should destroy reserva_miniatura" do
    assert_difference('ReservaMiniatura.count', -1) do
      delete reserva_miniatura_url(@reserva_miniatura)
    end

    assert_redirected_to reserva_miniaturas_url
  end
end
