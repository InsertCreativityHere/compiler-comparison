% ObjectAdapter   Summary of ObjectAdapter
%
% The object adapter provides an up-call interface from the Ice
% run time to the implementation of Ice objects.
%
% The object adapter is responsible for receiving requests
% from endpoints, and for mapping between servants, identities, and
% proxies.
%
% See also Ice.Communicator, Ice.ServantLocator

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ObjectAdapter.ice by slice2matlab version 3.7.9

classdef (Abstract) ObjectAdapter < handle
    methods(Abstract)
        result = getName(obj)
        result = getCommunicator(obj)
        activate(obj)
        hold(obj)
        waitForHold(obj)
        deactivate(obj)
        waitForDeactivate(obj)
        result = isDeactivated(obj)
        destroy(obj)
        result = add(obj, servant, id)
        result = addFacet(obj, servant, id, facet)
        result = addWithUUID(obj, servant)
        result = addFacetWithUUID(obj, servant, facet)
        addDefaultServant(obj, servant, category)
        result = remove(obj, id)
        result = removeFacet(obj, id, facet)
        result = removeAllFacets(obj, id)
        result = removeDefaultServant(obj, category)
        result = find(obj, id)
        result = findFacet(obj, id, facet)
        result = findAllFacets(obj, id)
        result = findByProxy(obj, proxy)
        addServantLocator(obj, locator, category)
        result = removeServantLocator(obj, category)
        result = findServantLocator(obj, category)
        result = findDefaultServant(obj, category)
        result = createProxy(obj, id)
        result = createDirectProxy(obj, id)
        result = createIndirectProxy(obj, id)
        setLocator(obj, loc)
        result = getLocator(obj)
        result = getEndpoints(obj)
        refreshPublishedEndpoints(obj)
        result = getPublishedEndpoints(obj)
        setPublishedEndpoints(obj, newEndpoints)
    end
end
