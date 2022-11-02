# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = [{:user_id=>'sa4084',:name=>'Surya',:uni=>'mar4048'},
        {:user_id=>'jar2333',:name=>'Jose',:uni=>'jo2333'},
        {:user_id=>'aj3087',:name=>'Alvin',:uni=>'al3087'},
        {:user_id=>'ma4987',:name=>'Michael',:uni=>'mc5678'},
        {:user_id=>'sa4567',:name=>'Sal',:uni=>'sl6048'},
        {:user_id=>'trj2122',:name=>'Tarang',:uni=>'ta4577'},
        {:user_id=>'sr5677',:name=>'Sam',:uni=>'sr2348'},
        {:user_id=>'rt6789',:name=>'Rick',:uni=>'rk3248'},
        {:user_id=>'ds2387',:name=>'Dan',:uni=>'dn3448'},
        {:user_id=>'br2346',:name=>'Bob',:uni=>'bb5678'},
]
users.each do |user|
    User.create!(user)
end
authentications = [{:user_id=>'sa4084',:auth_hash=>'8a9d093f14f8701df17732b2bb182c74',:auth_token=>'1644b7d8de472cc3b5c3f9e2674200a22ea0b17d'},
        {:user_id=>'jar2333',:auth_hash=>'b79ebc82ee77524b087c22b313899ba6',:auth_token=>'4bf154e3f3721ce55f0aa3ae78adfc42117e1be1'},
        {:user_id=>'aj3087',:auth_hash=>'891083cbbac58d67474b77c574666a82',:auth_token=>'c52a40ced2fced7e0fca9f97e03184f4e9883f51'},
        {:user_id=>'ma4987',:auth_hash=>'a69492170300a3d505d9e9878ba0ed2f',:auth_token=>'d5281e56903a969f77f1be6777a0a12f72054e6b'},
        {:user_id=>'sa4567',:auth_hash=>'6f0fadd09c27cc096e830f92b81bdfb7',:auth_token=>'3687c90d5b80814007ccd89ebb7f386f721928b9'},
        {:user_id=>'trj2122',:auth_hash=>'e2939f2fd80b16e9562414fd65f223b2',:auth_token=>'995a8d1ca644759276890547bcbc8924abfc3e6d'},
        {:user_id=>'sr5677',:auth_hash=>'3ed437c1daab246441c9a6ed5134ee41',:auth_token=>'7263d3416c0be5e58dd8885d03f2ee1cb33df35f'},
        {:user_id=>'rt6789',:auth_hash=>'8a6ee9abf1184c8eaab03f83c063eecb',:auth_token=>'23d73b06c473f78265cb7cf017dcc40444328f1f'},
        {:user_id=>'ds2387',:auth_hash=>'4a28bf5002835ed5ea51a795ad056970',:auth_token=>'debc1d6c4cbd06d767ed106dda64d4cf7d6f6d58'},
        {:user_id=>'br2346',:auth_hash=>'00d7c2db4cb68315afe54e33227416f3',:auth_token=>'b16490c4624748b5f271acec28c5fb3f1e70a6d6'},
]
authentications.each do |authentication|
    Authentication.create!(authentication)
end


followers = [{:user_id=>'sa4084',:follower_id=>'aj3087'},
        {:user_id=>'jar2333',:follower_id=>'sa4084'},
        {:user_id=>'aj3087',:follower_id=>'ma4987'},
        {:user_id=>'ma4987',:follower_id=>'sa4567'},
        {:user_id=>'sa4567',:follower_id=>'trj2122'},
        {:user_id=>'trj2122',:follower_id=>'sr5677'},
        {:user_id=>'sr5677',:follower_id=>'rt6789'},
        {:user_id=>'rt6789',:follower_id=>'ds2387'},
        {:user_id=>'ds2387',:follower_id=>'br2346'},
        {:user_id=>'br2346',:follower_id=>'sa4567'},
]
followers.each do |follower|
    Follower.create!(follower)
end
registrations = [{:user_id=>'sa4084',:event_id=>'E01'},
        {:user_id=>'jar2333',:event_id=>'E03'},
        {:user_id=>'aj3087',:event_id=>'E01'},
        {:user_id=>'ma4987',:event_id=>'E03'},
        {:user_id=>'sa4567',:event_id=>'E01'},
        {:user_id=>'trj2122',:event_id=>'E03'},
        {:user_id=>'sr5677',:event_id=>'E04'},
        {:user_id=>'rt6789',:event_id=>'E06'},
        {:user_id=>'ds2387',:event_id=>'E08'},
        {:user_id=>'br2346',:event_id=>'E08'},
        {:user_id=>'sa4048',:event_id=>'E02'},
        {:user_id=>'rt6789',:event_id=>'E02'},
        {:user_id=>'jar2333',:event_id=>'E01'},
        {:user_id=>'sa4084',:event_id=>'E02'},
        {:user_id=>'sr5677',:event_id=>'E03'},
        {:user_id=>'trj2122',:event_id=>'E04'},
        {:user_id=>'ds2387',:event_id=>'E06'},
        {:user_id=>'jar2333',:event_id=>'E07'},
        {:user_id=>'rt6789',:event_id=>'E05'},
        {:user_id=>'trj2122',:event_id=>'E08'},
        {:user_id=>'sr5677',:event_id=>'E09'},
        {:user_id=>'ds2387',:event_id=>'E10'},
]
registrations.each do |registration|
    Registration.create!(registration)
end
