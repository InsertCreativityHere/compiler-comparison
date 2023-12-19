% Properties   Summary of Properties
%
% A property set used to configure Ice and Ice applications. Properties are key/value pairs, with both keys and
% values being strings. By convention, property keys should have the form
% application-name[.category[.sub-category]].name.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Properties.ice by slice2matlab version 3.7.10

classdef (Abstract) Properties < handle
    methods(Abstract)
        result = getProperty(obj, key)
        result = getPropertyWithDefault(obj, key, value)
        result = getPropertyAsInt(obj, key)
        result = getPropertyAsIntWithDefault(obj, key, value)
        result = getPropertyAsList(obj, key)
        result = getPropertyAsListWithDefault(obj, key, value)
        result = getPropertiesForPrefix(obj, prefix)
        setProperty(obj, key, value)
        result = getCommandLineOptions(obj)
        result = parseCommandLineOptions(obj, prefix, options)
        result = parseIceCommandLineOptions(obj, options)
        load(obj, file)
        result = clone(obj)
    end
end
