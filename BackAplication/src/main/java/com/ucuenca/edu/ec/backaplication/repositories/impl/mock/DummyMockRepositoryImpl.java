package com.ucuenca.edu.ec.backaplication.repositories.impl.mock;

import com.ucuenca.edu.ec.backaplication.domain.User;
import com.ucuenca.edu.ec.backaplication.contract.DummyRepository;

public class DummyMockRepositoryImpl extends GenericMockRepository<User> implements DummyRepository {

    @Override
    public User getDefaultUser() {
        User user = new User();
        user.setFirstName("JonFromREST");
        user.setLastName("DoeFromREST");
        return user;
    }
}
