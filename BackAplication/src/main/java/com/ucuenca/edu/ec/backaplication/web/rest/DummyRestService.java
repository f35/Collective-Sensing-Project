package com.ucuenca.edu.ec.backaplication.web.rest;

import com.google.inject.Inject;
import com.ucuenca.edu.ec.backaplication.domain.User;
import com.ucuenca.edu.ec.backaplication.service.contract.DummyService;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/dummy")
public class DummyRestService {
    private final DummyService dummyService;

    @Inject
    public DummyRestService(DummyService DummyService) {
        this.dummyService = DummyService;
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public User getDefaultDummyInJSON() {
        return dummyService.getDefaultUser();
    }
}
