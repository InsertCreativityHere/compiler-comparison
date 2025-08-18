classdef casePrx < Ice.ObjectPrx
    %CASEPRX
    %
    %   Creation
    %     Syntax
    %       prx = await.casePrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   casePrx Methods:
    %     catch
    %     catchAsync - An asynchronous catch.
    %
    %   casePrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::await::case.
    %     uncheckedCast - Creates a casePrx from another proxy without any validation.
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function continue = catch(obj, checked, context)
            %CATCH
            %
            %   Input Arguments
            %     checked
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     continue
            %       int32 scalar
            
            arguments
                obj (1, 1) await.casePrx
                checked (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(checked);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('catch', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            continue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = catchAsync(obj, checked, context)
            %CATCHASYNC
            %
            %   Input Arguments
            %     checked
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also catch, Ice.Future.
            
            arguments
                obj (1, 1) await.casePrx
                checked (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(checked);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                continue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = continue;
            end
            future = obj.iceInvokeAsync('catch', 0, true, os_, 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::await::case';
        end

        function r = ice_read(is)
            r = is.readProxy('await.casePrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::await::case.
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
            %     r - A await.casePrx scalar if the target object implements Slice interface 
            %       ::await::case; otherwise, an empty array of await.casePrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, await.casePrx.ice_staticId(), 'await.casePrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a await.casePrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new await.casePrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'await.casePrx', varargin{:});
        end
    end
end
