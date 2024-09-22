package springUsersDatabase.model;

import java.util.List;

public class UserTableDTO {
    private List<User> displayedUsers;      // List of users that are displayed in the table
    private int page;                       // Current page
    private int totalPage;                  // Total number of pages
    private boolean nextPage;               // Information for scrolling pages
    private boolean previousPage;           // Information for scrolling pages
    private String sort;                    // Table tab sorting
    private boolean findUserMod;            // Whether the displayedUsers will be filtered from find user form
    private boolean exitFindUserMod;        // Whether the displayedUsers will be filtered from find user form
    private int findUserId;                 // find user form id information
    private String findUserName;            // find user form name information
    private String findUserSurname;         // find user form surname information

    public List<User> getDisplayedUsers() {
        return displayedUsers;
    }

    public void setDisplayedUsers(List<User> displayedUsers) {
        this.displayedUsers = displayedUsers;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }


    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public boolean isFindUserMod() {
        return findUserMod;
    }

    public void setFindUserMod(boolean findUserMod) {
        this.findUserMod = findUserMod;
    }

    public String getFindUserName() {
        return findUserName;
    }

    public void setFindUserName(String findUserName) {
        this.findUserName = findUserName;
    }

    public int getFindUserId() {
        return findUserId;
    }

    public void setFindUserId(int findUserId) {
        this.findUserId = findUserId;
    }

    public String getFindUserSurname() {
        return findUserSurname;
    }

    public void setFindUserSurname(String findUserSurname) {
        this.findUserSurname = findUserSurname;
    }

    public boolean isExitFindUserMod() {
        return exitFindUserMod;
    }

    public void setExitFindUserMod(boolean exitFindUserMod) {
        this.exitFindUserMod = exitFindUserMod;
    }

    public boolean isNextPage() {
        return nextPage;
    }

    public void setNextPage(boolean nextPage) {
        this.nextPage = nextPage;
    }

    public boolean isPreviousPage() {
        return previousPage;
    }

    public void setPreviousPage(boolean previousPage) {
        this.previousPage = previousPage;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }
}
