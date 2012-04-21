.class Lcom/android/phone/Ringer$CallerIDThread;
.super Ljava/lang/Thread;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallerIDThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method private constructor <init>(Lcom/android/phone/Ringer;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/phone/Ringer$CallerIDThread;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/android/phone/Ringer$CallerIDThread;-><init>(Lcom/android/phone/Ringer;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 337
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/Ringer$CallerIDThread;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mTtsString:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/Ringer$CallerIDThread;->this$0:Lcom/android/phone/Ringer;

    const-string v5, "Restricted number"

    iput-object v5, v4, Lcom/android/phone/Ringer;->mTtsString:Ljava/lang/String;

    .line 338
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/phone/Ringer$CallerIDThread;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mContinueTTS:Z
    invoke-static {v4}, Lcom/android/phone/Ringer;->access$300(Lcom/android/phone/Ringer;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 339
    iget-object v4, p0, Lcom/android/phone/Ringer$CallerIDThread;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/Ringer$CallerIDThread;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/Ringer$CallerIDThread;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/Ringer$CallerIDThread;->this$0:Lcom/android/phone/Ringer;

    iget-object v6, v6, Lcom/android/phone/Ringer;->mTtsString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 342
    :cond_1
    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Lcom/android/phone/Ringer$CallerIDThread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 343
    :catch_0
    move-exception v4

    goto :goto_0

    .line 346
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/phone/Ringer$CallerIDThread;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 347
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 349
    .local v2, newMusicVolume:I
    iget-object v4, p0, Lcom/android/phone/Ringer$CallerIDThread;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->musicVolume:I
    invoke-static {v4}, Lcom/android/phone/Ringer;->access$400(Lcom/android/phone/Ringer;)I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 350
    rem-int/lit8 v3, v2, 0x2

    .line 352
    .local v3, tmp:I
    if-ne v2, v8, :cond_4

    const/4 v2, 0x1

    .line 358
    :goto_1
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 360
    .end local v3           #tmp:I
    :cond_3
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/phone/Ringer$CallerIDThread;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->musicVolume:I
    invoke-static {v5}, Lcom/android/phone/Ringer;->access$400(Lcom/android/phone/Ringer;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 369
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #newMusicVolume:I
    :goto_2
    monitor-exit p0

    return-void

    .line 354
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #newMusicVolume:I
    .restart local v3       #tmp:I
    :cond_4
    if-ne v3, v8, :cond_5

    sub-int v4, v2, v8

    :try_start_3
    div-int/lit8 v2, v4, 0x2

    goto :goto_1

    .line 356
    :cond_5
    div-int/lit8 v2, v2, 0x2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 365
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #newMusicVolume:I
    .end local v3           #tmp:I
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 367
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "Ringer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception Occured - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 337
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
