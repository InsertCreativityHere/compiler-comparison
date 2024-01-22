% Ex   Summary of Ex
%
% Ex Properties:
%   istr
%   ostr

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Clash.ice by slice2matlab version 3.8.0-alpha.0

classdef Ex < Ice.UserException
    properties
        istr int16
        ostr int32
    end
    methods
        function obj = Ex(ice_exid, ice_exmsg, istr, ostr)
            if nargin <= 2
                istr = 0;
                ostr = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Clash:Ex';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Clash.Ex';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.istr = istr;
            obj.ostr = ostr;
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
