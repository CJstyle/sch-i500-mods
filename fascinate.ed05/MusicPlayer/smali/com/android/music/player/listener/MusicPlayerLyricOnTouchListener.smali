.class public Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;
.super Ljava/lang/Object;
.source "MusicPlayerLyricOnTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener$TouchHandler;
    }
.end annotation


# instance fields
.field private bMoved:Z

.field private downX:I

.field private downY:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandle:Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener$TouchHandler;


# direct methods
.method public constructor <init>(Landroid/view/GestureDetector;)V
    .locals 2
    .parameter "gestureDetector"

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;->mHandle:Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener$TouchHandler;

    .line 11
    iput v1, p0, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;->downX:I

    .line 12
    iput v1, p0, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;->downY:I

    .line 13
    iput-boolean v1, p0, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;->bMoved:Z

    .line 21
    iput-object p1, p0, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 22
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "event"

    .prologue
    const/16 v5, 0x28

    const/4 v4, 0x1

    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 32
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 33
    .local v1, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 35
    .local v2, y:I
    if-nez v0, :cond_1

    .line 36
    iput v1, p0, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;->downX:I

    .line 37
    iput v2, p0, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;->downY:I

    .line 38
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;->bMoved:Z

    .line 48
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 39
    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 40
    iget-boolean v3, p0, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;->bMoved:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;->downX:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v5, :cond_2

    iget v3, p0, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;->downY:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v5, :cond_0

    .line 41
    :cond_2
    iput-boolean v4, p0, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;->bMoved:Z

    goto :goto_0

    .line 43
    :cond_3
    if-ne v0, v4, :cond_0

    .line 44
    iget-object v3, p0, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;->mHandle:Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener$TouchHandler;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;->bMoved:Z

    if-nez v3, :cond_0

    .line 45
    iget-object v3, p0, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;->mHandle:Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener$TouchHandler;

    invoke-interface {v3}, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener$TouchHandler;->doHandle()V

    goto :goto_0
.end method

.method public setHandler(Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener$TouchHandler;)V
    .locals 0
    .parameter "handle"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;->mHandle:Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener$TouchHandler;

    .line 26
    return-void
.end method
