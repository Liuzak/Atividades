import java.util.ArrayList;

public class Teste {

	public static void main(String[] args) {
		Gerente gerente = new Gerente ("Luiz","Recife PE", "12345678901",0,0.40);
		Vendedor vendedor1 = new Vendedor ("Claudio","Recife PE","18346648901",0,gerente,50000.00,0.03);
		Vendedor vendedor2 = new Vendedor ("Amanda","Recife PE","52545272901",0,gerente,60000.00,0.03);
		
		ArrayList<Vendedor> listaVendedores = new ArrayList<>();
		
		listaVendedores.add(vendedor1);
		listaVendedores.add(vendedor2);
		
		gerente.setListaVendedores(listaVendedores);
		
		System.out.println("Vendendor 1 = Nome: "+vendedor1.getNome()+" Valor Total de Vendas: "+vendedor1.getValorVenda()+" Salario: "+vendedor1.getSalario());
		System.out.println("Vendendor 2 = Nome: "+vendedor2.getNome()+" Valor Total de Vendas: "+vendedor2.getValorVenda()+" Salario: "+vendedor2.getSalario());
		System.out.println("Gerente = Nome: " +gerente.getNome()+" Salario: "+gerente.getSalario());
	}
}
