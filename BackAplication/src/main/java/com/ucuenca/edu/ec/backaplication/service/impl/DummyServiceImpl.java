package com.ucuenca.edu.ec.backaplication.service.impl;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import com.ucuenca.edu.ec.backaplication.domain.User;
import com.ucuenca.edu.ec.backaplication.contract.DummyRepository;
import com.ucuenca.edu.ec.backaplication.service.contract.DummyService;

@Singleton
public class DummyServiceImpl implements DummyService {

    private final DummyRepository dummyRepository;

    @Inject
    public DummyServiceImpl(DummyRepository dummyRepository) {
        this.dummyRepository = dummyRepository;
    }

    @Override
    public User getDefaultUser() {
        Object defaultUser = this.dummyRepository.getDefaultUser();
        return this.dummyRepository.getDefaultUser();
    }

}
