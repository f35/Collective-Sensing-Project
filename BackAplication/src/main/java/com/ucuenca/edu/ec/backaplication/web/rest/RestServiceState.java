/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ucuenca.edu.ec.backaplication.web.rest;

/**
 *
 * @author user
 */



import com.google.inject.Inject;


import com.ucuenca.edu.ec.backaplication.domain.State;
import com.ucuenca.edu.ec.backaplication.service.contract.StateService;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Path("/states")
public class RestServiceState {

    private final StateService stateService;

    @Inject
    public RestServiceState(StateService userService) {
        this.stateService = userService;
    }

    @GET
    @Path("numberOfStates")
    @Produces(MediaType.APPLICATION_JSON)
    public int getNumberOfStates() {
        return stateService.getNumberOfStates();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<State> getAllStatesInJSON() {
        return stateService.getAllStates();
    }

    @GET
    @Path("{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public State getStateById(@PathParam("id") int id) {
        return stateService.getById(id);
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public State create(State user) {
        return stateService.createNewState(user);
    }

    @PUT
    @Path("{id}")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public State update(State state) {
        return stateService.update(state    );
    }

    @DELETE
    @Path("{id}")   
    @Produces(MediaType.APPLICATION_JSON)
    public void remove(@PathParam("id") int id) {
        stateService.remove(id);
    }
}
