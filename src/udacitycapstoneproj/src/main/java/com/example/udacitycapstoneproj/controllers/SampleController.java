package com.example.udacitycapstoneproj.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SampleController {
    @GetMapping(value = "/sample/{name}")
    public String sample(@PathVariable String name){
        return "Hello from Capstone Project: " + name;
    }
}
