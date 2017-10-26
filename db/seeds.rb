require('pry-byebug')
require_relative('../models/weapons.rb')
require_relative('../models/manufacturer.rb')
require_relative('../models/type.rb')

Weapon.delete_all()
Type.delete_all()
Manufacturer.delete_all()

manufacturer1 = Manufacturer.new({
  'name' => 'Häkke',
  'image_url' => 'https://pbs.twimg.com/profile_images/624774722119569408/G8HOAfuY_400x400.jpg'
})

manufacturer1.save()

manufacturer2 = Manufacturer.new({
  'name' => 'Omolon',
  'image_url' => 'https://cdn.dribbble.com/users/73104/screenshots/2868965/omolon_1.gif'
})

manufacturer2.save()

manufacturer3 = Manufacturer.new({
  'name' => 'Suros',
  'image_url' => 'https://cdna.artstation.com/p/assets/covers/images/001/108/352/medium/kieran-baker-suros-wallpaper-by-kieranbaker-d93cvd4.jpg?1440230322'
})

manufacturer3.save()

type1 = Type.new({
  'type' => 'Auto Rifle'
  })

type1.save()

type2 = Type.new({
  'type' => 'Scout Rifle'
  })

type2.save()

type3 = Type.new({
  'type' => 'Sniper Rifle'
  })

type3.save()

type4 = Type.new({
  'type' => 'Shotgun'
  })

type4.save()


weapon1 = Weapon.new({
  'name' => 'Fabian Strategy',
  'type_id' => type1.id,
  'manufacturer_id' => manufacturer1.id,
  'quantity' => 6,
  'cost_price' => 200,
  'retail_price' => 600
  })

  weapon1.save()

weapon2 = Weapon.new({
  'name' => 'Cúchulainn-D',
  'type_id' => type4.id,
  'manufacturer_id' => manufacturer1.id,
  'quantity' => 5,
  'cost_price' => 100,
  'retail_price' => 400
  })

  weapon2.save()

weapon3 = Weapon.new({
  'name' => 'Stillpiercer',
  'type_id' => type3.id,
  'manufacturer_id' => manufacturer1.id,
  'quantity' => 1,
  'cost_price' => 100,
  'retail_price' => 500
  })

  weapon3.save()

weapon4 = Weapon.new({
  'name' => 'Hard Light',
    'type_id' => type1.id,
  'manufacturer_id' => manufacturer2.id,
  'quantity' => 3,
  'cost_price' => 200,
  'retail_price' => 600
  })

  weapon4.save()

weapon5 = Weapon.new({
  'name' => 'Hung Jury SR4',
  'type_id' =>  type2.id,
  'manufacturer_id' => manufacturer2.id,
  'quantity' => 3,
  'cost_price' => 100,
  'retail_price' => 550
  })

  weapon5.save()

weapon6 = Weapon.new({
  'name' => 'EX-MACHINA~',
  'type_id' => type3.id,
  'manufacturer_id' => manufacturer2.id,
  'quantity' => 2,
  'cost_price' => 200,
  'retail_price' => 500
  })

  weapon6.save()

weapon7 = Weapon.new({
  'name' => 'Suros Regime',
    'type_id' => type1.id,
  'manufacturer_id' => manufacturer3.id,
  'quantity' => 1,
  'cost_price' => 200,
  'retail_price' => 600
  })

  weapon7.save()

weapon8 = Weapon.new({
  'name' => 'Suros MKB-21',
  'type_id' => type4.id,
  'manufacturer_id' => manufacturer3.id,
  'quantity' => 5,
  'cost_price' => 100,
  'retail_price' => 300
  })

  weapon8.save()

weapon9 = Weapon.new({
  'name' => 'Suros JLL-19',
  'type_id' => type3.id,
  'manufacturer_id' => manufacturer3.id,
  'quantity' => 1,
  'cost_price' => 100,
  'retail_price' => 400
  })

  weapon9.save()
binding.pry
nil
