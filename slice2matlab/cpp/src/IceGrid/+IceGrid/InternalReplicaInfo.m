classdef InternalReplicaInfo < Ice.Value
    %INTERNALREPLICAINFO Information about an IceGrid registry replica.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.InternalReplicaInfo()
    %       obj = IceGrid.InternalReplicaInfo(name, hostname)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   InternalReplicaInfo Properties:
    %     name - The name of the registry.
    %     hostname - The network name of the host running this registry (as defined in uname()).
    %
    %   Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NAME The name of the registry.
        %   character vector
        name (1, :) char
        
        % HOSTNAME The network name of the host running this registry (as defined in uname()).
        %   character vector
        hostname (1, :) char
    end
    methods
        function obj = InternalReplicaInfo(name, hostname)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.name = name;
                obj.hostname = hostname;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceGrid::InternalReplicaInfo', -1, true);
            os.writeString(obj.name);
            os.writeString(obj.hostname);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.name = is.readString();
            obj.hostname = is.readString();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::InternalReplicaInfo';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::InternalReplicaInfo'
    end
end
