package co.edu.usco.pw.springboot_crud01.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import co.edu.usco.pw.springboot_crud01.userol.UserService;

@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserService userService;

    @Bean
    public PasswordEncoder passwordEncoder() {
        return NoOpPasswordEncoder.getInstance();
    }

    @Autowired
    public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userService).passwordEncoder(passwordEncoder());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/", "/welcome", "/login", "/h2-console/**", "/vsc-product","/cart", "/quienes", "/register", "/resources/**").permitAll()
                .antMatchers("/welcome").hasAnyRole("USER", "ADMIN")
                .antMatchers("/welcome/user").hasAnyRole("USER", "ADMIN")
                .antMatchers("/index", "/vsc-products").hasAnyRole("USER", "ADMIN")
                .antMatchers("/welcome/admin").hasRole("ADMIN")
                .antMatchers("/api/mp").hasAnyRole("USER", "ADMIN")
                .antMatchers("/list-products", "/add-product", "/list-details", "/add-detail", "/update-product", "/delete-product").hasAnyRole("ADMIN")
                .anyRequest().authenticated()
                .and()
                .formLogin()
                .loginPage("/login")
                .loginProcessingUrl("/login")
                .defaultSuccessUrl("/welcome")
                .permitAll()
                .and()
                .logout()
                .logoutUrl("/logout")
                .logoutSuccessUrl("/login")
                .permitAll();

        http.csrf().disable();
        http.headers().frameOptions().disable();
    }
}
