% Bar   Summary of Bar
%
% Bar Properties:
%   SLmem
%   SLSmem

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef Bar < Ice.UserException
    properties
        SLmem
        SLSmem
    end
    methods
        function obj = Bar(ice_exid, ice_exmsg, SLmem, SLSmem)
            if nargin <= 2
                SLmem = [];
                SLSmem = [];
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:Bar';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.Bar';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.SLmem = SLmem;
            obj.SLSmem = SLSmem;
        end
        function id = ice_id(~)
            id = '::Test::Bar';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.SLmem = is.readByteSeq();
            obj.SLSmem = Test.SLS.read(is);
            is.endSlice();
        end
    end
end
