% delPrx   Summary of delPrx
%
% delPrx Methods:
%   elif
%   elifAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef delPrx < Ice.ObjectPrx
    methods
        function except = elif(obj, else_, varargin)
            % elif
            %
            % Parameters:
            %   else_ (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(else_);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('elif', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            except = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = elifAsync(obj, else_, varargin)
            % elifAsync
            %
            % Parameters:
            %   else_ (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(else_);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                except = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = except;
            end
            r_ = obj.iceInvokeAsync('elif', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::and::del';
        end
        function r = ice_read(is)
            r = is.readProxy('and.delPrx');
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
            % Returns (and.delPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, and.delPrx.ice_staticId(), 'and.delPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (and.delPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'and.delPrx', varargin{:});
        end
    end
end
