package model.business;

import java.util.HashMap;
import model.book.Book;

public class Cart implements ICart {
	private HashMap<Integer, Integer> listBook;

	public Cart() {
            listBook = new HashMap<>();
	}	

    @Override
    public void addToCart(Book book) {
        if (listBook.containsKey(book.getBookId())) {  
            int qtt = listBook.get(book.getBookId()) + 1;
            listBook.remove(book.getBookId());
            listBook.put(book.getBookId(), qtt);            
        } else {
            listBook.put(book.getBookId(), 1);
        }
    }

    @Override
    public boolean changeQuantity(Book book, int qtt) {
        boolean flag = true;
        if (listBook.containsKey(book.getBookId())) {
            if (qtt < 0) {
                flag = false;
            } else if (qtt == 0) {
                listBook.remove(book.getBookId());
            } else {
                listBook.remove(book.getBookId());
                listBook.put(book.getBookId(), qtt);
            }
        } 
        return flag;
    }   

    public HashMap<Integer, Integer> getListBook() {
        return listBook;
    }
    
    public static void main(String[] args) {
        Cart c = new Cart();
        Book b = new Book();
        b.setBookId(1);
        Book d = new Book();
        d.setBookId(1);
        c.addToCart(b);
        c.addToCart(d);
    }
}
