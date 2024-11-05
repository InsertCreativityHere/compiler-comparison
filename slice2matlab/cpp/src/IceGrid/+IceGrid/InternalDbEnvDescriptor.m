
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

classdef InternalDbEnvDescriptor < Ice.Value
    properties
        % name - The name of the database environment.
        name char
        % properties_ - The database properties.
        properties_
    end
    methods
        function obj = InternalDbEnvDescriptor(name, properties_)
            if nargin == 0
                obj.name = '';
                obj.properties_ = [];
            elseif ne(name, IceInternal.NoInit.Instance)
                obj.name = name;
                obj.properties_ = properties_;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceGrid::InternalDbEnvDescriptor', -1, true);
            os.writeString(obj.name);
            IceGrid.PropertyDescriptorSeq.write(os, obj.properties_);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.name = is.readString();
            obj.properties_ = IceGrid.PropertyDescriptorSeq.read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::InternalDbEnvDescriptor';
        end
    end
end
