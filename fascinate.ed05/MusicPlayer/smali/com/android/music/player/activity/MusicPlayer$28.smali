.class Lcom/android/music/player/activity/MusicPlayer$28;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 4349
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$28;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v9, 0x3

    .line 4351
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$28;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v6, v6, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "search share list : which :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mShareList.size :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$28;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v8}, Lcom/android/music/player/activity/MusicPlayer;->access$1300(Lcom/android/music/player/activity/MusicPlayer;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4352
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$28;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v6}, Lcom/android/music/player/activity/MusicPlayer;->access$1300(Lcom/android/music/player/activity/MusicPlayer;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 4354
    .local v0, displayedInfo:Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    .line 4355
    .local v4, mediaUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 4356
    .local v3, mediaStr:Ljava/lang/String;
    const/4 v5, 0x0

    .line 4358
    .local v5, mimeType:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$28;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v6, v6, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v6}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;

    move-result-object v3

    .line 4359
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 4361
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$28;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v6, v6, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    if-nez v6, :cond_0

    .line 4362
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$28;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    new-instance v7, Lcom/android/music/common/data/MediaMetadata;

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$28;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-direct {v7, v8}, Lcom/android/music/common/data/MediaMetadata;-><init>(Lcom/android/music/common/data/MusicDB;)V

    iput-object v7, v6, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    .line 4363
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$28;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v6, v6, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    invoke-virtual {v6, v4}, Lcom/android/music/common/data/MediaMetadata;->parse(Landroid/net/Uri;)Z

    .line 4366
    :cond_0
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$28;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$28;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v7}, Lcom/android/music/player/service/ICorePlayerService;->getLaunchMode()I

    move-result v7

    iput v7, v6, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    .line 4368
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$28;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v6, v6, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$28;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v6, v6, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    if-ne v6, v9, :cond_2

    .line 4369
    :cond_1
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$28;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v6, v6, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v5, v6, Lcom/android/music/common/data/MediaMetadata;->filetype:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4378
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4379
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4380
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4381
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4382
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4384
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$28;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v6, v6, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v7, "MENU_SHARE_TRACK_VIA:ACTION_SEND,%d,%s,%s"

    new-array v8, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/music/player/activity/MusicPlayer$28;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v10, v10, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/music/player/activity/MusicPlayer$28;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v10, v10, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMimeType:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_1
    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4388
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$28;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v6, v2}, Lcom/android/music/player/activity/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    .line 4390
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4391
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$28;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/music/player/activity/MusicPlayer;->dismissDialog(I)V

    .line 4392
    return-void

    .line 4371
    .end local v2           #i:Landroid/content/Intent;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$28;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v6, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMimeType:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4373
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 4374
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4384
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #i:Landroid/content/Intent;
    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method
