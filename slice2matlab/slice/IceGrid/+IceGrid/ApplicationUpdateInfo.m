classdef (Sealed) ApplicationUpdateInfo
    %APPLICATIONUPDATEINFO Information about updates to an IceGrid application.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.ApplicationUpdateInfo()
    %       obj = IceGrid.ApplicationUpdateInfo(updateTime, updateUser, revision, descriptor)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ApplicationUpdateInfo Properties:
    %     updateTime - The update time.
    %     updateUser - The user who updated the application.
    %     revision - The application revision number.
    %     descriptor - The update descriptor.
    %
    %   Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % UPDATETIME The update time.
        %   int64 scalar
        updateTime (1, 1) int64
        
        % UPDATEUSER The user who updated the application.
        %   character vector
        updateUser (1, :) char
        
        % REVISION The application revision number.
        %   int32 scalar
        revision (1, 1) int32
        
        % DESCRIPTOR The update descriptor.
        %   IceGrid.ApplicationUpdateDescriptor scalar
        descriptor {mustBeScalarOrEmpty} = IceGrid.ApplicationUpdateDescriptor.empty
    end
    methods
        function obj = ApplicationUpdateInfo(updateTime, updateUser, revision, descriptor)
            if nargin > 0
                assert(nargin == 4, 'Invalid number of arguments');
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
            r = IceGrid.ApplicationUpdateInfo();
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
