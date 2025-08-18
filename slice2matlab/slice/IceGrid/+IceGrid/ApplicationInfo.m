classdef (Sealed) ApplicationInfo
    %APPLICATIONINFO Information about an IceGrid application.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.ApplicationInfo()
    %       obj = IceGrid.ApplicationInfo(uuid, createTime, createUser, updateTime, updateUser, revision, descriptor)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ApplicationInfo Properties:
    %     uuid - Unique application identifier.
    %     createTime - The creation time.
    %     createUser - The user who created the application.
    %     updateTime - The last update time.
    %     updateUser - The user who updated the application.
    %     revision - The application revision number.
    %     descriptor - The application descriptor.
    %
    %   Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % UUID Unique application identifier.
        %   character vector
        uuid (1, :) char
        
        % CREATETIME The creation time.
        %   int64 scalar
        createTime (1, 1) int64
        
        % CREATEUSER The user who created the application.
        %   character vector
        createUser (1, :) char
        
        % UPDATETIME The last update time.
        %   int64 scalar
        updateTime (1, 1) int64
        
        % UPDATEUSER The user who updated the application.
        %   character vector
        updateUser (1, :) char
        
        % REVISION The application revision number.
        %   int32 scalar
        revision (1, 1) int32
        
        % DESCRIPTOR The application descriptor.
        %   IceGrid.ApplicationDescriptor scalar
        descriptor {mustBeScalarOrEmpty} = IceGrid.ApplicationDescriptor.empty
    end
    methods
        function obj = ApplicationInfo(uuid, createTime, createUser, updateTime, updateUser, revision, descriptor)
            if nargin > 0
                assert(nargin == 7, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = IceGrid.ApplicationInfo();
            r.uuid = is.readString();
            r.createTime = is.readLong();
            r.createUser = is.readString();
            r.updateTime = is.readLong();
            r.updateUser = is.readString();
            r.revision = is.readInt();
            r.descriptor = IceGrid.ApplicationDescriptor.ice_read(is);
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
    end
end
