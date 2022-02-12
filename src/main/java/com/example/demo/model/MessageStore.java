package com.example.demo.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MessageStore {

    private String message;

    public MessageStore() {
        message = "Hello Struts ";
    }

    public String toString() {
        return message + " (from toString)";
    }

}
