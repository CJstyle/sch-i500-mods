.class Lcom/android/phone/DTMFTwelveKeyDialerView;
.super Landroid/widget/LinearLayout;
.source "DTMFTwelveKeyDialerView.java"


# instance fields
.field private mButtonGrid:Lcom/android/phone/ButtonGridLayout;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mLandscape:Landroid/view/View;

.field private mOrientation:I

.field private mPortrait:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 98
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v1, :cond_0

    .line 99
    packed-switch v0, :pswitch_data_0

    .line 108
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 102
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move v15, v0

    .line 115
    .local v15, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 116
    .local v16, y:I
    const/4 v4, 0x0

    .line 117
    .local v4, closestDeltaX:I
    const/4 v5, 0x0

    .line 119
    .local v5, closestDeltaY:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->getTouchables()Ljava/util/ArrayList;

    move-result-object v14

    .line 120
    .local v14, touchables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const v10, 0x7fffffff

    .line 121
    .local v10, minDistance:I
    const/4 v3, 0x0

    .line 123
    .local v3, closest:Landroid/view/View;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 125
    .local v11, numTouchables:I
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 127
    .local v13, touchableBounds:Landroid/graphics/Rect;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v11, :cond_6

    .line 128
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 131
    .local v12, touchable:Landroid/view/View;
    invoke-virtual {v12, v13}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 133
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 135
    move-object v0, v13

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 136
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 171
    .end local v12           #touchable:Landroid/view/View;
    :goto_1
    return v17

    .line 140
    .restart local v12       #touchable:Landroid/view/View;
    :cond_0
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move v0, v15

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 141
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    sub-int v6, v17, v15

    .line 149
    .local v6, deltaX:I
    :goto_2
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 150
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    sub-int v7, v17, v16

    .line 157
    .local v7, deltaY:I
    :goto_3
    mul-int v17, v6, v6

    mul-int v18, v7, v7

    add-int v8, v17, v18

    .line 158
    .local v8, distanceSquared:I
    if-ge v8, v10, :cond_1

    .line 159
    move v10, v8

    .line 160
    move-object v3, v12

    .line 161
    move v4, v6

    .line 162
    move v5, v7

    .line 127
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 142
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v8           #distanceSquared:I
    :cond_2
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move v0, v15

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 143
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    sub-int v6, v17, v15

    .restart local v6       #deltaX:I
    goto :goto_2

    .line 145
    .end local v6           #deltaX:I
    :cond_3
    const/4 v6, 0x0

    .restart local v6       #deltaX:I
    goto :goto_2

    .line 151
    :cond_4
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 152
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    sub-int v7, v17, v16

    .restart local v7       #deltaY:I
    goto :goto_3

    .line 154
    .end local v7           #deltaY:I
    :cond_5
    const/4 v7, 0x0

    .restart local v7       #deltaY:I
    goto :goto_3

    .line 167
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v12           #touchable:Landroid/view/View;
    :cond_6
    if-eqz v3, :cond_7

    .line 168
    move v0, v4

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 169
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    goto :goto_1

    .line 171
    :cond_7
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    goto/16 :goto_1
.end method

.method getDialerOrientationView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 84
    iget v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    if-ne v1, v2, :cond_0

    move v0, v2

    .line 85
    .local v0, isPortrait:Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    :goto_1
    return-object v1

    .line 84
    .end local v0           #isPortrait:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 85
    .restart local v0       #isPortrait:Z
    :cond_1
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    goto :goto_1
.end method

.method resetDialer(Lcom/android/phone/DTMFTwelveKeyDialer;I)V
    .locals 5
    .parameter "dialer"
    .parameter "orientation"

    .prologue
    const v4, 0x7f080054

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 70
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 71
    iput p2, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    .line 72
    iget v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ButtonGridLayout;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mButtonGrid:Lcom/android/phone/ButtonGridLayout;

    .line 74
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ButtonGridLayout;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mButtonGrid:Lcom/android/phone/ButtonGridLayout;

    .line 78
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 1
    .parameter "dialer"

    .prologue
    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    .line 64
    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    .line 65
    const v0, 0x7f080062

    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    .line 66
    iget v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->resetDialer(Lcom/android/phone/DTMFTwelveKeyDialer;I)V

    .line 67
    return-void
.end method
