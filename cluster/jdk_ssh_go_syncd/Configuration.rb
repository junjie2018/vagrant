class Cluster
    @@configures = Hash[
        "master" => Configure.new(
            vmCounts = 1,
            vmNamePrefixe = "syncd",
            hostnamePrefix = "syncd",
            vagrantTipPrefix = "syncd_",
            ipPrefix = "192.168.30",
            ipStart = 100,
            memorySize = 1024),
        
        "slave" => Configure.new(
            vmCounts = 3,
            vmNamePrefixe = "slave",
            hostnamePrefix = "slave",
            vagrantTipPrefix = "slave",
            ipPrefix = "192.168.30",
            ipStart = 101,
            memorySize = 1024),
    ]

    def self.getConfiguration(projectName)
        @@configures[projectName]
    end

    def self.getHosts(hostnamePrefix, idx)
        hosts = "0.0.0.0\tlocalhost\n"
        @@configures.each_value do |conf|
            for i in 1..conf.vmCounts
                if i == idx && hostnamePrefix == conf.hostnamePrefix then
                    hosts += "0.0.0.0\t#{conf.hostnamePrefix}#{i}\n"
                else
                    hosts += "#{conf.ipPrefix}.#{conf.ipStart + i}\t#{conf.hostnamePrefix}#{i}\n"
                end
            end
        end
        hosts
    end
end