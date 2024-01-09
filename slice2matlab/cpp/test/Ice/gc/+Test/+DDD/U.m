% U   Summary of U
%
% U Properties:
%   myIstar
%   myC
%   myC2

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef U < Ice.Value
    properties
        myIstar
        myC
        myC2
    end
    methods
        function obj = U(myIstar, myC, myC2)
            if nargin == 0
                obj.myIstar = [];
                obj.myC = [];
                obj.myC2 = [];
            elseif ne(myIstar, IceInternal.NoInit.Instance)
                obj.myIstar = myIstar;
                obj.myC = myC;
                obj.myC2 = myC2;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::DDD::U', -1, true);
            os.writeProxy(obj.myIstar);
            os.writeValue(obj.myC);
            os.writeValue(obj.myC2);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.myIstar = Test.DDD.IPrx.ice_read(is);
            is.readValue(@obj.iceSetMember_myC, 'Test.DDD.C');
            is.readValue(@obj.iceSetMember_myC2, 'Test.DDD.C2');
            is.endSlice();
        end
        function iceSetMember_myC(obj, v)
            obj.myC = v;
        end
        function iceSetMember_myC2(obj, v)
            obj.myC2 = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::DDD::U';
        end
    end
end
