% EmptyClass2   Summary of EmptyClass2
%
% EmptyClass2 Properties:
%   d

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.9

classdef EmptyClass2 < Ice.Value
    properties
        d double
    end
    methods
        function obj = EmptyClass2(d)
            if nargin == 0
                obj.d = 0;
            elseif ne(d, IceInternal.NoInit.Instance)
                obj.d = d;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::EmptyClass2', -1, true);
            os.writeDouble(obj.d);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.d = is.readDouble();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::EmptyClass2';
        end
    end
end
