% Forward   Summary of Forward
%
% Forward Properties:
%   h

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from SlicingObjectsTestClient.ice by slice2matlab version 3.7.9

classdef Forward < Ice.Value
    properties
        h
    end
    methods
        function obj = Forward(h)
            if nargin == 0
                obj.h = [];
            elseif ne(h, IceInternal.NoInit.Instance)
                obj.h = h;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Forward', -1, true);
            os.writeValue(obj.h);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_h, 'Test.Hidden');
            is.endSlice();
        end
        function iceSetMember_h(obj, v)
            obj.h = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Forward';
        end
    end
end
