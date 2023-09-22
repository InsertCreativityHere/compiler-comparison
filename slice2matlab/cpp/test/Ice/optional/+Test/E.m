% E   Summary of E
%
% E Properties:
%   ae

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef E < Ice.Value
    properties
        ae
    end
    methods
        function obj = E(ae)
            if nargin == 0
                obj.ae = [];
            elseif ne(ae, IceInternal.NoInit.Instance)
                obj.ae = ae;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::E', -1, true);
            os.writeValue(obj.ae);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_ae, 'Test.A');
            is.endSlice();
        end
        function iceSetMember_ae(obj, v)
            obj.ae = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::E';
        end
    end
end
