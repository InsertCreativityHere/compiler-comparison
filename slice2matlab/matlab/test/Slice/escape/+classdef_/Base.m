classdef Base < Ice.Value
    %BASE
    %
    %   Creation
    %     Syntax
    %       obj = classdef_.Base()
    %       obj = classdef_.Base(while_)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Base Properties:
    %     while_
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % WHILE_
        %   int32 scalar
        while_ (1, 1) int32 = 1
    end
    methods
        function obj = Base(while_)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.while_ = while_;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::classdef::Base', -1, true);
            os.writeInt(obj.while_);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.while_ = is.readInt();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::classdef::Base';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::classdef::Base'
    end
end
