
public class Main {

	public static void main(String[] args) {
		Pessoa pessoas[] = new Pessoa[5];
		
		Estudante estudante1 = new Estudante("Luiz","Recife PE");
		Estudante estudante2 = new Estudante("José","Olinda PE");
		Estudante estudante3 = new Estudante("Karla","Recife PE");
		Professor professor1 = new Professor("Rafaela", "Olinda PE");
		Professor professor2 = new Professor("Antonio", "Recife PE");
		
		estudante1.addCursoNota("Programação", 9);
		estudante1.addCursoNota("POO", 10);
		
		estudante2.addCursoNota("Banco de Dados", 8);
		estudante2.addCursoNota("Sistemas Operacionais", 10);
		
		estudante3.addCursoNota("Programação", 10);
		estudante3.addCursoNota("Banco de Dados", 9);
		
		professor1.addCurso("Programação");
		professor1.addCurso("POO");
		
		professor2.addCurso("Banco de Dados");
		professor2.addCurso("Sistemas Operacionais");
		
		pessoas[0] = estudante1;
		pessoas[1] = estudante2;
		pessoas[2] = estudante3;
		pessoas[3] = professor1;
		pessoas[4] = professor2;
		
		for (Pessoa p : pessoas) { 
			System.out.println(p);
		}
		
		metodo(pessoas);
	}
		public static void metodo(Pessoa[] p) {
			System.out.println("Curso: Programação");
			System.out.println("Professor: "+p[3].nome);
			System.out.println("Alunos: ");
			System.out.println(p[0].nome);
			System.out.println(p[2].nome);
		}
}
