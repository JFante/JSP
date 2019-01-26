package com.mx.jsp;

public class Libro {

	private String titulo;
	private String tipo;
	private int qty;
	private String comentario;

	public Libro() {
	}

	public Libro(String titulo, String tipo, int qty, String comentario) {

		this.titulo = titulo;
		this.tipo = tipo;
		this.qty = qty;
		this.comentario = comentario;

	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public String getComentario() {
		return comentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}

}
