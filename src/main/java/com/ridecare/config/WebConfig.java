package com.ridecare.config;

import com.ridecare.interceptor.CustomerInterceptor;
import com.ridecare.interceptor.AdminInterceptor;
import com.ridecare.interceptor.EmployeeInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Bean
    public CustomerInterceptor customerInterceptor() {
        return new CustomerInterceptor();
    }
    
    @Bean
    public AdminInterceptor adminInterceptor() {
        return new AdminInterceptor();
    }
    
    @Bean
    public EmployeeInterceptor employeeInterceptor() {
        return new EmployeeInterceptor();
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {

    	registry.addInterceptor(customerInterceptor())
        .addPathPatterns(
                "/customer/**",
                "/bookService",
                "/booking/**"
        )
        .excludePathPatterns(
                "/login",
                "/signup",
                "/customer/register",
                "/customer/forgot-password",
                "/customer/reset-password",
                "/css/**",
                "/js/**",
                "/images/**",
                "/webjars/**"
        );
        
        
        registry.addInterceptor(adminInterceptor())

        .addPathPatterns(
                "/admin/**"
        )

        .excludePathPatterns(
                "/admin/login",
                "/css/**",
                "/js/**",
                "/images/**",
                "/webjars/**"
        );
        registry.addInterceptor(employeeInterceptor())

        .addPathPatterns(
                "/employee/**"
        )

        .excludePathPatterns(
                "/employee/login",
                "/employee/register",
                "/css/**",
                "/js/**",
                "/images/**",
                "/webjars/**"
        );
    }
}