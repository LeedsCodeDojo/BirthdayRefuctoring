require 'spec_helper'
require_relative '../../lib/leapyear'

describe LeapYear do
  
  it "should detect a leap year" do
    year = LeapYear.new

    expect(year.leap?(400)).to eq true
    expect(year.leap?(300)).to eq false
    expect(year.leap?(101)).to eq false
    expect(year.leap?(104)).to eq true
    expect(year.leap?(5)).to eq false
  end
end

