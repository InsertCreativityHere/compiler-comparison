% Config   Summary of Config
%
% Config Properties:
%   protocol
%   mx
%   serialize
%   compress
%   ipv6
%   cprops
%   sprops

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Controller.ice by slice2matlab version 3.8.0-alpha.0

classdef Config < Ice.Value
    properties
        protocol
        mx
        serialize
        compress
        ipv6
        cprops
        sprops
    end
    methods
        function obj = Config(protocol, mx, serialize, compress, ipv6, cprops, sprops)
            if nargin == 0
                obj.protocol = IceInternal.UnsetI.Instance;
                obj.mx = IceInternal.UnsetI.Instance;
                obj.serialize = IceInternal.UnsetI.Instance;
                obj.compress = IceInternal.UnsetI.Instance;
                obj.ipv6 = IceInternal.UnsetI.Instance;
                obj.cprops = IceInternal.UnsetI.Instance;
                obj.sprops = IceInternal.UnsetI.Instance;
            elseif ne(protocol, IceInternal.NoInit.Instance)
                obj.protocol = protocol;
                obj.mx = mx;
                obj.serialize = serialize;
                obj.compress = compress;
                obj.ipv6 = ipv6;
                obj.cprops = cprops;
                obj.sprops = sprops;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Common::Config', -1, true);
            os.writeStringOpt(1, obj.protocol);
            os.writeBoolOpt(2, obj.mx);
            os.writeBoolOpt(3, obj.serialize);
            os.writeBoolOpt(4, obj.compress);
            os.writeBoolOpt(5, obj.ipv6);
            os.writeStringSeqOpt(6, obj.cprops);
            os.writeStringSeqOpt(7, obj.sprops);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.protocol = is.readStringOpt(1);
            obj.mx = is.readBoolOpt(2);
            obj.serialize = is.readBoolOpt(3);
            obj.compress = is.readBoolOpt(4);
            obj.ipv6 = is.readBoolOpt(5);
            obj.cprops = is.readStringSeqOpt(6);
            obj.sprops = is.readStringSeqOpt(7);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Common::Config';
        end
    end
end
