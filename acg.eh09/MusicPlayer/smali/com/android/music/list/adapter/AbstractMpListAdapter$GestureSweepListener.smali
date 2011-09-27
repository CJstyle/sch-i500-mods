.class public Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;
.super Ljava/lang/Object;
.source "AbstractMpListAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/adapter/AbstractMpListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureSweepListener"
.end annotation


# instance fields
.field private sweep:Z

.field private x:I

.field private y:I


# virtual methods
.method public getSweep()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;->sweep:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;->x:I

    .line 124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;->y:I

    .line 125
    iput-boolean v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;->sweep:Z

    move v0, v2

    .line 150
    :goto_0
    return v0

    .line 129
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;->x:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42c8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 135
    iput-boolean v3, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;->sweep:Z

    move v0, v2

    .line 136
    goto :goto_0

    .line 141
    :cond_1
    iput-boolean v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;->sweep:Z

    move v0, v2

    .line 142
    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    move v0, v2

    .line 148
    goto :goto_0

    :cond_3
    move v0, v2

    .line 150
    goto :goto_0
.end method
