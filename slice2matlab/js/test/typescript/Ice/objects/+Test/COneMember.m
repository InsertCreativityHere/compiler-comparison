% COneMember   Summary of COneMember
%
% COneMember Properties:
%   e

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef COneMember < Ice.Value
    properties
        e
    end
    methods
        function obj = COneMember(e)
            if nargin == 0
                obj.e = [];
            elseif ne(e, IceInternal.NoInit.Instance)
                obj.e = e;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::COneMember', -1, true);
            os.writeValue(obj.e);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_e, 'Test.Empty');
            is.endSlice();
        end
        function iceSetMember_e(obj, v)
            obj.e = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::COneMember';
        end
    end
end
