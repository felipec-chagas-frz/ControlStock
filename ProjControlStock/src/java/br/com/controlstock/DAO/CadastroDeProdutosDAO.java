package br.com.controlstock.DAO;

import br.com.controlstock.DTO.CadastroDeProdutos;
import br.com.controlstock.conexaoBD.ConexaoBD;
import java.sql.*;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class CadastroDeProdutosDAO {
    private Connection conexao;
    private PreparedStatement pstm;
    private ResultSet resultado;
    private ArrayList<CadastroDeProdutos> listaDeCadastros0 = new ArrayList<>();
    
    public void cadastroProdutos(CadastroDeProdutos objCadastroDeProdutos) throws ClassNotFoundException{
        String sql = "insert into cadastrodeprodutos(nomeProduto,numeroA_SerEstocado,quantidade,preco) values(?,?,?,?)";
        this.conexao = new ConexaoBD().getConexao();
        
        try{
            pstm = conexao.prepareStatement(sql);
            pstm.setString(1, objCadastroDeProdutos.getNomeProduto());
            pstm.setInt(2, objCadastroDeProdutos.getNumeroA_SerEstocado());
            pstm.setDouble(3, objCadastroDeProdutos.getQuantidade());
            pstm.setDouble(4, objCadastroDeProdutos.getPreco());
            
            pstm.execute();
            pstm.close();
              
        }catch (SQLException e){
            JOptionPane.showMessageDialog(null, "erro cadastro de produtos");
        }
    }
    
    public ArrayList<CadastroDeProdutos> listarTodosOsCadastro() throws ClassNotFoundException{
        String sql = "SELECT * FROM cadastrodeprodutos";
        this.conexao = new ConexaoBD().getConexao();
        
        try{
            this.pstm = this.conexao.prepareStatement(sql);
            this.resultado = this.pstm.executeQuery(sql);
            
            while(this.resultado.next()){
                CadastroDeProdutos objCadastroDeProdutos = new CadastroDeProdutos();
                
                objCadastroDeProdutos.setId(this.resultado.getInt("idcadastroProdutos"));
                objCadastroDeProdutos.setNomeProduto(this.resultado.getString("nomeProduto"));
                objCadastroDeProdutos.setNumeroA_SerEstocado(this.resultado.getInt("numeroA_SerEstocado"));
                objCadastroDeProdutos.setQuantidade(this.resultado.getDouble("quantidade"));
                objCadastroDeProdutos.setPreco(this.resultado.getDouble("preco"));
                
                this.listaDeCadastros0.add(objCadastroDeProdutos);
            }
            
        }catch (SQLException e){
            JOptionPane.showMessageDialog(null,"erro listar produtos");
        }
        return this.listaDeCadastros0;
    }
    
    
    public void alterarCadastro(CadastroDeProdutos objCadastroDeProdutos) throws ClassNotFoundException{
        String sql = "update cadastrodeprodutos "
                + "set nomeProduto = ?, numeroA_SerEstocado = ?, quantidade = ?, preco = ? "
                + "where idcadastroProdutos = ?";
        this.conexao = new ConexaoBD().getConexao();
        
        try{
          this.pstm = this.conexao.prepareStatement(sql);
          this.pstm.setString(1, objCadastroDeProdutos.getNomeProduto());
          this.pstm.setInt(2,objCadastroDeProdutos.getNumeroA_SerEstocado());
          this.pstm.setDouble(3, objCadastroDeProdutos.getQuantidade());
          this.pstm.setDouble(4, objCadastroDeProdutos.getPreco());
          this.pstm.setInt(5, objCadastroDeProdutos.getId());
          
          
          this.pstm.execute();
          this.pstm.close();
          
        }catch (SQLException e){
            JOptionPane.showMessageDialog(null, e);
        }         
    }
    
    public void excluirCadastro(CadastroDeProdutos objCadastroDeProdutos) throws ClassNotFoundException{
        String sql = "delete from cadastrodeprodutos where idcadastroProdutos = ? ";
        this.conexao = new ConexaoBD().getConexao();
        
        try {
            this.pstm = this.conexao.prepareStatement(sql);
            this.pstm.setInt(1, objCadastroDeProdutos.getId());
            
            this.pstm.execute();
            this.pstm.close();
            
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "erro excluir produtos");
        }
    }
    
    public ArrayList<CadastroDeProdutos> pesquisarCadastroPorNome (String nomeProduto) throws ClassNotFoundException{
        String sql = "SELECT * FROM cadastrodeprodutos where nomeProduto = ?";
        this.conexao = new ConexaoBD().getConexao();
        
        try {
            this.pstm = this.conexao.prepareStatement(sql);
            this.resultado = this.pstm.executeQuery(sql);
            
            while (this.resultado.next()) {                
                CadastroDeProdutos objCadastroDeProdutos = new CadastroDeProdutos();
                
                objCadastroDeProdutos.setId(this.resultado.getInt("idcadastroProdutos"));
                objCadastroDeProdutos.setNomeProduto(this.resultado.getString("nomeProduto"));
                objCadastroDeProdutos.setNumeroA_SerEstocado(this.resultado.getInt("numeroA_SerEstocado"));
                objCadastroDeProdutos.setQuantidade(this.resultado.getDouble("quantidade"));
                objCadastroDeProdutos.setPreco(this.resultado.getDouble("preco"));
                
                if (resultado.getString("nomeProduto").equalsIgnoreCase(nomeProduto)) {
                    this.listaDeCadastros0.add(objCadastroDeProdutos);
                }
            }
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "erro pesquisar produto por nome");
        }
        return this.listaDeCadastros0;
    }

}
