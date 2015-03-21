/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.newbusiness;

import java.util.HashMap;
import model.book.Book;
import model.business.ICart;

/**
 *
 * @author Duy Buffet
 */
public abstract class CartDecorator implements ICart {    
    protected ICart cart;

    public CartDecorator(ICart cart) {
        this.cart = cart;
    }        
    
    @Override
    public void addToCart(Book book) {
        cart.addToCart(book);
    }

    @Override
    public boolean changeQuantity(Book book, int qtt) {
        return cart.changeQuantity(book, qtt);
    }

    @Override
    public HashMap<Integer, Integer> getListBook() {
        return cart.getListBook();
    }        

    @Override
    public void setListBook(HashMap<Integer, Integer> listBook) {
        cart.setListBook(listBook);
    }
}
