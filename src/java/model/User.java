/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Grant - modified by Raul
 */
public class User {
    
    private String username;
    private String role;

    public User(String username, String role) {
        this.username = username;
        this.role = role;
    }
    
    public String getUsername() {
        String name = this.username;
        String capitalUsername = name.substring(0,1).toUpperCase() + name.substring(1);
        return capitalUsername;
    }
    
    public String getRole() {
        String role = this.role;
        String capitalRole = role.substring(0,1).toUpperCase() + role.substring(1);
        return capitalRole;
    }
}