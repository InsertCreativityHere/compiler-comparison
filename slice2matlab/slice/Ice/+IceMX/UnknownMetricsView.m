% UnknownMetricsView   Summary of UnknownMetricsView
%
% Raised if a metrics view cannot be found.

% Copyright (c) ZeroC, Inc.
% Generated from Metrics.ice by slice2matlab version 3.8.0-alpha.0

classdef UnknownMetricsView < Ice.UserException
    methods
        function obj = UnknownMetricsView(errID, msg)
            if nargin == 0
                errID = 'IceMX:UnknownMetricsView';
                msg = 'IceMX.UnknownMetricsView';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceMX::UnknownMetricsView';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
