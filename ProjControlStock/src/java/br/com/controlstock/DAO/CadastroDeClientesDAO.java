package br.com.controlstock.DAO;

import br.com.controlstock.DTO.CadastroDeClientes;
import br.com.controlstock.conexaoBD.ConexaoBD;
import java.sql.*;
import javax.swing.JOptionPane;

public class CadastroDeClientesDAO {
    private Connection conexao;
    private PreparedStatement pstm;
    
    public void cadastrarContato(CadastroDeClientes objCadastroDeClientes) throws ClassNotFoundException {
        String sql = "insert into cadastroDeClientes(nome,email,senha,telefone) values (?,?,?,?)";
        this.conexao = new ConexaoBD().getConexao();
        
        try{
            pstm = conexao.prepareStatement(sql);
            pstm.setString(1, objCadastroDeClientes.getNome());
            pstm.setString(2, objCadastroDeClientes.getEmail());
            pstm.setString(3, objCadastroDeClientes.getSenha());
            pstm.setString(4, objCadastroDeClientes.getTelefone());
            
            pstm.execute();
            pstm.close();
            
        }catch (SQLException e){
            JOptionPane.showMessageDialog(null, e);
        }
    }
    
}
