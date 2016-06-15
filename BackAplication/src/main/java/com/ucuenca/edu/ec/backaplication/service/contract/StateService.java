package com.ucuenca.edu.ec.backaplication.service.contract;

import com.ucuenca.edu.ec.backaplication.domain.State;

import java.util.List;

public interface StateService {

    List<State> getAllStates();

    State getById(int id);

    State createNewState(State state);

    State update(State state);

    void remove(int id);

    int getNumberOfStates();
}
