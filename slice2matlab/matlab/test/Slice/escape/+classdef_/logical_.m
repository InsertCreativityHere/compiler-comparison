classdef logical_ < Ice.Value
    %LOGICAL_
    %
    %   Creation
    %     Syntax
    %       obj = classdef_.logical_()
    %       obj = classdef_.logical_(else_, for_, int64)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   logical_ Properties:
    %     else_
    %     for_
    %     int64
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ELSE_
        %   classdef_.persistent_ scalar
        else_ (1, 1) classdef_.persistent_ = classdef_.persistent_.break_
        
        % FOR_
        %   classdef_.global_ scalar
        for_ classdef_.global_ {mustBeScalarOrEmpty} = classdef_.global_.empty
        
        % INT64
        %   logical scalar
        int64 (1, 1) logical = true
    end
    methods
        function obj = logical_(else_, for_, int64)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
                obj.else_ = else_;
                obj.for_ = for_;
                obj.int64 = int64;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::classdef::logical', -1, true);
            classdef_.persistent_.ice_write(os, obj.else_);
            classdef_.global_.ice_write(os, obj.for_);
            os.writeBool(obj.int64);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.else_ = classdef_.persistent_.ice_read(is);
            obj.for_ = classdef_.global_.ice_read(is);
            obj.int64 = is.readBool();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::classdef::logical';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::classdef::logical'
    end
end
