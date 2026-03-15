package com.bookstore.controller;

import com.bookstore.model.Contact;
import com.bookstore.model.UserSupport;
import com.bookstore.service.ContactService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/contact")
@RequiredArgsConstructor
public class ContactController {

    private final ContactService contactService;

    @PostMapping
    public ResponseEntity<Contact> submitContactMessage(@RequestBody Contact contact) {
        return ResponseEntity.ok(contactService.saveContactMessage(contact));
    }

    @PostMapping("/support")
    public ResponseEntity<UserSupport> submitSupportTicket(@RequestBody UserSupport support) {
        return ResponseEntity.ok(contactService.saveUserSupportTicket(support));
    }
}
