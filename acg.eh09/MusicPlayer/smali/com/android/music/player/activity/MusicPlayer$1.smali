.class Lcom/android/music/player/activity/MusicPlayer$1;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/player/activity/MusicPlayer;-><init>()V
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
    .line 426
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$1;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$1;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    sget-object v1, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    iput-object v1, v0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    .line 434
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$1;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/activity/MusicPlayer;->onServicePrepared()V

    .line 435
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$1;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "MusicPlayer::onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$1;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    .line 440
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$1;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v0}, Lcom/android/music/player/activity/MusicPlayer;->access$000(Lcom/android/music/player/activity/MusicPlayer;)V

    .line 441
    return-void
.end method
