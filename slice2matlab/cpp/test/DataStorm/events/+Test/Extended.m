% Extended   Summary of Extended
%
% Extended Properties:
%   e

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef Extended < Test.Base
    properties
        e int32
    end
    methods
        function obj = Extended(b, e)
            if nargin == 0
                b = '';
                e = 0;
                v = { b };
            elseif eq(b, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance };
            else
                v = { b };
            end;
            obj = obj@Test.Base(v{:});
            if ne(b, IceInternal.NoInit.Instance)
                obj.e = e;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Extended', -1, false);
            os.writeInt(obj.e);
            os.endSlice();
            iceWriteImpl@Test.Base(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.e = is.readInt();
            is.endSlice();
            iceReadImpl@Test.Base(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Extended';
        end
    end
end
