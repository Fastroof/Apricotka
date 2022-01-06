package ua.com.apricotka.entity;

import lombok.Getter;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import ua.com.apricotka.model.UserRole;

import javax.persistence.*;
import java.util.Collection;
import java.util.Collections;

@Getter
@Setter
@Entity
@Table(name = "lab3_ld_users")
public class User implements UserDetails {

    @Id
    @Column(name = "lab3_ld_user_id", nullable = false)
    @GeneratedValue(generator = "increment")
    private Long id;

    @Column(name = "lab3_ld_username", nullable = false)
    private String username;

    @Column(name = "lab3_ld_password", nullable = false)
    private String password;

    @Column(name = "lab3_ld_first_name", nullable = false)
    private String firstName;

    @Column(name = "lab3_ld_last_name", nullable = false)
    private String lastName;

    @Column(name = "lab3_ld_email", nullable = false, unique = true)
    private String email;

    private UserRole userRole;
    private Boolean locked;
    private Boolean enabled;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        SimpleGrantedAuthority authority = new SimpleGrantedAuthority(userRole.name());
        return Collections.singletonList(authority);
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return !locked;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return enabled;
    }
}
