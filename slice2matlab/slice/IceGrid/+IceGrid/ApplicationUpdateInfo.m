% ApplicationUpdateInfo   Summary of ApplicationUpdateInfo
%
% Information about updates to an IceGrid application.
%
% ApplicationUpdateInfo Properties:
%   updateTime - The update time.
%   updateUser - The user who updated the application.
%   revision - The application revision number.
%   descriptor - The update descriptor.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

classdef ApplicationUpdateInfo
    properties
        % updateTime - The update time.
        updateTime int64
        % updateUser - The user who updated the application.
        updateUser char
        % revision - The application revision number.
        revision int32
        % descriptor - The update descriptor.
        descriptor IceGrid.ApplicationUpdateDescriptor
    end
    methods
        function obj = ApplicationUpdateInfo(updateTime, updateUser, revision, descriptor)
            if nargin == 0
                obj.updateTime = 0;
                obj.updateUser = '';
                obj.revision = 0;
                obj.descriptor = IceGrid.ApplicationUpdateDescriptor();
            elseif ne(updateTime, IceInternal.NoInit.Instance)
                obj.updateTime = updateTime;
                obj.updateUser = updateUser;
                obj.revision = revision;
                obj.descriptor = descriptor;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.descriptor = obj.descriptor.ice_convert();
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = IceGrid.ApplicationUpdateInfo(IceInternal.NoInit.Instance);
            r.updateTime = is.readLong();
            r.updateUser = is.readString();
            r.revision = is.readInt();
            r.descriptor = IceGrid.ApplicationUpdateDescriptor.ice_read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.ApplicationUpdateInfo();
            end
            os.writeLong(v.updateTime);
            os.writeString(v.updateUser);
            os.writeInt(v.revision);
            IceGrid.ApplicationUpdateDescriptor.ice_write(os, v.descriptor);
        end
    end
end
