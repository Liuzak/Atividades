
public class Vendedor extends Funcionario{
	private Gerente gerente;
	private double valorVenda;
	private double comissaoVendedor;

	public Vendedor(String nome, String endereco, String cpf, double salario, Gerente gerente, double valorVenda,
			double comissaoVendedor) {
		super(nome, endereco, cpf, salario);
		this.gerente = gerente;
		this.valorVenda = valorVenda;
		this.comissaoVendedor = comissaoVendedor;
	}

	public double getSalario() {
		return salario = valorVenda * comissaoVendedor;
	}
	
	public void setSalario(double salario) {
		this.salario = salario;
	}


	public Gerente getGerente() {
		return gerente;
	}

	public void setGerente(Gerente gerente) {
		this.gerente = gerente;
	}

	public double getValorVenda() {
		return valorVenda;
	}

	public void setValorVenda(double valorVenda) {
		this.valorVenda = valorVenda;
	}

	public double getComissaoVendedor() {
		return comissaoVendedor;
	}

	public void setComissaoVendedor(double comissaoVendedor) {
		this.comissaoVendedor = comissaoVendedor;
	}

	@Override
	public String toString() {
		return "Vendedor [gerente=" + gerente + ", valorVenda=" + valorVenda + ", comissaoVendedor=" + comissaoVendedor
				+ "]";
	}
}