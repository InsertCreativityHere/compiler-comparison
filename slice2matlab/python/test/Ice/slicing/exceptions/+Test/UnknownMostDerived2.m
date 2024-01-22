% UnknownMostDerived2   Summary of UnknownMostDerived2
%
% UnknownMostDerived2 Properties:
%   umd2

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef UnknownMostDerived2 < Test.UnknownIntermediate
    properties
        umd2 char
    end
    methods
        function obj = UnknownMostDerived2(ice_exid, ice_exmsg, b, ui, umd2)
            if nargin <= 2
                b = '';
                ui = '';
                umd2 = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:UnknownMostDerived2';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.UnknownMostDerived2';
            end
            obj = obj@Test.UnknownIntermediate(ice_exid, ice_exmsg, b, ui);
            obj.umd2 = umd2;
        end
        function id = ice_id(~)
            id = '::Test::UnknownMostDerived2';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.umd2 = is.readString();
            is.endSlice();
            obj = iceReadImpl@Test.UnknownIntermediate(obj, is);
        end
    end
end
