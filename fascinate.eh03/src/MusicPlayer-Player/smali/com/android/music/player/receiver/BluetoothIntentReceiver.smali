.class public Lcom/android/music/player/receiver/BluetoothIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothIntentReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mDown:Z

.field private static mHandler:Landroid/os/Handler;

.field private static mLastClickTime:J

.field static mLaunched:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    const-class v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    .line 41
    sput-boolean v2, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mDown:Z

    .line 44
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mLastClickTime:J

    .line 45
    sput-boolean v2, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mLaunched:Z

    .line 52
    new-instance v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver$1;

    invoke-direct {v0}, Lcom/android/music/player/receiver/BluetoothIntentReceiver$1;-><init>()V

    sput-object v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isServiceAlive(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    .line 532
    const/4 v3, 0x0

    .line 533
    .local v3, returnCheck:Z
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 534
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v5, 0x64

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 535
    .local v4, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 536
    .local v2, item:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.music"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 537
    const/4 v3, 0x1

    .line 542
    .end local v2           #item:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    return v3
.end method

.method private setLaunched(Z)V
    .locals 0
    .parameter "launched"

    .prologue
    .line 48
    sput-boolean p1, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mLaunched:Z

    .line 49
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v11, "com.android.music.musicservicecommand"

    const-class v10, Lcom/android/music/player/service/CorePlayerService;

    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 131
    sget-object v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() Action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 134
    const-string v0, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 135
    const-string v0, "android.bluetooth.a2dp.extra.SINK_STATE"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 136
    const-string v1, "android.bluetooth.a2dp.extra.PREVIOUS_SINK_STATE"

    invoke-virtual {p2, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 137
    sget-object v2, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    const-string v3, "ACTION_SINK_STATE_CHANGED %d->%d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    if-eqz v0, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 274
    sget-boolean v0, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    if-nez v0, :cond_3

    .line 278
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v0, v0, v8

    const/high16 v1, 0x2

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v0, v0, v8

    const v1, 0x8000

    if-ne v0, v1, :cond_1c

    .line 280
    :cond_1
    sget-object v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sinkState == BluetoothA2dp.STATE_PLAYING, Effect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->Normal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/16 v1, 0x1000

    aput v1, v0, v8

    .line 282
    invoke-static {v9}, Lcom/android/music/common/util/MusicValueSaveController;->setEffect(I)V

    move v0, v8

    .line 286
    :goto_0
    sget-object v1, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v1, v1, v6

    const/high16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 287
    sget-object v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "sinkState == BluetoothA2dp.STATE_PLAYING, 5.1CH: On -> Off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/high16 v1, 0x40

    aput v1, v0, v6

    move v0, v8

    .line 292
    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->isServiceAlive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {v0, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    const-string v1, "com.android.music.musicservicecommand.set.eq"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 299
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->isServiceAlive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {v0, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 529
    :cond_4
    :goto_1
    return-void

    .line 306
    :cond_5
    const/4 v2, 0x4

    if-ne v0, v2, :cond_8

    .line 310
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v0, v0, v8

    const/high16 v2, 0x2

    if-eq v0, v2, :cond_6

    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v0, v0, v8

    const v2, 0x8000

    if-ne v0, v2, :cond_1b

    .line 313
    :cond_6
    sget-object v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sinkState == BluetoothA2dp.STATE_PLAYING, Effect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->Normal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/16 v2, 0x1000

    aput v2, v0, v8

    .line 315
    invoke-static {v9}, Lcom/android/music/common/util/MusicValueSaveController;->setEffect(I)V

    move v0, v8

    .line 319
    :goto_2
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v6

    const/high16 v3, 0x20

    if-eq v2, v3, :cond_7

    if-ne v1, v6, :cond_7

    .line 321
    sget-object v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "sinkState == BluetoothA2dp.STATE_PLAYING, 5.1CH Update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/high16 v1, 0x40

    aput v1, v0, v6

    move v0, v8

    .line 326
    :cond_7
    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->isServiceAlive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 327
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {v0, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    const-string v1, "com.android.music.musicservicecommand.set.eq"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 332
    :cond_8
    if-ne v0, v6, :cond_9

    const/4 v2, 0x4

    if-eq v1, v2, :cond_a

    :cond_9
    if-nez v0, :cond_4

    if-ne v1, v6, :cond_4

    .line 335
    :cond_a
    sget-boolean v0, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_4

    .line 338
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v0, v0, v8

    const/high16 v1, 0x2

    if-eq v0, v1, :cond_b

    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v0, v0, v8

    const v1, 0x8000

    if-ne v0, v1, :cond_1a

    .line 341
    :cond_b
    sget-object v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sinkState == BluetoothA2dp.STATE_PLAYING, Effect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->Normal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/16 v1, 0x1000

    aput v1, v0, v8

    .line 343
    invoke-static {v9}, Lcom/android/music/common/util/MusicValueSaveController;->setEffect(I)V

    move v0, v8

    .line 347
    :goto_3
    sget-object v1, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v1, v1, v6

    const/high16 v2, 0x20

    if-ne v1, v2, :cond_c

    .line 348
    sget-object v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "sinkState == BluetoothA2dp.STATE_PLAYING, 5.1CH: On -> Off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/high16 v1, 0x40

    aput v1, v0, v6

    move v0, v8

    .line 353
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->isServiceAlive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 354
    if-eqz v0, :cond_d

    .line 355
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {v0, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    const-string v1, "com.android.music.musicservicecommand.set.eq"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 359
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "musicPlayer.service.BLUETOOTH_HEADSET_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 368
    :cond_e
    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 372
    const-string v0, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 373
    iget-object v1, p0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    .line 374
    sget-object v2, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    const-string v3, "ACTION_AUDIO_BECOMING_NOISY:bFromBT(%s),bBtA2dpOn(%s)"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    if-nez v1, :cond_4

    if-nez v0, :cond_4

    .line 377
    invoke-direct {p0, p1}, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->isServiceAlive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 378
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {v0, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 379
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 385
    :cond_f
    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 386
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 388
    sget-object v1, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() KeyEvent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    if-eqz v0, :cond_4

    .line 393
    invoke-static {}, Lcom/android/music/common/util/MusicUtils;->isFactoryTest()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 394
    sget-object v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Default ESN state : Blocking Enable."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 399
    :cond_10
    sget-object v1, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Default ESN state : Blocking Disable."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 403
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 405
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 406
    sget-object v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    const-string v5, "onReceive() ACTION_MEDIA_BUTTON, keycode:%d,action:%d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v0, 0x0

    .line 410
    packed-switch v1, :pswitch_data_0

    .line 438
    :cond_11
    :goto_4
    :pswitch_0
    if-eqz v0, :cond_4

    .line 439
    sget-object v5, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive() Command : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mDown="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mDown:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/16 v5, 0x4f

    if-eq v1, v5, :cond_14

    iget-object v5, p0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v5

    if-nez v5, :cond_14

    .line 442
    sget-object v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "isBluetoothA2dpOn() == false, playing with speaker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 412
    :pswitch_1
    const-string v0, "stop"

    goto :goto_4

    .line 416
    :pswitch_2
    const-string v0, "togglepause"

    goto :goto_4

    .line 419
    :pswitch_3
    const-string v0, "next"

    goto :goto_4

    .line 422
    :pswitch_4
    const-string v0, "previous"

    goto :goto_4

    .line 425
    :pswitch_5
    if-nez v2, :cond_12

    .line 426
    const-string v0, "rewind_down"

    goto :goto_4

    .line 427
    :cond_12
    if-ne v2, v8, :cond_11

    .line 428
    const-string v0, "rewind_up"

    goto :goto_4

    .line 431
    :pswitch_6
    if-nez v2, :cond_13

    .line 432
    const-string v0, "fastforward_down"

    goto :goto_4

    .line 433
    :cond_13
    if-ne v2, v8, :cond_11

    .line 434
    const-string v0, "fastforward_up"

    goto :goto_4

    .line 446
    :cond_14
    if-nez v2, :cond_16

    .line 447
    sget-boolean v1, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mDown:Z

    if-nez v1, :cond_4

    .line 467
    const-string v1, "togglepause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 468
    sget-object v1, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v5, 0x3e8

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 473
    :cond_15
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {v1, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 474
    const-string v2, "com.android.music.musicservicecommand"

    invoke-virtual {v1, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v2, "KEY_FROM_BLUETOOTH_RECEIVER"

    const-string v5, "KEY_FROM_BLUETOOTH_RECEIVER"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string v2, "command"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 478
    sput-wide v3, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mLastClickTime:J

    .line 480
    invoke-direct {p0, v9}, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->setLaunched(Z)V

    .line 481
    sput-boolean v8, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mDown:Z

    goto/16 :goto_1

    .line 485
    :cond_16
    if-ne v2, v8, :cond_19

    .line 486
    sget-object v2, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 500
    const/16 v2, 0x59

    if-eq v1, v2, :cond_17

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_18

    .line 502
    :cond_17
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {v1, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 503
    const-string v2, "com.android.music.musicservicecommand"

    invoke-virtual {v1, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    const-string v2, "command"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 507
    sput-wide v3, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mLastClickTime:J

    .line 508
    invoke-direct {p0, v9}, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->setLaunched(Z)V

    .line 511
    :cond_18
    sput-boolean v9, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mDown:Z

    goto/16 :goto_1

    .line 513
    :cond_19
    sget-object v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 515
    sput-boolean v9, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mDown:Z

    goto/16 :goto_1

    :cond_1a
    move v0, v9

    goto/16 :goto_3

    :cond_1b
    move v0, v9

    goto/16 :goto_2

    :cond_1c
    move v0, v9

    goto/16 :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
