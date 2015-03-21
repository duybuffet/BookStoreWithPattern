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
public class CartDecoratorConcreate extends CartDecorator {
    public CartDecoratorConcreate(ICart cart) {
        super(cart);
    }                
    
    public void deleteAll() {
        System.out.println("im here");
        HashMap<Integer, Integer> list = new HashMap<>();
        setListBook(list);
    }
}
