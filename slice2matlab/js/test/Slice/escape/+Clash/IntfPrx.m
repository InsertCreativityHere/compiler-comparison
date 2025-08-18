classdef IntfPrx < Ice.ObjectPrx
    %INTFPRX
    %
    %   Creation
    %     Syntax
    %       prx = Clash.IntfPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   IntfPrx Methods:
    %     context
    %     contextAsync - An asynchronous context.
    %     cookie
    %     cookieAsync - An asynchronous cookie.
    %     current
    %     currentAsync - An asynchronous current.
    %     del
    %     delAsync - An asynchronous del.
    %     inS
    %     inSAsync - An asynchronous inS.
    %     istr
    %     istrAsync - An asynchronous istr.
    %     obj
    %     objAsync - An asynchronous obj.
    %     op
    %     opAsync - An asynchronous op.
    %     opOut
    %     opOutAsync - An asynchronous opOut.
    %     response
    %     responseAsync - An asynchronous response.
    %     sync
    %     syncAsync - An asynchronous sync.
    %     typeId
    %     typeIdAsync - An asynchronous typeId.
    %
    %   IntfPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Clash::Intf.
    %     uncheckedCast - Creates a IntfPrx from another proxy without any validation.
    %
    %   Generated from Clash.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function context(obj, context)
            %CONTEXT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('context', 0, false, [], false, {}, context);
        end

        function future = contextAsync(obj, context)
            %CONTEXTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also context, Ice.Future.
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('context', 0, false, [], 0, [], {}, context);
        end

        function current(obj, context)
            %CURRENT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('current', 0, false, [], false, {}, context);
        end

        function future = currentAsync(obj, context)
            %CURRENTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also current, Ice.Future.
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('current', 0, false, [], 0, [], {}, context);
        end

        function response(obj, context)
            %RESPONSE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('response', 0, false, [], false, {}, context);
        end

        function future = responseAsync(obj, context)
            %RESPONSEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also response, Ice.Future.
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('response', 0, false, [], 0, [], {}, context);
        end

        function typeId(obj, context)
            %TYPEID
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('typeId', 0, false, [], false, {}, context);
        end

        function future = typeIdAsync(obj, context)
            %TYPEIDASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also typeId, Ice.Future.
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('typeId', 0, false, [], 0, [], {}, context);
        end

        function del(obj, context)
            %DEL
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('del', 0, false, [], false, {}, context);
        end

        function future = delAsync(obj, context)
            %DELASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also del, Ice.Future.
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('del', 0, false, [], 0, [], {}, context);
        end

        function cookie(obj, context)
            %COOKIE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('cookie', 0, false, [], false, {}, context);
        end

        function future = cookieAsync(obj, context)
            %COOKIEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also cookie, Ice.Future.
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('cookie', 0, false, [], 0, [], {}, context);
        end

        function sync(obj, context)
            %SYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('sync', 0, false, [], false, {}, context);
        end

        function future = syncAsync(obj, context)
            %SYNCASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also sync, Ice.Future.
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('sync', 0, false, [], 0, [], {}, context);
        end

        function inS(obj, context)
            %INS
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('inS', 0, false, [], false, {}, context);
        end

        function future = inSAsync(obj, context)
            %INSASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also inS, Ice.Future.
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('inS', 0, false, [], 0, [], {}, context);
        end

        function istr(obj, context)
            %ISTR
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('istr', 0, false, [], false, {}, context);
        end

        function future = istrAsync(obj, context)
            %ISTRASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also istr, Ice.Future.
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('istr', 0, false, [], 0, [], {}, context);
        end

        function obj(obj, context)
            %OBJ
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('obj', 0, false, [], false, {}, context);
        end

        function future = objAsync(obj, context)
            %OBJASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also obj, Ice.Future.
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('obj', 0, false, [], 0, [], {}, context);
        end

        function op(obj_, context, current, response, ex, sent, cookie, sync, result, istr, ostr, proxy, obj, context_)
            %OP
            %
            %   Input Arguments
            %     context
            %       character vector
            %     current
            %       character vector
            %     response
            %       character vector
            %     ex
            %       character vector
            %     sent
            %       character vector
            %     cookie
            %       character vector
            %     sync
            %       character vector
            %     result
            %       character vector
            %     istr
            %       character vector
            %     ostr
            %       character vector
            %     proxy
            %       character vector | Ice.Unset
            %     obj
            %       int32 scalar | Ice.Unset
            %     context_ - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj_ (1, 1) Clash.IntfPrx
                context (1, :) char
                current (1, :) char
                response (1, :) char
                ex (1, :) char
                sent (1, :) char
                cookie (1, :) char
                sync (1, :) char
                result (1, :) char
                istr (1, :) char
                ostr (1, :) char
                proxy (1, :)
                obj (1, 1)
                context_ (1, 1) dictionary = dictionary
            end
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
            obj_.iceInvoke('op', 0, false, os_, false, {}, context_);
        end

        function future = opAsync(obj_, context, current, response, ex, sent, cookie, sync, result, istr, ostr, proxy, obj, context_)
            %OPASYNC
            %
            %   Input Arguments
            %     context
            %       character vector
            %     current
            %       character vector
            %     response
            %       character vector
            %     ex
            %       character vector
            %     sent
            %       character vector
            %     cookie
            %       character vector
            %     sync
            %       character vector
            %     result
            %       character vector
            %     istr
            %       character vector
            %     ostr
            %       character vector
            %     proxy
            %       character vector | Ice.Unset
            %     obj
            %       int32 scalar | Ice.Unset
            %     context_ - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also op, Ice.Future.
            
            arguments
                obj_ (1, 1) Clash.IntfPrx
                context (1, :) char
                current (1, :) char
                response (1, :) char
                ex (1, :) char
                sent (1, :) char
                cookie (1, :) char
                sync (1, :) char
                result (1, :) char
                istr (1, :) char
                ostr (1, :) char
                proxy (1, :)
                obj (1, 1)
                context_ (1, 1) dictionary = dictionary
            end
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
            future = obj_.iceInvokeAsync('op', 0, false, os_, 0, [], {}, context_);
        end

        function [context, current, response, ex, sent, cookie, sync, result, istr, ostr, proxy, obj] = opOut(obj, context)
            %OPOUT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     context
            %       character vector
            %     current
            %       character vector
            %     response
            %       character vector
            %     ex
            %       character vector
            %     sent
            %       character vector
            %     cookie
            %       character vector
            %     sync
            %       character vector
            %     result
            %       character vector
            %     istr
            %       character vector
            %     ostr
            %       character vector
            %     proxy
            %       character vector | Ice.Unset
            %     obj
            %       int32 scalar | Ice.Unset
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opOut', 0, true, [], true, {}, context);
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

        function future = opOutAsync(obj, context)
            %OPOUTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOut, Ice.Future.
            
            arguments
                obj (1, 1) Clash.IntfPrx
                context (1, 1) dictionary = dictionary
            end
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
            future = obj.iceInvokeAsync('opOut', 0, true, [], 12, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Clash::Intf';
        end

        function r = ice_read(is)
            r = is.readProxy('Clash.IntfPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Clash::Intf.
            %
            %   Input Arguments
            %     p - The proxy to check.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %     context - The request context (optional).
            %       dictionary(string, string) scalar
            %
            %   Output Arguments
            %     r - A Clash.IntfPrx scalar if the target object implements Slice interface 
            %       ::Clash::Intf; otherwise, an empty array of Clash.IntfPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Clash.IntfPrx.ice_staticId(), 'Clash.IntfPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Clash.IntfPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Clash.IntfPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Clash.IntfPrx', varargin{:});
        end
    end
end
