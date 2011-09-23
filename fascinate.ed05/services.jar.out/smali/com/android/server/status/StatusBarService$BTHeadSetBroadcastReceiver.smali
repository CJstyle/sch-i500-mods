.class Lcom/android/server/status/StatusBarService$BTHeadSetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BTHeadSetBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method public constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 3471
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$BTHeadSetBroadcastReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    .line 3472
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3473
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v4, "StatusBar"

    .line 3476
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3480
    .local v0, action:Ljava/lang/String;
    const-string v2, "StatusBar"

    const-string v2, "mBTHeadsetReceiver-onReceive:Driving Mode"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3483
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$BTHeadSetBroadcastReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v2}, Lcom/android/server/status/StatusBarService;->access$1800(Lcom/android/server/status/StatusBarService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3484
    const-string v2, "android.intent.action.VOICE_COMMAND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3485
    const-string v2, "StatusBar"

    const-string v2, "mBTHeadsetReceiver-onReceive:Intent.ACTION_VOICE_COMMAND"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    const-string v2, "StatusBar"

    const-string v2, "mBTHeadsetReceiver-onReceive:Make mBluetoothHeadset"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$BTHeadSetBroadcastReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    new-instance v3, Landroid/bluetooth/BluetoothHeadset;

    iget-object v4, p0, Lcom/android/server/status/StatusBarService$BTHeadSetBroadcastReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v4, v4, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/status/StatusBarService$BTHeadSetBroadcastReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v5, v5, Lcom/android/server/status/StatusBarService;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    invoke-direct {v3, v4, v5}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v3, v2, Lcom/android/server/status/StatusBarService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 3506
    :cond_0
    :goto_0
    return-void

    .line 3493
    :cond_1
    const-string v2, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3494
    const-string v2, "StatusBar"

    const-string v2, "mBTHeadsetReceiver-onReceive:BluetoothHeadset.ACTION_AUDIO_STATE_CHANGED"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    const-string v2, "android.bluetooth.headset.extra.AUDIO_STATE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3497
    .local v1, state:I
    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 3498
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$BTHeadSetBroadcastReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v2, :cond_0

    .line 3499
    const-string v2, "StatusBar"

    const-string v2, "mBTHeadsetReceiver-Make mTts"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$BTHeadSetBroadcastReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    new-instance v3, Landroid/speech/tts/TextToSpeech;

    iget-object v4, p0, Lcom/android/server/status/StatusBarService$BTHeadSetBroadcastReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v4, v4, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/status/StatusBarService$BTHeadSetBroadcastReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v5, v5, Lcom/android/server/status/StatusBarService;->mTtsListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v3, v4, v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v3, v2, Lcom/android/server/status/StatusBarService;->mTts:Landroid/speech/tts/TextToSpeech;

    goto :goto_0
.end method
