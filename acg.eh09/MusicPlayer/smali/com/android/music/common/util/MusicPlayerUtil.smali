.class public Lcom/android/music/common/util/MusicPlayerUtil;
.super Ljava/lang/Object;
.source "MusicPlayerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;,
        Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;
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

.field public static sService:Lcom/android/music/player/service/ICorePlayerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/android/music/common/util/MusicPlayerUtil;->isPlaying:Z

    .line 37
    sput-boolean v0, Lcom/android/music/common/util/MusicPlayerUtil;->isMusicPlayerResume:Z

    .line 38
    sput-boolean v0, Lcom/android/music/common/util/MusicPlayerUtil;->isShowPrepare:Z

    .line 39
    sput-boolean v0, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    .line 45
    sput-boolean v0, Lcom/android/music/common/util/MusicPlayerUtil;->mSilentPopupShow:Z

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sConnectionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method public static bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;
    .locals 5
    .parameter
    .parameter

    .prologue
    const-class v4, Lcom/android/music/player/service/CorePlayerService;

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    move-object v0, p0

    .line 89
    :cond_0
    new-instance v1, Landroid/content/ContextWrapper;

    invoke-direct {v1, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 91
    new-instance v0, Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;

    invoke-direct {v0, p1}, Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 92
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    sget-object v2, Lcom/android/music/common/util/MusicPlayerUtil;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    invoke-direct {v0, v1}, Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;-><init>(Landroid/content/ContextWrapper;)V

    .line 97
    :goto_0
    return-object v0

    .line 96
    :cond_1
    const-string v0, "Music"

    const-string v1, "Failed to bind to service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static registerIntentFilter(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .parameter "context"
    .parameter "broadcastReceiver"

    .prologue
    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 188
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v1, "musicPlayer.service.updateMediaInfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v1, "musicPlayer.service.startUpdateStatus"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v1, "musicPlayer.service.updatePlayComplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v1, "musicPlayer.service.updateSeekPlayedTime"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string v1, "musicPlayer.service.stopPlay"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string v1, "musicPlayer.service.prepare.show"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v1, "musicPlayer.service.prepare.hide"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v1, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v1, "musicPlayer.service.BLUETOOTH_HEADSET_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    return-void
.end method

.method public static declared-synchronized setMusicPlayerResume(Z)V
    .locals 2
    .parameter "resume"

    .prologue
    .line 52
    const-class v0, Lcom/android/music/common/util/MusicPlayerUtil;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/music/common/util/MusicPlayerUtil;->isMusicPlayerResume:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit v0

    return-void

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setSilentPopupShow(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 48
    const-class v0, Lcom/android/music/common/util/MusicPlayerUtil;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/music/common/util/MusicPlayerUtil;->mSilentPopupShow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v0

    return-void

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static unbindFromService(Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;)V
    .locals 4
    .parameter "token"

    .prologue
    const-string v3, "MusicUtils"

    .line 101
    if-nez p0, :cond_1

    .line 102
    const-string v2, "MusicUtils"

    const-string v2, "Trying to unbind with null token"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 106
    .local v0, cw:Landroid/content/ContextWrapper;
    sget-object v2, Lcom/android/music/common/util/MusicPlayerUtil;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;

    .line 107
    .local v1, sb:Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;
    if-nez v1, :cond_2

    .line 108
    const-string v2, "MusicUtils"

    const-string v2, "Trying to unbind for unknown Context"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 112
    sget-object v2, Lcom/android/music/common/util/MusicPlayerUtil;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const/4 v2, 0x0

    sput-object v2, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    goto :goto_0
.end method
