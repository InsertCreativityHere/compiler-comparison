classdef MyClassPrx < Ice.ObjectPrx
    %MYCLASSPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.MyClassPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   MyClassPrx Methods:
    %     opNDAIS
    %     opNDAISAsync - An asynchronous opNDAIS.
    %     opNDASS
    %     opNDASSAsync - An asynchronous opNDASS.
    %     opNDGIS
    %     opNDGISAsync - An asynchronous opNDGIS.
    %     opNDGSS
    %     opNDGSSAsync - An asynchronous opNDGSS.
    %     opNDR
    %     opNDRAsync - An asynchronous opNDR.
    %     opNDV
    %     opNDVAsync - An asynchronous opNDV.
    %     opNR
    %     opNRAsync - An asynchronous opNR.
    %     opNV
    %     opNVAsync - An asynchronous opNV.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   MyClassPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::MyClass.
    %     uncheckedCast - Creates a MyClassPrx from another proxy without any validation.
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('shutdown', 0, false, [], false, {}, context);
        end

        function future = shutdownAsync(obj, context)
            %SHUTDOWNASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also shutdown, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end

        function [returnValue, o] = opNV(obj, i, context)
            %OPNV
            %
            %   Input Arguments
            %     i
            %       int32, int32) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32, int32) scalar
            %     o
            %       int32, int32) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.NV.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opNV', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.NV.read(is_);
            returnValue = Test.NV.read(is_);
            is_.endEncapsulation();
        end

        function future = opNVAsync(obj, i, context)
            %OPNVASYNC
            %
            %   Input Arguments
            %     i
            %       int32, int32) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opNV, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.NV.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.NV.read(is_);
                returnValue = Test.NV.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opNV', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opNR(obj, i, context)
            %OPNR
            %
            %   Input Arguments
            %     i
            %       string, string) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, string) scalar
            %     o
            %       string, string) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.NR.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opNR', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.NR.read(is_);
            returnValue = Test.NR.read(is_);
            is_.endEncapsulation();
        end

        function future = opNRAsync(obj, i, context)
            %OPNRASYNC
            %
            %   Input Arguments
            %     i
            %       string, string) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opNR, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.NR.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.NR.read(is_);
                returnValue = Test.NR.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opNR', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opNDV(obj, i, context)
            %OPNDV
            %
            %   Input Arguments
            %     i
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, cell) scalar
            %     o
            %       string, cell) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.NDV.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opNDV', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.NDV.read(is_);
            returnValue = Test.NDV.read(is_);
            is_.endEncapsulation();
        end

        function future = opNDVAsync(obj, i, context)
            %OPNDVASYNC
            %
            %   Input Arguments
            %     i
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opNDV, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.NDV.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.NDV.read(is_);
                returnValue = Test.NDV.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opNDV', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opNDR(obj, i, context)
            %OPNDR
            %
            %   Input Arguments
            %     i
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, cell) scalar
            %     o
            %       string, cell) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.NDR.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opNDR', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.NDR.read(is_);
            returnValue = Test.NDR.read(is_);
            is_.endEncapsulation();
        end

        function future = opNDRAsync(obj, i, context)
            %OPNDRASYNC
            %
            %   Input Arguments
            %     i
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opNDR, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.NDR.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.NDR.read(is_);
                returnValue = Test.NDR.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opNDR', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opNDAIS(obj, i, context)
            %OPNDAIS
            %
            %   Input Arguments
            %     i
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, cell) scalar
            %     o
            %       string, cell) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.NDAIS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opNDAIS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.NDAIS.read(is_);
            returnValue = Test.NDAIS.read(is_);
            is_.endEncapsulation();
        end

        function future = opNDAISAsync(obj, i, context)
            %OPNDAISASYNC
            %
            %   Input Arguments
            %     i
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opNDAIS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.NDAIS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.NDAIS.read(is_);
                returnValue = Test.NDAIS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opNDAIS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opNDGIS(obj, i, context)
            %OPNDGIS
            %
            %   Input Arguments
            %     i
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, cell) scalar
            %     o
            %       string, cell) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.NDGIS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opNDGIS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.NDGIS.read(is_);
            returnValue = Test.NDGIS.read(is_);
            is_.endEncapsulation();
        end

        function future = opNDGISAsync(obj, i, context)
            %OPNDGISASYNC
            %
            %   Input Arguments
            %     i
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opNDGIS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.NDGIS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.NDGIS.read(is_);
                returnValue = Test.NDGIS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opNDGIS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opNDASS(obj, i, context)
            %OPNDASS
            %
            %   Input Arguments
            %     i
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, cell) scalar
            %     o
            %       string, cell) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.NDASS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opNDASS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.NDASS.read(is_);
            returnValue = Test.NDASS.read(is_);
            is_.endEncapsulation();
        end

        function future = opNDASSAsync(obj, i, context)
            %OPNDASSASYNC
            %
            %   Input Arguments
            %     i
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opNDASS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.NDASS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.NDASS.read(is_);
                returnValue = Test.NDASS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opNDASS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opNDGSS(obj, i, context)
            %OPNDGSS
            %
            %   Input Arguments
            %     i
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, cell) scalar
            %     o
            %       string, cell) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.NDGSS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opNDGSS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.NDGSS.read(is_);
            returnValue = Test.NDGSS.read(is_);
            is_.endEncapsulation();
        end

        function future = opNDGSSAsync(obj, i, context)
            %OPNDGSSASYNC
            %
            %   Input Arguments
            %     i
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opNDGSS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.NDGSS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.NDGSS.read(is_);
                returnValue = Test.NDGSS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opNDGSS', 0, true, os_, 2, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::MyClass';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.MyClassPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::MyClass.
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
            %     r - A Test.MyClassPrx scalar if the target object implements Slice interface 
            %       ::Test::MyClass; otherwise, an empty array of Test.MyClassPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MyClassPrx.ice_staticId(), 'Test.MyClassPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.MyClassPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.MyClassPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MyClassPrx', varargin{:});
        end
    end
end
