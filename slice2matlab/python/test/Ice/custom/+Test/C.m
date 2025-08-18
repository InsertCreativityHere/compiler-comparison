classdef C < Ice.Value
    %C
    %
    %   Creation
    %     Syntax
    %       obj = Test.C()
    %       obj = Test.C(b1, b2, b4, s1, s2, s3)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   C Properties:
    %     b1
    %     b2
    %     b4
    %     s1
    %     s2
    %     s3
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % B1
        %   uint8 vector
        b1 (1, :) uint8
        
        % B2
        %   uint8 vector
        b2 (1, :) uint8
        
        % B4
        %   uint8 vector
        b4 (1, :) uint8
        
        % S1
        %   string vector
        s1 (1, :) char
        
        % S2
        %   string vector
        s2 (1, :) char
        
        % S3
        %   string vector
        s3 (1, :) char
    end
    methods
        function obj = C(b1, b2, b4, s1, s2, s3)
            if nargin > 0
                assert(nargin == 6, 'Invalid number of arguments');
                obj.b1 = b1;
                obj.b2 = b2;
                obj.b4 = b4;
                obj.s1 = s1;
                obj.s2 = s2;
                obj.s3 = s3;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::C', -1, true);
            os.writeByteSeq(obj.b1);
            os.writeByteSeq(obj.b2);
            os.writeByteSeq(obj.b4);
            os.writeStringSeq(obj.s1);
            os.writeStringSeq(obj.s2);
            os.writeStringSeq(obj.s3);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.b1 = is.readByteSeq();
            obj.b2 = is.readByteSeq();
            obj.b4 = is.readByteSeq();
            obj.s1 = is.readStringSeq();
            obj.s2 = is.readStringSeq();
            obj.s3 = is.readStringSeq();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::C';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::C'
    end
end
