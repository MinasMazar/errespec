require "errespec/formatters/plof"

module ErreSpec
  def self.demo_mode?
    @demo_mode ||= false
  end

  def self.demo_mode!(bool = true)
    @demo_mode = bool
  end
end
