module LeadsHelper
  def pairs(valueType)
    add_prompt(valueType.pairs(:display))
  end

  def pairs_no_param(valueType)
    add_prompt(valueType.pairs)
  end

  def add_prompt(arr)
    arr.unshift(['--', ''])
  end
end