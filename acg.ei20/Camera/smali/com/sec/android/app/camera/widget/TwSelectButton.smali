.class public Lcom/sec/android/app/camera/widget/TwSelectButton;
.super Lcom/sec/android/app/camera/widget/TwImageButton;
.source "TwSelectButton.java"


# instance fields
.field private mPrevSelected:Z

.field private mSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .parameter "context"
    .parameter "normalImage"
    .parameter "pressedImage"
    .parameter "dimmedImage"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/widget/TwImageButton;-><init>(Landroid/content/Context;III)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mPrevSelected:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/TwImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mPrevSelected:Z

    .line 33
    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mSelected:Z

    .line 34
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "arg0"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 56
    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mDisabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mDimmed:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    .line 97
    :goto_0
    return v1

    .line 60
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 61
    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mSelected:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mPrevSelected:Z

    .line 62
    iget v1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mPressedImage:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setButtonImage(I)V

    .line 63
    iget v1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mPressedBackground:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setBackgroundResource(I)V

    .line 64
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/widget/TwSelectButton;->showToolTip(Z)V

    .line 94
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_8

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 66
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/widget/TwSelectButton;->showToolTip(Z)V

    .line 67
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->actionInBounds(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mSelected:Z

    if-eqz v1, :cond_4

    .line 69
    iput-boolean v4, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mSelected:Z

    .line 70
    iget v1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mNormalImage:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setButtonImage(I)V

    .line 71
    iget v1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mNormalBackground:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 73
    :cond_4
    iput-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mSelected:Z

    .line 74
    iget v1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mPressedImage:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setButtonImage(I)V

    .line 75
    iget v1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mPressedBackground:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 79
    :cond_5
    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mPrevSelected:Z

    if-nez v1, :cond_6

    .line 80
    iput-boolean v4, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mSelected:Z

    .line 81
    iget v1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mNormalImage:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setButtonImage(I)V

    .line 82
    iget v1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mNormalBackground:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setBackgroundResource(I)V

    .line 86
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_7

    .line 87
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 88
    .local v0, ev:Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, v0}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .end local v0           #ev:Landroid/view/MotionEvent;
    :cond_7
    move v1, v3

    .line 91
    goto :goto_0

    :cond_8
    move v1, v4

    .line 97
    goto :goto_0
.end method

.method public setDimmed(Z)V
    .locals 1
    .parameter "dimmed"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mDimmed:Z

    .line 102
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mDimmed:Z

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->SetClickSoundDisabled()V

    .line 104
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mDimmedImage:I

    if-eqz v0, :cond_0

    .line 105
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mDimmedImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setButtonImage(I)V

    .line 107
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mDimmedBackground:I

    if-eqz v0, :cond_1

    .line 108
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mDimmedBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setBackgroundResource(I)V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->SetClickSoundEnabled()V

    .line 112
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mSelected:Z

    if-eqz v0, :cond_3

    .line 113
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mPressedImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setButtonImage(I)V

    .line 114
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mPressedBackground:I

    if-eqz v0, :cond_1

    .line 115
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mPressedBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 118
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mNormalImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setButtonImage(I)V

    .line 119
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mNormalBackground:I

    if-eqz v0, :cond_1

    .line 120
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mNormalBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 1
    .parameter "selected"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mDimmed:Z

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 44
    :cond_0
    if-eqz p1, :cond_1

    .line 45
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mPressedImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setButtonImage(I)V

    .line 46
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mPressedBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setBackgroundResource(I)V

    .line 52
    :goto_1
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mSelected:Z

    goto :goto_0

    .line 48
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mNormalImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setButtonImage(I)V

    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwSelectButton;->mNormalBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setBackgroundResource(I)V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->showToolTip(Z)V

    goto :goto_1
.end method
