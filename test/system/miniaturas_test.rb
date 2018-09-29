require "application_system_test_case"

class MiniaturasTest < ApplicationSystemTestCase
  setup do
    @miniatura = miniaturas(:one)
  end

  test "visiting the index" do
    visit miniaturas_url
    assert_selector "h1", text: "Miniaturas"
  end

  test "creating a Miniatura" do
    visit miniaturas_url
    click_on "New Miniatura"

    fill_in "Descricao", with: @miniatura.descricao
    fill_in "Nome", with: @miniatura.nome
    fill_in "Preco", with: @miniatura.preco
    fill_in "Tamanho", with: @miniatura.tamanho
    click_on "Create Miniatura"

    assert_text "Miniatura was successfully created"
    click_on "Back"
  end

  test "updating a Miniatura" do
    visit miniaturas_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @miniatura.descricao
    fill_in "Nome", with: @miniatura.nome
    fill_in "Preco", with: @miniatura.preco
    fill_in "Tamanho", with: @miniatura.tamanho
    click_on "Update Miniatura"

    assert_text "Miniatura was successfully updated"
    click_on "Back"
  end

  test "destroying a Miniatura" do
    visit miniaturas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Miniatura was successfully destroyed"
  end
end
