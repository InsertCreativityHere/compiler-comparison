classdef DictClass < Ice.Value
    %DICTCLASS
    %
    %   Creation
    %     Syntax
    %       obj = Test.DictClass()
    %       obj = Test.DictClass(isdict)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   DictClass Properties:
    %     isdict
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ISDICT
        %   int32, string) scalar
        isdict (1, 1) dictionary = configureDictionary('int32', 'char')
    end
    methods
        function obj = DictClass(isdict)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.isdict = isdict;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::DictClass', -1, true);
            Test.IntStringDict.write(os, obj.isdict);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.isdict = Test.IntStringDict.read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::DictClass';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::DictClass'
    end
end
