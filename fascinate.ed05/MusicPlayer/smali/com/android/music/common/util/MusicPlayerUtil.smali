.class public Lcom/android/music/common/util/MusicPlayerUtil;
.super Ljava/lang/Object;
.source "MusicPlayerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;
    }
.end annotation


# static fields
.field public static isMusicPlayerResume:Z

.field public static isPlaying:Z

.field public static isShowPrepare:Z

.field public static mIsHeadsetPlugged:Z

.field public static mSilentPopupShow:Z

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field public static sCorePlayer:Lcom/android/music/player/service/ICorePlayerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    .line 20
    sput-boolean v1, Lcom/android/music/common/util/MusicPlayerUtil;->isPlaying:Z

    .line 21
    sput-boolean v1, Lcom/android/music/common/util/MusicPlayerUtil;->isMusicPlayerResume:Z

    .line 22
    sput-boolean v1, Lcom/android/music/common/util/MusicPlayerUtil;->isShowPrepare:Z

    .line 23
    sput-boolean v1, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    .line 28
    sput-boolean v1, Lcom/android/music/common/util/MusicPlayerUtil;->mSilentPopupShow:Z

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sConnectionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 1
    .parameter "context"
    .parameter "mConnection"

    .prologue
    .line 51
    const-class v0, Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p0, p1, v0}, Lcom/android/music/common/util/MusicPlayerUtil;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Z
    .locals 3
    .parameter "context"
    .parameter "mConnection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ServiceConnection;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 57
    new-instance v0, Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;

    invoke-direct {v0, p1}, Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 58
    .local v0, sb:Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;
    sget-object v1, Lcom/android/music/common/util/MusicPlayerUtil;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public static pausePlay(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public static registerIntentFilter(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .parameter "context"
    .parameter "broadcastReceiver"

    .prologue
    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "musicPlayer.service.updateMediaInfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v1, "musicPlayer.service.startUpdateStatus"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "musicPlayer.service.updatePlayInfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "musicPlayer.service.updatePlayComplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "musicPlayer.service.updateStreamBufferStatus"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "musicPlayer.service.updateSeekPlayedTime"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "musicPlayer.service.stopUpdateStatus"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "musicPlayer.service.stopPlay"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "musicPlayer.service.liveStreamMode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v1, "musicPlayer.service.normalMode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "musicPlayer.service.prepare.show"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "musicPlayer.service.prepare.hide"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "musicPlayer.service.BLUETOOTH_HEADSET_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    return-void
.end method

.method public static declared-synchronized setIsPlaying(Z)V
    .locals 2
    .parameter "playing"

    .prologue
    .line 43
    const-class v0, Lcom/android/music/common/util/MusicPlayerUtil;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/music/common/util/MusicPlayerUtil;->isPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v0

    return-void

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setMusicPlayerResume(Z)V
    .locals 2
    .parameter "resume"

    .prologue
    .line 35
    const-class v0, Lcom/android/music/common/util/MusicPlayerUtil;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/music/common/util/MusicPlayerUtil;->isMusicPlayerResume:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v0

    return-void

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setShowPrepare(Z)V
    .locals 2
    .parameter "prepare"

    .prologue
    .line 39
    const-class v0, Lcom/android/music/common/util/MusicPlayerUtil;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/music/common/util/MusicPlayerUtil;->isShowPrepare:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v0

    return-void

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setSilentPopupShow(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 31
    const-class v0, Lcom/android/music/common/util/MusicPlayerUtil;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/music/common/util/MusicPlayerUtil;->mSilentPopupShow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v0

    return-void

    .line 31
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static unbindService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 92
    sget-object v1, Lcom/android/music/common/util/MusicPlayerUtil;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;

    .line 93
    .local v0, sb:Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;
    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 97
    sget-object v1, Lcom/android/music/common/util/MusicPlayerUtil;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const/4 v1, 0x0

    sput-object v1, Lcom/android/music/common/util/MusicPlayerUtil;->sCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    goto :goto_0
.end method
