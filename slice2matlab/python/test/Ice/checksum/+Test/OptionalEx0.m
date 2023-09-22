% OptionalEx0   Summary of OptionalEx0
%
% OptionalEx0 Properties:
%   firstName
%   secondName
%   emailAddress

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from CTypes.ice by slice2matlab version 3.7.10

classdef OptionalEx0 < Ice.UserException
    properties
        firstName char
        secondName
        emailAddress
    end
    methods
        function obj = OptionalEx0(ice_exid, ice_exmsg, firstName, secondName, emailAddress)
            if nargin <= 2
                firstName = '';
                secondName = IceInternal.UnsetI.Instance;
                emailAddress = IceInternal.UnsetI.Instance;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:OptionalEx0';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.OptionalEx0';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.firstName = firstName;
            obj.secondName = secondName;
            obj.emailAddress = emailAddress;
        end
        function id = ice_id(~)
            id = '::Test::OptionalEx0';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.firstName = is.readString();
            obj.secondName = is.readStringOpt(1);
            obj.emailAddress = is.readStringOpt(2);
            is.endSlice();
        end
    end
end
