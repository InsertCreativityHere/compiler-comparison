% F1   Summary of F1
%
% F1 Properties:
%   name

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Forward.ice by slice2matlab version 3.8.0-alpha.0

classdef F1 < Ice.Value
    properties
        name char
    end
    methods
        function obj = F1(name)
            if nargin == 0
                obj.name = '';
            elseif ne(name, IceInternal.NoInit.Instance)
                obj.name = name;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::F1', -1, true);
            os.writeString(obj.name);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.name = is.readString();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::F1';
        end
    end
end
