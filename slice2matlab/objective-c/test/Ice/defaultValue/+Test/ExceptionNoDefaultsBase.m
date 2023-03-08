% ExceptionNoDefaultsBase   Summary of ExceptionNoDefaultsBase
%
% ExceptionNoDefaultsBase Properties:
%   str
%   c1
%   bs

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from DefaultValueTest.ice by slice2matlab version 3.7.9

classdef ExceptionNoDefaultsBase < Ice.UserException
    properties
        str char
        c1 Test.Color
        bs
    end
    methods
        function obj = ExceptionNoDefaultsBase(ice_exid, ice_exmsg, str, c1, bs)
            if nargin <= 2
                str = '';
                c1 = Test.Color.red;
                bs = [];
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:ExceptionNoDefaultsBase';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.ExceptionNoDefaultsBase';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.str = str;
            obj.c1 = c1;
            obj.bs = bs;
        end
        function id = ice_id(~)
            id = '::Test::ExceptionNoDefaultsBase';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.str = is.readString();
            obj.c1 = Test.Color.ice_read(is);
            obj.bs = is.readByteSeq();
            is.endSlice();
        end
    end
end
