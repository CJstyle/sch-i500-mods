.class Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;
.super Ljava/lang/Object;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallRingbackTonePlayer"
.end annotation


# instance fields
.field private mToneGenerator:Landroid/media/ToneGenerator;

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 1
    .parameter

    .prologue
    .line 2357
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 2359
    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2351
    invoke-direct {p0}, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->start()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2351
    invoke-direct {p0}, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->stop()V

    return-void
.end method

.method private start()V
    .locals 6

    .prologue
    .line 2367
    iget-object v3, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2372
    .local v0, audioManager:Landroid/media/AudioManager;
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v3}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2373
    iget-object v3, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v3}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    move v2, v3

    .line 2378
    .local v2, stream:I
    :goto_0
    new-instance v3, Landroid/media/ToneGenerator;

    const/16 v4, 0x50

    invoke-direct {v3, v2, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2388
    .end local v2           #stream:I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v3, :cond_0

    .line 2389
    iget-object v3, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v4, 0x17

    invoke-virtual {v3, v4}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 2390
    iget-object v3, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v4, 0x1

    #setter for: Lcom/android/phone/CallNotifier;->mCurrentRingbackToneState:I
    invoke-static {v3, v4}, Lcom/android/phone/CallNotifier;->access$1302(Lcom/android/phone/CallNotifier;I)I

    .line 2392
    :cond_0
    return-void

    .line 2373
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .line 2376
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #stream:I
    goto :goto_0

    .line 2380
    .end local v2           #stream:I
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 2383
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "CallNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InCallRingbackTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_1
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 2400
    iget-object v0, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 2401
    iget-object v0, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2402
    iget-object v0, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 2403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 2406
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v1, 0x2

    #setter for: Lcom/android/phone/CallNotifier;->mCurrentRingbackToneState:I
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$1302(Lcom/android/phone/CallNotifier;I)I

    .line 2407
    return-void
.end method
