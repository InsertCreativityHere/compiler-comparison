classdef (Sealed) SOneMember
    %SONEMEMBER
    %
    %   Creation
    %     Syntax
    %       obj = Test.SOneMember()
    %       obj = Test.SOneMember(e)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   SOneMember Properties:
    %     e
    %
    %   Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % E
        %   Test.Empty scalar | empty array of Test.Empty
        e {mustBeScalarOrEmpty} = Test.Empty.empty
    end
    methods
        function obj = SOneMember(e)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.e = e;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.e = obj.e.value;
        end
    end
    methods (Static)
        function r = ice_read(is)
            r = Test.SOneMember();
            e_ = IceInternal.ValueHolder();
            r.e = e_;
            is.readValue(@(v_) e_.set(v_), 'Test.Empty');
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.SOneMember();
            end
            os.writeValue(v.e);
        end
    end
end
