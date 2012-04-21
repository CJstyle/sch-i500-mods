.class Lcom/android/phone/CallTextToSpeech$TtsListener;
.super Ljava/lang/Object;
.source "CallTextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallTextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TtsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallTextToSpeech;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallTextToSpeech;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallTextToSpeech;Lcom/android/phone/CallTextToSpeech$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/CallTextToSpeech$TtsListener;-><init>(Lcom/android/phone/CallTextToSpeech;)V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    const/4 v2, 0x1

    #setter for: Lcom/android/phone/CallTextToSpeech;->mTtsInited:Z
    invoke-static {v1, v2}, Lcom/android/phone/CallTextToSpeech;->access$002(Lcom/android/phone/CallTextToSpeech;Z)Z

    .line 63
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    #getter for: Lcom/android/phone/CallTextToSpeech;->mPendingSpeakTtsId:I
    invoke-static {v1}, Lcom/android/phone/CallTextToSpeech;->access$100(Lcom/android/phone/CallTextToSpeech;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    #getter for: Lcom/android/phone/CallTextToSpeech;->mPendingSpeakTtsId:I
    invoke-static {v2}, Lcom/android/phone/CallTextToSpeech;->access$100(Lcom/android/phone/CallTextToSpeech;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/CallTextToSpeech;->speakTts(I)V

    .line 66
    :cond_0
    monitor-exit v0

    .line 68
    return-void

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 2
    .parameter "utteranceId"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    #getter for: Lcom/android/phone/CallTextToSpeech;->mTtsId:I
    invoke-static {v1}, Lcom/android/phone/CallTextToSpeech;->access$200(Lcom/android/phone/CallTextToSpeech;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTextToSpeech;->resetVolumeForTts(I)V

    .line 72
    return-void
.end method
