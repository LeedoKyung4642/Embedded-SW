DIM A AS BYTE
DIM A_OLD AS BYTE




'******************************************	
MAIN: '라벨설정



    ERX 4800,A,MAIN
    A_old = A

    ON A GOTO MAIN,KEY_RF1,KEY_RF2,KEY_RF3,KEY_RF4,KEY_RF5,KEY_RF6,KEY_RF7,KEY_RF8,KEY_RF9,KEY_RF10,KEY_RF11,KEY_RF12,KEY_RF13,KEY_RF14,KEY_RF15,KEY_RF16,KEY_RF17,KEY_RF18 ,KEY_RF19,KEY_RF20,KEY_RF21,KEY_RF22,KEY_RF23,KEY_RF24,KEY_RF25,KEY_RF26,KEY_RF27,KEY_RF28 ,KEY_RF29,KEY_RF30, KEY_RF31,KEY_RF32,KEY_RF33,KEY_RF34,KEY_RF35,KEY_RF36,KEY_RF37,KEY_RF38 ,KEY_RF39,KEY_RF40,KEY_RF41,KEY_RF42,KEY_RF43,KEY_RF44,KEY_RF45,KEY_RF46,KEY_RF47,KEY_RF48 ,KEY_RF49,KEY_RF50,KEY_RF51,KEY_RF52,KEY_RF53,KEY_RF54,KEY_RF55,KEY_RF56,KEY_RF57,KEY_RF58 ,KEY_RF59,KEY_RF60



    GOTO MAIN	
'******************************************
RX_EXIT:

    ERX 4800, A, MAIN

    GOTO RX_EXIT
    '*******************************************
    '		MAIN 라벨로 가기
    '*******************************************
    '*********** PS2 조종기용 *******************

KEY_RF1: '▲



    GOTO RX_EXIT
    '*******************************************
KEY_RF2: '▶



    GOTO RX_EXIT
    '*******************************************
KEY_RF3: '▼



    GOTO RX_EXIT
    '*******************************************
KEY_RF4: '◀



    GOTO RX_EXIT
    '*******************************************
KEY_RF5: '△



    GOTO RX_EXIT
    '*******************************************
KEY_RF6: 'O



    GOTO RX_EXIT
    '*******************************************
KEY_RF7: 'X



    GOTO RX_EXIT
    '*******************************************
KEY_RF8: '□




    GOTO RX_EXIT
    '*******************************************
KEY_RF9: 'L2




    GOTO RX_EXIT
    '*******************************************
KEY_RF10: 'R2




    GOTO RX_EXIT
    '*******************************************
KEY_RF11: 'L1




    GOTO RX_EXIT
    '*******************************************
KEY_RF12: 'R1





    GOTO RX_EXIT
    '*******************************************
KEY_RF13: 'MODE SELECT



    GOTO RX_EXIT
    '*******************************************
KEY_RF14: ' L-PUSH





    GOTO RX_EXIT
    '*******************************************
KEY_RF15: ' R-PUSH




    GOTO RX_EXIT
    '*******************************************
KEY_RF16: 'STRAT



    GOTO RX_EXIT
    '*******************************************
KEY_RF17: '▲ + △




    GOTO RX_EXIT
    '*******************************************
KEY_RF18: '▲ + O



    GOTO RX_EXIT
    '*******************************************


KEY_RF19: ' ▲ + X




    GOTO RX_EXIT
    '*******************************************
KEY_RF20: '▲ + □





    GOTO RX_EXIT
    '*******************************************
KEY_RF21: '▶ + △




    GOTO RX_EXIT
    '*******************************************
KEY_RF22: '▶ + O





    GOTO RX_EXIT
    '*******************************************
KEY_RF23: '▶ + X


    GOTO RX_EXIT
    '*******************************************
KEY_RF24: '▶ + □




    GOTO RX_EXIT
    '*******************************************
KEY_RF25: ' ▼ + △




    GOTO RX_EXIT
    '*******************************************
KEY_RF26: '▼ + O




    GOTO RX_EXIT
    '*******************************************
KEY_RF27: '▼ + X





    GOTO RX_EXIT
    '*******************************************
KEY_RF28: '▼ + □





    GOTO RX_EXIT
    '*******************************************
KEY_RF29: '◀ + △



    GOTO RX_EXIT
    '*******************************************
KEY_RF30: '◀ + O




    GOTO RX_EXIT
    '*******************************************
KEY_RF31: '◀ + X



    GOTO RX_EXIT
    '*******************************************

KEY_RF32: '◀ + □




    GOTO RX_EXIT
    '*******************************************
KEY_RF33: 'L2 + R2


    GOTO RX_EXIT
    '*******************************************
KEY_RF34: 'L1 + R1


    GOTO RX_EXIT
    '*******************************************
KEY_RF35: 'L1 + L2


    GOTO RX_EXIT
    '*******************************************
KEY_RF36: 'R1 + R2


    GOTO RX_EXIT
    '*******************************************
KEY_RF37: 'L2 + R1


    GOTO RX_EXIT
    '*******************************************
KEY_RF38: 'L1 + R2


    GOTO RX_EXIT
    '*******************************************
KEY_RF39: 'L1+L2+R1+R2



    GOTO RX_EXIT
    '*******************************************
KEY_RF40: 'L-PUSH + R-PUSH




    GOTO RX_EXIT
    '*******************************************
KEY_RF41: 'L2 + ▲



    GOTO RX_EXIT
    '*******************************************
KEY_RF42: 'L2 + ▶



    GOTO RX_EXIT
    '*******************************************
KEY_RF43: 'L2 + ▼


    'NOT USE


    GOTO RX_EXIT
    '*******************************************
KEY_RF44: 'L2 + ◀


    GOTO RX_EXIT
    '*******************************************
KEY_RF45: 'L2 + △


    GOTO RX_EXIT
    '*******************************************
KEY_RF46: 'L2 + O


    GOTO RX_EXIT
    '*******************************************
KEY_RF47: 'L2 + X



    GOTO RX_EXIT
    '*******************************************
KEY_RF48: 'L2 + □



    GOTO RX_EXIT
    '*******************************************
KEY_RF49: 'R2 + ▲



    GOTO RX_EXIT
    '*******************************************
KEY_RF50: 'R2 + ▶



    GOTO RX_EXIT
    '*******************************************
KEY_RF51: 'R2 + ▼


    GOTO RX_EXIT
    '*******************************************
KEY_RF52: 'R2 + ◀


    GOTO RX_EXIT
    '*******************************************
KEY_RF53: 'R2 + △

    GOTO RX_EXIT
    '*******************************************
KEY_RF54: 'R2 + O


    GOTO RX_EXIT
    '*******************************************
KEY_RF55: 'R2 + X



    GOTO RX_EXIT
    '*******************************************
KEY_RF56: 'R2 + □



    GOTO RX_EXIT
    '*******************************************
KEY_RF57: 'L1 + △


    GOTO RX_EXIT
    '*******************************************
KEY_RF58: 'L1 + O


    GOTO RX_EXIT
    '*******************************************
KEY_RF59: 'L1 + X


    GOTO RX_EXIT
    '*******************************************
KEY_RF60: 'L1 + □


    GOTO RX_EXIT
    '*******************************************













