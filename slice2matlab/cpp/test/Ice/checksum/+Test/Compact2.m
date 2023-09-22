% Compact2   Summary of Compact2
%
% Compact2 Properties:
%   id

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.10

classdef Compact2 < Ice.Value
    properties
        id int32
    end
    methods
        function obj = Compact2(id)
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
            os.startSlice('::Test::Compact2', 3, true);
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
            id = '::Test::Compact2';
        end
    end
end
