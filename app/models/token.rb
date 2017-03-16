module Token
  @cache= ActiveSupport::Cache::MemoryStore.new(expires_in: 1.minute)
  class << self
    attr_reader :cache

    def gen type
      id = SecureRandom.uuid
      while cache.exist? id
        id = SecureRandom.uuid
      end
      cache.write(id, {
        type: type
      })
      id
    end

    def use id
      token_content = cache.read id
      if token_content
        cache.delete id
      end

      token_content
    end
  end
end
