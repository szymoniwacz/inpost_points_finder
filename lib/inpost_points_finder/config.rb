module InpostPointsFinder
  class Config
    attr_accessor :endpoint

    def initialize
      self.endpoint ||= "https://api-pl.easypack24.net/v4/machines"
    end
  end
end
