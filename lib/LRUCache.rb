class LRUCache
    # Initialize your data structure here
    # @param {Integer} capacity
    def initialize(capacity)
        @store = {}
        @cache = []
        @capacity = capacity
    end

    # @param {Integer} key
    # @return {Integer}
    def get(key)
        if @store[key]
          @cache.delete(key)
          @cache << key
          return @store[key]
        end
        return -1
    end

    # @param {Integer} key
    # @param {Integer} value
    # @return {Void}
    def set(key, value)
        added = false
        # If already in the store, reset
        if @store[key]
           @cache.delete(key)
           @cache << key
           @store[key] = value
           added = true
        end
        # If within capacity, add
        if @cache.length < @capacity && !added
            @store[key] = value
            @cache << key
            added = true
        end
        # Make room, then add
        unless added
            @store[@cache.shift] = nil
            @cache << key
            @store[key] = value
        end
    end
end
