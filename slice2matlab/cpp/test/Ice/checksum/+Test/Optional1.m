% Optional1   Summary of Optional1
%
% Optional1 Properties:
%   firstName
%   emailAddress
%   secondName

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.9

classdef Optional1 < Ice.Value
    properties
        firstName char
        emailAddress
        secondName
    end
    methods
        function obj = Optional1(firstName, emailAddress, secondName)
            if nargin == 0
                obj.firstName = '';
                obj.emailAddress = IceInternal.UnsetI.Instance;
                obj.secondName = IceInternal.UnsetI.Instance;
            elseif ne(firstName, IceInternal.NoInit.Instance)
                obj.firstName = firstName;
                obj.emailAddress = emailAddress;
                obj.secondName = secondName;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Optional1', -1, true);
            os.writeString(obj.firstName);
            os.writeStringOpt(1, obj.secondName);
            os.writeStringOpt(2, obj.emailAddress);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.firstName = is.readString();
            obj.secondName = is.readStringOpt(1);
            obj.emailAddress = is.readStringOpt(2);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Optional1';
        end
    end
end
