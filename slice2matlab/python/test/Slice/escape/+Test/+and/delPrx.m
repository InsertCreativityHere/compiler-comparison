classdef delPrx < Ice.ObjectPrx
    %DELPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.and.delPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   delPrx Methods:
    %     elif
    %     elifAsync - An asynchronous elif.
    %
    %   delPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::and::del.
    %     uncheckedCast - Creates a delPrx from another proxy without any validation.
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function except = elif(obj, else, context)
            %ELIF
            %
            %   Input Arguments
            %     else
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     except
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.and.delPrx
                else (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(else);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('elif', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            except = is_.readInt();
            is_.endEncapsulation();
        end

        function future = elifAsync(obj, else, context)
            %ELIFASYNC
            %
            %   Input Arguments
            %     else
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also elif, Ice.Future.
            
            arguments
                obj (1, 1) Test.and.delPrx
                else (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(else);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                except = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = except;
            end
            future = obj.iceInvokeAsync('elif', 0, true, os_, 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::and::del';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.and.delPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::and::del.
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
            %     r - A Test.and.delPrx scalar if the target object implements Slice interface 
            %       ::Test::and::del; otherwise, an empty array of Test.and.delPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.and.delPrx.ice_staticId(), 'Test.and.delPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.and.delPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.and.delPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.and.delPrx', varargin{:});
        end
    end
end
