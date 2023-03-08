% U   Summary of U
%
% U Properties:
%   myI
%   myIstar
%   myC
%   myCstar
%   myC2
%   myC2star

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef U < Ice.Value
    properties
        myI
        myIstar
        myC
        myCstar
        myC2
        myC2star
    end
    methods
        function obj = U(myI, myIstar, myC, myCstar, myC2, myC2star)
            if nargin == 0
                obj.myI = [];
                obj.myIstar = [];
                obj.myC = [];
                obj.myCstar = [];
                obj.myC2 = [];
                obj.myC2star = [];
            elseif ne(myI, IceInternal.NoInit.Instance)
                obj.myI = myI;
                obj.myIstar = myIstar;
                obj.myC = myC;
                obj.myCstar = myCstar;
                obj.myC2 = myC2;
                obj.myC2star = myC2star;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::DDD::U', -1, true);
            os.writeValue(obj.myI);
            os.writeProxy(obj.myIstar);
            os.writeValue(obj.myC);
            os.writeProxy(obj.myCstar);
            os.writeValue(obj.myC2);
            os.writeProxy(obj.myC2star);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_myI, 'Ice.Value');
            obj.myIstar = Test.DDD.IPrx.ice_read(is);
            is.readValue(@obj.iceSetMember_myC, 'Test.DDD.C');
            obj.myCstar = is.readProxy();
            is.readValue(@obj.iceSetMember_myC2, 'Test.DDD.C2');
            obj.myC2star = is.readProxy();
            is.endSlice();
        end
        function iceSetMember_myI(obj, v)
            obj.myI = v;
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
