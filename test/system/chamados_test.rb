require "application_system_test_case"

class ChamadosTest < ApplicationSystemTestCase
  setup do
    @chamado = chamados(:one)
  end

  test "visiting the index" do
    visit chamados_url
    assert_selector "h1", text: "Chamados"
  end

  test "creating a Chamado" do
    visit chamados_url
    click_on "New Chamado"

    fill_in "Bairro", with: @chamado.bairro
    fill_in "Cep", with: @chamado.cep
    fill_in "Cidade", with: @chamado.cidade
    fill_in "Cliente", with: @chamado.cliente
    fill_in "Data", with: @chamado.data
    fill_in "Endereco", with: @chamado.endereco
    fill_in "Estado", with: @chamado.estado
    fill_in "Fornecedor", with: @chamado.fornecedor
    fill_in "Ncliente", with: @chamado.ncliente
    fill_in "Nfornecedor", with: @chamado.nfornecedor
    fill_in "Numero", with: @chamado.numero
    fill_in "Observacao", with: @chamado.observacao
    fill_in "Site", with: @chamado.site
    fill_in "Tecnico", with: @chamado.tecnico
    click_on "Create Chamado"

    assert_text "Chamado was successfully created"
    click_on "Back"
  end

  test "updating a Chamado" do
    visit chamados_url
    click_on "Edit", match: :first

    fill_in "Bairro", with: @chamado.bairro
    fill_in "Cep", with: @chamado.cep
    fill_in "Cidade", with: @chamado.cidade
    fill_in "Cliente", with: @chamado.cliente
    fill_in "Data", with: @chamado.data
    fill_in "Endereco", with: @chamado.endereco
    fill_in "Estado", with: @chamado.estado
    fill_in "Fornecedor", with: @chamado.fornecedor
    fill_in "Ncliente", with: @chamado.ncliente
    fill_in "Nfornecedor", with: @chamado.nfornecedor
    fill_in "Numero", with: @chamado.numero
    fill_in "Observacao", with: @chamado.observacao
    fill_in "Site", with: @chamado.site
    fill_in "Tecnico", with: @chamado.tecnico
    click_on "Update Chamado"

    assert_text "Chamado was successfully updated"
    click_on "Back"
  end

  test "destroying a Chamado" do
    visit chamados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chamado was successfully destroyed"
  end
end
