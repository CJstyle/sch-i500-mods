.class public Lcom/android/music/player/activity/MusicTextToSpeech;
.super Ljava/lang/Object;
.source "MusicTextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final TEXT_TO_SPEECH:I = 0x7

.field private static _instance:Lcom/android/music/player/activity/MusicTextToSpeech;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSpeech:[Ljava/lang/String;

.field private mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/android/music/player/activity/MusicTextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/player/activity/MusicTextToSpeech;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/player/activity/MusicTextToSpeech;->_instance:Lcom/android/music/player/activity/MusicTextToSpeech;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicTextToSpeech;->mContext:Landroid/content/Context;

    .line 24
    iput-object p1, p0, Lcom/android/music/player/activity/MusicTextToSpeech;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/music/player/activity/MusicTextToSpeech;
    .locals 2
    .parameter "context"

    .prologue
    .line 28
    const-class v0, Lcom/android/music/player/activity/MusicTextToSpeech;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/music/player/activity/MusicTextToSpeech;->_instance:Lcom/android/music/player/activity/MusicTextToSpeech;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/music/player/activity/MusicTextToSpeech;->_instance:Lcom/android/music/player/activity/MusicTextToSpeech;

    invoke-virtual {v1}, Lcom/android/music/player/activity/MusicTextToSpeech;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 29
    :cond_0
    new-instance v1, Lcom/android/music/player/activity/MusicTextToSpeech;

    invoke-direct {v1, p0}, Lcom/android/music/player/activity/MusicTextToSpeech;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/music/player/activity/MusicTextToSpeech;->_instance:Lcom/android/music/player/activity/MusicTextToSpeech;

    .line 31
    :cond_1
    sget-object v1, Lcom/android/music/player/activity/MusicTextToSpeech;->_instance:Lcom/android/music/player/activity/MusicTextToSpeech;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 28
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected activityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 65
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 66
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 68
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v0, p0, Lcom/android/music/player/activity/MusicTextToSpeech;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {v1, v0, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/music/player/activity/MusicTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    sget-object v0, Lcom/android/music/player/activity/MusicTextToSpeech;->TAG:Ljava/lang/String;

    const-string v1, "MusicTextToSpeech::activityResult: we dont have any data lets go for installation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/android/music/player/activity/MusicTextToSpeech;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicTextToSpeech;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected destroy()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/music/player/activity/MusicTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/music/player/activity/MusicTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 99
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/music/player/activity/MusicTextToSpeech;->_instance:Lcom/android/music/player/activity/MusicTextToSpeech;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicTextToSpeech;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public onInit(I)V
    .locals 5
    .parameter "status"

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/music/player/activity/MusicTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 89
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicTextToSpeech;->mSpeech:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/music/player/activity/MusicTextToSpeech;->mSpeech:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/music/player/activity/MusicTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/music/player/activity/MusicTextToSpeech;->mSpeech:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    return-void
.end method

.method public speakUp([Ljava/lang/String;)V
    .locals 4
    .parameter "speech"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/music/player/activity/MusicTextToSpeech;->mSpeech:[Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v0, checkIntent:Landroid/content/Intent;
    const-string v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :try_start_0
    sget-object v2, Lcom/android/music/player/activity/MusicTextToSpeech;->TAG:Ljava/lang/String;

    const-string v3, "speakUp, MusicPlayer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p0, p0, Lcom/android/music/player/activity/MusicTextToSpeech;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/android/music/player/activity/MusicPlayer;

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v2}, Lcom/android/music/player/activity/MusicPlayer;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 60
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/music/player/activity/MusicTextToSpeech;->TAG:Ljava/lang/String;

    const-string v3, "MusicTextToSpeech::speakUp: Exception occured"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
