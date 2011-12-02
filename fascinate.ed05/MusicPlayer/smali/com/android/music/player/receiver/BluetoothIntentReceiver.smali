.class public Lcom/android/music/player/receiver/BluetoothIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothIntentReceiver.java"


# static fields
.field public static final KEY_FROM_BLUETOOTH_RECEIVER:Ljava/lang/String; = "KEY_FROM_BLUETOOTH_RECEIVER"

.field private static final LONG_PRESS_DELAY:I = 0x3e8

.field static final MSG_LONGPRESS_TIMEOUT:I = 0x1

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

    .line 39
    const-class v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    .line 44
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mLastClickTime:J

    .line 45
    sput-boolean v2, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mDown:Z

    .line 46
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
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isServiceAlive(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    .line 354
    const/4 v3, 0x0

    .line 355
    .local v3, returnCheck:Z
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 356
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v5, 0x64

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 357
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

    .line 358
    .local v2, item:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.music"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 359
    const/4 v3, 0x1

    .line 364
    .end local v2           #item:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    return v3
.end method

.method private setLaunched(Z)V
    .locals 0
    .parameter "launched"

    .prologue
    .line 49
    sput-boolean p1, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mLaunched:Z

    .line 50
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 105
    .local v12, intentAction:Ljava/lang/String;
    sget-object v16, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onReceive() Action : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v16, "audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 108
    const-string v16, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 109
    const-string v16, "android.bluetooth.a2dp.extra.SINK_STATE"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 110
    .local v15, sinkState:I
    const-string v16, "android.bluetooth.a2dp.extra.PREVIOUS_SINK_STATE"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 111
    .local v14, previousSinkState:I
    sget-object v16, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    const-string v17, "ACTION_SINK_STATE_CHANGED %d->%d"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-eqz v15, :cond_0

    const/16 v16, 0x3

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    :cond_0
    const/16 v16, 0x4

    move v0, v14

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    .line 155
    new-instance v11, Landroid/content/Intent;

    const-class v16, Lcom/android/music/player/service/CorePlayerService;

    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v11, i:Landroid/content/Intent;
    const-string v16, "com.android.music.musicservicecommand"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v16, "command"

    const-string v17, "pause"

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 349
    .end local v11           #i:Landroid/content/Intent;
    .end local v14           #previousSinkState:I
    .end local v15           #sinkState:I
    :cond_1
    :goto_0
    return-void

    .line 160
    .restart local v14       #previousSinkState:I
    .restart local v15       #sinkState:I
    :cond_2
    const/16 v16, 0x4

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 165
    const/4 v4, 0x0

    .line 166
    .local v4, bBroadcast:Z
    sget-object v16, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/16 v17, 0x1

    aget v16, v16, v17

    const/high16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    sget-object v16, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/16 v17, 0x1

    aget v16, v16, v17

    const v17, 0x8000

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 169
    :cond_3
    sget-object v16, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "sinkState == BluetoothA2dp.STATE_PLAYING, Effect:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/16 v19, 0x1

    aget v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "->Normal"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v16, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/16 v17, 0x1

    const/16 v18, 0x1000

    aput v18, v16, v17

    .line 171
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/music/common/util/MusicValueSaveController;->setEffect(I)V

    .line 172
    const/4 v4, 0x1

    .line 175
    :cond_4
    sget-object v16, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/16 v17, 0x2

    aget v16, v16, v17

    const/high16 v17, 0x20

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 176
    sget-object v16, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    const-string v17, "sinkState == BluetoothA2dp.STATE_PLAYING, 5.1CH: On -> Off"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget-object v16, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/16 v17, 0x2

    const/high16 v18, 0x40

    aput v18, v16, v17

    .line 178
    const/4 v4, 0x1

    .line 181
    :cond_5
    if-eqz v4, :cond_1

    .line 182
    new-instance v11, Landroid/content/Intent;

    const-class v16, Lcom/android/music/player/service/CorePlayerService;

    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .restart local v11       #i:Landroid/content/Intent;
    const-string v16, "com.android.music.musicservicecommand.set.eq"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 193
    .end local v4           #bBroadcast:Z
    .end local v11           #i:Landroid/content/Intent;
    .end local v14           #previousSinkState:I
    .end local v15           #sinkState:I
    :cond_6
    const-string v16, "android.media.AUDIO_BECOMING_NOISY"

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 197
    const-string v16, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 198
    .local v6, bFromBT:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v5

    .line 200
    .local v5, bBtA2dpOn:Z
    if-nez v5, :cond_1

    if-nez v6, :cond_1

    .line 204
    invoke-direct/range {p0 .. p1}, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->isServiceAlive(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 205
    new-instance v11, Landroid/content/Intent;

    const-class v16, Lcom/android/music/player/service/CorePlayerService;

    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .restart local v11       #i:Landroid/content/Intent;
    const-string v16, "com.android.music.musicservicecommand"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v16, "command"

    const-string v17, "pause"

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 250
    .end local v5           #bBtA2dpOn:Z
    .end local v6           #bFromBT:Z
    .end local v11           #i:Landroid/content/Intent;
    :cond_7
    const-string v16, "android.intent.action.MEDIA_BUTTON"

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 251
    const-string v16, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/view/KeyEvent;

    .line 253
    .local v8, event:Landroid/view/KeyEvent;
    sget-object v16, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onReceive() KeyEvent : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    if-eqz v8, :cond_1

    .line 258
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 259
    .local v13, keycode:I
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 260
    .local v3, action:I
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v9

    .line 262
    .local v9, eventtime:J
    sget-object v16, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    const-string v17, "onReceive() ACTION_MEDIA_BUTTON, keycode:%d,action:%d"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v7, 0x0

    .line 265
    .local v7, command:Ljava/lang/String;
    packed-switch v13, :pswitch_data_0

    .line 299
    :cond_8
    :goto_1
    :pswitch_0
    if-eqz v7, :cond_1

    .line 300
    sget-object v16, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onReceive() Command : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",mDown="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-boolean v18, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mDown:Z

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/16 v16, 0x4f

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v16

    if-nez v16, :cond_b

    .line 303
    sget-object v16, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->TAG:Ljava/lang/String;

    const-string v17, "isBluetoothA2dpOn() == false, playing with speaker"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 267
    :pswitch_1
    const-string v7, "stop"

    .line 269
    goto :goto_1

    .line 272
    :pswitch_2
    const-string v7, "togglepause"

    .line 274
    goto :goto_1

    .line 276
    :pswitch_3
    const-string v7, "next"

    .line 278
    goto :goto_1

    .line 280
    :pswitch_4
    const-string v7, "previous"

    .line 282
    goto :goto_1

    .line 284
    :pswitch_5
    if-nez v3, :cond_9

    .line 285
    const-string v7, "rewind_down"

    goto :goto_1

    .line 286
    :cond_9
    const/16 v16, 0x1

    move v0, v3

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    .line 287
    const-string v7, "rewind_up"

    goto :goto_1

    .line 291
    :pswitch_6
    if-nez v3, :cond_a

    .line 292
    const-string v7, "fastforward_down"

    goto :goto_1

    .line 293
    :cond_a
    const/16 v16, 0x1

    move v0, v3

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    .line 294
    const-string v7, "fastforward_up"

    goto :goto_1

    .line 307
    :cond_b
    if-nez v3, :cond_d

    .line 308
    sget-boolean v16, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mDown:Z

    if-nez v16, :cond_1

    .line 310
    const-string v16, "togglepause"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 312
    sget-object v16, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v17, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mHandler:Landroid/os/Handler;

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    const-wide/16 v18, 0x3e8

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 317
    :cond_c
    new-instance v11, Landroid/content/Intent;

    const-class v16, Lcom/android/music/player/service/CorePlayerService;

    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    .restart local v11       #i:Landroid/content/Intent;
    const-string v16, "com.android.music.musicservicecommand"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v16, "KEY_FROM_BLUETOOTH_RECEIVER"

    const-string v17, "KEY_FROM_BLUETOOTH_RECEIVER"

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v16, "command"

    move-object v0, v11

    move-object/from16 v1, v16

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 323
    sput-wide v9, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mLastClickTime:J

    .line 326
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->setLaunched(Z)V

    .line 327
    const/16 v16, 0x1

    sput-boolean v16, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mDown:Z

    goto/16 :goto_0

    .line 329
    .end local v11           #i:Landroid/content/Intent;
    :cond_d
    const/16 v16, 0x1

    move v0, v3

    move/from16 v1, v16

    if-ne v0, v1, :cond_10

    .line 330
    sget-object v16, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mHandler:Landroid/os/Handler;

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeMessages(I)V

    .line 332
    const/16 v16, 0x59

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_e

    const/16 v16, 0x5a

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_f

    .line 334
    :cond_e
    new-instance v11, Landroid/content/Intent;

    const-class v16, Lcom/android/music/player/service/CorePlayerService;

    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    .restart local v11       #i:Landroid/content/Intent;
    const-string v16, "com.android.music.musicservicecommand"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v16, "command"

    move-object v0, v11

    move-object/from16 v1, v16

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 338
    sput-wide v9, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mLastClickTime:J

    .line 339
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->setLaunched(Z)V

    .line 341
    .end local v11           #i:Landroid/content/Intent;
    :cond_f
    const/16 v16, 0x0

    sput-boolean v16, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mDown:Z

    goto/16 :goto_0

    .line 343
    :cond_10
    sget-object v16, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mHandler:Landroid/os/Handler;

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeMessages(I)V

    .line 344
    const/16 v16, 0x0

    sput-boolean v16, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mDown:Z

    goto/16 :goto_0

    .line 265
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
