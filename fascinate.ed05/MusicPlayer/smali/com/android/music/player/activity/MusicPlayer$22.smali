.class Lcom/android/music/player/activity/MusicPlayer$22;
.super Landroid/content/BroadcastReceiver;
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
    .line 3424
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$22;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3425
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3426
    .local v0, action:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$22;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mMediaReceiver:onReceive() is called,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    const-string v7, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3442
    :cond_0
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$22;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/music/player/activity/MusicPlayer;->isActivityExit:Z

    .line 3443
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$22;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v7}, Lcom/android/music/player/activity/MusicPlayer;->access$000(Lcom/android/music/player/activity/MusicPlayer;)V

    .line 3471
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 3445
    .restart local p1
    :cond_2
    const-string v7, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3446
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$22;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 3448
    .local v4, mActivityManager:Landroid/app/ActivityManager;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 3449
    .local v5, rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3450
    .local v6, runningTask:Ljava/lang/String;
    const-string v7, "MusicPlayer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3451
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$22;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$22;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v9, 0x7f0a00ec

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/music/player/activity/MusicPlayer$22;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v12, v12, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const/high16 v13, 0x7f0a

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 3455
    :cond_3
    :try_start_0
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$22;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v7}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v3

    .line 3456
    .local v3, filePath:Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 3457
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$22;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCorePlayer.getCurrentFilePath() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3459
    .local v2, file:Ljava/io/File;
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$22;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " file.exists() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    .line 3461
    :cond_4
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$22;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v7}, Lcom/android/music/player/service/ICorePlayerService;->stop()V

    .line 3462
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$22;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v7}, Lcom/android/music/player/activity/MusicPlayer;->access$000(Lcom/android/music/player/activity/MusicPlayer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3469
    .end local v2           #file:Ljava/io/File;
    .end local v3           #filePath:Ljava/lang/String;
    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$22;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v8, "MEDIA_MOUNTED"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3465
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 3466
    .local v1, e:Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$22;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemoteException occured:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
