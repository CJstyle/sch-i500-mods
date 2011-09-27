.class Lcom/android/music/player/activity/MusicPlayer$16;
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
    .line 2002
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private skipBackword()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 2190
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2191
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v5, v5, Lcom/android/music/player/activity/MusicPlayer;->isShownAdditionalBar:Z

    if-nez v5, :cond_0

    .line 2193
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v5, v7, v7}, Lcom/android/music/player/activity/MusicPlayer;->showAdditionalPanel(ZZ)V

    .line 2199
    :cond_0
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v5, v5, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    if-ge v8, v5, :cond_1

    .line 2200
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iput v8, v5, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    .line 2204
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v5}, Lcom/android/music/player/service/ICorePlayerService;->position()J

    move-result-wide v5

    sget-object v7, Lcom/android/music/player/service/CorePlayerService;->SKIP_TIME:[I

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v8, v8, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    aget v7, v7, v8

    int-to-long v7, v7

    sub-long v3, v5, v7

    .line 2207
    .local v3, position:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_3

    .line 2208
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v5}, Lcom/android/music/player/service/ICorePlayerService;->prev()V

    .line 2209
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v6, "skipBackword: mCorePlayer.prev()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v5}, Lcom/android/music/player/service/ICorePlayerService;->duration()J

    move-result-wide v0

    .line 2211
    .local v0, duration:J
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    .line 2212
    sget-object v5, Lcom/android/music/player/service/CorePlayerService;->SKIP_TIME:[I

    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v6, v6, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    aget v5, v5, v6

    int-to-long v5, v5

    sub-long v3, v0, v5

    .line 2216
    .end local v0           #duration:J
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v5, v3, v4}, Lcom/android/music/player/service/ICorePlayerService;->seek(J)J

    .line 2217
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v5}, Lcom/android/music/player/service/ICorePlayerService;->position()J

    move-result-wide v3

    .line 2218
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v5, v3, v4}, Lcom/android/music/player/activity/MusicPlayer;->refreshPlayStatus(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2226
    .end local v3           #position:J
    :goto_1
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v6, v5, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    .line 2227
    return-void

    .line 2213
    .restart local v3       #position:J
    :cond_3
    :try_start_1
    sget-object v5, Lcom/android/music/player/service/CorePlayerService;->SKIP_TIME:[I

    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v6, v6, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    aget v5, v5, v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_2

    .line 2214
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 2221
    .end local v3           #position:J
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 2222
    .local v2, e:Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v5}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2223
    const-string v5, "MusicPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException occured 7 :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private skipForward()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 2233
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2234
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v3, v3, Lcom/android/music/player/activity/MusicPlayer;->isShownAdditionalBar:Z

    if-nez v3, :cond_0

    .line 2236
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v3, v5, v5}, Lcom/android/music/player/activity/MusicPlayer;->showAdditionalPanel(ZZ)V

    .line 2242
    :cond_0
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v3, v3, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    if-ge v6, v3, :cond_1

    .line 2243
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iput v6, v3, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    .line 2247
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->position()J

    move-result-wide v3

    sget-object v5, Lcom/android/music/player/service/CorePlayerService;->SKIP_TIME:[I

    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v6, v6, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    aget v5, v5, v6

    int-to-long v5, v5

    add-long v1, v3, v5

    .line 2249
    .local v1, position:J
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-wide v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:J

    cmp-long v3, v3, v1

    if-gtz v3, :cond_2

    .line 2250
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-wide v1, v3, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:J

    .line 2253
    :cond_2
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3, v1, v2}, Lcom/android/music/player/service/ICorePlayerService;->seek(J)J

    .line 2254
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->position()J

    move-result-wide v1

    .line 2255
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v3, v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->refreshPlayStatus(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2263
    .end local v1           #position:J
    :goto_0
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v4, v3, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    .line 2264
    return-void

    .line 2258
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2259
    .local v0, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v3}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2260
    const-string v3, "MusicPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException occured 8 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 2004
    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    .line 2005
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

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

    .line 2006
    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 2183
    .end local p1
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 2008
    .restart local p1
    :sswitch_1
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v8}, Lcom/android/music/player/activity/MusicPlayer;->access$000(Lcom/android/music/player/activity/MusicPlayer;)V

    goto :goto_0

    .line 2012
    :sswitch_2
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v8}, Lcom/android/music/player/activity/MusicPlayer;->updatePlayStatus()V

    .line 2013
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v9, 0x2

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_0

    .line 2016
    :sswitch_3
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v8}, Lcom/android/music/player/activity/MusicPlayer;->updatePlayerInfo()V

    .line 2017
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v9, 0x2

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_0

    .line 2024
    :sswitch_4
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v8, :cond_2

    .line 2025
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v8}, Lcom/android/music/player/activity/MusicPlayer;->access$500(Lcom/android/music/player/activity/MusicPlayer;)V

    goto :goto_0

    .line 2027
    :cond_2
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v9, 0x4

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_0

    .line 2030
    :sswitch_5
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v8, :cond_3

    .line 2031
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v8}, Lcom/android/music/player/activity/MusicPlayer;->access$600(Lcom/android/music/player/activity/MusicPlayer;)V

    goto :goto_0

    .line 2033
    :cond_3
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v9, 0x5

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_0

    .line 2042
    :sswitch_6
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v9, 0xa

    const-wide/16 v10, 0x12c

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 2043
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer$16;->skipForward()V

    goto :goto_0

    .line 2046
    :sswitch_7
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2047
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v8, v8, Lcom/android/music/player/activity/MusicPlayer;->additionalPanelFromAlbumArt:Z

    if-nez v8, :cond_1

    .line 2048
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2049
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x20

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2054
    :sswitch_8
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v9, 0xc

    const-wide/16 v10, 0x12c

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 2055
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer$16;->skipBackword()V

    goto/16 :goto_0

    .line 2058
    :sswitch_9
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2059
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v8, v8, Lcom/android/music/player/activity/MusicPlayer;->additionalPanelFromAlbumArt:Z

    if-nez v8, :cond_1

    .line 2060
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2061
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x20

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2066
    :sswitch_a
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    .line 2067
    .local v6, mProgress:I
    int-to-double v8, v6

    const-wide/high16 v10, 0x4059

    div-double/2addr v8, v10

    iget-object v10, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-wide v10, v10, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:J

    long-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v5, v8

    .line 2070
    .local v5, mPosition:I
    :try_start_0
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    int-to-long v9, v5

    invoke-interface {v8, v9, v10}, Lcom/android/music/player/service/ICorePlayerService;->seek(J)J

    .line 2072
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v9, 0x16

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2073
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 2075
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 2080
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v5           #mPosition:I
    .end local v6           #mProgress:I
    :sswitch_b
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v8, p1}, Lcom/android/music/player/activity/MusicPlayer;->access$702(Lcom/android/music/player/activity/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2082
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v8}, Lcom/android/music/player/activity/MusicPlayer;->access$700(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 2086
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v9}, Lcom/android/music/player/activity/MusicPlayer;->access$700(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2088
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerView:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4

    .line 2090
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2098
    :goto_1
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerInitDone:Z

    goto/16 :goto_0

    .line 2092
    :cond_4
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 2095
    :cond_5
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 2103
    .restart local p1
    :sswitch_c
    const/16 v1, 0x13

    .line 2105
    .local v1, EQCount:S
    const/4 v2, 0x0

    .line 2106
    .local v2, EQValue:[I
    const/4 v7, 0x0

    .line 2108
    .local v7, tempEQImageView:Landroid/widget/ImageView;
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_6

    .line 2110
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v8, p1}, Lcom/android/music/player/activity/MusicPlayer;->access$702(Lcom/android/music/player/activity/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2111
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v9}, Lcom/android/music/player/activity/MusicPlayer;->access$700(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2112
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const-string v9, "ImageSet"

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2113
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/16 v9, 0x33

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 2114
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2115
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->invalidate()V

    .line 2118
    :cond_6
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v8, :cond_8

    .line 2120
    const/16 v8, 0x13

    new-array v2, v8, [I

    .line 2123
    :try_start_1
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v8}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2124
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v8, v2}, Lcom/android/music/player/service/ICorePlayerService;->getRealEQdata([I)V

    .line 2125
    :cond_7
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    const/16 v8, 0x13

    if-ge v4, v8, :cond_8

    .line 2127
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v9, v9, Lcom/android/music/player/activity/MusicPlayer;->EQTopImageView:[I

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/widget/ImageView;

    move-object v7, v0

    .line 2128
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->EQTopImage:[I

    aget v9, v2, v4

    rem-int/lit8 v9, v9, 0x11

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2129
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2130
    invoke-virtual {v7}, Landroid/widget/ImageView;->invalidate()V

    .line 2133
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v9, v9, Lcom/android/music/player/activity/MusicPlayer;->EQBottomImageView:[I

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/widget/ImageView;

    move-object v7, v0

    .line 2134
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->EQBottomImage:[I

    aget v9, v2, v4

    rem-int/lit8 v9, v9, 0x11

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2135
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2136
    invoke-virtual {v7}, Landroid/widget/ImageView;->invalidate()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2125
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2140
    .end local v4           #i:I
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 2143
    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2148
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_8
    :try_start_2
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v8}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2149
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v9, 0x9

    const-wide/16 v10, 0xc8

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2150
    :catch_2
    move-exception v8

    move-object v3, v8

    .line 2151
    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 2157
    .end local v1           #EQCount:S
    .end local v2           #EQValue:[I
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v7           #tempEQImageView:Landroid/widget/ImageView;
    .restart local p1
    :sswitch_d
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v8}, Lcom/android/music/player/activity/MusicPlayer;->hideVolumePanel()V

    goto/16 :goto_0

    .line 2161
    :sswitch_e
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v8}, Lcom/android/music/player/activity/MusicPlayer;->hideAdditionalPanel()V

    goto/16 :goto_0

    .line 2006
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x8 -> :sswitch_b
        0x9 -> :sswitch_c
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0xd -> :sswitch_9
        0x16 -> :sswitch_a
        0x1f -> :sswitch_d
        0x20 -> :sswitch_e
        0x28 -> :sswitch_0
    .end sparse-switch
.end method
