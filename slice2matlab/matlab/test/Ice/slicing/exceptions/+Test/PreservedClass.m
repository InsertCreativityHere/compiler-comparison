classdef PreservedClass < Test.BaseClass
    %PRESERVEDCLASS
    %
    %   Creation
    %     Syntax
    %       obj = Test.PreservedClass()
    %       obj = Test.PreservedClass(pc)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   PreservedClass Properties:
    %     pc
    %
    %   Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % PC
        %   character vector
        pc (1, :) char
    end
    methods
        function obj = PreservedClass(bc, pc)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 2, 'Invalid number of arguments');
                superArgs = {bc};
            end
            obj = obj@Test.BaseClass(superArgs{:});
            if nargin > 0
                obj.pc = pc;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::PreservedClass', -1, false);
            os.writeString(obj.pc);
            os.endSlice();
            iceWriteImpl@Test.BaseClass(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.pc = is.readString();
            is.endSlice();
            iceReadImpl@Test.BaseClass(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::PreservedClass';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::PreservedClass'
    end
end
