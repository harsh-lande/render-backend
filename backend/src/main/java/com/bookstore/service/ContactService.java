package com.bookstore.service;

import com.bookstore.model.Contact;
import com.bookstore.model.UserSupport;
import com.bookstore.repository.ContactRepository;
import com.bookstore.repository.UserSupportRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.Instant;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ContactService {

    private final ContactRepository contactRepository;
    private final UserSupportRepository userSupportRepository;

    public Contact saveContactMessage(Contact contact) {
        contact.setContactTime(String.valueOf(Instant.now().getEpochSecond()));
        return contactRepository.save(contact);
    }

    public UserSupport saveUserSupportTicket(UserSupport support) {
        return userSupportRepository.save(support);
    }

    public List<Contact> getAllContacts() {
        return contactRepository.findAll();
    }

    public List<UserSupport> getAllSupportTickets() {
        return userSupportRepository.findAll();
    }
}
