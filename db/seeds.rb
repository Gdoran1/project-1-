require('pry-byebug')
require_relative('../models/weapons.rb')
require_relative('../models/manufacturer.rb')
require_relative('../models/type.rb')

manufacturer1 = Manufacturer.new({
  'name' => 'Häkke'
})

manufacturer1.save()

manufacturer2 = Manufacturer.new({
  'name' => 'Omolon'
})

manufacturer2.save()

manufacturer3 = Manufacturer.new({
  'name' => 'Suros'
})

manufacturer3.save()

weapon1 = Weapon.new({
  'name' => 'Fabian Strategy',
  'type' => 'Auto Rifle',
  'manufacturer_id' => manufacturer1.id,
  'quantity' => 6,
  'cost_price' => 200,
  'retail_price' => 600
  })

  weapon1.save()

weapon2 = Weapon.new({
  'name' => 'Cúchulainn-D',
  'type' => 'Shotgun',
  'manufacturer_id' => manufacturer1.id,
  'quantity' => 5,
  'cost_price' => 100,
  'retail_price' => 400
  })

  weapon2.save()

weapon3 = Weapon.new({
  'name' => 'Stillpiercer',
  'type' => 'Sniper Rifle',
  'manufacturer_id' => manufacturer1.id,
  'quantity' => 1,
  'cost_price' => 100,
  'retail_price' => 500
  })

  weapon3.save()

weapon4 = Weapon.new({
  'name' => 'Hard Light',
  'type' => 'Auto Rifle',
  'manufacturer_id' => manufacturer2.id,
  'quantity' => 3,
  'cost_price' => 200,
  'retail_price' => 600
  })

  weapon4.save()

weapon5 = Weapon.new({
  'name' => 'Hung Jury SR4',
  'type' => 'Scout Rifle',
  'manufacturer_id' => manufacturer2.id,
  'quantity' => 3,
  'cost_price' => 100,
  'retail_price' => 550
  })

  weapon5.save()

weapon6 = Weapon.new({
  'name' => 'EX-MACHINA~',
  'type' => 'Sniper Rifle',
  'manufacturer_id' => manufacturer2.id,
  'quantity' => 2,
  'cost_price' => 200,
  'retail_price' => 500
  })

  weapon6.save()

weapon7 = Weapon.new({
  'name' => 'Suros Regime',
  'type' => 'Auto Rifle',
  'manufacturer_id' => manufacturer3.id,
  'quantity' => 1,
  'cost_price' => 200,
  'retail_price' => 600
  })

  weapon7.save()

weapon8 = Weapon.new({
  'name' => 'Suros MKB-21',
  'type' => 'Shotgun',
  'manufacturer_id' => manufacturer3.id,
  'quantity' => 5,
  'cost_price' => 100,
  'retail_price' => 300
  })

  weapon8.save()

weapon9 = Weapon.new({
  'name' => 'Suros JLL-19',
  'type' => 'Sniper Rifle',
  'manufacturer_id' => manufacturer3.id,
  'quantity' => 1,
  'cost_price' => 100,
  'retail_price' => 400
  })

  weapon9.save()
binding.pry
nil
