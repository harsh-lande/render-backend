package com.bookstore.service;

import com.bookstore.model.Book;
import com.bookstore.repository.BookRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class BookService {

    private final BookRepository bookRepository;

    public List<Book> getAllBooks() {
        return bookRepository.findAll();
    }

    public Book getBookById(Integer id) {
        return bookRepository.findById(id).orElseThrow(() -> new RuntimeException("Book not found"));
    }

    public List<Book> getBooksByCategory(String category) {
        return bookRepository.findByBookCategory(category);
    }

    public List<Book> searchBooks(String keyword) {
        return bookRepository.findByBookNameContainingIgnoreCase(keyword);
    }

    public Book addBook(Book book) {
        return bookRepository.save(book);
    }

    public Book updateBook(Integer id, Book bookDetails) {
        Book book = getBookById(id);
        book.setBookName(bookDetails.getBookName());
        book.setBookCategory(bookDetails.getBookCategory());
        book.setBookDescription(bookDetails.getBookDescription());
        book.setBookPrice(bookDetails.getBookPrice());
        if(bookDetails.getBookImg() != null) {
            book.setBookImg(bookDetails.getBookImg());
        }
        return bookRepository.save(book);
    }

    public void deleteBook(Integer id) {
        bookRepository.deleteById(id);
    }
}
