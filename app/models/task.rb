class Task < ApplicationRecord

    belongs_to :level

    def self.incomplete
        where(check: false).order('id DESC')
    end

    def self.complete
        where(check: true).order('id DESC')
    end

end