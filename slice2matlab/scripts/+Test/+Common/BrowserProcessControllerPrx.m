classdef BrowserProcessControllerPrx < Test.Common.ProcessControllerPrx
    %BROWSERPROCESSCONTROLLERPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.Common.BrowserProcessControllerPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   BrowserProcessControllerPrx Methods:
    %     redirect
    %     redirectAsync - An asynchronous redirect.
    %
    %   BrowserProcessControllerPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Common::BrowserProcessController.
    %     uncheckedCast - Creates a BrowserProcessControllerPrx from another proxy without any validation.
    %
    %   Generated from Controller.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function redirect(obj, url, context)
            %REDIRECT
            %
            %   Input Arguments
            %     url
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.Common.BrowserProcessControllerPrx
                url (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(url);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('redirect', 0, false, os_, false, {}, context);
        end

        function future = redirectAsync(obj, url, context)
            %REDIRECTASYNC
            %
            %   Input Arguments
            %     url
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also redirect, Ice.Future.
            
            arguments
                obj (1, 1) Test.Common.BrowserProcessControllerPrx
                url (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(url);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('redirect', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Common::BrowserProcessController';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.Common.BrowserProcessControllerPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Common::BrowserProcessController.
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
            %     r - A Test.Common.BrowserProcessControllerPrx scalar if the target object implements Slice interface 
            %       ::Test::Common::BrowserProcessController; otherwise, an empty array of Test.Common.BrowserProcessControllerPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.Common.BrowserProcessControllerPrx.ice_staticId(), 'Test.Common.BrowserProcessControllerPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.Common.BrowserProcessControllerPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.Common.BrowserProcessControllerPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.Common.BrowserProcessControllerPrx', varargin{:});
        end
    end
end
