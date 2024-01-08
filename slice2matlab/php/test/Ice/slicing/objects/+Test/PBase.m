% PBase   Summary of PBase
%
% PBase Properties:
%   pi

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef PBase < Ice.Value
    properties
        pi int32
    end
    methods
        function obj = PBase(pi)
            if nargin == 0
                obj.pi = 0;
            elseif ne(pi, IceInternal.NoInit.Instance)
                obj.pi = pi;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::PBase', -1, true);
            os.writeInt(obj.pi);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.pi = is.readInt();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::PBase';
        end
    end
end
