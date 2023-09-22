% Ex   Summary of Ex
%
% Ex Properties:
%   istr
%   ostr
%   cause_

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Clash.ice by slice2matlab version 3.7.10

classdef Ex < Ice.UserException
    properties
        istr int16
        ostr int32
        cause_ char
    end
    methods
        function obj = Ex(ice_exid, ice_exmsg, istr, ostr, cause_)
            if nargin <= 2
                istr = 0;
                ostr = 0;
                cause_ = '';
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
            obj.cause_ = cause_;
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
            obj.cause_ = is.readString();
            is.endSlice();
        end
    end
end
