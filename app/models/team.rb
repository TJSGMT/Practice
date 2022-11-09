class Team < ApplicationRecord
    has_many :employees, dependent: :destroy
    belongs_to :department, optional: true
    enum name: { Administration: 0, Sr_executive: 1, content_wirter: 2, content_marketing_lead: 3, copy_writer: 4, BDM: 5, BA: 6, Sr_BA: 7, ROR: 8, Devops: 9, Frontend: 10, Open_source: 11, Data_engineer: 12, Python: 13, Mobile: 14, Block_chain: 15, iOS_dev: 16, Node: 17, sr_QA: 18, VUE_js: 19, Java_dev: 20 }
end