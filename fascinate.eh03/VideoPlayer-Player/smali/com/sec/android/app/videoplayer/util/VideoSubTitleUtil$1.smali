.class Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$1;
.super Ljava/lang/Object;
.source "VideoSubTitleUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$1;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 297
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$1;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$000(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mSubtitleProcesser run()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-wide/16 v0, 0x0

    .line 300
    .local v0, curPosition:J
    const-wide/16 v5, 0x0

    .line 301
    .local v5, lAdjustedPosition:J
    const-wide/16 v3, 0x0

    .line 302
    .local v3, index:J
    const-string v7, ""

    .line 304
    .local v7, subTitle:Ljava/lang/String;
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v9}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    move-result-object v8

    .line 306
    .local v8, subTitleView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    if-nez v8, :cond_0

    .line 347
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSubTitleActivationFlag()Z

    move-result v9

    if-nez v9, :cond_1

    .line 310
    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->setVisibility(I)V

    goto :goto_0

    .line 314
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->setVisibility(I)V

    .line 316
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v9, :cond_2

    .line 321
    :try_start_0
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v9}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J

    move-result-wide v0

    .line 322
    sget-wide v9, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSyncInterval:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-long v5, v0, v9

    .line 331
    :cond_2
    :goto_1
    cmp-long v9, v5, v12

    if-ltz v9, :cond_3

    .line 333
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$1;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$100(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)J

    move-result-wide v9

    invoke-static {v9, v10, v5, v6}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleTime2Index(JJ)I

    move-result v9

    int-to-long v3, v9

    .line 335
    cmp-long v9, v3, v12

    if-ltz v9, :cond_3

    .line 337
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$1;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$100(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)J

    move-result-wide v9

    invoke-static {v9, v10, v3, v4}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleGetString(JJ)Ljava/lang/String;

    move-result-object v7

    .line 339
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 340
    invoke-virtual {v8, v7}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->updateSubTitle(Ljava/lang/String;)V

    .line 346
    :cond_3
    :goto_2
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$300()Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$1;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtitleProcesser:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$200(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 324
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 326
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 327
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$1;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$000(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RemoteException occured  1 :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 342
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_4
    const-string v9, ""

    invoke-virtual {v8, v9}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->updateSubTitle(Ljava/lang/String;)V

    goto :goto_2
.end method
