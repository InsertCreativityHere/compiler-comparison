% Optional4   Summary of Optional4
%
% Optional4 Properties:
%   firstName
%   secondName
%   emailAddress

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from CTypes.ice by slice2matlab version 3.7.9

classdef Optional4 < Ice.Value
    properties
        firstName char
        secondName
        emailAddress
    end
    methods
        function obj = Optional4(firstName, secondName, emailAddress)
            if nargin == 0
                obj.firstName = '';
                obj.secondName = IceInternal.UnsetI.Instance;
                obj.emailAddress = IceInternal.UnsetI.Instance;
            elseif ne(firstName, IceInternal.NoInit.Instance)
                obj.firstName = firstName;
                obj.secondName = secondName;
                obj.emailAddress = emailAddress;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Optional4', -1, true);
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
            id = '::Test::Optional4';
        end
    end
end
