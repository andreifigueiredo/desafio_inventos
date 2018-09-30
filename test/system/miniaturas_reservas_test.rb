require "application_system_test_case"

class MiniaturasReservasTest < ApplicationSystemTestCase
  setup do
    @miniaturas_reserva = miniaturas_reservas(:one)
  end

  test "visiting the index" do
    visit miniaturas_reservas_url
    assert_selector "h1", text: "Miniaturas Reservas"
  end

  test "creating a Miniaturas reserva" do
    visit miniaturas_reservas_url
    click_on "New Miniaturas Reserva"

    fill_in "Quantidade", with: @miniaturas_reserva.quantidade
    click_on "Create Miniaturas reserva"

    assert_text "Miniaturas reserva was successfully created"
    click_on "Back"
  end

  test "updating a Miniaturas reserva" do
    visit miniaturas_reservas_url
    click_on "Edit", match: :first

    fill_in "Quantidade", with: @miniaturas_reserva.quantidade
    click_on "Update Miniaturas reserva"

    assert_text "Miniaturas reserva was successfully updated"
    click_on "Back"
  end

  test "destroying a Miniaturas reserva" do
    visit miniaturas_reservas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Miniaturas reserva was successfully destroyed"
  end
end
