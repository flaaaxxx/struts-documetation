package com.example.demo.model;

import lombok.*;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Person {
    private String firstName;
    private String lastName;
    private String email;
    private int age;
}
