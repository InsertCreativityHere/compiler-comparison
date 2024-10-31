% OptionOverrides   Summary of OptionOverrides
%
% OptionOverrides Properties:
%   protocol
%   mx
%   serialize
%   compress
%   ipv6

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Controller.ice by slice2matlab version 3.8.0-alpha.0

classdef OptionOverrides < Ice.Value
    properties
        protocol
        mx
        serialize
        compress
        ipv6
    end
    methods
        function obj = OptionOverrides(protocol, mx, serialize, compress, ipv6)
            if nargin == 0
                obj.protocol = IceInternal.UnsetI.Instance;
                obj.mx = IceInternal.UnsetI.Instance;
                obj.serialize = IceInternal.UnsetI.Instance;
                obj.compress = IceInternal.UnsetI.Instance;
                obj.ipv6 = IceInternal.UnsetI.Instance;
            elseif ne(protocol, IceInternal.NoInit.Instance)
                obj.protocol = protocol;
                obj.mx = mx;
                obj.serialize = serialize;
                obj.compress = compress;
                obj.ipv6 = ipv6;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Common::OptionOverrides', -1, true);
            os.writeStringSeqOpt(1, obj.protocol);
            os.writeBoolSeqOpt(2, obj.mx);
            os.writeBoolSeqOpt(3, obj.serialize);
            os.writeBoolSeqOpt(4, obj.compress);
            os.writeBoolSeqOpt(5, obj.ipv6);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.protocol = is.readStringSeqOpt(1);
            obj.mx = is.readBoolSeqOpt(2);
            obj.serialize = is.readBoolSeqOpt(3);
            obj.compress = is.readBoolSeqOpt(4);
            obj.ipv6 = is.readBoolSeqOpt(5);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Common::OptionOverrides';
        end
    end
end
