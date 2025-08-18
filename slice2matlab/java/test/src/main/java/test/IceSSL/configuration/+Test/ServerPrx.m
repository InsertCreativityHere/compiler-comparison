classdef ServerPrx < Ice.ObjectPrx
    %SERVERPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.ServerPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ServerPrx Methods:
    %     checkCert
    %     checkCertAsync - An asynchronous checkCert.
    %     checkCipher
    %     checkCipherAsync - An asynchronous checkCipher.
    %     noCert
    %     noCertAsync - An asynchronous noCert.
    %
    %   ServerPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Server.
    %     uncheckedCast - Creates a ServerPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function noCert(obj, context)
            %NOCERT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ServerPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('noCert', 0, false, [], false, {}, context);
        end

        function future = noCertAsync(obj, context)
            %NOCERTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also noCert, Ice.Future.
            
            arguments
                obj (1, 1) Test.ServerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('noCert', 0, false, [], 0, [], {}, context);
        end

        function checkCert(obj, subjectDN, issuerDN, context)
            %CHECKCERT
            %
            %   Input Arguments
            %     subjectDN
            %       character vector
            %     issuerDN
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ServerPrx
                subjectDN (1, :) char
                issuerDN (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(subjectDN);
            os_.writeString(issuerDN);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('checkCert', 0, false, os_, false, {}, context);
        end

        function future = checkCertAsync(obj, subjectDN, issuerDN, context)
            %CHECKCERTASYNC
            %
            %   Input Arguments
            %     subjectDN
            %       character vector
            %     issuerDN
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also checkCert, Ice.Future.
            
            arguments
                obj (1, 1) Test.ServerPrx
                subjectDN (1, :) char
                issuerDN (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(subjectDN);
            os_.writeString(issuerDN);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('checkCert', 0, false, os_, 0, [], {}, context);
        end

        function checkCipher(obj, cipher, context)
            %CHECKCIPHER
            %
            %   Input Arguments
            %     cipher
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ServerPrx
                cipher (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(cipher);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('checkCipher', 0, false, os_, false, {}, context);
        end

        function future = checkCipherAsync(obj, cipher, context)
            %CHECKCIPHERASYNC
            %
            %   Input Arguments
            %     cipher
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also checkCipher, Ice.Future.
            
            arguments
                obj (1, 1) Test.ServerPrx
                cipher (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(cipher);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('checkCipher', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Server';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.ServerPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Server.
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
            %     r - A Test.ServerPrx scalar if the target object implements Slice interface 
            %       ::Test::Server; otherwise, an empty array of Test.ServerPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.ServerPrx.ice_staticId(), 'Test.ServerPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.ServerPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.ServerPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.ServerPrx', varargin{:});
        end
    end
end
