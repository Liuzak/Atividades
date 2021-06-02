
public class Funcionario extends Pessoa{
	protected double salario;
	
	public Funcionario(String nome, String endereco, String cpf, double salario) {
		super(nome, endereco, cpf);
		this.salario = salario;
	}

	public double getSalario() {
		return salario;
	}

	public void setSalario(double salario) {
		this.salario = salario;
	}

	@Override
	public String toString() {
		return "Funcionario [salario=" + salario + "]";
	}
}
