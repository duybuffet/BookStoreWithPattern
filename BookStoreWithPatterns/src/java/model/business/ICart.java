/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.business;

import java.util.HashMap;
import model.book.Book;

/**
 *
 * @author Duy Buffet
 */
public interface ICart {
    void addToCart(Book book);
    boolean changeQuantity(Book book, int qtt);
    HashMap<Integer, Integer> getListBook();
    void setListBook(HashMap<Integer, Integer> listBook);
}
