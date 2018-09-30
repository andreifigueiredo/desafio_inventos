require 'test_helper'

class MiniaturasReservasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @miniaturas_reserva = miniaturas_reservas(:one)
  end

  test "should get index" do
    get miniaturas_reservas_url
    assert_response :success
  end

  test "should get new" do
    get new_miniaturas_reserva_url
    assert_response :success
  end

  test "should create miniaturas_reserva" do
    assert_difference('MiniaturasReserva.count') do
      post miniaturas_reservas_url, params: { miniaturas_reserva: { quantidade: @miniaturas_reserva.quantidade } }
    end

    assert_redirected_to miniaturas_reserva_url(MiniaturasReserva.last)
  end

  test "should show miniaturas_reserva" do
    get miniaturas_reserva_url(@miniaturas_reserva)
    assert_response :success
  end

  test "should get edit" do
    get edit_miniaturas_reserva_url(@miniaturas_reserva)
    assert_response :success
  end

  test "should update miniaturas_reserva" do
    patch miniaturas_reserva_url(@miniaturas_reserva), params: { miniaturas_reserva: { quantidade: @miniaturas_reserva.quantidade } }
    assert_redirected_to miniaturas_reserva_url(@miniaturas_reserva)
  end

  test "should destroy miniaturas_reserva" do
    assert_difference('MiniaturasReserva.count', -1) do
      delete miniaturas_reserva_url(@miniaturas_reserva)
    end

    assert_redirected_to miniaturas_reservas_url
  end
end
