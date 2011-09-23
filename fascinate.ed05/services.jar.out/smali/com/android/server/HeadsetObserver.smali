.class Lcom/android/server/HeadsetObserver;
.super Landroid/os/UEventObserver;
.source "HeadsetObserver.java"


# static fields
.field private static final BIT_EXTRA_CAR_DOCK_SPEAKER:I = 0x80

.field private static final BIT_EXTRA_DOCK_SPEAKER:I = 0x40

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_HEADSET_TV_OUT:I = 0x2

.field public static final EXTRA_DOCK_SPEAKER_INTENT:Ljava/lang/String; = "EXTRA_DOCK_SPEAKER"

.field private static final HEADSETS_WITH_MIC:I = 0x1

.field private static final HEADSET_NAME_PATH:Ljava/lang/String; = "/sys/class/switch/h2w/name"

.field private static final HEADSET_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/h2w/state"

.field private static final HEADSET_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/h2w"

.field private static final LOG:Z = true

.field private static final SUPPORTED_HEADSETS:I = 0xc3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetName:Ljava/lang/String;

.field private mHeadsetState:I

.field private mLastPlugType:Z

.field private mPlugNotification:Landroid/app/Notification;

.field private mPrevHeadsetState:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/server/HeadsetObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 78
    iput-boolean v4, p0, Lcom/android/server/HeadsetObserver;->mLastPlugType:Z

    .line 419
    new-instance v2, Lcom/android/server/HeadsetObserver$1;

    invoke-direct {v2, p0}, Lcom/android/server/HeadsetObserver$1;-><init>(Lcom/android/server/HeadsetObserver;)V

    iput-object v2, p0, Lcom/android/server/HeadsetObserver;->mHandler:Landroid/os/Handler;

    .line 82
    iput-object p1, p0, Lcom/android/server/HeadsetObserver;->mContext:Landroid/content/Context;

    .line 83
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 84
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "HeadsetObserver"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/HeadsetObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 85
    iget-object v2, p0, Lcom/android/server/HeadsetObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 87
    const-string v2, "DEVPATH=/devices/virtual/switch/h2w"

    invoke-virtual {p0, v2}, Lcom/android/server/HeadsetObserver;->startObserving(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/android/server/HeadsetObserver;->init()V

    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/android/server/HeadsetObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "extraDockSpeaker"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/HeadsetObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "extraCarDockSpeaker"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    :goto_1
    return-void

    .line 93
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 94
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    const-string v3, "exception extraDockSpeaker "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 99
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 100
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    const-string v3, "exception extraCarDockSpeaker "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private DisableTvOut()V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method private EnableTvOut()V
    .locals 0

    .prologue
    .line 526
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HeadsetObserver;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/HeadsetObserver;->sendIntents(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/HeadsetObserver;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/HeadsetObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private final declared-synchronized init()V
    .locals 8

    .prologue
    .line 117
    monitor-enter p0

    const/16 v6, 0x400

    :try_start_0
    new-array v0, v6, [C

    .line 119
    .local v0, buffer:[C
    iget-object v4, p0, Lcom/android/server/HeadsetObserver;->mHeadsetName:Ljava/lang/String;

    .line 120
    .local v4, newName:Ljava/lang/String;
    iget v5, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    .line 121
    .local v5, newState:I
    iget v6, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    iput v6, p0, Lcom/android/server/HeadsetObserver;->mPrevHeadsetState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    const-string v6, "/sys/class/switch/h2w/state"

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 124
    .local v2, file:Ljava/io/FileReader;
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 125
    .local v3, len:I
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 127
    new-instance v2, Ljava/io/FileReader;

    .end local v2           #file:Ljava/io/FileReader;
    const-string v6, "/sys/class/switch/h2w/name"

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 128
    .restart local v2       #file:Ljava/io/FileReader;
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 129
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 137
    .end local v2           #file:Ljava/io/FileReader;
    .end local v3           #len:I
    :goto_0
    :try_start_2
    invoke-direct {p0, v4, v5}, Lcom/android/server/HeadsetObserver;->update(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 131
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 132
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_3
    sget-object v6, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    const-string v7, "This kernel does not have wired headset support"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 117
    .end local v0           #buffer:[C
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v4           #newName:Ljava/lang/String;
    .end local v5           #newState:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 133
    .restart local v0       #buffer:[C
    .restart local v4       #newName:Ljava/lang/String;
    .restart local v5       #newState:I
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 134
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v6, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private isMusicActive()Z
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/server/HeadsetObserver;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 174
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 175
    sget-object v1, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v1, 0x0

    .line 178
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    goto :goto_0
.end method

.method private isTvOutEnabled()Z
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    return v0
.end method

.method private isTvOutStatus()Z
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method private final notifyPlugHeadset(Z)V
    .locals 9
    .parameter "isUnplug"

    .prologue
    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v3, v5, v7

    .line 142
    .local v3, now:J
    const-wide/16 v5, 0x28

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    .line 143
    sget-object v5, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "If you want to hear notification sound for Headset detecting, Time should be reach 40 sec from boot. But now is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    if-nez p1, :cond_0

    .line 146
    iget-object v5, p0, Lcom/android/server/HeadsetObserver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 148
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-eqz v2, :cond_0

    .line 149
    const v1, 0x1080083

    .line 151
    .local v1, notificationId:I
    iget-object v5, p0, Lcom/android/server/HeadsetObserver;->mPlugNotification:Landroid/app/Notification;

    if-nez v5, :cond_2

    .line 152
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/server/HeadsetObserver;->mPlugNotification:Landroid/app/Notification;

    .line 153
    iget-object v5, p0, Lcom/android/server/HeadsetObserver;->mPlugNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 156
    :cond_2
    iget-object v5, p0, Lcom/android/server/HeadsetObserver;->mPlugNotification:Landroid/app/Notification;

    const-string v6, "system/media/audio/ui/Insert.ogg"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 158
    sget-object v5, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Headset :: isUnplug = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const v5, 0x1080083

    :try_start_0
    iget-object v6, p0, Lcom/android/server/HeadsetObserver;->mPlugNotification:Landroid/app/Notification;

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 165
    .local v0, ex:Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final sendIntent(IIILjava/lang/String;)V
    .locals 6
    .parameter "headset"
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    .line 373
    and-int v3, p2, p1

    and-int v4, p3, p1

    if-eq v3, v4, :cond_2

    .line 375
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x4000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 377
    const/4 v2, 0x0

    .line 378
    .local v2, state:I
    const/4 v1, 0x0

    .line 380
    .local v1, microphone:I
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_0

    .line 381
    const/4 v1, 0x1

    .line 383
    :cond_0
    and-int v3, p2, p1

    if-eqz v3, :cond_1

    .line 384
    const/4 v2, 0x1

    .line 386
    :cond_1
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    const-string v3, "name"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    const-string v3, "microphone"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 390
    sget-object v3, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent.ACTION_HEADSET_PLUG: state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 393
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #microphone:I
    .end local v2           #state:I
    :cond_2
    return-void
.end method

.method private final sendIntentExtraCarDockSpeaker(IIILjava/lang/String;)V
    .locals 7
    .parameter "headset"
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    .line 335
    and-int v4, p2, p1

    and-int v5, p3, p1

    if-eq v4, v5, :cond_2

    .line 337
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CRADLE_CAR_PLUG"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x4000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    const/4 v3, 0x0

    .line 342
    .local v3, state:I
    and-int v4, p2, p1

    if-eqz v4, :cond_0

    .line 343
    const/4 v3, 0x1

    .line 345
    :cond_0
    const-string v4, "state"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    const-string v4, "name"

    invoke-virtual {v1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    iget-object v4, p0, Lcom/android/server/HeadsetObserver;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 351
    .local v2, mAudio:Landroid/media/AudioManager;
    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 352
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setExtraSpeakerDockOn(Z)V

    .line 353
    sget-object v4, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    const-string v5, "setExtraSpeakerDock Force OFF!!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/HeadsetObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "extraCarDockSpeaker"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    sget-object v4, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent.EXTRA_CAR_DOCK_CARSPEAKER: state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v4, p0, Lcom/android/server/HeadsetObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 370
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mAudio:Landroid/media/AudioManager;
    .end local v3           #state:I
    :cond_2
    return-void

    .line 361
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #mAudio:Landroid/media/AudioManager;
    .restart local v3       #state:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 362
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    const-string v5, "exception extraCarDockSpeaker "

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final sendIntentExtraDockSpeaker(IIILjava/lang/String;)V
    .locals 7
    .parameter "headset"
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    .line 297
    and-int v4, p2, p1

    and-int v5, p3, p1

    if-eq v4, v5, :cond_2

    .line 299
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CRADLE_PLUG"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x4000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 302
    const/4 v3, 0x0

    .line 304
    .local v3, state:I
    and-int v4, p2, p1

    if-eqz v4, :cond_0

    .line 305
    const/4 v3, 0x1

    .line 307
    :cond_0
    const-string v4, "state"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string v4, "name"

    invoke-virtual {v1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    iget-object v4, p0, Lcom/android/server/HeadsetObserver;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 313
    .local v2, mAudio:Landroid/media/AudioManager;
    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 314
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setExtraSpeakerDockOn(Z)V

    .line 315
    sget-object v4, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    const-string v5, "setExtraSpeakerDock Force OFF!!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/HeadsetObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "extraDockSpeaker"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    sget-object v4, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent.EXTRA_DOCK_SPEAKER: state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v4, p0, Lcom/android/server/HeadsetObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 332
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mAudio:Landroid/media/AudioManager;
    .end local v3           #state:I
    :cond_2
    return-void

    .line 323
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #mAudio:Landroid/media/AudioManager;
    .restart local v3       #state:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 324
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    const-string v5, "exception extraDockSpeaker "

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final sendIntentTvout(IIILjava/lang/String;)V
    .locals 6
    .parameter "headset"
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    .line 396
    and-int v3, p2, p1

    and-int v4, p3, p1

    if-eq v3, v4, :cond_2

    .line 398
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x4000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 400
    const/4 v2, 0x0

    .line 401
    .local v2, state:I
    const/4 v1, 0x0

    .line 403
    .local v1, microphone:I
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_0

    .line 404
    const/4 v1, 0x1

    .line 406
    :cond_0
    and-int v3, p2, p1

    if-eqz v3, :cond_1

    .line 407
    const/4 v2, 0x1

    .line 409
    :cond_1
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    const-string v3, "name"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string v3, "microphone"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    sget-object v3, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent.ACTION_TVOUT_PLUG: state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 417
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #microphone:I
    .end local v2           #state:I
    :cond_2
    return-void
.end method

.method private final declared-synchronized sendIntents(IILjava/lang/String;)V
    .locals 7
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    const/16 v6, 0x80

    const/16 v5, 0x40

    const/4 v4, 0x2

    .line 280
    monitor-enter p0

    const/16 v0, 0xc3

    .line 281
    .local v0, allHeadsets:I
    const/4 v1, 0x1

    .local v1, curHeadset:I
    :goto_0
    if-eqz v0, :cond_7

    .line 282
    and-int v2, v1, v0

    if-eqz v2, :cond_1

    .line 283
    if-eq p1, v5, :cond_0

    if-ne p2, v5, :cond_2

    .line 284
    :cond_0
    :try_start_0
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/HeadsetObserver;->sendIntentExtraDockSpeaker(IIILjava/lang/String;)V

    .line 292
    :goto_1
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v0, v2

    .line 281
    :cond_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_2
    if-eq p1, v6, :cond_3

    if-ne p2, v6, :cond_4

    .line 286
    :cond_3
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/HeadsetObserver;->sendIntentExtraCarDockSpeaker(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 280
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 287
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/HeadsetObserver;->isTvOutStatus()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    if-eq p1, v4, :cond_5

    if-ne p2, v4, :cond_6

    .line 288
    :cond_5
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/HeadsetObserver;->sendIntentTvout(IIILjava/lang/String;)V

    goto :goto_1

    .line 290
    :cond_6
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/HeadsetObserver;->sendIntent(IIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 295
    :cond_7
    monitor-exit p0

    return-void
.end method

.method private final declared-synchronized update(Ljava/lang/String;I)V
    .locals 11
    .parameter "newName"
    .parameter "newState"

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    sget-object v5, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HEadSetObserver : newState ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    and-int/lit16 v1, p2, 0xc3

    .line 197
    .local v1, headsetState:I
    iget v5, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    or-int v4, v1, v5

    .line 198
    .local v4, newOrOld:I
    const/4 v0, 0x0

    .line 202
    .local v0, delay:I
    iget v5, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v5, v1, :cond_0

    const/4 v5, 0x1

    sub-int v5, v4, v5

    and-int/2addr v5, v4

    if-eqz v5, :cond_1

    .line 277
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 207
    :cond_1
    const/4 v3, 0x0

    .line 208
    .local v3, isUnplug:Z
    :try_start_1
    iget v5, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    if-ne v1, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/HeadsetObserver;->mHeadsetName:Ljava/lang/String;

    if-eq p1, v5, :cond_7

    .line 209
    :cond_2
    iget v5, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_6

    :cond_3
    iget v5, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_6

    :cond_4
    iget v5, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_5

    and-int/lit8 v5, v1, 0x40

    if-eqz v5, :cond_6

    :cond_5
    iget v5, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_7

    and-int/lit16 v5, v1, 0x80

    if-nez v5, :cond_7

    .line 213
    :cond_6
    const/4 v3, 0x1

    .line 217
    :cond_7
    iput-object p1, p0, Lcom/android/server/HeadsetObserver;->mHeadsetName:Ljava/lang/String;

    .line 218
    iget v5, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    iput v5, p0, Lcom/android/server/HeadsetObserver;->mPrevHeadsetState:I

    .line 219
    iput v1, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    .line 221
    if-nez v1, :cond_9

    .line 222
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/HeadsetObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    const/16 v0, 0x1f4

    .line 238
    .end local v2           #intent:Landroid/content/Intent;
    :cond_8
    :goto_1
    iget-object v5, p0, Lcom/android/server/HeadsetObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 239
    iget-object v5, p0, Lcom/android/server/HeadsetObserver;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/HeadsetObserver;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    iget v9, p0, Lcom/android/server/HeadsetObserver;->mPrevHeadsetState:I

    iget-object v10, p0, Lcom/android/server/HeadsetObserver;->mHeadsetName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    int-to-long v7, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 258
    iput-boolean v3, p0, Lcom/android/server/HeadsetObserver;->mLastPlugType:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
    .end local v0           #delay:I
    .end local v1           #headsetState:I
    .end local v3           #isUnplug:Z
    .end local v4           #newOrOld:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 233
    .restart local v0       #delay:I
    .restart local v1       #headsetState:I
    .restart local v3       #isUnplug:Z
    .restart local v4       #newOrOld:I
    :cond_9
    :try_start_2
    iget-object v5, p0, Lcom/android/server/HeadsetObserver;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eqz v5, :cond_8

    .line 234
    const/16 v0, 0x1f4

    goto :goto_1
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 107
    sget-object v1, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Headset UEVENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :try_start_0
    const-string v1, "SWITCH_NAME"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/HeadsetObserver;->update(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 112
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse switch state from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateTvOutConnectNotification(Z)V
    .locals 0
    .parameter "Connected"

    .prologue
    .line 443
    return-void
.end method
