package com.ucuenca.edu.ec.backaplication.service.impl;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import com.ucuenca.edu.ec.backaplication.domain.State;
import com.ucuenca.edu.ec.backaplication.contract.StateRepository;
import com.ucuenca.edu.ec.backaplication.service.contract.StateService;

import java.util.List;

@Singleton
public class StateServiceImpl implements StateService {

    private final StateRepository stateRepository;

    @Inject
    public StateServiceImpl(StateRepository stateRepository) {
        this.stateRepository = stateRepository;
    }

    @Override
    public List getAllStates() {
        return this.stateRepository.getAll();
    }

    @Override
    public State getById(int id) {
        return this.stateRepository.getById(id);
    }

    @Override
    public State createNewState(State user) {
        State u = this.stateRepository.create(user);
        return u;
    }

    @Override
    public State update(State user) {
        return this.stateRepository.update(user);
    }

    @Override
    public void remove(int id) {
        this.stateRepository.remove(id);
    }

    @Override
    public int getNumberOfStates() {
        return this.stateRepository.getNumberOfStates();
    }
}
