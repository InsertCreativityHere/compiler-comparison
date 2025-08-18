classdef Derived < classdef_.Base
    %DERIVED
    %
    %   Creation
    %     Syntax
    %       obj = classdef_.Derived()
    %       obj = classdef_.Derived(if_, spmd_, otherwise_)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Derived Properties:
    %     if_
    %     spmd_
    %     otherwise_
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % IF_
        %   int32 scalar
        if_ (1, 1) int32 = 2
        
        % SPMD_
        %   classdef_.global_ vector
        spmd_ (1, :) classdef_.global_
        
        % OTHERWISE_
        %   int32, classdef_.global_) scalar
        otherwise_ (1, 1) dictionary = configureDictionary('int32', 'classdef_.global_')
    end
    methods
        function obj = Derived(while_, if_, spmd_, otherwise_)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 4, 'Invalid number of arguments');
                superArgs = {while_};
            end
            obj = obj@classdef_.Base(superArgs{:});
            if nargin > 0
                obj.if_ = if_;
                obj.spmd_ = spmd_;
                obj.otherwise_ = otherwise_;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::classdef::Derived', -1, false);
            os.writeInt(obj.if_);
            classdef_.parfor_.write(os, obj.spmd_);
            classdef_.switch_.write(os, obj.otherwise_);
            os.endSlice();
            iceWriteImpl@classdef_.Base(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.if_ = is.readInt();
            obj.spmd_ = classdef_.parfor_.read(is);
            obj.otherwise_ = classdef_.switch_.read(is);
            is.endSlice();
            iceReadImpl@classdef_.Base(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::classdef::Derived';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::classdef::Derived'
    end
end
