.class public Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener;
.super Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
.source "MusicPlayerFfRewOnTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandle:Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;


# direct methods
.method public constructor <init>(Landroid/view/GestureDetector;)V
    .locals 1
    .parameter "gestureDetector"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;-><init>(Landroid/view/GestureDetector;)V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener;->mHandle:Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;

    .line 19
    iput-object p1, p0, Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 20
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "view"
    .parameter "event"

    .prologue
    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 29
    .local v0, eventOnView:Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sub-long v1, v3, v5

    .line 32
    .local v1, interval:J
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 45
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 28
    .end local v0           #eventOnView:Z
    .end local v1           #interval:J
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 34
    .restart local v0       #eventOnView:Z
    .restart local v1       #interval:J
    :pswitch_0
    iget-object v3, p0, Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener;->mHandle:Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;

    if-eqz v3, :cond_0

    .line 35
    iget-object v3, p0, Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener;->mHandle:Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;

    invoke-interface {v3}, Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;->onDown()V

    goto :goto_1

    .line 38
    :pswitch_1
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener;->mHandle:Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;

    if-eqz v3, :cond_0

    .line 39
    iget-object v3, p0, Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener;->mHandle:Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;

    invoke-interface {v3, v1, v2}, Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;->onUp(J)V

    goto :goto_1

    .line 42
    :pswitch_2
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener;->mHandle:Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;

    if-eqz v3, :cond_0

    .line 43
    iget-object v3, p0, Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener;->mHandle:Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;

    invoke-interface {v3}, Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;->onOutOfView()V

    goto :goto_1

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setHandler(Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;)V
    .locals 0
    .parameter "handle"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener;->mHandle:Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;

    .line 24
    return-void
.end method
