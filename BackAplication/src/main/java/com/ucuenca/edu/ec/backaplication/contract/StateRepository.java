package com.ucuenca.edu.ec.backaplication.contract;

import com.ucuenca.edu.ec.backaplication.domain.State;

public interface StateRepository extends Repository<State> {
    State create(State user);

    State update(State user);

    void remove(int id);

    int getNumberOfStates();
}
