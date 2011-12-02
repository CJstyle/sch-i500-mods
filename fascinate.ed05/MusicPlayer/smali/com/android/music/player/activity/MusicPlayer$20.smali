.class Lcom/android/music/player/activity/MusicPlayer$20;
.super Landroid/os/Handler;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/activity/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/activity/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 2933
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private skipBackword()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 2898
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v3, "skipBackword() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2903
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v2, v2, Lcom/android/music/player/activity/MusicPlayer;->isShownAdditionalBar:Z

    if-nez v2, :cond_0

    .line 2905
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v2, v4, v4}, Lcom/android/music/player/activity/MusicPlayer;->showAdditionalPanel(ZZ)V

    .line 2911
    :cond_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v2, v2, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    if-ge v5, v2, :cond_1

    .line 2912
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iput v5, v2, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    .line 2916
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->getPosition()I

    move-result v2

    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->SKIP_TIME:[I

    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v4, v4, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    aget v3, v3, v4

    sub-int v1, v2, v3

    .line 2918
    .local v1, position:I
    if-gtz v1, :cond_2

    .line 2919
    const/4 v1, 0x0

    .line 2921
    :cond_2
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v2, v1}, Lcom/android/music/player/service/ICorePlayerService;->setPosition(I)V

    .line 2923
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v2, v1}, Lcom/android/music/player/activity/MusicPlayer;->refreshPlayStatus(I)V

    .line 2924
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skipBackword() position= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2930
    .end local v1           #position:I
    :goto_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v3, v2, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    .line 2931
    return-void

    .line 2925
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2926
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v2}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2927
    const-string v2, "MusicPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException occured 7 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private skipForward()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 2934
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v3, "skipForward() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2938
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v2, v2, Lcom/android/music/player/activity/MusicPlayer;->isShownAdditionalBar:Z

    if-nez v2, :cond_0

    .line 2940
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v2, v4, v4}, Lcom/android/music/player/activity/MusicPlayer;->showAdditionalPanel(ZZ)V

    .line 2946
    :cond_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v2, v2, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    if-ge v5, v2, :cond_1

    .line 2947
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iput v5, v2, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    .line 2951
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->getPosition()I

    move-result v2

    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->SKIP_TIME:[I

    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v4, v4, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    aget v3, v3, v4

    add-int v1, v2, v3

    .line 2953
    .local v1, position:I
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    if-gt v2, v1, :cond_2

    .line 2954
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v1, v2, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    .line 2957
    :cond_2
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    if-lt v2, v1, :cond_3

    .line 2958
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v2, v1}, Lcom/android/music/player/service/ICorePlayerService;->setPosition(I)V

    .line 2960
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v2, v1}, Lcom/android/music/player/activity/MusicPlayer;->refreshPlayStatus(I)V

    .line 2963
    :cond_3
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skipForward() position= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2969
    .end local v1           #position:I
    :goto_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v3, v2, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    .line 2970
    return-void

    .line 2964
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2965
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v2}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2966
    const-string v2, "MusicPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException occured 8 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 2686
    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    .line 2687
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mHandler(msg.what= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 2895
    .end local p1
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 2690
    .restart local p1
    :pswitch_1
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v8}, Lcom/android/music/player/activity/MusicPlayer;->access$000(Lcom/android/music/player/activity/MusicPlayer;)V

    goto :goto_0

    .line 2694
    :pswitch_2
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v8}, Lcom/android/music/player/activity/MusicPlayer;->updatePlayStatus()V

    .line 2695
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v9, 0x2

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_0

    .line 2698
    :pswitch_3
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v9, 0x2

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 2699
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v8}, Lcom/android/music/player/activity/MusicPlayer;->updatePlayerInfo()V

    goto :goto_0

    .line 2702
    :pswitch_4
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v8, :cond_2

    .line 2703
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v8}, Lcom/android/music/player/activity/MusicPlayer;->access$800(Lcom/android/music/player/activity/MusicPlayer;)V

    goto :goto_0

    .line 2705
    :cond_2
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v9, 0x4

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_0

    .line 2708
    :pswitch_5
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v8, :cond_3

    .line 2709
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v8}, Lcom/android/music/player/activity/MusicPlayer;->access$900(Lcom/android/music/player/activity/MusicPlayer;)V

    goto :goto_0

    .line 2711
    :cond_3
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v9, 0x5

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_0

    .line 2714
    :pswitch_6
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v8, :cond_4

    .line 2715
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v8}, Lcom/android/music/player/activity/MusicPlayer;->playStream()V

    goto :goto_0

    .line 2717
    :cond_4
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v9, 0x6

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_0

    .line 2720
    :pswitch_7
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v9, 0xa

    const-wide/16 v10, 0x12c

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 2721
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer$20;->skipForward()V

    goto :goto_0

    .line 2724
    :pswitch_8
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2725
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v8, v8, Lcom/android/music/player/activity/MusicPlayer;->additionalPanelFromAlbumArt:Z

    if-nez v8, :cond_1

    .line 2726
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2727
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x20

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2732
    :pswitch_9
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v9, 0xc

    const-wide/16 v10, 0x12c

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 2733
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer$20;->skipBackword()V

    goto/16 :goto_0

    .line 2736
    :pswitch_a
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2737
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v8, v8, Lcom/android/music/player/activity/MusicPlayer;->additionalPanelFromAlbumArt:Z

    if-nez v8, :cond_1

    .line 2738
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2739
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x20

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2744
    :pswitch_b
    sget-boolean v8, Lcom/android/music/common/util/MusicPlayerUtil;->isShowPrepare:Z

    if-eqz v8, :cond_1

    .line 2745
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->preparingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2749
    :pswitch_c
    sget-boolean v8, Lcom/android/music/common/util/MusicPlayerUtil;->isShowPrepare:Z

    if-nez v8, :cond_1

    .line 2750
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->preparingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->hide()V

    .line 2751
    const/16 v8, 0x14

    invoke-virtual {p0, v8}, Lcom/android/music/player/activity/MusicPlayer$20;->removeMessages(I)V

    goto/16 :goto_0

    .line 2755
    :pswitch_d
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    .line 2756
    .local v6, mProgress:I
    int-to-double v8, v6

    const-wide/high16 v10, 0x4059

    div-double/2addr v8, v10

    iget-object v10, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v10, v10, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v5, v8

    .line 2757
    .local v5, mPosition:I
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v9, "(%d /100.0)* %d = %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v12, v12, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    :try_start_0
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v8, v5}, Lcom/android/music/player/service/ICorePlayerService;->setPosition(I)V

    .line 2760
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v9, 0x2

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 2761
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v9, 0x16

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2762
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 2764
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 2769
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v5           #mPosition:I
    .end local v6           #mProgress:I
    :pswitch_e
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v8, p1}, Lcom/android/music/player/activity/MusicPlayer;->access$1002(Lcom/android/music/player/activity/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2771
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v8}, Lcom/android/music/player/activity/MusicPlayer;->access$1000(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 2775
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v9}, Lcom/android/music/player/activity/MusicPlayer;->access$1000(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2777
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerView:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_5

    .line 2779
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2787
    :goto_1
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerInitDone:Z

    goto/16 :goto_0

    .line 2781
    :cond_5
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 2784
    :cond_6
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 2792
    .restart local p1
    :pswitch_f
    const/16 v1, 0x13

    .line 2794
    .local v1, EQCount:S
    const/4 v2, 0x0

    .line 2795
    .local v2, EQValue:[I
    const/4 v7, 0x0

    .line 2800
    .local v7, tempEQImageView:Landroid/widget/ImageView;
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_7

    .line 2802
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v8, p1}, Lcom/android/music/player/activity/MusicPlayer;->access$1002(Lcom/android/music/player/activity/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2803
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v9}, Lcom/android/music/player/activity/MusicPlayer;->access$1000(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2804
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const-string v9, "ImageSet"

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2805
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/16 v9, 0x33

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 2806
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2807
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->invalidate()V

    .line 2810
    :cond_7
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "ImageSet"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 2812
    const/16 v8, 0x13

    new-array v2, v8, [I

    .line 2816
    :try_start_1
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v8}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2817
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v8, v2}, Lcom/android/music/player/service/ICorePlayerService;->getRealEQdata([I)V

    .line 2823
    :cond_8
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v8}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentVolume()I

    move-result v8

    if-eqz v8, :cond_9

    .line 2824
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    const/16 v8, 0x13

    if-ge v4, v8, :cond_a

    .line 2826
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v9, v9, Lcom/android/music/player/activity/MusicPlayer;->EQTopImageView:[I

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/widget/ImageView;

    move-object v7, v0

    .line 2827
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->EQTopImage:[I

    aget v9, v2, v4

    rem-int/lit8 v9, v9, 0x11

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2828
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2829
    invoke-virtual {v7}, Landroid/widget/ImageView;->invalidate()V

    .line 2832
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v9, v9, Lcom/android/music/player/activity/MusicPlayer;->EQBottomImageView:[I

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/widget/ImageView;

    move-object v7, v0

    .line 2833
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->EQBottomImage:[I

    aget v9, v2, v4

    rem-int/lit8 v9, v9, 0x11

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2834
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2835
    invoke-virtual {v7}, Landroid/widget/ImageView;->invalidate()V

    .line 2824
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2838
    .end local v4           #i:I
    :cond_9
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    const/16 v8, 0x13

    if-ge v4, v8, :cond_a

    .line 2840
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v9, v9, Lcom/android/music/player/activity/MusicPlayer;->EQTopImageView:[I

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/widget/ImageView;

    move-object v7, v0

    .line 2841
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2842
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v9, v9, Lcom/android/music/player/activity/MusicPlayer;->EQBottomImageView:[I

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/widget/ImageView;

    move-object v7, v0

    .line 2843
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2838
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2848
    .end local v4           #i:I
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 2851
    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2858
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_a
    :try_start_2
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v8}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2859
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v9, 0x9

    const-wide/16 v10, 0xc8

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2860
    :catch_2
    move-exception v8

    move-object v3, v8

    .line 2861
    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 2867
    .end local v1           #EQCount:S
    .end local v2           #EQValue:[I
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v7           #tempEQImageView:Landroid/widget/ImageView;
    .restart local p1
    :pswitch_10
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v8}, Lcom/android/music/player/activity/MusicPlayer;->hideVolumePanel()V

    goto/16 :goto_0

    .line 2871
    :pswitch_11
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v8}, Lcom/android/music/player/activity/MusicPlayer;->hideAdditionalPanel()V

    goto/16 :goto_0

    .line 2888
    :pswitch_12
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Lcom/android/music/player/activity/MusicPlayer;->onMyKeyLongPress(I)V

    goto/16 :goto_0

    .line 2688
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
