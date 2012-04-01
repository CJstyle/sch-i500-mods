.class Lcom/sec/android/app/videoplayer/view/VideoSurface$1;
.super Ljava/lang/Object;
.source "VideoSurface.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoSurface;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 362
    const-string v0, "VideoSurface"

    const-string v1, ">>>>>>>>requestLayout<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->requestLayout()V

    .line 364
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 368
    const-string v0, "VideoSurface"

    const-string v1, ">>>>>>>>surfaceCreated<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$002(Lcom/sec/android/app/videoplayer/view/VideoSurface;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceExists:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$102(Lcom/sec/android/app/videoplayer/view/VideoSurface;Z)Z

    .line 371
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    const-string v3, "VideoSurface"

    .line 375
    const-string v1, "VideoSurface"

    const-string v1, ">>>>>>>>surfaceDestroyed<<<<<<<<<<<<"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$002(Lcom/sec/android/app/videoplayer/view/VideoSurface;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 380
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_0

    .line 383
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->savePausedPosition()V

    .line 385
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->updateResumePos(Z)V

    .line 387
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSurface;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->broadcastPausedPosition(Landroid/content/Context;)V

    .line 389
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->stop()V

    .line 390
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->reset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :cond_0
    :goto_0
    const-string v1, "VideoSurface"

    const-string v1, "surfaceDestroyed - after reset"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceExists:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$102(Lcom/sec/android/app/videoplayer/view/VideoSurface;Z)Z

    .line 400
    return-void

    .line 393
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 395
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VideoSurface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException occured  3 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
