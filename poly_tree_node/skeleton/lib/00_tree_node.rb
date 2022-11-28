class PolyTreeNode
    
    attr_reader :parent, :children, :value

    def initialize(value, parent=nil, children=[])
        @parent = parent
        @children = children
        @value = value
    end

    def parent=(node)
        if !self.parent.nil?
            self.parent = node 
        else
            self.parent = nil
        end #This is causing the infinite loop
            if !self.children.include?(node)
                node.children << self.children
            end 
        # end
        
    end

end