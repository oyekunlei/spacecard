/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spacecard.image;

/**
 *
 * @author user
 */
public class Image 
{
    private int imageId;
    
    private String description;
    
    private String category;
    
    private String path;

    public Image() {
    }

    public Image(int imageId, String description, String category, String path) {
        this.imageId = imageId;
        this.description = description;
        this.category = category;
        this.path = path;
    }

    public int getImageId() {
        return imageId;
    }

    public void setImageId(int imageId) {
        this.imageId = imageId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }
    
    
}
