import java.util.ArrayList;

public class Gerente extends Funcionario{
	ArrayList<Vendedor> listaVendedores = new ArrayList<>();
	private double comissaoGerente;

	public Gerente(String nome, String endereco, String cpf, double salario, double comissaoGerente) {
		super(nome, endereco, cpf, salario);
		this.comissaoGerente = comissaoGerente;
	}

	public double getSalario() {
		for(int i = 0; i < listaVendedores.size(); i++){
            salario += listaVendedores.get(i).getValorVenda() * comissaoGerente;
        }return salario;
    }
	
	public void setSalario(double salario) {
		this.salario = salario;
	}

	public ArrayList<Vendedor> getListaVendedores() {
		return listaVendedores;
	}

	public void setListaVendedores(ArrayList<Vendedor> listaVendedores) {
		this.listaVendedores = listaVendedores;
	}

	public double getComissaoGerente() {
		return comissaoGerente;
	}

	public void setComissaoGerente(double comissaoGerente) {
		this.comissaoGerente = comissaoGerente;
	}

	@Override
	public String toString() {
		return "Gerente [listaVendedores=" + listaVendedores + ", comissaoGerente=" + comissaoGerente + "]";
	}
}
