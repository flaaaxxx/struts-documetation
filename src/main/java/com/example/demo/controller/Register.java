package com.example.demo.controller;

import com.example.demo.model.Person;
import com.opensymphony.xwork2.ActionSupport;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Register extends ActionSupport {

    private static final long serialVersionUID = 1L;

    private Person personBean;

    public String execute() throws Exception {
        return SUCCESS;
    }

}
