# motivation = Keyword.create!(name: "motivation")
# peace = Keyword.create!(name: "peace")
# fun = Keyword.create!(name: "fun")

body_one = "haihrjabhcvauHJx;,ac hnzc zhncm;lanchj ajnc"

body_two = "sgfiubaagvxabxv Kmncavsjna,fhjabfijak"

body_three = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lacus vel facilisis volutpat est. Est ultricies integer quis auctor elit sed vulputate mi sit. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. Nam libero justo laoreet sit amet cursus sit amet dictum. Blandit volutpat maecenas volutpat blandit aliquam. Accumsan tortor posuere ac ut consequat semper viverra. Ut diam quam nulla porttitor massa id neque aliquam vestibulum. At consectetur lorem donec massa sapien faucibus et. Rhoncus urna neque viverra justo nec. Tincidunt eget nullam non nisi est sit. Aenean euismod elementum nisi quis eleifend quam adipiscing vitae. Nisl tincidunt eget nullam non nisi est sit amet facilisis. Quis varius quam quisque id diam vel quam. Et netus et malesuada fames. Consectetur purus ut faucibus pulvinar elementum integer enim. Sed risus pretium quam vulputate dignissim suspendisse in est ante. Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Pellentesque massa placerat duis ultricies lacus sed.

Ultrices eros in cursus turpis massa tincidunt dui ut ornare. Ut aliquam purus sit amet luctus venenatis. A diam maecenas sed enim. Dui id ornare arcu odio ut sem. Netus et malesuada fames ac turpis egestas sed. Tincidunt id aliquet risus feugiat in. Morbi non arcu risus quis varius quam. Consequat id porta nibh venenatis. Sed vulputate odio ut enim blandit volutpat maecenas volutpat. Purus gravida quis blandit turpis cursus in hac. Viverra tellus in hac habitasse platea dictumst. Parturient montes nascetur ridiculus mus mauris. Arcu ac tortor dignissim convallis. Viverra tellus in hac habitasse. Mauris pellentesque pulvinar pellentesque habitant morbi tristique senectus et. Risus ultricies tristique nulla aliquet. At urna condimentum mattis pellentesque. Nibh tortor id aliquet lectus proin nibh.

Tempus quam pellentesque nec nam. Rutrum quisque non tellus orci ac auctor augue mauris augue. Eu ultrices vitae auctor eu. Diam ut venenatis tellus in metus vulputate eu. Luctus venenatis lectus magna fringilla. Nibh sit amet commodo nulla facilisi nullam vehicula ipsum. Arcu cursus vitae congue mauris rhoncus aenean vel. Quis hendrerit dolor magna eget est lorem. Arcu cursus vitae congue mauris rhoncus aenean vel elit. Aliquet eget sit amet tellus cras adipiscing enim eu. Scelerisque in dictum non consectetur a erat nam at. Mattis rhoncus urna neque viverra justo nec ultrices. Ornare quam viverra orci sagittis eu. Massa tincidunt dui ut ornare lectus. Dui vivamus arcu felis bibendum ut tristique et egestas quis. Molestie nunc non blandit massa enim. Mi eget mauris pharetra et ultrices neque ornare aenean euismod. Velit sed ullamcorper morbi tincidunt ornare massa eget. Ante metus dictum at tempor commodo ullamcorper a.

Sed vulputate mi sit amet mauris commodo quis imperdiet. Tincidunt arcu non sodales neque sodales ut etiam sit amet. Eu scelerisque felis imperdiet proin fermentum leo. Feugiat in ante metus dictum at tempor commodo ullamcorper. Tellus pellentesque eu tincidunt tortor aliquam nulla. Varius morbi enim nunc faucibus a pellentesque sit amet. In dictum non consectetur a erat nam at lectus urna. Nisi lacus sed viverra tellus. Nibh praesent tristique magna sit amet purus gravida. Malesuada fames ac turpis egestas maecenas pharetra convallis.

Enim sit amet venenatis urna cursus eget. Nibh mauris cursus mattis molestie. Nulla aliquet enim tortor at auctor urna nunc id cursus. Elit ut aliquam purus sit amet luctus venenatis lectus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Sed augue lacus viverra vitae congue eu consequat ac felis. Faucibus purus in massa tempor nec. In cursus turpis massa tincidunt dui ut ornare lectus sit. Cras pulvinar mattis nunc sed blandit. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Nascetur ridiculus mus mauris vitae. Adipiscing bibendum est ultricies integer quis auctor. Risus nullam eget felis eget nunc. Ullamcorper sit amet risus nullam eget felis eget."

Keyword.destroy_all
Entry.destroy_all
User.destroy_all

ruby = User.create!({email: "ruby@example.com", password: "123pass"})
riley = User.create!({email: "riley@example.com", password: "pass123"})

entry_one = Entry.create(body: body_one, user: ruby)
entry_two = Entry.create(body: body_one, user: ruby)
entry_three = Entry.create(body: body_three, user: ruby)

entry_four = Entry.create(body: body_one, user: riley)
entry_five = Entry.create(body: body_one, user: riley)
entry_six = Entry.create(body: body_three, user: riley)
