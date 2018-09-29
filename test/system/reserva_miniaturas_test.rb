require "application_system_test_case"

class ReservaMiniaturasTest < ApplicationSystemTestCase
  setup do
    @reserva_miniatura = reserva_miniaturas(:one)
  end

  test "visiting the index" do
    visit reserva_miniaturas_url
    assert_selector "h1", text: "Reserva Miniaturas"
  end

  test "creating a Reserva miniatura" do
    visit reserva_miniaturas_url
    click_on "New Reserva Miniatura"

    fill_in "Quantidade", with: @reserva_miniatura.quantidade
    click_on "Create Reserva miniatura"

    assert_text "Reserva miniatura was successfully created"
    click_on "Back"
  end

  test "updating a Reserva miniatura" do
    visit reserva_miniaturas_url
    click_on "Edit", match: :first

    fill_in "Quantidade", with: @reserva_miniatura.quantidade
    click_on "Update Reserva miniatura"

    assert_text "Reserva miniatura was successfully updated"
    click_on "Back"
  end

  test "destroying a Reserva miniatura" do
    visit reserva_miniaturas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reserva miniatura was successfully destroyed"
  end
end
