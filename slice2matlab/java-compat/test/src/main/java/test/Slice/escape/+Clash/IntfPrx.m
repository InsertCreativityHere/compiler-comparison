% IntfPrx   Summary of IntfPrx
%
% IntfPrx Methods:
%   context
%   contextAsync
%   current
%   currentAsync
%   response
%   responseAsync
%   typeId
%   typeIdAsync
%   del
%   delAsync
%   cookie
%   cookieAsync
%   sync
%   syncAsync
%   inS
%   inSAsync
%   istr
%   istrAsync
%   obj
%   objAsync
%   op
%   opAsync
%   opOut
%   opOutAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Clash.ice by slice2matlab version 3.7.9

classdef IntfPrx < Ice.ObjectPrx
    methods
        function context(obj, varargin)
            % context
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('context', 0, false, [], false, {}, varargin{:});
        end
        function r_ = contextAsync(obj, varargin)
            % contextAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('context', 0, false, [], 0, [], {}, varargin{:});
        end
        function current(obj, varargin)
            % current
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('current', 0, false, [], false, {}, varargin{:});
        end
        function r_ = currentAsync(obj, varargin)
            % currentAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('current', 0, false, [], 0, [], {}, varargin{:});
        end
        function response(obj, varargin)
            % response
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('response', 0, false, [], false, {}, varargin{:});
        end
        function r_ = responseAsync(obj, varargin)
            % responseAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('response', 0, false, [], 0, [], {}, varargin{:});
        end
        function typeId(obj, varargin)
            % typeId
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('typeId', 0, false, [], false, {}, varargin{:});
        end
        function r_ = typeIdAsync(obj, varargin)
            % typeIdAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('typeId', 0, false, [], 0, [], {}, varargin{:});
        end
        function del(obj, varargin)
            % del
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('del', 0, false, [], false, {}, varargin{:});
        end
        function r_ = delAsync(obj, varargin)
            % delAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('del', 0, false, [], 0, [], {}, varargin{:});
        end
        function cookie(obj, varargin)
            % cookie
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('cookie', 0, false, [], false, {}, varargin{:});
        end
        function r_ = cookieAsync(obj, varargin)
            % cookieAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('cookie', 0, false, [], 0, [], {}, varargin{:});
        end
        function sync(obj, varargin)
            % sync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('sync', 0, false, [], false, {}, varargin{:});
        end
        function r_ = syncAsync(obj, varargin)
            % syncAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('sync', 0, false, [], 0, [], {}, varargin{:});
        end
        function inS(obj, varargin)
            % inS
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('inS', 0, false, [], false, {}, varargin{:});
        end
        function r_ = inSAsync(obj, varargin)
            % inSAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('inS', 0, false, [], 0, [], {}, varargin{:});
        end
        function istr(obj, varargin)
            % istr
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('istr', 0, false, [], false, {}, varargin{:});
        end
        function r_ = istrAsync(obj, varargin)
            % istrAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('istr', 0, false, [], 0, [], {}, varargin{:});
        end
        function obj(obj, varargin)
            % obj
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('obj', 0, false, [], false, {}, varargin{:});
        end
        function r_ = objAsync(obj, varargin)
            % objAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('obj', 0, false, [], 0, [], {}, varargin{:});
        end
        function op(obj_, context, current, response, ex, sent, cookie, sync, result, istr, ostr, proxy, obj, varargin)
            % op
            %
            % Parameters:
            %   context (char)
            %   current (char)
            %   response (char)
            %   ex (char)
            %   sent (char)
            %   cookie (char)
            %   sync (char)
            %   result (char)
            %   istr (char)
            %   ostr (char)
            %   proxy (char)
            %   obj (int32)
            %   context_ (containers.Map) - Optional request context.
            
            os_ = obj_.iceStartWriteParams([]);
            os_.writeString(context);
            os_.writeString(current);
            os_.writeString(response);
            os_.writeString(ex);
            os_.writeString(sent);
            os_.writeString(cookie);
            os_.writeString(sync);
            os_.writeString(result);
            os_.writeString(istr);
            os_.writeString(ostr);
            os_.writeStringOpt(1, proxy);
            os_.writeIntOpt(2, obj);
            obj_.iceEndWriteParams(os_);
            obj_.iceInvoke('op', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = opAsync(obj_, context, current, response, ex, sent, cookie, sync, result, istr, ostr, proxy, obj, varargin)
            % opAsync
            %
            % Parameters:
            %   context (char)
            %   current (char)
            %   response (char)
            %   ex (char)
            %   sent (char)
            %   cookie (char)
            %   sync (char)
            %   result (char)
            %   istr (char)
            %   ostr (char)
            %   proxy (char)
            %   obj (int32)
            %   context_ (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj_.iceStartWriteParams([]);
            os_.writeString(context);
            os_.writeString(current);
            os_.writeString(response);
            os_.writeString(ex);
            os_.writeString(sent);
            os_.writeString(cookie);
            os_.writeString(sync);
            os_.writeString(result);
            os_.writeString(istr);
            os_.writeString(ostr);
            os_.writeStringOpt(1, proxy);
            os_.writeIntOpt(2, obj);
            obj_.iceEndWriteParams(os_);
            r_ = obj_.iceInvokeAsync('op', 0, false, os_, 0, [], {}, varargin{:});
        end
        function [context, current, response, ex, sent, cookie, sync, result, istr, ostr, proxy, obj] = opOut(obj_, varargin)
            % opOut
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   context (char)
            %   current (char)
            %   response (char)
            %   ex (char)
            %   sent (char)
            %   cookie (char)
            %   sync (char)
            %   result (char)
            %   istr (char)
            %   ostr (char)
            %   proxy (char)
            %   obj (int32)
            
            is_ = obj_.iceInvoke('opOut', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            context = is_.readString();
            current = is_.readString();
            response = is_.readString();
            ex = is_.readString();
            sent = is_.readString();
            cookie = is_.readString();
            sync = is_.readString();
            result = is_.readString();
            istr = is_.readString();
            ostr = is_.readString();
            proxy = is_.readStringOpt(1);
            obj = is_.readIntOpt(2);
            is_.endEncapsulation();
        end
        function r_ = opOutAsync(obj_, varargin)
            % opOutAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                context = is_.readString();
                current = is_.readString();
                response = is_.readString();
                ex = is_.readString();
                sent = is_.readString();
                cookie = is_.readString();
                sync = is_.readString();
                result = is_.readString();
                istr = is_.readString();
                ostr = is_.readString();
                proxy = is_.readStringOpt(1);
                obj = is_.readIntOpt(2);
                is_.endEncapsulation();
                varargout{1} = context;
                varargout{2} = current;
                varargout{3} = response;
                varargout{4} = ex;
                varargout{5} = sent;
                varargout{6} = cookie;
                varargout{7} = sync;
                varargout{8} = result;
                varargout{9} = istr;
                varargout{10} = ostr;
                varargout{11} = proxy;
                varargout{12} = obj;
            end
            r_ = obj_.iceInvokeAsync('opOut', 0, true, [], 12, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Clash::Intf';
        end
        function r = ice_read(is)
            r = is.readProxy('Clash.IntfPrx');
        end
        function r = checkedCast(p, varargin)
            % checkedCast   Contacts the remote server to verify that the object implements this type.
            %   Raises a local exception if a communication error occurs. You can optionally supply a
            %   facet name and a context map.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %   context - The optional context map to send with the invocation.
            %
            % Returns (Clash.IntfPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Clash.IntfPrx.ice_staticId(), 'Clash.IntfPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Clash.IntfPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Clash.IntfPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = IntfPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
