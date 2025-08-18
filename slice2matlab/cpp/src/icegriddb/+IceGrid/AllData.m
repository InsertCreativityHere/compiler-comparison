classdef (Sealed) AllData
    %ALLDATA
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.AllData()
    %       obj = IceGrid.AllData(applications, adapters, objects, internalObjects, serials)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   AllData Properties:
    %     applications
    %     adapters
    %     objects
    %     internalObjects
    %     serials
    %
    %   Generated from DBTypes.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % APPLICATIONS
        %   IceGrid.ApplicationInfo vector
        applications (1, :) = {}
        
        % ADAPTERS
        %   IceGrid.AdapterInfo vector
        adapters (1, :) IceGrid.AdapterInfo
        
        % OBJECTS
        %   IceGrid.ObjectInfo vector
        objects (1, :) IceGrid.ObjectInfo
        
        % INTERNALOBJECTS
        %   IceGrid.ObjectInfo vector
        internalObjects (1, :) IceGrid.ObjectInfo
        
        % SERIALS
        %   string, int64) scalar
        serials (1, 1) dictionary = configureDictionary('char', 'int64')
    end
    methods
        function obj = AllData(applications, adapters, objects, internalObjects, serials)
            if nargin > 0
                assert(nargin == 5, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = IceGrid.AllData();
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
