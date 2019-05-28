module Enumerable
    def my_each
        i = 0
        while i < self.size
            yield(self[i])
            i += 1
        end
        self
    end

    def my_each_with_index
        i = 0
        while i < self.size
            yield(self[i], i)
            i += 1
        end
        self
    end

    def my_select
        i = 0
        new_array = []
        while i < self.size
            if yield(self[i]) == true
                new_array << self [i]
            end
            i += 1
        end
        new_array
    end

    def my_all?
        i = 0
        while i < self.size
            if yield(self[i]) == false || yield(self[i]) == nil
                return false
            end
            i += 1
        end
        true
    end

    def my_any?
        self
    end

    def my_count
        self
    end
    
    def my_map
        self
    end

    def my_inject
        self
    end

    def multiply_els
        self
    end


end
