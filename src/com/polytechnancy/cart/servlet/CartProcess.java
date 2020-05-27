package com.polytechnancy.cart.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.polytechnancy.cart.business.Book;
import com.polytechnancy.cart.business.Cart;
import com.polytechnancy.cart.business.LineItem;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartProcess")
public class CartProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private final String url = "cart";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartProcess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO recuperer le code depuis la requete 
		
		int quantity;
		try {
			// TODO : parser la quantite en tant qu'Integer
			// TODO : si elle est inferieure a 0,  
		} catch (NumberFormatException ex) {
			// TODO definir une quantite par defaut (1 par exemple)
		}
		
		// Recuperer la session a partir de la requete
		// Recuper l'objet cart associe a la cle "cart" depuis la session
		
		if (cart == null) { // s'il n'y a pas d'objet cart alors en creer un nouveau = nouvel arrivant
			cart = new Cart();
		}
		
		if(quantity > 0) {
			// Si quantite superieur a 0, alors ajout dans le panier
			// TODO recuperer le titre (title) depuis la requete 
			double price;
			try {
				// TODO parser le prix comme un Double
			} catch (NumberFormatException ex) {
				price = 0;
			}
			// TODO Creer un objet book avec comme parametre le code, le titre et le prix
			// TODO Creer l'objet lineItem qui contient l'objet Book et la quantite
			// TODO ajouter l'objet linitem a l'objet cart
		} else {
			// Sinon, suppression du livre du panier
			// TODO supprimer le livre en question du panier (cart) suivant son code
		}
		
		// TODO : ajouter un attribut "cart" a la session
		// TODO : rediriger ver url

	}

}
