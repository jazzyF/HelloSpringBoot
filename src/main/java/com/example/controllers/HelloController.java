package com.example.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/hello")
public class HelloController {

    @RequestMapping
    public ResponseEntity<String> greet() {
        return ResponseEntity.ok("Hello");
    }

}
