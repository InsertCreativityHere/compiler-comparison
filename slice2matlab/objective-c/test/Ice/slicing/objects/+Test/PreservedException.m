% PreservedException   Summary of PreservedException

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from SlicingObjectsTestClient.ice by slice2matlab version 3.7.10

classdef PreservedException < Ice.UserException
    methods
        function obj = PreservedException(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:PreservedException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.PreservedException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
        end
        function id = ice_id(~)
            id = '::Test::PreservedException';
        end
        function r = ice_getSlicedData(obj)
            r = obj.iceSlicedData_;
        end
    end
    methods(Hidden=true)
        function obj = iceRead(obj, is)
            is.startException();
            obj = obj.iceReadImpl(is);
            obj.iceSlicedData_ = is.endException(true);
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    properties(Access=protected)
        iceSlicedData_
    end
end
