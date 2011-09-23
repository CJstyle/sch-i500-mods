.class public Lcom/sec/android/app/camera/widget/TwReviewButton;
.super Lcom/sec/android/app/camera/widget/TwImageButton;
.source "TwReviewButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/TwImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "arg0"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 84
    iget-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwReviewButton;->mDisabled:Z

    if-eqz v2, :cond_0

    move v2, v4

    .line 128
    :goto_0
    return v2

    .line 88
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwReviewButton;->mDimmed:Z

    if-eqz v2, :cond_1

    move v2, v4

    .line 89
    goto :goto_0

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwReviewButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_2

    .line 93
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/widget/TwReviewButton;->actionInBounds(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwReviewButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 96
    .local v1, res:Z
    if-nez v1, :cond_2

    move v2, v1

    .line 97
    goto :goto_0

    .line 101
    .end local v1           #res:Z
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    move v2, v5

    .line 128
    goto :goto_0

    .line 103
    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwReviewButton;->mPressedBackground:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/TwReviewButton;->setBackgroundResource(I)V

    .line 104
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/widget/TwReviewButton;->showToolTip(Z)V

    goto :goto_1

    .line 108
    :pswitch_2
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwReviewButton;->mNormalBackground:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/TwReviewButton;->setBackgroundResource(I)V

    .line 109
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/widget/TwReviewButton;->showToolTip(Z)V

    .line 111
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/widget/TwReviewButton;->actionInBounds(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 113
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwReviewButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_3

    .line 114
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 115
    .local v0, ev:Landroid/view/MotionEvent;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 116
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwReviewButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, v0}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 122
    .end local v0           #ev:Landroid/view/MotionEvent;
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwReviewButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_3

    .line 123
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwReviewButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
