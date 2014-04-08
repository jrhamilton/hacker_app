require 'spec_helper'

FactoryGirl.define do

  factory :upload do
    name  'test name'
    link  'https://test_link.com'
    title 'test title'
    vote_count  4
  end
 end
