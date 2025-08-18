classdef PNode < Ice.Value
    %PNODE
    %
    %   Creation
    %     Syntax
    %       obj = Test.PNode()
    %       obj = Test.PNode(next)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   PNode Properties:
    %     next
    %
    %   Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NEXT
        %   Test.PNode scalar | empty array of Test.PNode
        next {mustBeScalarOrEmpty} = Test.PNode.empty
    end
    methods
        function obj = PNode(next)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.next = next;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::PNode', -1, true);
            os.writeValue(obj.next);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetProperty_next, 'Test.PNode');
            is.endSlice();
        end
        function iceSetProperty_next(obj, v)
            obj.next = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::PNode';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::PNode'
    end
end
