require 'test_helper'

class ChamadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chamado = chamados(:one)
  end

  test "should get index" do
    get chamados_url
    assert_response :success
  end

  test "should get new" do
    get new_chamado_url
    assert_response :success
  end

  test "should create chamado" do
    assert_difference('Chamado.count') do
      post chamados_url, params: { chamado: { bairro: @chamado.bairro, cep: @chamado.cep, cidade: @chamado.cidade, cliente: @chamado.cliente, data: @chamado.data, endereco: @chamado.endereco, estado: @chamado.estado, fornecedor: @chamado.fornecedor, ncliente: @chamado.ncliente, nfornecedor: @chamado.nfornecedor, numero: @chamado.numero, observacao: @chamado.observacao, site: @chamado.site, tecnico: @chamado.tecnico } }
    end

    assert_redirected_to chamado_url(Chamado.last)
  end

  test "should show chamado" do
    get chamado_url(@chamado)
    assert_response :success
  end

  test "should get edit" do
    get edit_chamado_url(@chamado)
    assert_response :success
  end

  test "should update chamado" do
    patch chamado_url(@chamado), params: { chamado: { bairro: @chamado.bairro, cep: @chamado.cep, cidade: @chamado.cidade, cliente: @chamado.cliente, data: @chamado.data, endereco: @chamado.endereco, estado: @chamado.estado, fornecedor: @chamado.fornecedor, ncliente: @chamado.ncliente, nfornecedor: @chamado.nfornecedor, numero: @chamado.numero, observacao: @chamado.observacao, site: @chamado.site, tecnico: @chamado.tecnico } }
    assert_redirected_to chamado_url(@chamado)
  end

  test "should destroy chamado" do
    assert_difference('Chamado.count', -1) do
      delete chamado_url(@chamado)
    end

    assert_redirected_to chamados_url
  end
end
