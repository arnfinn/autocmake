program example

   implicit none
   logical :: test_ok

! file generated at build time
#include "git_info.h"

   test_ok = len(GIT_COMMIT_HASH)   > 0 .and. &
             len(GIT_COMMIT_AUTHOR) > 0 .and. &
             len(GIT_COMMIT_DATE)   > 0 .and. &
             len(GIT_BRANCH)        > 0

   if (test_ok) print *, 'PASSED'

end program
