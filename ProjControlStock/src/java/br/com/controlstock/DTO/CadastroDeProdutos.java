package br.com.controlstock.DTO;

public class CadastroDeProdutos {

    private int id;
    private String nomeProduto;
    private int numeroA_SerEstocado;
    private double quantidade;
    private double preco;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNomeProduto() {
        return nomeProduto;
    }

    public void setNomeProduto(String nomeProduto) {
        this.nomeProduto = nomeProduto;
    }
    
    public int getNumeroA_SerEstocado() {
        return numeroA_SerEstocado;
    }

    public void setNumeroA_SerEstocado(int numeroA_SerEstocado) {
        this.numeroA_SerEstocado = numeroA_SerEstocado;
    }

    public double getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(double quantidade) {
        this.quantidade = quantidade;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    @Override
    public String toString() {
        return "ID: " + id + "\n" 
               + "Nome Produto: " + nomeProduto + "\n"
               + "Numero Estocado: " + numeroA_SerEstocado + "\n"
               + "Quantidade: " + quantidade + "\n"
               + "Preço: " + preco;
    }
  
}
