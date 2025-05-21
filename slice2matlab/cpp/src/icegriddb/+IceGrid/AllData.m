
% Copyright (c) ZeroC, Inc.
% Generated from DBTypes.ice by slice2matlab version 3.8.0-alpha.0

classdef AllData
    properties
        applications
        adapters
        objects
        internalObjects
        serials containers.Map
    end
    methods
        function obj = AllData(applications, adapters, objects, internalObjects, serials)
            if nargin == 0
                obj.applications = [];
                obj.adapters = [];
                obj.objects = [];
                obj.internalObjects = [];
                obj.serials = containers.Map('KeyType', 'char', 'ValueType', 'int64');
            elseif ne(applications, IceInternal.NoInit.Instance)
                obj.applications = applications;
                obj.adapters = adapters;
                obj.objects = objects;
                obj.internalObjects = internalObjects;
                obj.serials = serials;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.applications = IceGrid.ApplicationInfoSeq.convert(obj.applications);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = IceGrid.AllData(IceInternal.NoInit.Instance);
            r.applications = IceGrid.ApplicationInfoSeq.read(is);
            r.adapters = IceGrid.AdapterInfoSeq.read(is);
            r.objects = IceGrid.ObjectInfoSeq.read(is);
            r.internalObjects = IceGrid.ObjectInfoSeq.read(is);
            r.serials = IceGrid.StringLongDict.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.AllData();
            end
            IceGrid.ApplicationInfoSeq.write(os, v.applications);
            IceGrid.AdapterInfoSeq.write(os, v.adapters);
            IceGrid.ObjectInfoSeq.write(os, v.objects);
            IceGrid.ObjectInfoSeq.write(os, v.internalObjects);
            IceGrid.StringLongDict.write(os, v.serials);
        end
    end
end
