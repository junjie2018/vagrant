class Configure
    def initialize(vmCounts, vmNamePrefix, hostnamePrefix, vagrantTipPrefix, ipPrefixe, ipStart, memorySize)
        @vmCounts = vmCounts
        @vmNamePrefix = vmNamePrefix
        @hostnamePrefix = hostnamePrefix
        @vagrantTipPrefix = vagrantTipPrefix
        @ipPrefixe = ipPrefixe
        @ipStart = ipStart
        @memorySize = memorySize
    end

    def vmCounts
        @vmCounts
    end

    def vmNamePrefix
        @vmNamePrefix
    end

    def hostnamePrefix
        @hostnamePrefix
    end

    def vagrantTipPrefix
        @vagrantTipPrefix
    end

    def ipPrefix
        @ipPrefixe
    end

    def ipStart
        @ipStart
    end

    def memorySize
        @memorySize
    end
end