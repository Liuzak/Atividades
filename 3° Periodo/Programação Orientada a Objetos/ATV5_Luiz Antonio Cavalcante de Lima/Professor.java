import java.util.Arrays;

public class Professor extends Pessoa{
	private int numCursos;
	private String[] cursos;
	int i=0;
	
	public Professor(String nome, String endereco) {
		super(nome, endereco);
		this.numCursos=2;
		this.cursos = new String[this.numCursos];
	}
	
	@Override
	public String toString() {
		return "Professor [numCursos=" + numCursos + ", cursos=" + Arrays.toString(cursos) + "]";
	}

	public boolean addCurso(String curso) {
		boolean resultado=false;
		this.cursos[i] = curso;
		if(i == this.numCursos) {
			resultado=true;
		}
		i=i+1;
		return resultado;
	}
	
	public boolean removeCurso(String curso) {
		boolean resultado=false;
		boolean achou=false;
		int a = 0;
		while((!achou) && (a < i)) {
			if(curso.equals(this.cursos[a])) {
				achou=true;
			}else {
				a = a +1;
			}
		}
		if (a != i) {
			this.cursos[a] = this.cursos[i-1];
			this.cursos[i-1] = null;
			i = i - 1;
			resultado=true;
			System.out.println("Curso "+ curso + " removido!");
		}else {
			System.out.println("Curso não existe!");
		}
		return resultado;
	}
}
