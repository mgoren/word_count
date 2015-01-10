word_counter
written by Mike Goren - code@mortalwombat.net

This simple web app counts the number of times a user-provided word appears in a user-provided string.
It is intentionally case insensitive and ignores punctuation.

1/9/15 - added feature to highlight the matching words found; for simpler version with only one method and without this feature, retrieve previous git commit

----------

SETUP INSTRUCTIONS:

Dependencies: Ruby Gems Sinatra and sinatra-contrib

1. run from console: gem install bundle

2. run from console: bundle

3. run from console: ruby app.rb

4. open URL in web browser: localhost:4567

----------

Copyright 2015 Mike Goren
Distributed under the terms of the GNU General Public License

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
