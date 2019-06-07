require 'Date'

def return_10()
  return 10
end

def add(num_1, num_2)
  return num_1 + num_2
end

def subtract(num_1, num_2)
  return num_1 - num_2
end

def multiply(num_1, num_2)
  return num_1 * num_2
end

def divide(num_1, num_2)
  return num_1 / num_2
end

def length_of_string(string)
  return string.length
end

def join_string(string_1, string_2)
  return string_1 + string_2
end

def add_string_as_number(string1, string2)
  return string1.to_i + string2.to_i
end

def number_to_full_month_name(number)
  return Date::MONTHNAMES[number]
end

def number_to_short_month_name(number)
  number_to_full_month_name(number)[0..2]
end

def volume_of_cube(number)
  number ** 3
end

def volume_of_sphere(number)
  float_vol = (4.0 / 3.0) * Math::PI * (number ** 3)
  float_vol.to_i
end

def fahrenheit_to_celsius(temperature)
  celsius_temp = (temperature - 32.0) * 5.0 / 9.0
  celsius_temp.round(2)
end

def volume_of_sphere_exact(number)
  float = (4.0 / 3.0) * Math::PI * (number ** 3)
  float.round(2)
end
