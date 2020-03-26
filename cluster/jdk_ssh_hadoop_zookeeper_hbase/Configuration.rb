class Cluster
    @@configures = Hash[
        "zookeeper" => Configure.new(
            vmCounts = 3,
            vmNamePrefixe = "zookeeper",
            hostnamePrefix = "zookeeper",
            vagrantTipPrefix = "zookeeper_",
            ipPrefix = "192.168.50",
            ipStart = 100,
            memorySize = 512),
        
        "hadoop" => Configure.new(
            vmCounts = 3,
            vmNamePrefixe = "hadoop",
            hostnamePrefix = "hadoop",
            vagrantTipPrefix = "hadoop_",
            ipPrefix = "192.168.60",
            ipStart = 100,
            memorySize = 2048),
    ]

    def self.getConfiguration(projectName)
        @@configures[projectName]
    end

    def self.getHosts(hostnamePrefix, idx)
        hosts = "127.0.0.1\tlocalhost\n"
        @@configures.each_value do |conf|
            for i in 1..conf.vmCounts
                # if i == idx && hostnamePrefix == conf.hostnamePrefix then
                #     hosts += "0.0.0.0\t#{conf.hostnamePrefix}#{i}\n"
                # else
                #     hosts += "#{conf.ipPrefix}.#{conf.ipStart + i}\t#{conf.hostnamePrefix}#{i}\n"
                # end
                hosts += "#{conf.ipPrefix}.#{conf.ipStart + i}\t#{conf.hostnamePrefix}#{i}\n"
            end
        end
        hosts
    end

    def self.getHostnames(projectName)
        conf = @@configures[projectName]
        hostnames = ""
        for i in 1..conf.vmCounts
            hostnames += "#{conf.hostnamePrefix}#{i}\n"
        end
        hostnames
    end
end