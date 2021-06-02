import java.util.Arrays;

public class Estudante extends Pessoa{
	private int numCursos;
	private String[] cursos;
	private int[] notas;
	int i=0;
	
	public Estudante(String nome, String endereco) {
		super(nome, endereco);
		this.numCursos=2;
		this.cursos = new String[this.numCursos];
		this.notas = new int[this.numCursos];
	}
	
	@Override
	public String toString() {
		return "Estudante [numCursos=" + numCursos + ", cursos=" + Arrays.toString(cursos) + ", notas="
				+ Arrays.toString(notas) + "]";
	}

	public boolean addCursoNota(String curso, int nota) {
		boolean resultado=false;
		this.cursos[i] = curso;
		this.notas[i] = nota;
		if(i == this.numCursos) {
			resultado=true;
		}
		i=i+1;
		return resultado;
	}
	
	public void imprimeNotas() {
		for(int n:notas) {
			System.out.println(n);
		}
	}
	
	public double getNotaMedia() {
		double soma=0;
		double mediaNotas=0;
		for (int a=0; a < this.numCursos; a++) {
			soma = soma + this.notas[a];
		}
		mediaNotas = soma / this.numCursos;
		System.out.println("Media :"+mediaNotas);
		return mediaNotas;
	}
}
