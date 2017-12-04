class Book < ApplicationRecord
    scope :finished, ->{ where('finished_on IS NOT NULL')}

    def finished?
        finished_on.present?
    end
end
