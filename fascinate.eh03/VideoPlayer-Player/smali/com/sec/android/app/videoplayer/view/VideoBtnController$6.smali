.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;
.super Ljava/lang/Object;
.source "VideoBtnController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoBtnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .locals 0
    .parameter

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1111
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1113
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 1114
    .local v2, pressTime:J
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1116
    .local v1, eventaction:I
    if-nez v1, :cond_2

    .line 1120
    :try_start_0
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v4, :cond_0

    .line 1122
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v4}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1124
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->pause()V

    .line 1125
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v5, 0x1

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z
    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2102(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v5, 0x7

    const-wide/16 v6, 0x1f4

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1139
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v5, 0x5

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1140
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v4

    const v5, 0x36ee80

    invoke-interface {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1141
    const/4 v4, 0x0

    .line 1166
    .end local v1           #eventaction:I
    .end local v2           #pressTime:J
    :goto_1
    return v4

    .line 1128
    .restart local v1       #eventaction:I
    .restart local v2       #pressTime:J
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v5, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z
    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2102(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1132
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1134
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1143
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1145
    :cond_3
    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-gez v4, :cond_5

    const/16 v4, 0x14

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-eq v4, v5, :cond_4

    const/16 v4, 0x1a

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-eq v4, v5, :cond_4

    const/16 v4, 0x19

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-ne v4, v5, :cond_5

    .line 1149
    :cond_4
    const-string v4, "VideoPlayerBtnController"

    const-string v5, "mRewTouchListener - previous"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v5, 0x5

    const-wide/16 v6, 0x64

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1153
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v4

    const/16 v5, 0xbb8

    invoke-interface {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1154
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v5, 0x7

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1156
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 1158
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->start()V

    .line 1159
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v5, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z
    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2102(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1161
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 1164
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 1166
    .end local v1           #eventaction:I
    .end local v2           #pressTime:J
    :cond_8
    const/4 v4, 0x0

    goto :goto_1
.end method
