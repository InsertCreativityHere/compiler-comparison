classdef Cls < Ice.Value
    %CLS
    %
    %   Creation
    %     Syntax
    %       obj = Clash.Cls()
    %       obj = Clash.Cls(s, context, current, response, upCast, typeId, del, cookie, ex, result, istr, ostr, inS, in, proxy)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Cls Properties:
    %     s
    %     context
    %     current
    %     response
    %     upCast
    %     typeId
    %     del
    %     cookie
    %     ex
    %     result
    %     istr
    %     ostr
    %     inS
    %     in
    %     proxy
    %
    %   Generated from Clash.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % S
        %   Clash.IntfPrx scalar | empty array of Clash.IntfPrx
        s Clash.IntfPrx {mustBeScalarOrEmpty} = Clash.IntfPrx.empty
        
        % CONTEXT
        %   character vector
        context (1, :) char
        
        % CURRENT
        %   int32 scalar
        current (1, 1) int32
        
        % RESPONSE
        %   int16 scalar
        response (1, 1) int16
        
        % UPCAST
        %   character vector
        upCast (1, :) char
        
        % TYPEID
        %   int32 scalar
        typeId (1, 1) int32
        
        % DEL
        %   int16 scalar
        del (1, 1) int16
        
        % COOKIE
        %   int16 scalar | Ice.Unset
        cookie (1, 1) = IceInternal.UnsetI.Instance
        
        % EX
        %   character vector
        ex (1, :) char
        
        % RESULT
        %   int32 scalar
        result (1, 1) int32
        
        % ISTR
        %   character vector
        istr (1, :) char
        
        % OSTR
        %   character vector
        ostr (1, :) char
        
        % INS
        %   character vector
        inS (1, :) char
        
        % IN
        %   character vector
        in (1, :) char
        
        % PROXY
        %   character vector
        proxy (1, :) char
    end
    methods
        function obj = Cls(s, context, current, response, upCast, typeId, del, cookie, ex, result, istr, ostr, inS, in, proxy)
            if nargin > 0
                assert(nargin == 15, 'Invalid number of arguments');
                obj.s = s;
                obj.context = context;
                obj.current = current;
                obj.response = response;
                obj.upCast = upCast;
                obj.typeId = typeId;
                obj.del = del;
                obj.cookie = cookie;
                obj.ex = ex;
                obj.result = result;
                obj.istr = istr;
                obj.ostr = ostr;
                obj.inS = inS;
                obj.in = in;
                obj.proxy = proxy;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Clash::Cls', -1, true);
            os.writeProxy(obj.s);
            os.writeString(obj.context);
            os.writeInt(obj.current);
            os.writeShort(obj.response);
            os.writeString(obj.upCast);
            os.writeInt(obj.typeId);
            os.writeShort(obj.del);
            os.writeString(obj.ex);
            os.writeInt(obj.result);
            os.writeString(obj.istr);
            os.writeString(obj.ostr);
            os.writeString(obj.inS);
            os.writeString(obj.in);
            os.writeString(obj.proxy);
            os.writeShortOpt(1, obj.cookie);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.s = Clash.IntfPrx.ice_read(is);
            obj.context = is.readString();
            obj.current = is.readInt();
            obj.response = is.readShort();
            obj.upCast = is.readString();
            obj.typeId = is.readInt();
            obj.del = is.readShort();
            obj.ex = is.readString();
            obj.result = is.readInt();
            obj.istr = is.readString();
            obj.ostr = is.readString();
            obj.inS = is.readString();
            obj.in = is.readString();
            obj.proxy = is.readString();
            obj.cookie = is.readShortOpt(1);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Clash::Cls';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Clash::Cls'
    end
end
