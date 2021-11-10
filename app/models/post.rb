class Post < ApplicationRecord
  belongs_to :user
  enum language: {"Java":1,"PHP":2,"JavaScript":3,"C/C++":4,"C#":5,"Python":6,"Ruby":7}
  
end
