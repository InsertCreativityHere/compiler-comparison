classdef Derived < Test.Base
    %DERIVED
    %
    %   Creation
    %     Syntax
    %       obj = Test.Derived()
    %       obj = Test.Derived(p)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Derived Properties:
    %     p
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % P
        %   Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
        p Ice.ObjectPrx {mustBeScalarOrEmpty} = Ice.ObjectPrx.empty
    end
    methods
        function obj = Derived(b, o, s, seq1, seq2, seq3, seq4, d1, d2, d3, d4, p)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 12, 'Invalid number of arguments');
                superArgs = {b, o, s, seq1, seq2, seq3, seq4, d1, d2, d3, d4};
            end
            obj = obj@Test.Base(superArgs{:});
            if nargin > 0
                obj.p = p;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Derived', -1, false);
            os.writeProxy(obj.p);
            os.endSlice();
            iceWriteImpl@Test.Base(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.p = is.readProxy();
            is.endSlice();
            iceReadImpl@Test.Base(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::Derived';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Derived'
    end
end
