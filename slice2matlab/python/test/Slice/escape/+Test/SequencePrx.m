classdef SequencePrx < Ice.ObjectPrx
    %SEQUENCEPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.SequencePrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   SequencePrx Methods:
    %     abstractmethod
    %     abstractmethodAsync - An asynchronous abstractmethod.
    %     sendIntSeq
    %     sendIntSeqAsync - An asynchronous sendIntSeq.
    %
    %   SequencePrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Sequence.
    %     uncheckedCast - Creates a SequencePrx from another proxy without any validation.
    %
    %   Generated from Clash.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function sendIntSeq(obj, seq, context)
            %SENDINTSEQ
            %
            %   Input Arguments
            %     seq
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.SequencePrx
                seq (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(seq);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sendIntSeq', 0, false, os_, false, {}, context);
        end

        function future = sendIntSeqAsync(obj, seq, context)
            %SENDINTSEQASYNC
            %
            %   Input Arguments
            %     seq
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also sendIntSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.SequencePrx
                seq (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(seq);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('sendIntSeq', 0, false, os_, 0, [], {}, context);
        end

        function abstractmethod(obj, context)
            %ABSTRACTMETHOD
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.SequencePrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('abstractmethod', 0, false, [], false, {}, context);
        end

        function future = abstractmethodAsync(obj, context)
            %ABSTRACTMETHODASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also abstractmethod, Ice.Future.
            
            arguments
                obj (1, 1) Test.SequencePrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('abstractmethod', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Sequence';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.SequencePrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Sequence.
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
            %     r - A Test.SequencePrx scalar if the target object implements Slice interface 
            %       ::Test::Sequence; otherwise, an empty array of Test.SequencePrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.SequencePrx.ice_staticId(), 'Test.SequencePrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.SequencePrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.SequencePrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.SequencePrx', varargin{:});
        end
    end
end
