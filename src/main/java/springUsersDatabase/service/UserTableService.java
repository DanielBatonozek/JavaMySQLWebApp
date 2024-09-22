package springUsersDatabase.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import springUsersDatabase.model.User;
import springUsersDatabase.model.UserTable;
import springUsersDatabase.model.UserTableDTO;
import springUsersDatabase.repository.MySqlRepository;

import java.util.List;

@Service
public class UserTableService {

    @Autowired
    MySqlRepository mySqlRepository;

    @Autowired
    UserTable userTable;

    /**
     * Returns list of users that should be displayed in the table.
     * Uses methods: findUsers()
     * @param userTableDTO
     * Method accepts UserTableDTO class with these attributes:
     * boolean findUserMod - initiate state when users are filtered by "find user" form.
     * boolean exitFindUserMod - exits from state when users are filtered by "find user" form.
     * String findUserId, findUserName, findUserSurname - parameters from "find user" form for filtering.
     * String sort - by which table tab should be the table sorted.
     * Method with UserTableDTO class operate with these UserTable class attributes:
     * boolean findUserMod - serves for storing UserTableDTOs findUserMod, exitFindUserMod (findUserMod - true, exitFindUserMod - false).
     * int page - store current displayed page.
     * String sort - storing sort from UserTableDTO class.
     * int numberOfUsers - current total filter number of users.
     * @return List of User values.
     */
    public List<User> getDisplayedUsers(UserTableDTO userTableDTO) {
        if (userTableDTO.isFindUserMod() || (userTable.isFindUsersMod() && !userTableDTO.isExitFindUserMod())) {
            return findUsers(userTableDTO.getFindUserId(), userTableDTO.getFindUserName(), userTableDTO.getFindUserSurname(),
                             userTableDTO.isFindUserMod(), userTableDTO.getSort());
        } else if (userTableDTO.isExitFindUserMod()) {
            userTable.setPage(0);
            userTable.setSort("id");
            userTable.setFindUsersMod(false);
        }
        userTable.setNumberOfUsers(mySqlRepository.findAll().size());
        Pageable pageable = getPageable(userTableDTO.getSort());
        return mySqlRepository.findAll(pageable).toList();
    }

    /**
     * Filters users by id, name and surname. ID has the highest priority.
     * Parameters can be an empty string, and the ID can be equal to zero.
     * In such a case, it filters only according to the specified parameters.
     * If all parameters are empty and the ID is equal to zero, it returns all users.
     * @param id int ID value.
     * @param name String name value.
     * @param surname String surname value.
     * @param findUserMod boolean value which initiate new filtering.
     * @param sortBy String table tab value by which should be final data sorted.
     * @return List of User values.
     */
    private List<User> findUsers(int id, String name, String surname, boolean findUserMod, String sortBy) {
        if (findUserMod) {
            userTable.setPage(0);
            userTable.setFindUsersMod(true);
            userTable.setFindUserId(id);
            userTable.setFindUserName(name);
            userTable.setFindUserSurname(surname);
        }
        id = userTable.getFindUserId();
        name = userTable.getFindUserName();
        surname = userTable.getFindUserSurname();
        userTable.setNumberOfUsers(mySqlRepository.findNumberOfUsers(name, surname, id));
        return mySqlRepository.findUsers(name, surname, id, getPageable(sortBy));
    }


    private Pageable getPageable(String sortBy) {
        Sort sort = sortUsers(sortBy);
        return PageRequest.of(userTable.getPage(), userTable.getPageSize(), sort);
    }


    /**
     * Sorts users when a table tab is selected. First sort order is ascending,
     * when the same tab is selected sort order change to descend.
     * Second sorting order is always ascending "id".
     *
     * @param sortBy String table tab value.
     * @return sorted list of users.
     */
    private Sort sortUsers(String sortBy) {
        if (sortBy != null && !userTable.getSort().equals(sortBy)) {  //reset table for new sorting when different tab is selected
            userTable.setPage(0);
            userTable.setSortOrder(true);                           // set sort order to ascend
            userTable.setSort(sortBy);
        } else if (userTable.getSort().equals(sortBy)) {        //flip sorting when click on same tab
            userTable.setPage(0);
            userTable.setSortOrder(!userTable.isSortOrder());   //set sort order to descend
        }
        Sort sort;
        if (!userTable.isSortOrder()) {
            return sort = Sort.by(userTable.getSort()).descending().and(Sort.by("id"));
        }
        return sort = Sort.by(userTable.getSort(), "id");
    }

    public int getCurrentPage() {
        return userTable.getPage();
    }

    public int getCurrentTotalUsers() {
        return (int) Math.ceil((double) userTable.getNumberOfUsers() / userTable.getPageSize());
    }

    /**
     * Stores actual page into userTable instance.
     * @param userTableDTO uses getter of a int page attribute in a DTO class.
     */
    public void setPage(UserTableDTO userTableDTO) {
        if (userTableDTO.getPage() > 0 && userTableDTO.getPage() <= (int) Math.ceil((double) userTable.getNumberOfUsers() / userTable.getPageSize())) {
            userTable.setPage(userTableDTO.getPage() - 1);
        }
    }

    /**
     * Lists the page in userTable instance.
     * @param userTableDTO uses getters of nextPage, previousPage in a DTO class.
     */
    public void scrollPage(UserTableDTO userTableDTO) {
        if (userTableDTO.isNextPage() && Math.ceil((double) userTable.getNumberOfUsers() / userTable.getPageSize()) - 1 > userTable.getPage()) {
            userTable.setPage(userTable.getPage() + 1);
        } else if (userTableDTO.isPreviousPage() && userTable.getPage() > 0) {
            userTable.setPage(userTable.getPage() - 1);
        }

    }
}