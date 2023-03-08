% B   Summary of B
%
% B Properties:
%   sb
%   pb

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerPrivate.ice by slice2matlab version 3.7.9

classdef B < Ice.Value
    properties
        sb char
        pb
    end
    methods
        function obj = B(sb, pb)
            if nargin == 0
                obj.sb = '';
                obj.pb = [];
            elseif ne(sb, IceInternal.NoInit.Instance)
                obj.sb = sb;
                obj.pb = pb;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::B', -1, true);
            os.writeString(obj.sb);
            os.writeValue(obj.pb);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.sb = is.readString();
            is.readValue(@obj.iceSetMember_pb, 'Test.B');
            is.endSlice();
        end
        function iceSetMember_pb(obj, v)
            obj.pb = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::B';
        end
    end
end
