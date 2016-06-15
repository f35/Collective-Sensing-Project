package com.ucuenca.edu.ec.backaplication.repositories.impl.mock;

import com.google.common.collect.Ordering;
import com.google.common.primitives.Ints;
import com.google.inject.Singleton;
import com.ucuenca.edu.ec.backaplication.contract.StateRepository;
import com.ucuenca.edu.ec.backaplication.domain.NullState;
import com.ucuenca.edu.ec.backaplication.domain.State;

import java.util.ArrayList;
import java.util.List;

@Singleton
public class StateMockRepositoryImpl extends GenericMockRepository<State> implements StateRepository {

    private List<State> users = new ArrayList<>();

    public StateMockRepositoryImpl() {
        this.users = this.createStates();
    }

    public State getById(int id) {
        for (State u : this.users) {
            if (u.getId() == id) {
                return u;
            }
        }
        return new NullState();
    }

    public List<State> getAll() {
        return this.users;
    }

    @Override
    public State create(State user) {
        user.setId(getCurrentMaxId() + 1);
        this.users.add(user);
        return user;
    }

    @Override
    public State update(State user) {
        State byId = this.getById(user.getId());
        byId.setsState(user.getState());
        return byId;
    }

    @Override
    public void remove(int id) {
        State byId = this.getById(id);
        this.users.remove(byId);
    }

    @Override
    public int getNumberOfStates() {
        return this.users.size();
    }

    private List<State> createStates() {
        int numberOfStates = 10;
        for (int i = 0; i < numberOfStates; i++) {
            State STATE = new State();
            STATE.setId(i + 1);
            STATE.setsState("Foo" + (i + 1));
            this.users.add(STATE);
        }
        return this.users;
    }

    private int getCurrentMaxId() {
        Ordering<State> ordering = new Ordering<State>() {
            @Override
            public int compare(State left, State right) {
                return Ints.compare(left.getId(), right.getId());
            }
        };
        return ordering.max(this.users).getId();
    }
}
