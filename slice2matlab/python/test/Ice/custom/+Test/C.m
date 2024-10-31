% C   Summary of C
%
% C Properties:
%   b1
%   b2
%   b3
%   b4
%   s1
%   s2
%   s3
%   s4

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef C < Ice.Value
    properties
        b1
        b2
        b3
        b4
        s1
        s2
        s3
        s4
    end
    methods
        function obj = C(b1, b2, b3, b4, s1, s2, s3, s4)
            if nargin == 0
                obj.b1 = [];
                obj.b2 = [];
                obj.b3 = [];
                obj.b4 = [];
                obj.s1 = [];
                obj.s2 = [];
                obj.s3 = [];
                obj.s4 = [];
            elseif ne(b1, IceInternal.NoInit.Instance)
                obj.b1 = b1;
                obj.b2 = b2;
                obj.b3 = b3;
                obj.b4 = b4;
                obj.s1 = s1;
                obj.s2 = s2;
                obj.s3 = s3;
                obj.s4 = s4;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::C', -1, true);
            os.writeByteSeq(obj.b1);
            os.writeByteSeq(obj.b2);
            os.writeByteSeq(obj.b3);
            os.writeByteSeq(obj.b4);
            os.writeStringSeq(obj.s1);
            os.writeStringSeq(obj.s2);
            os.writeStringSeq(obj.s3);
            os.writeStringSeq(obj.s4);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.b1 = is.readByteSeq();
            obj.b2 = is.readByteSeq();
            obj.b3 = is.readByteSeq();
            obj.b4 = is.readByteSeq();
            obj.s1 = is.readStringSeq();
            obj.s2 = is.readStringSeq();
            obj.s3 = is.readStringSeq();
            obj.s4 = is.readStringSeq();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::C';
        end
    end
end
