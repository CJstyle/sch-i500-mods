.class public Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;
.super Ljava/lang/Object;
.source "MusicPlayerBaseOnKeyListener.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v0, 0x1

    const/4 v4, 0x0

    .line 24
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 26
    const/16 v2, 0x17

    if-ne p2, v2, :cond_0

    .line 28
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 30
    .local v9, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v9}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 32
    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    move-wide v2, v0

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 34
    .local v8, motionEvent:Landroid/view/MotionEvent;
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 36
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 38
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 46
    .end local v8           #motionEvent:Landroid/view/MotionEvent;
    .end local v9           #r:Landroid/graphics/Rect;
    :cond_0
    return v4
.end method
