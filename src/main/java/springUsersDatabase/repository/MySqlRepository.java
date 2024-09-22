package springUsersDatabase.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import springUsersDatabase.model.User;

import java.util.List;

public interface MySqlRepository extends JpaRepository<User, Integer> {

    @Query("SELECT u FROM User u ORDER BY u.id DESC")
    Page<User> findAllUsersOrderByIdDesc(Pageable pageable);

    @Query("SELECT u FROM User u WHERE u.gender = 'female'")
    Page<User> findAllFemaleUsers(Pageable pageable);

    @Query("SELECT u FROM User u WHERE" +
            "(:userName = '' OR  u.name = :userName ) AND" +
            "(:userSurname = '' OR  u.surname = :userSurname) AND" +
            "(:userId = 0 OR u.id = :userId)")
    List<User> findUsers(@Param("userName") String userName, @Param("userSurname") String userSurname, @Param("userId") int userId, Pageable pageable);

    @Query("SELECT COUNT(u) FROM User u WHERE" +
            "(:userName = '' OR  u.name = :userName ) AND" +
            "(:userSurname = '' OR  u.surname = :userSurname) AND" +
            "(:userId = 0 OR u.id = :userId)")
    int findNumberOfUsers(@Param("userName") String userName, @Param("userSurname") String userSurname, @Param("userId") int userId);
}
