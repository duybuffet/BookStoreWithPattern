/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.business;

import model.book.Book;

/**
 *
 * @author Duy Buffet
 */
public interface ICart {
    void addToCart(Book book);
    boolean changeQuantity(Book book, int qtt);
    
}
