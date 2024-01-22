% breakPrx   Summary of breakPrx
%
% breakPrx Methods:
%   case_
%   caseAsync
%   to_a
%   to_aAsync
%   instance_variable_set
%   instance_variable_setAsync
%   instance_variables
%   instance_variablesAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef breakPrx < Ice.ObjectPrx
    methods
        function case_(obj, clone, def, varargin)
            % case_
            %
            % Parameters:
            %   clone (int32)
            %   def (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(clone);
            os_.writeInt(def);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('case', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = caseAsync(obj, clone, def, varargin)
            % caseAsync
            %
            % Parameters:
            %   clone (int32)
            %   def (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(clone);
            os_.writeInt(def);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('case', 0, false, os_, 0, [], {}, varargin{:});
        end
        function to_a(obj, varargin)
            % to_a
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('to_a', 0, false, [], false, {}, varargin{:});
        end
        function r_ = to_aAsync(obj, varargin)
            % to_aAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('to_a', 0, false, [], 0, [], {}, varargin{:});
        end
        function instance_variable_set(obj, varargin)
            % instance_variable_set
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('instance_variable_set', 0, false, [], false, {}, varargin{:});
        end
        function r_ = instance_variable_setAsync(obj, varargin)
            % instance_variable_setAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('instance_variable_set', 0, false, [], 0, [], {}, varargin{:});
        end
        function instance_variables(obj, varargin)
            % instance_variables
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('instance_variables', 0, false, [], false, {}, varargin{:});
        end
        function r_ = instance_variablesAsync(obj, varargin)
            % instance_variablesAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('instance_variables', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::BEGIN::break';
        end
        function r = ice_read(is)
            r = is.readProxy('BEGIN.breakPrx');
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
            % Returns (BEGIN.breakPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, BEGIN.breakPrx.ice_staticId(), 'BEGIN.breakPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (BEGIN.breakPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'BEGIN.breakPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = breakPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
