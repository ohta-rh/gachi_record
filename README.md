gachi_record
============

light weight ORM

```ruby
# table
#+----+------+----------+-------+
#| id | name | password | email |
#+----+------+----------+-------+
#|  1 | hoge | hoge     | hoge  |
#|  2 | foo | hoge     | hoge  |
#+----+------+----------+-------+


class User < GachiRecord::Base
end

u = User.find 1

u.name
=> "hoge"


u = User.find_by id: 2, name: 'foo'

u.name
=> "foo"

u = User.find 2
=> GachiRecord::RecordNotFound

```

Enjoy it!
