% OptionalEx2   Summary of OptionalEx2
%
% OptionalEx2 Properties:
%   firstName
%   secondName
%   emailAddress

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Types.ice by slice2matlab version 3.7.9

classdef OptionalEx2 < Ice.UserException
    properties
        firstName char
        secondName char
        emailAddress
    end
    methods
        function obj = OptionalEx2(ice_exid, ice_exmsg, firstName, secondName, emailAddress)
            if nargin <= 2
                firstName = '';
                secondName = '';
                emailAddress = IceInternal.UnsetI.Instance;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:OptionalEx2';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.OptionalEx2';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.firstName = firstName;
            obj.secondName = secondName;
            obj.emailAddress = emailAddress;
        end
        function id = ice_id(~)
            id = '::Test::OptionalEx2';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.firstName = is.readString();
            obj.secondName = is.readString();
            obj.emailAddress = is.readStringOpt(1);
            is.endSlice();
        end
    end
end
