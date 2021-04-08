import java.util.ArrayList;
import java.util.Scanner;

public class Menu {

	public static void main(String[] args) {
		ArrayList<Cliente> listaClientes = new ArrayList<Cliente>();
		Scanner scanner = new Scanner(System.in);
		int opcaoMenu, idade, novaIdade;
		String nome, novoNome;
		System.out.println("*****Bem vindo ao Sistema de cadastro de Clientes*****");
		
		do {

			System.out.println("1- Cadastrar cliente");
			System.out.println("2- Apagar Cliente");
			System.out.println("3- Modificar cliente");
			System.out.println("4- Listar Clientes");
			System.out.println("5- Sair");
			System.out.print("Digite uma opção: ");
			
			opcaoMenu = scanner.nextInt();
			
			switch(opcaoMenu){
			
				case 1:
					System.out.println("********************");
					System.out.print("Digite o seu nome: ");
					nome=scanner.next();
					System.out.print("Digite sua idade: ");
					idade=scanner.nextInt();
					System.out.println("********************");
					System.out.println("Cliente Cadastrado com Sucesso :D !!");
					System.out.println("********************");
					Cliente cliente = new Cliente(nome, idade);
					listaClientes.add(cliente);
					break;
				case 2:
					System.out.println("********************");
					for(int i = 0; i < listaClientes.size(); i++) 
					{
						System.out.print("Cliente [nome= "+listaClientes.get(i).getNome()+" idade="+listaClientes.get(i).getIdade()+"]"+"\n");
					}
					System.out.println("********************");
					System.out.print("Digite o nome do Cliente a ser removido: ");
					nome=scanner.next();
					for(int i = 0; i < listaClientes.size(); i++) 
					{
						if(listaClientes.get(i).getNome().equals(nome))
						{
							listaClientes.remove(i);
						}
					}
					break;
				case 3:
					System.out.println("********************");
					for(int i = 0; i < listaClientes.size(); i++) 
					{
						System.out.print("Cliente [nome= "+listaClientes.get(i).getNome()+" idade="+listaClientes.get(i).getIdade()+"]"+"\n");
					}
					System.out.println("Digite o nome do Cliente a ser Editado");
					nome=scanner.next();
					for(int i = 0; i < listaClientes.size(); i++) 
					{
						if(listaClientes.get(i).getNome().equals(nome))
						{
							System.out.print("Digite o novo nome: ");
							novoNome=scanner.next();
							listaClientes.get(i).setNome(novoNome);
							System.out.print("Digite a nova idade: ");
							novaIdade=scanner.nextInt();
							listaClientes.get(i).setIdade(novaIdade);
						}
					}
					break;
				case 4:
					System.out.println("********************");
					System.out.println("********************");
					System.out.println("Lista de Clientes");
					System.out.println("********************");
					for(int i = 0; i < listaClientes.size(); i++) 
					{
						System.out.print("Cliente [nome= "+listaClientes.get(i).getNome()+" idade="+listaClientes.get(i).getIdade()+"]"+"\n");
					}
					System.out.println("********************");
					System.out.println("********************");
					break;	
				case 5:
					System.out.println("********************");
					System.out.println("Obrigado por usar o Sistem CAD Cliente");
					System.out.println("********************");
					break;
				default:
					System.out.println("Opção Invalida! Digite valores entre 1 e 5");
					break;
			}
		} while(opcaoMenu != 5);
		scanner.close();
	}
}
