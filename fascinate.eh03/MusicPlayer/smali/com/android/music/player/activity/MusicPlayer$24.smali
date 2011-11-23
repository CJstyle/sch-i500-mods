.class Lcom/android/music/player/activity/MusicPlayer$24;
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
    .line 3266
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$24;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3270
    const/4 v4, 0x0

    .line 3271
    .local v4, mediaUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 3273
    .local v3, mediaStr:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$24;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v6, v6, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v6}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;

    move-result-object v3

    .line 3274
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 3279
    :goto_0
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$24;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v6, v6, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    if-nez v6, :cond_0

    .line 3280
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$24;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v6, v6, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v7, "mShareListener-onClick : mediaAlbumInfo == null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    :goto_1
    return-void

    .line 3275
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 3276
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3284
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$24;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v6, v6, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v5, v6, Lcom/android/music/player/data/MusicAlbumInfo;->mMimeType:Ljava/lang/String;

    .line 3286
    .local v5, mimeType:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$24;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v6}, Lcom/android/music/player/activity/MusicPlayer;->access$1000(Lcom/android/music/player/activity/MusicPlayer;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 3289
    .local v0, displayedInfo:Landroid/content/pm/ResolveInfo;
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3290
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3291
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3292
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3293
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3299
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$24;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v6, v2}, Lcom/android/music/player/activity/MusicPlayer;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3304
    .end local v2           #i:Landroid/content/Intent;
    :goto_2
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$24;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v6, v6, Lcom/android/music/player/activity/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1

    .line 3300
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 3301
    .local v1, e:Landroid/content/ActivityNotFoundException;
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$24;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v6, v6, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v7, "MENU_SHARE_TRACK_VIA, ActivityNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
