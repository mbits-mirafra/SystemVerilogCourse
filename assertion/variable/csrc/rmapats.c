// file = 0; split type = patterns; threshold = 100000; total count = 0.
#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
#include "rmapats.h"

void  hsG_0__0 (struct dummyq_struct * I1336, EBLK  * I1331, U  I699);
void  hsG_0__0 (struct dummyq_struct * I1336, EBLK  * I1331, U  I699)
{
    U  I1597;
    U  I1598;
    U  I1599;
    struct futq * I1600;
    struct dummyq_struct * pQ = I1336;
    I1597 = ((U )vcs_clocks) + I699;
    I1599 = I1597 & ((1 << fHashTableSize) - 1);
    I1331->I744 = (EBLK  *)(-1);
    I1331->I745 = I1597;
    if (0 && rmaProfEvtProp) {
        vcs_simpSetEBlkEvtID(I1331);
    }
    if (I1597 < (U )vcs_clocks) {
        I1598 = ((U  *)&vcs_clocks)[1];
        sched_millenium(pQ, I1331, I1598 + 1, I1597);
    }
    else if ((peblkFutQ1Head != ((void *)0)) && (I699 == 1)) {
        I1331->I747 = (struct eblk *)peblkFutQ1Tail;
        peblkFutQ1Tail->I744 = I1331;
        peblkFutQ1Tail = I1331;
    }
    else if ((I1600 = pQ->I1239[I1599].I767)) {
        I1331->I747 = (struct eblk *)I1600->I765;
        I1600->I765->I744 = (RP )I1331;
        I1600->I765 = (RmaEblk  *)I1331;
    }
    else {
        sched_hsopt(pQ, I1331, I1597);
    }
}
#ifdef __cplusplus
extern "C" {
#endif
void SinitHsimPats(void);
#ifdef __cplusplus
}
#endif
