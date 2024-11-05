
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef Stock
    properties
        price single
        lastBid single
        laskAsk single
    end
    methods
        function obj = Stock(price, lastBid, laskAsk)
            if nargin == 0
                obj.price = 0;
                obj.lastBid = 0;
                obj.laskAsk = 0;
            elseif ne(price, IceInternal.NoInit.Instance)
                obj.price = price;
                obj.lastBid = lastBid;
                obj.laskAsk = laskAsk;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = Test.Stock(IceInternal.NoInit.Instance);
            r.price = is.readFloat();
            r.lastBid = is.readFloat();
            r.laskAsk = is.readFloat();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Stock();
            end
            os.writeFloat(v.price);
            os.writeFloat(v.lastBid);
            os.writeFloat(v.laskAsk);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.Stock.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(12);
                Test.Stock.ice_write(os, v);
            end
        end
    end
end
