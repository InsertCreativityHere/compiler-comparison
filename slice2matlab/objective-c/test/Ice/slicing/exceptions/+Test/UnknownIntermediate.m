% UnknownIntermediate   Summary of UnknownIntermediate
%
% UnknownIntermediate Properties:
%   ui

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from SlicingExceptionsTestServer.ice by slice2matlab version 3.7.10

classdef UnknownIntermediate < Test.Base
    properties
        ui char
    end
    methods
        function obj = UnknownIntermediate(ice_exid, ice_exmsg, b, ui)
            if nargin <= 2
                b = '';
                ui = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:UnknownIntermediate';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.UnknownIntermediate';
            end
            obj = obj@Test.Base(ice_exid, ice_exmsg, b);
            obj.ui = ui;
        end
        function id = ice_id(~)
            id = '::Test::UnknownIntermediate';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.ui = is.readString();
            is.endSlice();
            obj = iceReadImpl@Test.Base(obj, is);
        end
    end
end
