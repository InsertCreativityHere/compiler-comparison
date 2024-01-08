% SUnknown   Summary of SUnknown
%
% SUnknown Properties:
%   su
%   cycle

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerPrivate.ice by slice2matlab version 3.7.10

classdef SUnknown < Ice.Value
    properties
        su char
        cycle
    end
    methods
        function obj = SUnknown(su, cycle)
            if nargin == 0
                obj.su = '';
                obj.cycle = [];
            elseif ne(su, IceInternal.NoInit.Instance)
                obj.su = su;
                obj.cycle = cycle;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::SUnknown', -1, true);
            os.writeString(obj.su);
            os.writeValue(obj.cycle);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.su = is.readString();
            is.readValue(@obj.iceSetMember_cycle, 'Test.SUnknown');
            is.endSlice();
        end
        function iceSetMember_cycle(obj, v)
            obj.cycle = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::SUnknown';
        end
    end
end
