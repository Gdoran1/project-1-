require('pry-byebug')
require_relative('../models/weapons.rb')
require_relative('../models/manufacturer.rb')


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
  'manufacturer_id' => 'manufacturer1.id',
  'quantity' => 2,
  'cost' => 200,
  'sell' => 600
  })

  weapon1.save()

weapon2 = Weapon.new({
  'name' => 'Cúchulainn-D',
  'type' => 'Shotgun',
  'manufacturer_id' => 'manufacturer1.id',
  'quantity' => 4,
  'cost' => 100,
  'sell' => 350
  })

  weapon2.save()

weapon3 = Weapon.new({
  'name' => 'Stillpiercer',
  'type' => 'Sniper Rifle',
  'manufacturer_id' => 'manufacturer1.id',
  'quantity' => 1,
  'cost' => 100,
  'sell' => 500
  })

  weapon3.save()

weapon4 = Weapon.new({
  'name' => 'Hard Light',
  'type' => 'Auto Rifle',
  'manufacturer_id' => 'manufacturer2.id',
  'quantity' => 3,
  'cost' => 200,
  'sell' => 600
  })

  weapon4.save()

weapon5 = Weapon.new({
  'name' => 'Hung Jury SR4',
  'type' => 'Scout Rifle',
  'manufacturer_id' => 'manufacturer2.id',
  'quantity' => 3,
  'cost' => 100,
  'sell' => 550
  })

  weapon5.save()

weapon6 = Weapon.new({
  'name' => 'EX-MACHINA~',
  'type' => 'Sniper Rifle',
  'manufacturer_id' => 'manufacturer2.id',
  'quantity' => 2,
  'cost' => 200,
  'sell' => 500
  })

  weapon6.save()

weapon7 = Weapon.new({
  'name' => 'Suros Regime',
  'type' => 'Auto Rifle',
  'manufacturer_id' => 'manufacturer3.id',
  'quantity' => 1,
  'cost' => 200,
  'sell' => 600
  })

  weapon7.save()

weapon8 = Weapon.new({
  'name' => 'Suros MKB-21',
  'type' => 'Shotgun',
  'manufacturer_id' => 'manufacturer3.id',
  'quantity' => 2,
  'cost' => 100,
  'sell' => 300
  })

  weapon8.save()

weapon9 = Weapon.new({
  'name' => 'Suros JLL-19',
  'type' => 'Sniper Rifle',
  'manufacturer_id' => 'manufacturer3.id',
  'quantity' => 1,
  'cost' => 100,
  'sell' => 400
  })

  weapon9.save()
binding.pry
nil
