
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef Stock < Ice.Value
    properties
        price single
        lastBid single
        lastAsk single
    end
    methods
        function obj = Stock(price, lastBid, lastAsk)
            if nargin == 0
                obj.price = 0;
                obj.lastBid = 0;
                obj.lastAsk = 0;
            elseif ne(price, IceInternal.NoInit.Instance)
                obj.price = price;
                obj.lastBid = lastBid;
                obj.lastAsk = lastAsk;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Stock', -1, true);
            os.writeFloat(obj.price);
            os.writeFloat(obj.lastBid);
            os.writeFloat(obj.lastAsk);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.price = is.readFloat();
            obj.lastBid = is.readFloat();
            obj.lastAsk = is.readFloat();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Stock';
        end
    end
end
