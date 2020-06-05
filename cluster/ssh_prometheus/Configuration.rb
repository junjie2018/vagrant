class Cluster
    @@configures = Hash[
        "prometheus" => Configure.new(
            vmCounts = 3,
            vmNamePrefixe = "prometheus",
            hostnamePrefix = "prometheus",
            vagrantTipPrefix = "prometheus_",
            ipPrefix = "172.17.30",
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
