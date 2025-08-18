classdef PSUnknown < Test.Preserved
    %PSUNKNOWN
    %
    %   Creation
    %     Syntax
    %       obj = Test.PSUnknown()
    %       obj = Test.PSUnknown(psu, graph, cl)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   PSUnknown Properties:
    %     psu
    %     graph
    %     cl
    %
    %   Generated from ServerPrivateAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % PSU
        %   character vector
        psu (1, :) char
        
        % GRAPH
        %   Test.PNode scalar | empty array of Test.PNode
        graph {mustBeScalarOrEmpty} = Test.PNode.empty
        
        % CL
        %   Test.MyClass scalar | empty array of Test.MyClass
        cl {mustBeScalarOrEmpty} = Test.MyClass.empty
    end
    methods
        function obj = PSUnknown(pi, ps, psu, graph, cl)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 5, 'Invalid number of arguments');
                superArgs = {pi, ps};
            end
            obj = obj@Test.Preserved(superArgs{:});
            if nargin > 0
                obj.psu = psu;
                obj.graph = graph;
                obj.cl = cl;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::PSUnknown', -1, false);
            os.writeString(obj.psu);
            os.writeValue(obj.graph);
            os.writeValue(obj.cl);
            os.endSlice();
            iceWriteImpl@Test.Preserved(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.psu = is.readString();
            is.readValue(@obj.iceSetProperty_graph, 'Test.PNode');
            is.readValue(@obj.iceSetProperty_cl, 'Test.MyClass');
            is.endSlice();
            iceReadImpl@Test.Preserved(obj, is);
        end
        function iceSetProperty_graph(obj, v)
            obj.graph = v;
        end
        function iceSetProperty_cl(obj, v)
            obj.cl = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::PSUnknown';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::PSUnknown'
    end
end
