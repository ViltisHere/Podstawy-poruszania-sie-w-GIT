#!/bin/bash

#Główny
#1.1 Wprowadzenie do commitów Gita
git commit
git commit

#1.2 Rozgałęzienia w Gicie
git checkout -b bugfix

#1.3 Merge w Gicie
git checkout -b bugfix
git commit
git checkout main
git commit
git merge bugfix

#1.4 Wprowadzenie do Rebase
git checkout -b bugfix
git commit
git checkout main
git commit
git checkout bugfix
git rebase main

#2.1 Odczep sobie HEAD
git checkout C4

#2.2 Referencje względne
git checkout C4^

#2.3 Referencje względne #2
git branch -f main C6
git branch -f bugFix C0
git checkout C1

#2.4 Odwracanie zmian w Gicie
git reset local~1
git checkout pushed
git revert pushed

#3.1 Przenoszenie pracy
git cherry-pick c3 c4 c7

#3.2 Interaktywny rebase w Gicie
git rebase -i main~4 --aboveAll

#4.1 Wzięcie tylko 1 commita
git checkout main
git cherry-pick c4

#4.2 Żonglowanie commitami
git rebase -i caption~2 --aboveAll
git commit --amend
git rebase -i caption~2 --aboveAll
git branch -f main caption

#4.3 Żonglowanie commitami #2
git checkout main
git cherry-pick c2
git commit --amend
git cherry-pick c3

#4.4 Tagi Gita
git tag v0 c1
git tag v1 c2
git checkout c2

#4.5 Git describe
git commit

#5.1 Rebase ponad 8000 razy
git rebase main bugFix
git rebase bugFix side
git rebase side another
git rebase another main

#5.2 Wielu rodziców
git branch bugWork main~^2~

#5.3 Spaghetti gałęzi
git checkout one
git cherry-pick c4 c3 c2
git checkout two
git cherry-pick c5 c4 c3 c2
git branch -f three c2

#Zdalne
#1.1 Wstęp do klonowania
git clone

#1.2 Zdalne gałęzie
git commit
git checkout o/main
git commit

#1.3 Git fetch
git fetch

#1.4 Git pull
git pull

#1.5 Symulacja pracy zespołowej
git clone
git fakeTeamwork main 2
git commit
git pull

#1.6 Git push
git commit
git commit
git push

#1.7 Rozbieżna historia
git clone
git fakeTeamwork
git commit
git pull --rebase
git push

#1.8 Zablokowany main
git checkout -b feature
git checkout main
git reset --hard o/main
git push origin feature
git checkout feature

#2.1 Wypychanie dla wytrwałych!
git fetch
git rebase o/main side1
git rebase side1 side2
git rebase side2 side3
git rebase side3 main
git push

#2.2 Scalanie z remote
git checkout main
git pull
git merge side1
git merge side2
git merge side3
git push

#2.3 Śledzenie zdalnych repo
git checkout -b side o/main
git commit
git pull --rebase
git push

#2.4 Argumenty git push
git push origin main
git push origin foo

#2.5 Argumenty git push -- Głębiej!
git push origin main~1:foo
git push origin foo:main

#2.6 Argumenty fetch
git fetch origin main~1:foo
git fetch origin foo:main
git checkout foo
git merge main

#2.7 Źródło nicości
git push origin :foo
git fetch origin :bar

#2.8 Argumenty pull
git pull origin bar:foo
git pull origin main:side
