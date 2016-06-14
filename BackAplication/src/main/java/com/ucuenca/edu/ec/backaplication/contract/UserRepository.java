package com.ucuenca.edu.ec.backaplication.contract;

import com.ucuenca.edu.ec.backaplication.domain.User;

public interface UserRepository extends Repository<User> {
    User create(User user);

    User update(User user);

    void remove(int id);

    int getNumberOfUsers();
}
