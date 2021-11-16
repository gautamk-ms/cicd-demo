package com.cicd.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/v1")
@RestController
public class SampleController {

    @GetMapping("/hi")
    public String helloWorld(){
        return "HELLO WORLD";
    }
}
