package com.spacecard.profile;

//import com.blackholeio.lite.models.Active;
import java.util.Date;
//import com.blackholeio.lite.models.DataModel;
//import com.blackholeio.lite.models.fields.Field;

//@Active(dbTable="profile")
public class Profile
{
    private int userId;
    //@Field(blank = false)
    private String fullName;
    
    //@Field
    private String email;
    
    //@Field(unique=true)
    private String username;
    
    //@Field
    private String password;
    
    //@Field
    private String profilePic;
    
    private String status;
    
    private Date dateRegistered;

    public Profile(int userId, String fullName, String email, String username, String password, String profilePic, String status, Date dateRegistered) {
        this.userId = userId;
        this.fullName = fullName;
        this.email = email;
        this.username = username;
        this.password = password;
        this.profilePic = profilePic;
        this.status = status;
        this.dateRegistered = dateRegistered;
    }

    public Profile(int userId, String username, String password) {
        this.userId = userId;
        this.username = username;
        this.password = password;
    }
    
    

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getProfilePic() {
        return profilePic;
    }

    public void setProfilePic(String profilePic) {
        this.profilePic = profilePic;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getDateRegistered() {
        return dateRegistered;
    }

    public void setDateRegistered(Date dateRegistered) {
        this.dateRegistered = dateRegistered;
    }
    
   
	
}