% SBase   Summary of SBase
%
% SBase Properties:
%   sb

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef SBase < Ice.Value
    properties
        sb char
    end
    methods
        function obj = SBase(sb)
            if nargin == 0
                obj.sb = '';
            elseif ne(sb, IceInternal.NoInit.Instance)
                obj.sb = sb;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::SBase', -1, true);
            os.writeString(obj.sb);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.sb = is.readString();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::SBase';
        end
    end
end
