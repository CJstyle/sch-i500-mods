.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$23;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 3288
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$23;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string v6, "MoviePlayer"

    .line 3291
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$23;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopupType:I
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 3357
    :cond_0
    :goto_0
    return-void

    .line 3297
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$23;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z
    invoke-static {v3, v5}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1102(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 3301
    :try_start_0
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getVideoUri()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->startPlay(Ljava/lang/String;)Z

    .line 3302
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setTitleName()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3304
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 3306
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createSendViaPopup(): RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3313
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$23;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z
    invoke-static {v3, v5}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1102(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 3314
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$23;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$4100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 3316
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->launchBrowser()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3317
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$23;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_0

    .line 3327
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$23;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z
    invoke-static {v3, v5}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1102(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 3328
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$23;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$4100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 3330
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$23;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_3

    .line 3332
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getRepeatType()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 3333
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$23;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 3346
    :cond_1
    :goto_1
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->next(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3348
    const-string v3, "MoviePlayer"

    const-string v3, "createPopup  SCHEME_VIDEO_LIST - next operation : false -> exit"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$23;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_0

    .line 3334
    :cond_2
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getRepeatType()I

    move-result v3

    if-nez v3, :cond_1

    .line 3336
    sget-object v3, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3337
    .local v2, total_list_count:I
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getCurIdx()I

    move-result v0

    .line 3339
    .local v0, curPos:I
    const-string v3, "MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total File count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Current error File count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->error_count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    sget v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->error_count:I

    if-lt v3, v2, :cond_1

    sub-int v3, v2, v7

    if-ne v0, v3, :cond_1

    .line 3343
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$23;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_1

    .line 3353
    .end local v0           #curPos:I
    .end local v2           #total_list_count:I
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$23;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_0

    .line 3291
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
