package com.polytechnancy.cart.business;

import java.io.Serializable;

public class LineItem implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Book book;
	private int quantity;
	
	public LineItem() {}

	
	public LineItem(Book book, int quantity) {
		this.book = book;
		this.quantity = quantity;
	}


	public Book getBook() {
		//TODO
		return null;
	}
	
	public void setBook(Book book) {
		//TODO
	}
	
	public int getQuantity() {
		//TODO
	}
	
	public void setQuantity(int quantity) {
		//TODO
	}
	
	public double getTotal() {
		//TODO : calcul le prix total
		return total;
	}
	
	
	
}
