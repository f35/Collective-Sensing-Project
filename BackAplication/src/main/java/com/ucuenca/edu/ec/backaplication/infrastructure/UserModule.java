package com.ucuenca.edu.ec.backaplication.infrastructure;

import com.google.inject.AbstractModule;
import com.ucuenca.edu.ec.backaplication.contract.DummyRepository;
import com.ucuenca.edu.ec.backaplication.contract.UserRepository;
import com.ucuenca.edu.ec.backaplication.repositories.impl.mock.DummyMockRepositoryImpl;
import com.ucuenca.edu.ec.backaplication.repositories.impl.mock.UserMockRepositoryImpl;
import com.ucuenca.edu.ec.backaplication.service.contract.DummyService;
import com.ucuenca.edu.ec.backaplication.service.contract.UserService;
import com.ucuenca.edu.ec.backaplication.service.impl.DummyServiceImpl;
import com.ucuenca.edu.ec.backaplication.service.impl.UserServiceImpl;

public class UserModule extends AbstractModule {
    @Override
    protected void configure() {
        bind(DummyRepository.class).to(DummyMockRepositoryImpl.class);
        bind(DummyService.class).to(DummyServiceImpl.class);

        bind(UserRepository.class).to(UserMockRepositoryImpl.class);
        bind(UserService.class).to(UserServiceImpl.class);
    }
}
