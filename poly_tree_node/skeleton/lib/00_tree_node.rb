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
        end
        
    end

end