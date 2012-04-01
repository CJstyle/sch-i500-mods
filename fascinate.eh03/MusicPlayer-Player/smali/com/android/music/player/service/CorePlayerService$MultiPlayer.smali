.class Lcom/android/music/player/service/CorePlayerService$MultiPlayer;
.super Ljava/lang/Object;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/service/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiPlayer"
.end annotation


# instance fields
.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field listener:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected mCurrentState:I

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Lcom/android/music/player/service/CorePlayerService;


# direct methods
.method public constructor <init>(Lcom/android/music/player/service/CorePlayerService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2941
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2936
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2939
    iput v1, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3097
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$1;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$1;-><init>(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 3111
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;-><init>(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2942
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 2943
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 2944
    return-void
.end method

.method static synthetic access$2600(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2935
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2935
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2935
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private handlingMediaPlayerErrorCase()V
    .locals 4

    .prologue
    const v3, 0x7f0a0042

    const/4 v2, 0x0

    .line 3244
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean v2, v0, Lcom/android/music/player/service/CorePlayerService;->mResetForUlp:Z

    .line 3245
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3246
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$2510(Lcom/android/music/player/service/CorePlayerService;)I

    .line 3249
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/music/common/util/MusicUtils;->isMusicPlayerTopActivity(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3250
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$2800(Lcom/android/music/player/service/CorePlayerService;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3251
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$2800(Lcom/android/music/player/service/CorePlayerService;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setText(I)V

    .line 3255
    :goto_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$2800(Lcom/android/music/player/service/CorePlayerService;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3257
    :cond_0
    return-void

    .line 3253
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v1}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->access$2802(Lcom/android/music/player/service/CorePlayerService;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_0
.end method


# virtual methods
.method public duration()J
    .locals 2

    .prologue
    .line 3214
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 3235
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getSubRealEQdata([I)V
    .locals 5
    .parameter "value"

    .prologue
    .line 3322
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_0

    .line 3326
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3327
    .local v1, eqValue:Landroid/os/Parcel;
    const-string v4, "android.media.IMediaPlayer"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3329
    .local v2, eqValueReply:Landroid/os/Parcel;
    const v4, 0x15b38

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3330
    array-length v4, p1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3331
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v1, v2}, Landroid/media/MediaPlayer;->setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I

    .line 3332
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 3334
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, p1, v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3332
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3338
    .end local v1           #eqValue:Landroid/os/Parcel;
    .end local v2           #eqValueReply:Landroid/os/Parcel;
    .end local v3           #i:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 3340
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 3348
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    return-void

    .line 3342
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 3344
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method internalSetEq(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 3262
    :try_start_0
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/music/player/data/MusicPlayerController;->getLaunchMode()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3266
    .local v1, eqValue:Landroid/os/Parcel;
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3268
    .local v2, eqValueReply:Landroid/os/Parcel;
    const v3, 0x12fd1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3269
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3270
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3271
    const/high16 v3, 0x80

    and-int/2addr v3, p1

    if-lez v3, :cond_1

    .line 3272
    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3275
    :goto_0
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaPlayer;->setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I

    .line 3283
    .end local v1           #eqValue:Landroid/os/Parcel;
    .end local v2           #eqValueReply:Landroid/os/Parcel;
    :cond_0
    :goto_1
    return-void

    .line 3274
    .restart local v1       #eqValue:Landroid/os/Parcel;
    .restart local v2       #eqValueReply:Landroid/os/Parcel;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3278
    .end local v1           #eqValue:Landroid/os/Parcel;
    .end local v2           #eqValueReply:Landroid/os/Parcel;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 3279
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 3280
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 3281
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method internalSetUserEQ(I[I)V
    .locals 6
    .parameter "mode"
    .parameter "eq"

    .prologue
    const/16 v5, 0x8

    .line 3288
    :try_start_0
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v4}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/music/player/data/MusicPlayerController;->getLaunchMode()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3292
    .local v1, eqValue:Landroid/os/Parcel;
    const-string v4, "android.media.IMediaPlayer"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3294
    .local v2, eqValueReply:Landroid/os/Parcel;
    const v4, 0x12fd1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3295
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3296
    and-int/lit16 v4, p1, 0x800

    if-lez v4, :cond_0

    .line 3297
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3301
    :goto_0
    const/high16 v4, 0x80

    and-int/2addr v4, p1

    if-lez v4, :cond_2

    .line 3302
    const/16 v4, 0x13

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3306
    :goto_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v5, :cond_3

    .line 3308
    aget v4, p2, v3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3306
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3299
    .end local v3           #i:I
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3313
    .end local v1           #eqValue:Landroid/os/Parcel;
    .end local v2           #eqValueReply:Landroid/os/Parcel;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 3314
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 3318
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_3
    return-void

    .line 3304
    .restart local v1       #eqValue:Landroid/os/Parcel;
    .restart local v2       #eqValueReply:Landroid/os/Parcel;
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3315
    .end local v1           #eqValue:Landroid/os/Parcel;
    .end local v2           #eqValueReply:Landroid/os/Parcel;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 3316
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3

    .line 3311
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .restart local v1       #eqValue:Landroid/os/Parcel;
    .restart local v2       #eqValueReply:Landroid/os/Parcel;
    .restart local v3       #i:I
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v1, v2}, Landroid/media/MediaPlayer;->setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3
.end method

.method public isInitialized()Z
    .locals 3

    .prologue
    .line 3035
    iget v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    .line 3036
    const/4 v0, 0x1

    .line 3039
    :goto_0
    return v0

    .line 3038
    :cond_0
    const-string v0, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPrepared()[false],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isStop()Z
    .locals 3

    .prologue
    const-string v2, "CorePlayerService"

    .line 3044
    iget v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    const v1, 0x11020

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    const v1, 0x11040

    if-ne v0, v1, :cond_1

    .line 3046
    :cond_0
    const-string v0, "CorePlayerService"

    const-string v0, "isInternalStop()[false]"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    const/4 v0, 0x0

    .line 3050
    :goto_0
    return v0

    .line 3049
    :cond_1
    const-string v0, "CorePlayerService"

    const-string v0, "isInternalStop()[true]"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public offSubRealEQdata()V
    .locals 4

    .prologue
    .line 3353
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    .line 3357
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3358
    .local v1, eqValue:Landroid/os/Parcel;
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3360
    .local v2, eqValueReply:Landroid/os/Parcel;
    const v3, 0x15b39

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3361
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaPlayer;->setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3373
    .end local v1           #eqValue:Landroid/os/Parcel;
    .end local v2           #eqValueReply:Landroid/os/Parcel;
    :cond_0
    :goto_0
    return-void

    .line 3363
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 3365
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 3367
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 3369
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 3089
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 3090
    const v0, 0x11040

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3091
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 3218
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 3083
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->stop()V

    .line 3084
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 3085
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3086
    return-void
.end method

.method public seek(J)J
    .locals 2
    .parameter "whereto"

    .prologue
    .line 3222
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 3223
    return-wide p1
.end method

.method public setDataSource(Ljava/lang/String;)Z
    .locals 14
    .parameter "path"

    .prologue
    const/4 v13, 0x1

    const/4 v4, 0x0

    const-string v3, "MP-setDataSource:IllegalArgumentException"

    const-string v12, "CorePlayerService"

    .line 2947
    const-string v0, "CorePlayerService"

    const-string v0, "MP-setDataSource:%s"

    new-array v1, v13, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 2950
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 2951
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2952
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2953
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2957
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 2958
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2970
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 2971
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$2400(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/common/data/MusicDB;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/music/common/data/MusicDB;->getAlbumInfo(Landroid/net/Uri;)Lcom/android/music/player/data/MusicAlbumInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->access$1002(Lcom/android/music/player/service/CorePlayerService;Lcom/android/music/player/data/MusicAlbumInfo;)Lcom/android/music/player/data/MusicAlbumInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2985
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2986
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2987
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2988
    .local v10, i:Landroid/content/Intent;
    const-string v0, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->getAudioSessionId()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2989
    const-string v0, "android.media.extra.PACKAGE_NAME"

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v1}, Lcom/android/music/player/service/CorePlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2990
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0, v10}, Lcom/android/music/player/service/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2994
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/player/data/MusicPlayerController;->getItemCountFromDB()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->access$2502(Lcom/android/music/player/service/CorePlayerService;I)I

    .line 2995
    const v0, 0x11010

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 2996
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2999
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v0, v0, v4

    if-nez v0, :cond_3

    .line 3000
    const/4 v9, 0x1

    .line 3001
    .local v9, genre:I
    const/4 v11, 0x0

    .line 3004
    .local v11, strGenre:Ljava/lang/String;
    :try_start_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "genre_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3005
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3007
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3008
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3011
    :cond_0
    if-eqz v6, :cond_1

    .line 3012
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 3024
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    :goto_1
    if-eqz v11, :cond_2

    .line 3025
    invoke-static {v11}, Lcom/android/music/common/util/R2vsUtil;->getEqDefined(Ljava/lang/String;)I

    move-result v9

    .line 3027
    :cond_2
    sput v9, Lcom/android/music/common/util/R2vsUtil;->autoeq_genre:I

    .line 3028
    const-string v0, "CorePlayerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "R2VS_MODE_AUTO, genre :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9           #genre:I
    .end local v11           #strGenre:Ljava/lang/String;
    :cond_3
    move v0, v13

    .line 3031
    .end local v10           #i:Landroid/content/Intent;
    :goto_2
    return v0

    .line 2955
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2972
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 2973
    .local v8, ex:Ljava/io/IOException;
    const-string v0, "CorePlayerService"

    const-string v0, "MP-setDataSource:IOException"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->handlingMediaPlayerErrorCase()V

    move v0, v4

    .line 2975
    goto :goto_2

    .line 2976
    .end local v8           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 2977
    .local v8, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "CorePlayerService"

    const-string v0, "MP-setDataSource:IllegalArgumentException"

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->handlingMediaPlayerErrorCase()V

    move v0, v4

    .line 2979
    goto :goto_2

    .line 2980
    .end local v8           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    move-object v8, v0

    .line 2981
    .local v8, ex:Ljava/lang/IllegalStateException;
    const-string v0, "CorePlayerService"

    const-string v0, "MP-setDataSource:IllegalArgumentException"

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->handlingMediaPlayerErrorCase()V

    move v0, v4

    .line 2983
    goto :goto_2

    .line 3013
    .end local v8           #ex:Ljava/lang/IllegalStateException;
    .restart local v9       #genre:I
    .restart local v10       #i:Landroid/content/Intent;
    .restart local v11       #strGenre:Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object v7, v0

    .line 3014
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v0, "CorePlayerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteFullException preparePlay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3016
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 3017
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_4
    move-exception v0

    move-object v7, v0

    .line 3018
    .local v7, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v0, "CorePlayerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteDiskIOException preparePlay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3020
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto/16 :goto_1
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 3094
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mHandler:Landroid/os/Handler;

    .line 3095
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .parameter "vol"

    .prologue
    .line 3227
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 3228
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const-string v3, "CorePlayerService"

    .line 3061
    :try_start_0
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 3062
    const v1, 0x11020

    iput v1, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3072
    :goto_0
    return-void

    .line 3064
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3065
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException occured 11 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->stop()V

    goto :goto_0

    .line 3067
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 3068
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException occured 12 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3070
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->stop()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 3075
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 3076
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3077
    return-void
.end method
