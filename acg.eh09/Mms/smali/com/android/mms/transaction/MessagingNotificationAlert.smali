.class public Lcom/android/mms/transaction/MessagingNotificationAlert;
.super Landroid/app/Service;
.source "MessagingNotificationAlert.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# instance fields
.field private alertOnCallMode:I

.field private drivingMode:I

.field private initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private isOnCall:Z

.field private mServiceStartId:I

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private speechText:Ljava/lang/String;

.field private toneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    .line 159
    new-instance v0, Lcom/android/mms/transaction/MessagingNotificationAlert$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessagingNotificationAlert$1;-><init>(Lcom/android/mms/transaction/MessagingNotificationAlert;)V

    iput-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/MessagingNotificationAlert;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/MessagingNotificationAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->speakNewMessageInfo()V

    return-void
.end method

.method private makeTone()V
    .locals 9

    .prologue
    .line 118
    const/4 v5, 0x0

    .line 123
    .local v5, toneType:I
    const-string v7, "audio"

    invoke-virtual {p0, v7}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 125
    .local v0, audioManager:Landroid/media/AudioManager;
    const/16 v5, 0x16

    .line 126
    const/16 v6, 0x50

    .line 127
    .local v6, toneVolume:I
    const/16 v4, 0x12c

    .line 128
    .local v4, toneLengthMillis:I
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 131
    .local v2, ringerMode:I
    const/4 v3, 0x0

    .line 132
    .local v3, stream:I
    :try_start_0
    new-instance v7, Landroid/media/ToneGenerator;

    invoke-direct {v7, v3, v6}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    .line 134
    if-eqz v2, :cond_0

    const/4 v7, 0x1

    if-eq v2, v7, :cond_0

    .line 136
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v7, v5}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 137
    add-int/lit8 v7, v4, 0x14

    int-to-long v7, v7

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :cond_0
    :goto_0
    iget v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v7}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    .line 146
    return-void

    .line 139
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 140
    .local v1, e:Ljava/lang/RuntimeException;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    .line 141
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 142
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makeTts()V
    .locals 3

    .prologue
    .line 152
    :try_start_0
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, p0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 154
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    iget v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    goto :goto_0
.end method

.method private speakNewMessageInfo()V
    .locals 4

    .prologue
    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v0, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "streamType"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "utteranceId"

    const-string v2, "New message tts ended"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 182
    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->speechText:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 53
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 54
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->isOnCall:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 57
    .local v0, e1:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->isOnCall:Z

    .line 58
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 97
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 103
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 105
    :cond_1
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "alertoncall_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->alertOnCallMode:I

    .line 65
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->drivingMode:I

    .line 67
    iput p2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    .line 70
    :try_start_0
    const-string v1, "TTS_TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->speechText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    iget-boolean v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->isOnCall:Z

    if-eqz v1, :cond_1

    .line 80
    iget v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->alertOnCallMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeTts()V

    .line 91
    :goto_1
    return-void

    .line 71
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 72
    .local v0, e1:Ljava/lang/Exception;
    const v1, 0x7f0901b8

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->speechText:Ljava/lang/String;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v0           #e1:Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeTone()V

    .line 84
    iget v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    goto :goto_1

    .line 86
    :cond_1
    iget v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->drivingMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 87
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeTts()V

    goto :goto_1

    .line 89
    :cond_2
    iget v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    goto :goto_1
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 188
    iget v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    .line 189
    return-void
.end method
