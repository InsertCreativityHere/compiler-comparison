% ApplicationInfo   Summary of ApplicationInfo
%
% Information about an IceGrid application.
%
% ApplicationInfo Properties:
%   uuid - Unique application identifier.
%   createTime - The creation time.
%   createUser - The user who created the application.
%   updateTime - The update time.
%   updateUser - The user who updated the application.
%   revision - The application revision number.
%   descriptor - The application descriptor

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Admin.ice by slice2matlab version 3.7.10

classdef ApplicationInfo
    properties
        % uuid - Unique application identifier.
        uuid char
        % createTime - The creation time.
        createTime int64
        % createUser - The user who created the application.
        createUser char
        % updateTime - The update time.
        updateTime int64
        % updateUser - The user who updated the application.
        updateUser char
        % revision - The application revision number.
        revision int32
        % descriptor - The application descriptor
        descriptor IceGrid.ApplicationDescriptor
    end
    methods
        function obj = ApplicationInfo(uuid, createTime, createUser, updateTime, updateUser, revision, descriptor)
            if nargin == 0
                obj.uuid = '';
                obj.createTime = 0;
                obj.createUser = '';
                obj.updateTime = 0;
                obj.updateUser = '';
                obj.revision = 0;
                obj.descriptor = IceGrid.ApplicationDescriptor();
            elseif ne(uuid, IceInternal.NoInit.Instance)
                obj.uuid = uuid;
                obj.createTime = createTime;
                obj.createUser = createUser;
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
            r = IceGrid.ApplicationInfo(IceInternal.NoInit.Instance);
            r.uuid = is.readString();
            r.createTime = is.readLong();
            r.createUser = is.readString();
            r.updateTime = is.readLong();
            r.updateUser = is.readString();
            r.revision = is.readInt();
            r.descriptor = IceGrid.ApplicationDescriptor.ice_read(is);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.ApplicationInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.ApplicationInfo();
            end
            os.writeString(v.uuid);
            os.writeLong(v.createTime);
            os.writeString(v.createUser);
            os.writeLong(v.updateTime);
            os.writeString(v.updateUser);
            os.writeInt(v.revision);
            IceGrid.ApplicationDescriptor.ice_write(os, v.descriptor);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.ApplicationInfo.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
