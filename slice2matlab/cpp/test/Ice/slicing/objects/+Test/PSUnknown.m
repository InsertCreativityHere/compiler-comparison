% PSUnknown   Summary of PSUnknown
%
% PSUnknown Properties:
%   psu
%   graph
%   cl

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerPrivate.ice by slice2matlab version 3.7.9

classdef PSUnknown < Test.Preserved
    properties
        psu char
        graph
        cl
    end
    methods
        function obj = PSUnknown(pi, ps, psu, graph, cl)
            if nargin == 0
                pi = 0;
                ps = '';
                psu = '';
                graph = [];
                cl = [];
                v = { pi, ps };
            elseif eq(pi, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [] };
            else
                v = { pi, ps };
            end;
            obj = obj@Test.Preserved(v{:});
            if ne(pi, IceInternal.NoInit.Instance)
                obj.psu = psu;
                obj.graph = graph;
                obj.cl = cl;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
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
            is.readValue(@obj.iceSetMember_graph, 'Test.PNode');
            is.readValue(@obj.iceSetMember_cl, 'Test.MyClass');
            is.endSlice();
            iceReadImpl@Test.Preserved(obj, is);
        end
        function iceSetMember_graph(obj, v)
            obj.graph = v;
        end
        function iceSetMember_cl(obj, v)
            obj.cl = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::PSUnknown';
        end
    end
end
