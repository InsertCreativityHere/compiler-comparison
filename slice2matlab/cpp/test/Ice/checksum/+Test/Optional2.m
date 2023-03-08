% Optional2   Summary of Optional2
%
% Optional2 Properties:
%   firstName
%   secondName
%   emailAddress

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.9

classdef Optional2 < Ice.Value
    properties
        firstName char
        secondName
        emailAddress char
    end
    methods
        function obj = Optional2(firstName, secondName, emailAddress)
            if nargin == 0
                obj.firstName = '';
                obj.secondName = IceInternal.UnsetI.Instance;
                obj.emailAddress = '';
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
            os.startSlice('::Test::Optional2', -1, true);
            os.writeString(obj.firstName);
            os.writeString(obj.emailAddress);
            os.writeStringOpt(1, obj.secondName);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.firstName = is.readString();
            obj.emailAddress = is.readString();
            obj.secondName = is.readStringOpt(1);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Optional2';
        end
    end
end
