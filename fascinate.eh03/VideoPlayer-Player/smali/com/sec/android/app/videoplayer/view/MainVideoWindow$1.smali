.class Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;
.super Ljava/lang/Object;
.source "MainVideoWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/MainVideoWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 67
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 69
    .local v0, action:I
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getLockState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getLockCtrlView()Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;

    move-result-object v1

    .line 72
    .local v1, lockLayout:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;
    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->showLockIcon()V

    :cond_0
    move v4, v6

    .line 104
    .end local v1           #lockLayout:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;
    :goto_0
    return v4

    .line 77
    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->mIsBeingDragged:Z
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$000(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mChangeViewDone:Z

    if-nez v4, :cond_2

    move v4, v6

    .line 78
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 82
    .local v3, y:I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v4, v6

    .line 104
    goto :goto_0

    .line 86
    :pswitch_0
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v2

    .line 87
    .local v2, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-eqz v2, :cond_3

    sget-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mChangeViewDone:Z

    if-eqz v4, :cond_3

    .line 89
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isControlsShowing()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 91
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    #getter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->mControlPostion:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$100(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I

    move-result v4

    if-le v3, v4, :cond_4

    .line 92
    const/16 v4, 0xbb8

    invoke-virtual {v2, v4}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 100
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;->this$0:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    const/4 v5, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->mIsBeingDragged:Z
    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->access$002(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;Z)Z

    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->toggleControlsVisiblity()V

    goto :goto_2

    .line 97
    :cond_5
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->toggleControlsVisiblity()V

    goto :goto_2

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
