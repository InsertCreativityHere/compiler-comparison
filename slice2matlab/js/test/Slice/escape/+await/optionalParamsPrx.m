
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef optionalParamsPrx < Ice.ObjectPrx
    methods
        function [result, namespace, null] = in(obj, goto, if, internal, varargin)
            os_ = obj.iceStartWriteParams([]);
            await.var.ice_writeOpt(os_, 2, goto);
            os_.writeProxyOpt(3, if);
            await.while.writeOpt(os_, 5, internal);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('in', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = await.break.ice_readOpt(is_, 1);
            namespace = is_.readStringOpt(7);
            null = is_.readProxyOpt(8, 'await.explicitPrx');
            is_.endEncapsulation();
        end
        function r_ = inAsync(obj, goto, if, internal, varargin)
            os_ = obj.iceStartWriteParams([]);
            await.var.ice_writeOpt(os_, 2, goto);
            os_.writeProxyOpt(3, if);
            await.while.writeOpt(os_, 5, internal);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = await.break.ice_readOpt(is_, 1);
                namespace = is_.readStringOpt(7);
                null = is_.readProxyOpt(8, 'await.explicitPrx');
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = namespace;
                varargout{3} = null;
            end
            r_ = obj.iceInvokeAsync('in', 0, true, os_, 3, @unmarshal, {}, varargin{:});
        end
        function [result, namespace, null] = continue(obj, goto, if, internal, varargin)
            os_ = obj.iceStartWriteParams([]);
            await.var.ice_writeOpt(os_, 2, goto);
            os_.writeProxyOpt(3, if);
            await.while.writeOpt(os_, 5, internal);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('continue', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = await.break.ice_readOpt(is_, 1);
            namespace = is_.readStringOpt(7);
            null = is_.readProxyOpt(8, 'await.explicitPrx');
            is_.endEncapsulation();
        end
        function r_ = continueAsync(obj, goto, if, internal, varargin)
            os_ = obj.iceStartWriteParams([]);
            await.var.ice_writeOpt(os_, 2, goto);
            os_.writeProxyOpt(3, if);
            await.while.writeOpt(os_, 5, internal);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = await.break.ice_readOpt(is_, 1);
                namespace = is_.readStringOpt(7);
                null = is_.readProxyOpt(8, 'await.explicitPrx');
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = namespace;
                varargout{3} = null;
            end
            r_ = obj.iceInvokeAsync('continue', 0, true, os_, 3, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::await::optionalParams';
        end
        function r = ice_read(is)
            r = is.readProxy('await.optionalParamsPrx');
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
            % Returns (await.optionalParamsPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, await.optionalParamsPrx.ice_staticId(), 'await.optionalParamsPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (await.optionalParamsPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'await.optionalParamsPrx', varargin{:});
        end
    end
end
