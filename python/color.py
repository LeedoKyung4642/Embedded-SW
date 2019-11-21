# -*- coding: utf-8 -*-

import numpy as np
import cv2


# HSV
YELLOW_ub = [  32, 255, 255 ]
YELLOW_lb = [  20,  40, 112 ]

RED_ub =    [ 192, 255, 255 ]
RED_lb =    [ 156,  40, 112 ]

BLUE_ub =   [ 120, 255, 255 ]
BLUE_lb =   [ 100,  40, 112 ]

#
REF = {
    'YELLOW' : 0,
    'RED' : 1,
    'BLUE' : 2
}

hsv_ub = np.array([YELLOW_ub, RED_ub, BLUE_ub])
hsv_lb = np.array([YELLOW_lb, RED_lb, BLUE_lb])

# ******************************************************************

def nothing(x):
    pass

def getMask(src, color):
    global hsv_ub, hsv_lb
    hsv = cv2.cvtColor(src, cv2.COLOR_BGR2HSV)

    mask = cv2.inRange(hsv, hsv_lb[color], hsv_ub[color])
    mask = cv2.erode(mask, (3,3), iterations=1)
    mask = cv2.dilate(mask, (3,3), iterations=1)
    return mask


def debugMode(video, resolution):
    frame = None
    upperb = None
    lowerb = None

    winname = 'DEBUG'
    cv2.namedWindow(winname)
    cv2.createTrackbar('H_ub', winname, hsv_ub[0,0], 255, nothing)
    cv2.createTrackbar('H_lb', winname, hsv_lb[0,0], 255, nothing)

    cv2.createTrackbar('S_ub', winname, hsv_ub[0,1], 255, nothing)
    cv2.createTrackbar('S_lb', winname, hsv_lb[0,1], 255, nothing)

    cv2.createTrackbar('V_ub', winname, hsv_ub[0,2], 255, nothing)
    cv2.createTrackbar('V_lb', winname, hsv_lb[0,2], 255, nothing)

    while True:
        key = cv2.waitKey(1)
        if (key == ord(' ')):
            break

        grab, now = video.read()
        if not grab: break
        else:
            frame = cv2.resize(now, resolution)
            cv2.imshow('CAM', frame)

        upperb = np.array([cv2.getTrackbarPos('H_ub', winname), cv2.getTrackbarPos('S_ub', winname), cv2.getTrackbarPos('V_ub', winname)])
        lowerb = np.array([cv2.getTrackbarPos('H_lb', winname), cv2.getTrackbarPos('S_lb', winname), cv2.getTrackbarPos('V_lb', winname)])
            
        hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)
        mask = cv2.inRange(hsv, lowerb, upperb)
        mask = cv2.erode(mask, (3,3), iterations=2)
        mask = cv2.dilate(mask, (3,3), iterations=2)


        cv2.imshow('CAM', frame)
        cv2.imshow('MASK', mask)
        cv2.namedWindow(winname)


def autoSet(frame):
    global hsv_ub, hsv_lb, REF
    fh,fw = frame.shape[:2]
    cy, cx = (fh//2, fw//2)
    
    r = 6 # 사각형 반지름 : (가로-1)/2
    gap = 3*r # 사각형 간격
    rects = [
        {
            'ref' : REF['YELLOW'],
            'box_color' : (0, 255, 255), # BGR
            'p1' : (cx-(3*r+1)-gap, cy-r),
            'p2' : (cx-(r)    -gap, cy+r)
        },
        {
            'ref' : REF['BLUE'],
            'box_color' : (255, 0, 0), # BGR
            'p1' : (cx-r, cy-r),
            'p2' : (cx+r, cy+r)
        },
        {
            'ref' : REF['RED'],
            'box_color' : (0, 0, 255), # BGR
            'p1' : (cx+(r)    +gap, cy-r),
            'p2' : (cx+(3*r+1)+gap, cy+r)
        }]

    update_mode = cv2.waitKey(1) is ord(' ')

    for rect in rects:
        if update_mode:
            x1,y1 = rect['p1']
            x2,y2 = rect['p2']
            ref = rect['ref']

            cut_h = cv2.cvtColor(frame[x1:x2,y1:y2], cv2.COLOR_BGR2HSV)[:,:,0]
            new_color = int(cut_h.mean())

            hsv_ub[ref,0] = new_color + 8
            hsv_lb[ref,0] = new_color - 8

            print('new color set', rect['ref'], new_color)

        cv2.rectangle(frame, rect['p1'], rect['p2'], rect['box_color'], 2)

    return frame
    
