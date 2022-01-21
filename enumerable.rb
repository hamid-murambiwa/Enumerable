module MyEnumerable
    def all?
        return unless block_given?
    
        result = true
        list.each do |e|
          result = false unless yield(e)
        end
        result
      end
    
      def any?
        return unless block_given?
    
        result = false
        list.each do |e|
          result = true if yield(e)
        end
        result
      end
    
      def filter
        return unless block_given?
    
        listArr = []
        list.each do |e|
          listArr.push(e) if yield(e)
        end
        listArr
      end
  end