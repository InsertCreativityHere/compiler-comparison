% try_   Summary of try_
%
% try_ Properties:
%   while_
%   delete

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef try_ < Ice.Value
    properties
        while_ int32
        delete int32
    end
    methods
        function obj = try_(while_, delete)
            if nargin == 0
                obj.while_ = 1;
                obj.delete = 2;
            elseif ne(while_, IceInternal.NoInit.Instance)
                obj.while_ = while_;
                obj.delete = delete;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::classdef::break::try', -1, true);
            os.writeInt(obj.while_);
            os.writeInt(obj.delete);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.while_ = is.readInt();
            obj.delete = is.readInt();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::classdef::break::try';
        end
    end
end
