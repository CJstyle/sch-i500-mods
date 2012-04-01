.class Lcom/sec/android/app/videoplayer/view/VideoSurface$2;
.super Landroid/os/Handler;
.source "VideoSurface.java"


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
    .line 612
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const-wide/16 v6, 0x1f4

    const-wide/high16 v4, 0x4000

    const/4 v2, 0x4

    const-string v3, "VideoSurface"

    .line 615
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 699
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 618
    .restart local p0
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->hideVolumeBar()V

    goto :goto_0

    .line 622
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->hideControls()V

    goto :goto_0

    .line 627
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->hideTitleControls()V

    goto :goto_0

    .line 631
    :pswitch_3
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_0

    .line 633
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->next(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    const-string v1, "VideoSurface"

    const-string v1, "mHandler() - next false"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSurface;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->finish()V

    goto :goto_0

    .line 642
    .restart local p0
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->pause()V

    goto :goto_0

    .line 645
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->start()V

    goto :goto_0

    .line 650
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mLongKeyCnt:I
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$300(Lcom/sec/android/app/videoplayer/view/VideoSurface;)I

    move-result v1

    if-le v1, v2, :cond_2

    .line 651
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mLongKeyCnt:I
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$302(Lcom/sec/android/app/videoplayer/view/VideoSurface;I)I

    .line 653
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSeekPos:I
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$400(Lcom/sec/android/app/videoplayer/view/VideoSurface;)I

    move-result v1

    if-nez v1, :cond_3

    .line 654
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getCurrentPosition()I

    move-result v2

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSeekPos:I
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$402(Lcom/sec/android/app/videoplayer/view/VideoSurface;I)I

    .line 656
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mLongKeyCnt:I
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$300(Lcom/sec/android/app/videoplayer/view/VideoSurface;)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$412(Lcom/sec/android/app/videoplayer/view/VideoSurface;I)I

    .line 657
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSeekPos:I
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$400(Lcom/sec/android/app/videoplayer/view/VideoSurface;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->seekTo(I)V

    .line 658
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v6, v7}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->sendMessage(IJ)V

    .line 659
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$308(Lcom/sec/android/app/videoplayer/view/VideoSurface;)I

    goto/16 :goto_0

    .line 665
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getCurrentPosition()I

    move-result v0

    .line 666
    .local v0, pos:I
    const/16 v1, 0x1388

    if-le v0, v1, :cond_4

    .line 667
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->seekTo(I)V

    goto/16 :goto_0

    .line 670
    :cond_4
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->prev()Z

    move-result v1

    if-nez v1, :cond_0

    .line 672
    const-string v1, "VideoSurface"

    const-string v1, "REWSHORTSEEK - prev false"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSurface;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->finish()V

    goto/16 :goto_0

    .line 681
    .end local v0           #pos:I
    .restart local p0
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mLongKeyCnt:I
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$300(Lcom/sec/android/app/videoplayer/view/VideoSurface;)I

    move-result v1

    if-le v1, v2, :cond_5

    .line 683
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mLongKeyCnt:I
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$302(Lcom/sec/android/app/videoplayer/view/VideoSurface;I)I

    .line 685
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSeekPos:I
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$400(Lcom/sec/android/app/videoplayer/view/VideoSurface;)I

    move-result v1

    if-nez v1, :cond_6

    .line 687
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getCurrentPosition()I

    move-result v2

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSeekPos:I
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$402(Lcom/sec/android/app/videoplayer/view/VideoSurface;I)I

    .line 689
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mLongKeyCnt:I
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$300(Lcom/sec/android/app/videoplayer/view/VideoSurface;)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$420(Lcom/sec/android/app/videoplayer/view/VideoSurface;I)I

    .line 690
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSeekPos:I
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$400(Lcom/sec/android/app/videoplayer/view/VideoSurface;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->seekTo(I)V

    .line 691
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v6, v7}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->sendMessage(IJ)V

    .line 692
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$308(Lcom/sec/android/app/videoplayer/view/VideoSurface;)I

    goto/16 :goto_0

    .line 615
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
