# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


bang_eff = Effect.create!(effect: 'Бах')
beer_eff = Effect.create!(effect: 'Пиво')
others = Effect.create!(effect: 'Остальные')
weapon = Effect.create!(effect: 'Оружие')
any_player = Effect.create!(effect: 'Любой')
take_card = Effect.create!(effect: 'Возьми')
drop_card = Effect.create!(effect: 'Сбрось')
miss = Effect.create!(effect: 'Промах')
empty_ef = Effect.create!(effect: "0")

user1 = User.create!(nickname: 'user1', password: '123')
user2 = User.create!(nickname: 'user2', password: 'qwe')
user3 = User.create!(nickname: 'user3', password: 'qwe123')
user4 = User.create!(nickname: 'user4', password: 'qwe123')

sheriff = Role.create!(role: 'Шериф')
criminal = Role.create!(role: 'Преступник')
helper = Role.create!(role: 'Помошник')
maniac = Role.create!(role: 'Маньяк')

bang1 = Card.create!(name: 'Бах', effect: bang_eff, number: 7, suit: 'Крести', quantity: 1, range: 'Видимость', place: 'Колода', color: 'orange')
bang2 = Card.create!(name: 'Бах', effect: bang_eff, number: 9, suit: 'Черви', quantity: 1, range: 'Видимость', place: 'Отбой', color: 'orange')
bang3 = Card.create!(name: 'Бах', effect: bang_eff, number: 12, suit: 'Крести', quantity: 1, range: 'Видимость', place: 'Рука', color: 'orange')
bang4 = Card.create!(name: 'Бах', effect: bang_eff, number: 11, suit: 'Трефы', quantity: 1, range: 'Видимость', place: 'Стол', color: 'orange')
mustang1 = Card.create!(name: 'Мустанг', effect: empty_ef, description: 'Остальные игроки видят вас на расстоянии +1', range: '1', number: 9, suit: 'Черви', range: 0, place: 'Стол', color: 'blue')
mustang2 = Card.create!(name: 'Мустанг', effect: empty_ef, description: 'Остальные игроки видят вас на расстоянии +1', range: '1', number: 8, suit: 'Черви', range: 0, place: 'Отбой', color: 'blue')
dilizhans1 = Card.create!(name: 'Дилижанс', effect: take_card, number: 9, suit: 'Пики', quantity: 2, place: 'Рука', range: '1', color: 'orange')
dilizhans2 = Card.create!(name: 'Дилижанс', effect: take_card, number: 9, suit: 'Пики', quantity: 2, range: '1', place: 'Рука', color: 'orange')

character1 = Character.create!(name: 'Малыш Билли', hp: 4, description: 'Он может играть любое количество карт БАХ в свой ход')
character2 = Character.create!(name: 'Бедствие Жанет', hp: 4, description: 'Для неё что БАХ, что ПРОМАХ - ЕДИНО!')
character3 = Character.create!(name: 'Поль Огорчение', hp: 3, description: 'Все игроки видят его на единицу дальше')

player1 = Player.create!(user: user1, role: sheriff, character: character1, card: 'bang3', range: 1, position: 1, cur_hp: 4, is_active: true, is_bang: true, is_banged: false)
player2 = Player.create!(user: user2, role: criminal, character: character2, card: 'bang2', range: 1, position: 1, cur_hp: 3, is_active: true, is_bang: true, is_banged: false)

player3 = Player.create!(user: user3, role: criminal, character: character3, card: 'bang2', range: 1, position: 1, cur_hp: 3, is_active: true, is_bang: true, is_banged: false)

unless Game.any?
 Game.create!( players:player1, status: 'wait')
 Game.create!( players:player2, status: 'wait')
 end

