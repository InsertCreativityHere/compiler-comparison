% C   Summary of C
%
% C Properties:
%   cMem

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef C < Test.B
    properties
        cMem int32
    end
    methods
        function obj = C(ice_exid, ice_exmsg, aMem, bMem, cMem)
            if nargin <= 2
                aMem = 0;
                bMem = 0;
                cMem = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:C';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.C';
            end
            obj = obj@Test.B(ice_exid, ice_exmsg, aMem, bMem);
            obj.cMem = cMem;
        end
        function id = ice_id(~)
            id = '::Test::C';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.cMem = is.readInt();
            is.endSlice();
            obj = iceReadImpl@Test.B(obj, is);
        end
    end
end
