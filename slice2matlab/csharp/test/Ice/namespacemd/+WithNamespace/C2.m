classdef C2 < WithNamespace.C1
    %C2
    %
    %   Creation
    %     Syntax
    %       obj = WithNamespace.C2()
    %       obj = WithNamespace.C2(l)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   C2 Properties:
    %     l
    %
    %   Generated from Namespace.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % L
        %   int64 scalar
        l (1, 1) int64
    end
    methods
        function obj = C2(i, l)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 2, 'Invalid number of arguments');
                superArgs = {i};
            end
            obj = obj@WithNamespace.C1(superArgs{:});
            if nargin > 0
                obj.l = l;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::WithNamespace::C2', -1, false);
            os.writeLong(obj.l);
            os.endSlice();
            iceWriteImpl@WithNamespace.C1(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.l = is.readLong();
            is.endSlice();
            iceReadImpl@WithNamespace.C1(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::WithNamespace::C2';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::WithNamespace::C2'
    end
end
