.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;
.super Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;
.source "MoviePlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1931
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public checkIsDRM(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->checkIsDRM(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getBufferPercentage()I

    move-result v0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getFullPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getPublisher()Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$2200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public internalSetEq(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 2009
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->internalSetEq(I)V

    .line 2010
    return-void
.end method

.method public isConnectionAlive()Z
    .locals 1

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isConnectionAlive()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$2302(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1976
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1977
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1978
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1980
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/16 v1, 0x66

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$2402(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1981
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->pause()V

    .line 1982
    return-void
.end method

.method public play()V
    .locals 4

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$2302(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1986
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1988
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1989
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1990
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/16 v1, 0x65

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$2402(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1991
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->play()V

    .line 1992
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->reset()V

    .line 1996
    return-void
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setWakeMode(Z)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->setWakeMode(Z)V

    .line 2005
    return-void
.end method

.method public startPlay(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->startPlay(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$2302(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1967
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1968
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1969
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1971
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/16 v1, 0x67

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$2402(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1972
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->stop()V

    .line 1973
    return-void
.end method
