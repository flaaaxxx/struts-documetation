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

    public void validate(){
        if (personBean.getFirstName().length() == 0) {
            addFieldError("personBean.firstName", "First name is required.");
        }

        if (personBean.getEmail().length() == 0) {
            addFieldError("personBean.email", "Email is required.");
        }

        if (personBean.getAge() < 18) {
            addFieldError("personBean.age", "Age is required and must be 18 or older");
        }
    }

}
