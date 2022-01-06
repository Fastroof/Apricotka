package ua.com.apricotka.config;

import lombok.AllArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
@AllArgsConstructor
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        String[] resources = new String[]{
                "/", "/tour","/gallery","/registration", "/register_success",
                "/css/**","/icons/**","/logo/**","/js/**","/slider/**", "/pictures/apricots/**", "/pictures/gallery/**"
        };

        http
                .authorizeRequests()
                    .antMatchers(resources).permitAll()
                    .anyRequest().authenticated()
                .and()
                    .formLogin()
                    .loginPage("/login")
                    .permitAll()
                .and()
                    .logout()
                    .permitAll();
    }

}