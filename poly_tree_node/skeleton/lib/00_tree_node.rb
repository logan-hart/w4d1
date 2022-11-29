class PolyTreeNode
    attr_reader :parent, :children, :value
    def initialize(value, parent=nil, children=[])
        @parent = parent
        @children = children
        @value = value
    end
    def parent=(node)
        if !@parent.nil?
            self.parent.children.delete(self)
        end
        @parent = node
        if !@parent.nil? && !@parent.children.include?(self)
            @parent.children << self
        end
    end
    def add_child(node)
        if !self.children.include?(node)
            self.children << node
        end
        node.parent = self
    end
    def remove_child(node)
        idx = self.children.index(node)
        self.children[idx].parent = nil
        self.children.delete(node)
        raise "NOT VALID" if idx.nil?
    end


end
