class PolyTreeNode

    attr_reader :parent, :children, :value 

    def initialize(value)
        @value = value
        @parent = nil 
        @children = []
    end

    def parent=(parent_node)
        if self.parent 
            self.parent.children.delete(self)          
        end
        @parent = parent_node
        @parent.children << self if @parent != nil 
    end

    def add_child(child)
        child.parent = self
    end
    
    def remove_child(child)
        if @children.include?(child)
            child.parent = nil 
        else
            raise "Not a child" 
        end
    end

    def dfs(target_value)
        return self if self.value == target_value

        search_result = nil
        self.children.each do |child|
            search_result = child.dfs(target_value)
            return search_result unless search_result.nil?
        end

        return nil
    end
    
    def bfs(target)
        queue = [self] #[A]
        until queue.empty?
            test1 = queue.shift # A []
            return test1 if test1.value == target # "A" == "F"
            test1.children.each do |child|
                queue.push(child)
            end
        end
        return nil
    end
end

# DFS & BFS
#    A
#  B   C
# D E   H