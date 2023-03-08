% Compact1   Summary of Compact1
%
% Compact1 Properties:
%   id

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.9

classdef Compact1 < Ice.Value
    properties
        id int32
    end
    methods
        function obj = Compact1(id)
            if nargin == 0
                obj.id = 0;
            elseif ne(id, IceInternal.NoInit.Instance)
                obj.id = id;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Compact1', 1, true);
            os.writeInt(obj.id);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.id = is.readInt();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Compact1';
        end
    end
end
