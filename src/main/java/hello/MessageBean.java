package hello;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.beans.*;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.time.LocalTime;  

/**
 *
 * @author viter
 */
public class MessageBean implements Serializable {
     
    private String aut;
    private String lang;
    private String msg;
    private String msg2;
    private String msgNoite;
    private String msgTarde;
    private String msgManha;
        
    public MessageBean() {
    }
    
    public String getAut() {
        return "Akissel";
    }
    
    public void setLang(String value) {
        lang = value;
    }
    public String getMsg() {
        switch (this.lang){
            case "pt":
                return "Alô";
            case "en":
                return "Hello";
            case "de":
                return "Hallo";
            case "fr":
                return "Salut";
        }
        return "";
    }
    public String getMsg2() {
        switch (this.lang){
            case "pt":
                return "Elaborado por";
            case "en":
                return "Created by";
            case "de":
                return "Erstellt von";
            case "fr":
                return "Créé par";
        }
        return "";
    }

    public String getMsgNoite() {
        switch (this.lang){
            case "pt":
                return "Boa Noite";
            case "en":
                return "Good Night";
            case "de":
                return "Guten Abend";
            case "fr":
                return "Bonsoir";
        }
        return "";
    }

    public String getMsgTarde() {
        switch (this.lang){
            case "pt":
                return "Boa Tarde";
            case "en":
                return "Good Afternoon";
            case "de":
                return "Guten Nachmittag";
            case "fr":
                return "Bon après-midi";
        }
        return "";
    }

    public String getMsgManha() {
        switch (this.lang){
            case "pt":
                return "Bom dia";
            case "en":
                return "Good Morning";
            case "de":
                return "Guten Morgen";
            case "fr":
                return "Bonjour";
        }
        return "";
    }

    public String getMsgAlt() {
        LocalDateTime tempo = LocalDateTime.now();

        if (tempo.getHour() >= 6 && tempo.getHour() < 12) {
            return getMsgManha();
        } else if (tempo.getHour() >= 12 && tempo.getHour() < 18) {
            return getMsgTarde();
        }

        return getMsgNoite();
    }

}
