class FooBar
  def self.answer_to(number)
    return "#{number}" unless number.is_a? Fixnum
    return "FooBar" if is_foo_bar(number)
    return "Foo" if is_foo(number)
    return "Bar" if is_bar(number)
    return number.to_s
  end

  def self.is_foo(number)
    number % 3 == 0
  end

  def self.is_bar(number)
    number % 5 == 0
  end

  def self.is_foo_bar(number)
    is_foo(number) && is_bar(number)
  end
end
