import java.util.Scanner;
public class Main {

	public static void main(String[] args) {
		Scanner ler = new Scanner(System.in);
		String lerNomeAutor1, lerNomeAutor2, lerEmail1, lerEmail2, lerNomeLivro1, lerNomeLivro2;
		char lerGender1, lerGender2;
		double lerPrice1, lerPrice2;
		int lerqtyInStock1, lerqtyInStock2;
		
		System.out.println("Digite o nome do 1° autor: ");
		lerNomeAutor1=ler.next();
		
		System.out.println("Digite o seu email: ");
		lerEmail1=ler.next();
		
		System.out.println("Digite o gênero (M/F): ");
		lerGender1=ler.next().charAt(0);
		
		System.out.println("Digite o nome do 2° autor: ");
		lerNomeAutor2=ler.next();
		
		System.out.println("Digite o seu email: ");
		lerEmail2=ler.next();
		
		System.out.println("Digite o gênero (M/F): ");
		lerGender2=ler.next().charAt(0);
		
		System.out.println("Digite o nome do 1° livro: ");
		lerNomeLivro1=ler.next();
		
		System.out.println("Digite seu preço: ");
		lerPrice1=ler.nextDouble();
		
		System.out.println("Digite a quantidade em estoque: ");
		lerqtyInStock1=ler.nextInt();
		
		System.out.println("Digite o nome do 2° livro: ");
		lerNomeLivro2=ler.next();
		
		System.out.println("Digite seu preço: ");
		lerPrice2=ler.nextDouble();
		
		System.out.println("Digite a quantidade em estoque: ");
		lerqtyInStock2=ler.nextInt();
		
		ler.close();
		Author autor1 = new Author(lerNomeAutor1,lerEmail1,lerGender1);
		Author autor2 = new Author(lerNomeAutor2,lerEmail2,lerGender2);		
		Book livro1 = new Book(lerNomeLivro1, autor1, lerPrice1, lerqtyInStock1);
		Book livro2 = new Book(lerNomeLivro2, autor2, lerPrice2, lerqtyInStock2);
		System.out.println("Livro1 = "+ livro1.toString());
		System.out.println("Livro2 = "+ livro2.toString());
	}
}
