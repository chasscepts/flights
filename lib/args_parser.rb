class ArgsParser
  def initialize(default_value = 'present')
    @default = default_value
  end

  def parse(args)
    options = {}
    index = 0
    int_pointer = 0
    while index < args.size
      option = get_option(args[index])
      index += 1

      if option.nil?
        options[int_pointer] = args[index - 1]
        int_pointer += 1
      elsif index < args.size
        next_option = get_option(args[index])
        options[option] = next_option.nil? ? args[index] : @default
        index += 1 if next_option.nil?
      else
        options[option] = @default
      end
    end

    options
  end

  private

  def get_option(option)
    return nil unless option.is_a? String
    return option[2..-1] if option.start_with? '--'
    return option[1..-1] if option.start_with? '-'
  end
end
