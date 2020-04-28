class Cluster
    @@configures = Hash[
        "zookeeper" => Configure.new(
            vmCounts = 3,
            vmNamePrefixe = "zookeeper",
            hostnamePrefix = "zookeeper",
            vagrantTipPrefix = "zookeeper_",
            ipPrefix = "192.168.50",
            ipStart = 100,
            memorySize = 1024),
        
        "kafka" => Configure.new(
            vmCounts = 1,
            vmNamePrefixe = "kafka",
            hostnamePrefix = "kafka",
            vagrantTipPrefix = "kafka_",
            ipPrefix = "192.168.70",
            ipStart = 100,
            memorySize = 2048),
    ]

    def self.getConfiguration(projectName)
        @@configures[projectName]
    end

    def self.getZookeeperIpAndPorts()
        conf = @@configures["zookeeper"]
        zookeeperIpAndPorts = Array.new
        for i in 1..conf.vmCounts
            zookeeperIpAndPorts << "#{conf.hostnamePrefix}#{i}:2181"
        end
        zookeeperIpAndPorts
    end

    def self.getHosts(hostnamePrefix, idx)
        hosts = "127.0.0.1\tlocalhost\n"
        @@configures.each_value do |conf|
            for i in 1..conf.vmCounts
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