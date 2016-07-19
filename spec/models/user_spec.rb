require 'rails_helper'

RSpec.describe User, type: :model do
  it "has many events" do
    relation=User.reflect_on_association(:events)
    expect(relation.macro).to equal :has_many
  end
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:surname) }
  it { should validate_presence_of(:city) }
  end
