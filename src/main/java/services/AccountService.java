package services;

import dataaccess.UserDB;
import java.util.HashMap;
import models.User;

public class AccountService {
    
    public User login(String email, String password) {
        UserDB userDB = new UserDB();
        
        try {
            User user = userDB.get(email);
            if (password.equals(user.getPassword())) {
                return user;
            }
        } catch (Exception e) {
        }
        
        return null;
    }

    public boolean forgotPassword(String email, String path) {
        UserDB userdb = new UserDB();
        User user = userdb.get(email);
        String receiver = user.getEmail();
        String subject = "Forgot Password";
        String template = path + "/emailtemplates/credentials.html";
        
        try{
            HashMap<String, String> tags = new HashMap<>();
            tags.put("firstName", user.getFirstName());
            tags.put("lastName", user.getLastName());
            tags.put("email", user.getEmail());
            tags.put("password", user.getPassword());
            
            GMailService.sendMail(receiver, subject, template, tags);
            return true;
        }catch(Exception e) {
        }
        return false;
    }
}
