package nlu.edu.fit.bookstore.utils;

import com.google.common.hash.Hashing;

import java.nio.charset.StandardCharsets;
import java.sql.SQLOutput;

public class Utils {
    public static String fullPath(String path) {

        return "http://localhost:8080/BookStore_war_exploded/" + path;
    }

    public static String fullPathAdmin(String path) {

        return "http://localhost:8080/BookStore_war_exploded/admin/" + path;
    }

    public static boolean isEmail(String email) {
        String ePattern = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";
        java.util.regex.Pattern p = java.util.regex.Pattern.compile(ePattern);
        java.util.regex.Matcher m = p.matcher(email);
        return m.matches();
    }

    public static String hashToken(String originalString) {
        String sha256hex = Hashing.sha256()
                .hashString(originalString, StandardCharsets.UTF_8)
                .toString();
        return sha256hex;
    }

    public static void main(String[] args) {

        System.out.println(Utils.hashToken(Math.random() + ""));

    }


}
