package com.ucuenca.edu.ec.backaplication.infrastructure;

import com.google.inject.AbstractModule;
import com.ucuenca.edu.ec.backaplication.contract.DummyRepository;
import com.ucuenca.edu.ec.backaplication.contract.StateRepository;
import com.ucuenca.edu.ec.backaplication.repositories.impl.mock.DummyMockRepositoryImpl;
import com.ucuenca.edu.ec.backaplication.repositories.impl.mock.StateMockRepositoryImpl;
import com.ucuenca.edu.ec.backaplication.service.contract.DummyService;
import com.ucuenca.edu.ec.backaplication.service.contract.StateService;
import com.ucuenca.edu.ec.backaplication.service.impl.DummyServiceImpl;
import com.ucuenca.edu.ec.backaplication.service.impl.StateServiceImpl;

public class StateModule extends AbstractModule {
    @Override
    protected void configure() {
        bind(DummyRepository.class).to(DummyMockRepositoryImpl.class);
        bind(DummyService.class).to(DummyServiceImpl.class);

        bind(StateRepository.class).to(StateMockRepositoryImpl.class);
        bind(StateService.class).to(StateServiceImpl.class);
    }
}
