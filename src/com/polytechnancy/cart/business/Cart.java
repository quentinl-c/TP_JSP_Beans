package com.polytechnancy.cart.business;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;

public class Cart implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private ArrayList<LineItem> items;
	
	public Cart() {
		this.items = new ArrayList<LineItem>();
	}

	public ArrayList<LineItem> getItems() {
		// TODO
	}

	public void setItems(ArrayList<LineItem> items) {
		// TODO
	}
	
	public void addItem(LineItem item) {
		String code = item.getBook().getCode();
		int quantity = item.getQuantity();

		for(LineItem lineItem : this.items) {

			if(lineItem.getBook().getCode().equals(code)) {
				lineItem.setQuantity(quantity);
				return;
			}
		}
		this.items.add(item);
	}
	
	public void removeItem(String code) {
		Iterator<LineItem> itr = this.items.iterator();
		while(itr.hasNext()) {
			if(itr.next().getBook().getCode().equals(code)) {
				itr.remove();
				return;
			}
		}
	}
	
	public double getTotal() {
		// TODO : calcul le prix total du panier
	}

}
