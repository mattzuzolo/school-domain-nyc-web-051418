# code here!

require 'pry'

class School

    attr_accessor :roster, :name
    #attr_reader :roster

    def initialize(name)
      @name = name
      @roster = {}
    end

    def add_student (name, grade)

      #if roster for grade doesn't contain any students, add them as the value
      if @roster[grade] == nil
        @roster[grade] = [name]
      #if the roster DOES contain student(s), then shovel into array
      else
        @roster[grade] << name
      end

    end


    def grade (grade)
        @roster[grade]
    end


    def sort
      new_hash = {}

      @roster.each do |grade, name|

          new_hash[grade] = name.sort()

      end

      new_hash

    end




end


school = School.new("Bayside High School")
school.sort
