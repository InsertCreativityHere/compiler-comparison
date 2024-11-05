
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Clash.ice by slice2matlab version 3.8.0-alpha.0

classdef Ex < Ice.UserException
    properties
        istr int16
        ostr int32
    end
    methods
        function obj = Ex(errID, msg)
            if nargin == 0
                errID = 'Clash:Ex';
                msg = 'Clash.Ex';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Clash::Ex';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.istr = is.readShort();
            obj.ostr = is.readInt();
            is.endSlice();
        end
    end
end
