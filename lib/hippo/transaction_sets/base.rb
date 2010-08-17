module Hippo::TransactionSets
  class Base
    class << self
      attr_accessor :components, :identifier

      def components
        @components ||= []
      end

      def loop_name(id)
        identifier = id
      end

      def add_component(klass, options={}) 
        components << options.merge(:class => klass)
      end
      alias segment add_component
      alias loop add_component
    end

    attr_accessor :values

    def values
      @values ||= []
    end
    
    def to_s
      output = ''

      values.each do |component|
        output += component.to_s
      end

      output
    end

    def get_component(identifier, sequence = 0)
      self.class.components.select do |c|
        c[:class].identifier == identifier
      end[sequence]
    end

    def method_missing(method_name, *args) 
      component_entry = get_component(method_name.to_s)
      component = component_entry[:class].new
      
      # iterate through the hash of defaults
      # and assign them to the component before
      # adding to @values
      component_entry.each do |key, value|
        next unless key.class == String

        component.send((key + '=').to_sym, value)
      end

      values << component

      return component
    end  
  end
end
