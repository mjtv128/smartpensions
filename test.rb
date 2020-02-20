class Test 

    def initialize(fileName)
        @file = File.open(fileName, "r").read

        @arr = []
        File.foreach(fileName){ |line|
            @arr.append(line)
        }
    end

    def mostPageViews
        map = Hash.new(0)
        @arr.each {
            |key|
            route = key.split(" ")[0]
            map[route] += 1
        }

        map = map.sort_by{ |key, value| value}.reverse.to_h
    
        map.each do |key, value|
            key + " : " + value.to_s
        end
    end

    def mostUniquePage
        unqiue = Hash.new(0)
        @arr.each {
            | key |
            unqiue[key] =1
        }
        map2 = Hash.new(0)
        unqiue.each do |key, value|
            str = key.split(" ")[0]
            map2[str] +=1
        end

        map2 = map2.sort_by{ |key, value| value }.reverse.to_h
    
        map2.each do |key, value|
            key + " " + value.to_s + " unique views"
    end
        
    end

end


