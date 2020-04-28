class Cluster
    @@configures = Hash[
        "istio" => Configure.new(
            vmCounts = 3,
            vmNamePrefixe = "istio",
            hostnamePrefix = "istio",
            vagrantTipPrefix = "istio_",
            ipPrefix = "192.168.20",
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