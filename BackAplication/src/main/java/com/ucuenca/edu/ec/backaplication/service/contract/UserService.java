package com.ucuenca.edu.ec.backaplication.service.contract;

import com.ucuenca.edu.ec.backaplication.domain.User;

import java.util.List;

public interface UserService {

    List<User> getAllUsers();

    User getById(int id);

    User createNewUser(User user);

    User update(User user);

    void remove(int id);

    int getNumberOfUsers();
}
