module MyEnumerable
  def all?
    return unless block_given?

    result = true
    @list.each do |e|
      result = false unless yield(e)
    end
    result
  end

  def any?
    return unless block_given?

    result = false
    @list.each do |e|
      result = true if yield(e)
    end
    result
  end

  def filter
    return unless block_given?

    list_arr = []
    @list.each do |e|
      list_arr.push(e) if yield(e)
    end
    list_arr
  end
end
