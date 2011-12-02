.class public Lcom/android/music/player/receiver/MusicStateRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicStateRequestReceiver.java"


# static fields
.field public static final EXTRA_MEDIA_STATE_TYPE:Ljava/lang/String; = "com.samsung.sec.android.media.EXTRA_MEDIA_STATE_TYPE"

.field public static final EXTRA_MEDIA_TYPE:Ljava/lang/String; = "com.samsung.sec.android.media.EXTRA_MEDIA_TYPE"

.field public static final MEDIA_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.samsung.sec.android.MEDIA_STATE_CHANGED"

.field public static final MEDIA_STATE_REQUEST_ACTION:Ljava/lang/String; = "com.samsung.sec.android.MEDIA_STATE_REQUEST"

.field private static final TAG:Ljava/lang/String; = "MusicStateRequestReceiver"

.field private static final TAG_MUSIC:Ljava/lang/String; = "music"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isPlaying()Z
    .locals 4

    .prologue
    .line 37
    sget-object v1, Lcom/android/music/common/util/MusicPlayerUtil;->sCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v1, :cond_0

    .line 39
    :try_start_0
    sget-object v1, Lcom/android/music/common/util/MusicPlayerUtil;->sCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 45
    :goto_0
    return v1

    .line 40
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 41
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 42
    const-string v1, "MusicStateRequestReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured  1 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    sget-boolean v1, Lcom/android/music/common/util/MusicPlayerUtil;->isPlaying:Z

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v7, "music"

    const-string v6, "com.samsung.sec.android.media.EXTRA_MEDIA_TYPE"

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.samsung.sec.android.media.EXTRA_MEDIA_TYPE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, mediaType:Ljava/lang/String;
    const-string v3, "MusicStateRequestReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string v3, "music"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.samsung.sec.android.MEDIA_STATE_REQUEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.sec.android.MEDIA_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .local v1, broadcast:Landroid/content/Intent;
    const-string v3, "com.samsung.sec.android.media.EXTRA_MEDIA_TYPE"

    const-string v3, "music"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string v3, "com.samsung.sec.android.media.EXTRA_MEDIA_STATE_TYPE"

    invoke-direct {p0}, Lcom/android/music/player/receiver/MusicStateRequestReceiver;->isPlaying()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 32
    .end local v1           #broadcast:Landroid/content/Intent;
    :cond_0
    return-void
.end method
