colin_hungry = true
colin_tired = true

p "Colin is hangry" if colin_hungry && colin_tired

colin_tired = false

p "Colin is grumpy" if colin_hungry || colin_tired
