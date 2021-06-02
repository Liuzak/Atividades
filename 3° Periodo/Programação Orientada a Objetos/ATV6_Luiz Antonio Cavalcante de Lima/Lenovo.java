
public class Lenovo implements Processador, MemoriaRAM, Maquina{
	private String modelo;
	private String linha;
	
	public Lenovo(String modelo, String linha) {
		super();
		this.modelo = modelo;
		this.linha = linha;
	}
	
	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getLinha() {
		return linha;
	}

	public void setLinha(String linha) {
		this.linha = linha;
	}

	@Override
	public String getSistemaOperacional() {
		return "Windows 10";
	}
	@Override
	public int getCapacidade() {
		return 8;
	}
	@Override
	public String getTipo() {
		return "Notebook";
	}
	@Override
	public int getFrequência() {
		return 2133;
	}
	@Override
	public String getNome() {
		return "Intel Core i5";
	}
	@Override
	public double getVelocidade() {
		return 1.60;
	}
	@Override
	public int getNucleo() {
		return 4;
	}
	@Override
	public String getTipoRAM() {
		return "DDR4";
	}

	@Override
	public String toString() {
		return String.format("%s \n\n%s \n\n%s: %s \n%s\n%s: %s\n%s: %s\n%s: %s\n\n%s\n\n%s: %s\n%s: %d\n%s: %.2f %s\n\n%s\n\n%s: %d %s\n%s: %s\n%s: %d %s", 
				"Ficha Técnica","Informações Básicas","Tipo de Maquina",getTipo(),"Marca: Lenovo","Modelo",
				this.modelo,"Linha",this.linha,"Sistema Operacional",getSistemaOperacional(),"Processador","Processador",getNome()
				,"Núcleos",getNucleo(),"Velocidade",getVelocidade(),"GHz","Memória RAM","Capacidade",getCapacidade(),"GB","Tipo",
				getTipoRAM(),"Frequência",getFrequência(),"MHz");
	}
}
