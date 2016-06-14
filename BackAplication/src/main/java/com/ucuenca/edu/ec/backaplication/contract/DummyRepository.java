package com.ucuenca.edu.ec.backaplication.contract;

import com.ucuenca.edu.ec.backaplication.domain.User;

public interface DummyRepository extends Repository<User> {
    User getDefaultUser();
}
