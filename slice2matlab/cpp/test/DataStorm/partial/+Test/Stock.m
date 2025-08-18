classdef Stock < Ice.Value
    %STOCK
    %
    %   Creation
    %     Syntax
    %       obj = Test.Stock()
    %       obj = Test.Stock(price, lastBid, lastAsk)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Stock Properties:
    %     price
    %     lastBid
    %     lastAsk
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % PRICE
        %   single scalar
        price (1, 1) single
        
        % LASTBID
        %   single scalar
        lastBid (1, 1) single
        
        % LASTASK
        %   single scalar
        lastAsk (1, 1) single
    end
    methods
        function obj = Stock(price, lastBid, lastAsk)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
                obj.price = price;
                obj.lastBid = lastBid;
                obj.lastAsk = lastAsk;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
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
    methods (Static)
        function id = ice_staticId()
            id = '::Test::Stock';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Stock'
    end
end
