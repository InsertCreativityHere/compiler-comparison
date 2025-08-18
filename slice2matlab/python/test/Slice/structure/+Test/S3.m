classdef (Sealed) S3
    %S3
    %
    %   Creation
    %     Syntax
    %       obj = Test.S3()
    %       obj = Test.S3(obj, sd, prx)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   S3 Properties:
    %     obj
    %     sd
    %     prx
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % OBJ
        %   Test.C scalar | empty array of Test.C
        obj {mustBeScalarOrEmpty} = Test.C.empty
        
        % SD
        %   string, string) scalar
        sd (1, 1) dictionary = configureDictionary('char', 'char')
        
        % PRX
        %   Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
        prx Ice.ObjectPrx {mustBeScalarOrEmpty} = Ice.ObjectPrx.empty
    end
    methods
        function obj = S3(obj, sd, prx)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
                obj.obj = obj;
                obj.sd = sd;
                obj.prx = prx;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.obj = obj.obj.value;
        end
    end
    methods (Static)
        function r = ice_read(is)
            r = Test.S3();
            obj_ = IceInternal.ValueHolder();
            r.obj = obj_;
            is.readValue(@(v_) obj_.set(v_), 'Test.C');
            r.sd = Test.StringDict.read(is);
            r.prx = is.readProxy();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.S3();
            end
            os.writeValue(v.obj);
            Test.StringDict.write(os, v.sd);
            os.writeProxy(v.prx);
        end
    end
end
