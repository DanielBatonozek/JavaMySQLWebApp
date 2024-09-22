package springUsersDatabase.model;

import org.springframework.stereotype.Component;

@Component
public class UserTable {
    private int page;
    private int pageSize;
    private int numberOfUsers;          //current total number of users
    private String sort;                //sort by this table tab column
    private boolean sortOrder;          //true - ascending, false - descending sorting
    private boolean findUsersMod;
    private int findUserId;
    private String findUserName;
    private String findUserSurname;
    private String findUSerPhoneNumber;

    public UserTable() {
        this.page = 0;
        this.pageSize = 25;
        this.sort = "id";
        this.sortOrder = true;
        this.findUsersMod = false;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public boolean isSortOrder() {
        return sortOrder;
    }

    public void setSortOrder(boolean sortOrder) {
        this.sortOrder = sortOrder;
    }

    public boolean isFindUsersMod() {
        return findUsersMod;
    }

    public void setFindUsersMod(boolean findUsersMod) {
        this.findUsersMod = findUsersMod;
    }

    public int getNumberOfUsers() {
        return numberOfUsers;
    }

    public void setNumberOfUsers(int numberOfUsers) {
        this.numberOfUsers = numberOfUsers;
    }

    public int getFindUserId() {
        return findUserId;
    }

    public void setFindUserId(int findUserId) {
        this.findUserId = findUserId;
    }

    public String getFindUserName() {
        return findUserName;
    }

    public void setFindUserName(String findUserName) {
        this.findUserName = findUserName;
    }

    public String getFindUserSurname() {
        return findUserSurname;
    }

    public void setFindUserSurname(String findUserSurname) {
        this.findUserSurname = findUserSurname;
    }
}
