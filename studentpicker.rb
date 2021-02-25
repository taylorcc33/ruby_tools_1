#!/usr/bin/env ruby

students = ["Taylor", "Ian", "Dani", "Andrew", "Sarah", "Tony"]

new_arr1 = []
new_arr2 = []
new_arr3 = []

def random_groups(new_arr, students)
  x = students.sample
  students.delete(x)

  y = students.sample
  students.delete(y)

  new_arr << x
  new_arr << y

  puts new_arr.inspect
end

random_groups(new_arr1, students)
random_groups(new_arr2, students)
random_groups(new_arr3, students)
