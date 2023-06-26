classdef tcpClient
    properties
        connection = 0;
        isConnected = false;
    end
    
    methods
        function obj = tcpClient(obj)
            obj.isConnected = false;
        end
        function data = readData(obj)
            data = read(obj.connection);
        end
        function sendData(obj, data, type)
            send(obj.connection, data, type);
        end
        function obj = connect(obj, adres , port)
            if obj.isConnected 
                return 
            end

            try
                 obj.connection = tcpclient(adres, str2double(port), "Timeout", 5);
            catch ex
                msgbox(ex.message, "Błąd!", "error");
                disp(ex);
                return;
            end
            obj.isConnected = true;
        end
    end
end

