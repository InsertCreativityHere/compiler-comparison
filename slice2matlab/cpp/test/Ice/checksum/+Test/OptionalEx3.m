% OptionalEx3   Summary of OptionalEx3
%
% OptionalEx3 Properties:
%   firstName
%   secondName
%   emailAddress
%   phoneNumber

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.9

classdef OptionalEx3 < Ice.UserException
    properties
        firstName char
        secondName
        emailAddress
        phoneNumber
    end
    methods
        function obj = OptionalEx3(ice_exid, ice_exmsg, firstName, secondName, emailAddress, phoneNumber)
            if nargin <= 2
                firstName = '';
                secondName = IceInternal.UnsetI.Instance;
                emailAddress = IceInternal.UnsetI.Instance;
                phoneNumber = IceInternal.UnsetI.Instance;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:OptionalEx3';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.OptionalEx3';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.firstName = firstName;
            obj.secondName = secondName;
            obj.emailAddress = emailAddress;
            obj.phoneNumber = phoneNumber;
        end
        function id = ice_id(~)
            id = '::Test::OptionalEx3';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.firstName = is.readString();
            obj.secondName = is.readStringOpt(1);
            obj.emailAddress = is.readStringOpt(2);
            obj.phoneNumber = is.readStringOpt(3);
            is.endSlice();
        end
    end
end
