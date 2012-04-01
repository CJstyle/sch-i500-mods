.class public Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
.super Ljava/lang/Object;
.source "MusicPlayerBaseOnTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener$TouchHandler;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandle:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener$TouchHandler;


# direct methods
.method public constructor <init>(Landroid/view/GestureDetector;)V
    .locals 1
    .parameter "gestureDetector"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;->mHandle:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener$TouchHandler;

    .line 18
    iput-object p1, p0, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 19
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    move v0, v4

    .line 30
    .local v0, eventOnView:Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_0

    if-eqz v0, :cond_0

    .line 31
    iget-object v1, p0, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;->mHandle:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener$TouchHandler;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;->mHandle:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener$TouchHandler;

    invoke-interface {v1}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener$TouchHandler;->doHandle()V

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 27
    .end local v0           #eventOnView:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public setHandler(Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener$TouchHandler;)V
    .locals 0
    .parameter "handle"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;->mHandle:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener$TouchHandler;

    .line 23
    return-void
.end method
