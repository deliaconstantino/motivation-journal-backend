# Model/migration creation

1. create entry migration/model for journal entries:
  - id primary key: integer
  - body: text
  - time_interval: float
  - later: has many :entries_keywords
  - later: has_many :keywords through: :entries_keywords

2. create quotes migration/model
  - id primary key: integer
  - body: text
  - author: string

3. create keyword migration/model
  - id primary key: integer
  - name: string
  - later: has many :entries_keywords
  - later: has_many :entries through: :entries_keywords

4. create entriesKeyords migration/model + relationships
  - id primary key: integer
  - entry_id: integer
  - keyword_id: integer
  - belongs_to :entry
  - belongs_to :keyword




## Steps for each model creation:
- checkout new branch
- migration/model - (rails db:create + rails db:migrate bc postgres)
- seed data - (use dependent: destroy && <CategoryName>.destroy_all for seed data in order to reseed database w/o duplicating data)
- rails console to check properly loaded
- merge branch to main
