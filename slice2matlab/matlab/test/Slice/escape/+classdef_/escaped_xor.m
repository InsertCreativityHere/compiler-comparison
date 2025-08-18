classdef escaped_xor < classdef_.logical_
    %ESCAPED_XOR
    %
    %   Creation
    %     Syntax
    %       obj = classdef_.escaped_xor()
    %       obj = classdef_.escaped_xor(return_)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   escaped_xor Properties:
    %     return_
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % RETURN_
        %   int32 scalar
        return_ (1, 1) int32 = 1
    end
    methods
        function obj = escaped_xor(else_, for_, int64, return_)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 4, 'Invalid number of arguments');
                superArgs = {else_, for_, int64};
            end
            obj = obj@classdef_.logical_(superArgs{:});
            if nargin > 0
                obj.return_ = return_;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::classdef::xor', -1, false);
            os.writeInt(obj.return_);
            os.endSlice();
            iceWriteImpl@classdef_.logical_(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.return_ = is.readInt();
            is.endSlice();
            iceReadImpl@classdef_.logical_(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::classdef::xor';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::classdef::xor'
    end
end
