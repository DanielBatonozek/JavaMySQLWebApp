package springUsersDatabase.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import springUsersDatabase.model.UserDTO;
import springUsersDatabase.model.UserTableDTO;
import springUsersDatabase.repository.MySqlRepository;
import springUsersDatabase.service.UserService;
import springUsersDatabase.service.UserTableService;

@Controller
@RequestMapping("/users")
public class UserTableController {

    @Autowired
    MySqlRepository mySqlRepository;

    @Autowired
    UserTableService userTableService;

    @Autowired
    UserService userService;

    /**
     * Get mapping for "userTable" rendering.
     * @param userTableDTO
     * @param userDTO
     * @return UserTable view.
     */
    @GetMapping("/table")
    public String userTableDatabase(@ModelAttribute UserTableDTO userTableDTO, @ModelAttribute UserDTO userDTO) {
        userTableService.scrollPage(userTableDTO);
        userTableService.setPage(userTableDTO);
        userTableDTO.setDisplayedUsers(userTableService.getDisplayedUsers(userTableDTO));
        userTableDTO.setPage(userTableService.getCurrentPage());
        userTableDTO.setTotalPage(userTableService.getCurrentTotalUsers());
        return "UserTable";
    }

    @GetMapping("/aboutApp")
    public String aboutApp() {
        return "AboutApp";
    }

    /**
     * Post mapping for adding a user into the database.
     * @param userTableDTO
     * @param userDTO
     * @param model
     * @return UserTable view.
     */
    @PostMapping("/add-user")
    public String addUser(@ModelAttribute UserTableDTO userTableDTO, @ModelAttribute UserDTO userDTO, Model model) {
        model.addAttribute("userWasAdded", userService.addUser(userDTO));
        model.addAttribute("processAddUserMessage", true);
        userTableDTO.setDisplayedUsers(userTableService.getDisplayedUsers(userTableDTO));
        userTableDTO.setPage(userTableService.getCurrentPage());
        userTableDTO.setTotalPage(userTableService.getCurrentTotalUsers());
        return "UserTable";
    }

    /**
     * Post mapping for removing a user from the database
     * @param userTableDTO
     * @param userDTO
     * @return UserTable view.
     */
    @PostMapping("/remove-user")
    public String removeUser(@ModelAttribute UserTableDTO userTableDTO, @ModelAttribute UserDTO userDTO) {
        userService.removeUser(userDTO);
        userTableDTO.setDisplayedUsers(userTableService.getDisplayedUsers(userTableDTO));
        userTableDTO.setPage(userTableService.getCurrentPage());
        userTableDTO.setTotalPage(userTableService.getCurrentTotalUsers());
        return "UserTable";
    }

}
