% DbEnvDescriptor   Summary of DbEnvDescriptor
%
% A Freeze database environment descriptor.
%
% DbEnvDescriptor Properties:
%   name - The name of the database environment.
%   description - The description of this database environment.
%   dbHome - The home of the database environment (i.e., the directory where the database files will be stored).
%   properties_ - The configuration properties of the database environment.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.7.10

classdef DbEnvDescriptor
    properties
        % name - The name of the database environment.
        name char
        % description - The description of this database environment.
        description char
        % dbHome - The home of the database environment (i.e., the directory where
        % the database files will be stored). If empty, the node will
        % provide a default database directory, otherwise the directory
        % must exist.
        dbHome char
        % properties_ - The configuration properties of the database environment.
        properties_
    end
    methods
        function obj = DbEnvDescriptor(name, description, dbHome, properties_)
            if nargin == 0
                obj.name = '';
                obj.description = '';
                obj.dbHome = '';
                obj.properties_ = [];
            elseif ne(name, IceInternal.NoInit.Instance)
                obj.name = name;
                obj.description = description;
                obj.dbHome = dbHome;
                obj.properties_ = properties_;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = IceGrid.DbEnvDescriptor(IceInternal.NoInit.Instance);
            r.name = is.readString();
            r.description = is.readString();
            r.dbHome = is.readString();
            r.properties_ = IceGrid.PropertyDescriptorSeq.read(is);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.DbEnvDescriptor.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.DbEnvDescriptor();
            end
            os.writeString(v.name);
            os.writeString(v.description);
            os.writeString(v.dbHome);
            IceGrid.PropertyDescriptorSeq.write(os, v.properties_);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.DbEnvDescriptor.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
