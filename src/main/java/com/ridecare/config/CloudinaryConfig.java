package com.ridecare.config;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class CloudinaryConfig {

    @Bean
    public Cloudinary cloudinary() {

        return new Cloudinary(ObjectUtils.asMap(
        		"cloud_name", "ehirh8hb",
                "api_key", "481451247653494",
                "api_secret", "0N0Gnjgx9R91GZx6rIVrtkSPjeY"
        ));
    }
}