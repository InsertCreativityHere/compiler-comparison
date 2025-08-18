classdef catchPrx < Ice.ObjectPrx
    %CATCHPRX
    %
    %   Creation
    %     Syntax
    %       prx = abstract.catchPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   catchPrx Methods:
    %     checkedCast
    %     checkedCastAsync - An asynchronous checkedCast.
    %
    %   catchPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::abstract::catch.
    %     uncheckedCast - Creates a catchPrx from another proxy without any validation.
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function continue = checkedCast(obj, clone, context)
            %CHECKEDCAST
            %
            %   Input Arguments
            %     clone
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     continue
            %       int32 scalar
            
            arguments
                obj (1, 1) abstract.catchPrx
                clone (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(clone);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('checkedCast', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            continue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = checkedCastAsync(obj, clone, context)
            %CHECKEDCASTASYNC
            %
            %   Input Arguments
            %     clone
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also checkedCast, Ice.Future.
            
            arguments
                obj (1, 1) abstract.catchPrx
                clone (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(clone);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                continue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = continue;
            end
            future = obj.iceInvokeAsync('checkedCast', 0, true, os_, 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::abstract::catch';
        end

        function r = ice_read(is)
            r = is.readProxy('abstract.catchPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::abstract::catch.
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
            %     r - A abstract.catchPrx scalar if the target object implements Slice interface 
            %       ::abstract::catch; otherwise, an empty array of abstract.catchPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, abstract.catchPrx.ice_staticId(), 'abstract.catchPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a abstract.catchPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new abstract.catchPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'abstract.catchPrx', varargin{:});
        end
    end
end
