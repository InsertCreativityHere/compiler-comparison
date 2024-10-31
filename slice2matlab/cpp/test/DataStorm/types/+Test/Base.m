% Base   Summary of Base
%
% Base Properties:
%   b

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef Base < Ice.Value
    properties
        b char
    end
    methods
        function obj = Base(b)
            if nargin == 0
                obj.b = '';
            elseif ne(b, IceInternal.NoInit.Instance)
                obj.b = b;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Base', -1, true);
            os.writeString(obj.b);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.b = is.readString();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Base';
        end
    end
end
