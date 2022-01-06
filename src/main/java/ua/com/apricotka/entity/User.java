package ua.com.apricotka.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
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
@NoArgsConstructor
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

    @Column(name = "lab3_ld_role", nullable = false)
    @Enumerated(EnumType.STRING)
    private UserRole userRole;

    @Column(name = "lab3_ld_locked", nullable = false)
    private Boolean locked;

    @Column(name = "lab3_ld_enabled", nullable = false)
    private Boolean enabled;

    public User(String username,
                String password,
                String firstName,
                String lastName,
                String email,
                UserRole userRole,
                Boolean locked,
                Boolean enabled) {
        this.username = username;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.userRole = userRole;
        this.locked = locked;
        this.enabled = enabled;
    }

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
