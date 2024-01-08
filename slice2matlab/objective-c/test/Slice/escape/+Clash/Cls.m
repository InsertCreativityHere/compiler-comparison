% Cls   Summary of Cls
%
% Cls Properties:
%   s
%   context
%   current
%   response
%   upCast
%   typeId
%   del
%   cookie
%   ex
%   result
%   istr
%   ostr
%   inS
%   in
%   proxy
%   stream
%   target

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Clash.ice by slice2matlab version 3.7.10

classdef Cls < Ice.Value
    properties
        s
        context char
        current int32
        response int16
        upCast char
        typeId int32
        del int16
        cookie
        ex char
        result int32
        istr char
        ostr char
        inS char
        in char
        proxy char
        stream
        target char
    end
    methods
        function obj = Cls(s, context, current, response, upCast, typeId, del, cookie, ex, result, istr, ostr, inS, in, proxy, stream, target)
            if nargin == 0
                obj.s = [];
                obj.context = '';
                obj.current = 0;
                obj.response = 0;
                obj.upCast = '';
                obj.typeId = 0;
                obj.del = 0;
                obj.cookie = IceInternal.UnsetI.Instance;
                obj.ex = '';
                obj.result = 0;
                obj.istr = '';
                obj.ostr = '';
                obj.inS = '';
                obj.in = '';
                obj.proxy = '';
                obj.stream = IceInternal.UnsetI.Instance;
                obj.target = '';
            elseif ne(s, IceInternal.NoInit.Instance)
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
                obj.stream = stream;
                obj.target = target;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
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
            os.writeString(obj.target);
            os.writeShortOpt(1, obj.cookie);
            os.writeIntOpt(2, obj.stream);
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
            obj.target = is.readString();
            obj.cookie = is.readShortOpt(1);
            obj.stream = is.readIntOpt(2);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Clash::Cls';
        end
    end
end
