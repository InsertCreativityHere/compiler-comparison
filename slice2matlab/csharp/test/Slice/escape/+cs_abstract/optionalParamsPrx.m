
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef optionalParamsPrx < Ice.ObjectPrx
    methods
        function result = for_(obj, goto, if_, internal, context, varargin)
            os_ = obj.iceStartWriteParams([]);
            cs_abstract.as.ice_writeOpt(os_, 2, goto);
            os_.writeProxyOpt(3, if_);
            cs_abstract.while_.writeOpt(os_, 5, internal);
            os_.writeStringOpt(7, context);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('for', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = cs_abstract.break_.ice_readOpt(is_, 1);
            is_.endEncapsulation();
        end
        function r_ = forAsync(obj, goto, if_, internal, context, varargin)
            os_ = obj.iceStartWriteParams([]);
            cs_abstract.as.ice_writeOpt(os_, 2, goto);
            os_.writeProxyOpt(3, if_);
            cs_abstract.while_.writeOpt(os_, 5, internal);
            os_.writeStringOpt(7, context);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = cs_abstract.break_.ice_readOpt(is_, 1);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('for', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = continue_(obj, goto, if_, internal, context, varargin)
            os_ = obj.iceStartWriteParams([]);
            cs_abstract.as.ice_writeOpt(os_, 2, goto);
            os_.writeProxyOpt(3, if_);
            cs_abstract.while_.writeOpt(os_, 5, internal);
            os_.writeStringOpt(7, context);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('continue', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = cs_abstract.break_.ice_readOpt(is_, 1);
            is_.endEncapsulation();
        end
        function r_ = continueAsync(obj, goto, if_, internal, context, varargin)
            os_ = obj.iceStartWriteParams([]);
            cs_abstract.as.ice_writeOpt(os_, 2, goto);
            os_.writeProxyOpt(3, if_);
            cs_abstract.while_.writeOpt(os_, 5, internal);
            os_.writeStringOpt(7, context);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = cs_abstract.break_.ice_readOpt(is_, 1);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('continue', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function [result, goto, if_, internal, context] = in(obj, varargin)
            is_ = obj.iceInvoke('in', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = cs_abstract.break_.ice_readOpt(is_, 1);
            goto = cs_abstract.as.ice_readOpt(is_, 2);
            if_ = is_.readProxyOpt(3, 'cs_abstract.explicitPrx');
            internal = cs_abstract.while_.readOpt(is_, 5);
            context = is_.readStringOpt(7);
            is_.endEncapsulation();
        end
        function r_ = inAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = cs_abstract.break_.ice_readOpt(is_, 1);
                goto = cs_abstract.as.ice_readOpt(is_, 2);
                if_ = is_.readProxyOpt(3, 'cs_abstract.explicitPrx');
                internal = cs_abstract.while_.readOpt(is_, 5);
                context = is_.readStringOpt(7);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = goto;
                varargout{3} = if_;
                varargout{4} = internal;
                varargout{5} = context;
            end
            r_ = obj.iceInvokeAsync('in', 0, true, [], 5, @unmarshal, {}, varargin{:});
        end
        function [result, goto, if_, internal, context] = foreach(obj, varargin)
            is_ = obj.iceInvoke('foreach', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = cs_abstract.break_.ice_readOpt(is_, 1);
            goto = cs_abstract.as.ice_readOpt(is_, 2);
            if_ = is_.readProxyOpt(3, 'cs_abstract.explicitPrx');
            internal = cs_abstract.while_.readOpt(is_, 5);
            context = is_.readStringOpt(7);
            is_.endEncapsulation();
        end
        function r_ = foreachAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = cs_abstract.break_.ice_readOpt(is_, 1);
                goto = cs_abstract.as.ice_readOpt(is_, 2);
                if_ = is_.readProxyOpt(3, 'cs_abstract.explicitPrx');
                internal = cs_abstract.while_.readOpt(is_, 5);
                context = is_.readStringOpt(7);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = goto;
                varargout{3} = if_;
                varargout{4} = internal;
                varargout{5} = context;
            end
            r_ = obj.iceInvokeAsync('foreach', 0, true, [], 5, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::cs_abstract::optionalParams';
        end
        function r = ice_read(is)
            r = is.readProxy('cs_abstract.optionalParamsPrx');
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
            % Returns (cs_abstract.optionalParamsPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, cs_abstract.optionalParamsPrx.ice_staticId(), 'cs_abstract.optionalParamsPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (cs_abstract.optionalParamsPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'cs_abstract.optionalParamsPrx', varargin{:});
        end
    end
end
