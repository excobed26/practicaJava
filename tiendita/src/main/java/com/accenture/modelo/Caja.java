package com.accenture.modelo;

public class Caja {
	private String descripcion;
	private float precio;
	private int cantidad;
	public Caja(String descripcion,float precio,int cantidad){
		this.cantidad=cantidad;
		this.precio=precio;
		this.descripcion=descripcion;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public float getPrecio() {
		return precio;
	}
	public void setPrecio(float precio) {
		this.precio = precio;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
}
