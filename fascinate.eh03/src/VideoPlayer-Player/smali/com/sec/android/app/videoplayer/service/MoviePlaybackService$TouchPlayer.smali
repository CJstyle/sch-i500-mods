.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;
.super Ljava/lang/Object;
.source "MoviePlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchPlayer"
.end annotation


# instance fields
.field private final mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private final mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mDuration:J

.field private final mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHandler:Landroid/os/Handler;

.field private final mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mIsInitialized:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

.field private final mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mProcessingFailurePos:J

.field private final mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field final synthetic this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V
    .locals 2
    .parameter

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1175
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mIsInitialized:Z

    .line 1178
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    .line 1179
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mProcessingFailurePos:J

    .line 1497
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1533
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$2;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 1546
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1610
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$4;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 1643
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$5;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    .line 1663
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1812
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$7;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 1186
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1187
    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1173
    iget-wide v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mProcessingFailurePos:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1173
    iput-wide p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mProcessingFailurePos:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1173
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1173
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->checkPauseEnable()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private batteryChargingblock_clear(Z)V
    .locals 14
    .parameter "value"

    .prologue
    const-string v11, "/sys/class/power_supply/battery/chargingblock_clear"

    const-string v13, "VideoPlayerbackService"

    .line 1891
    const/4 v3, 0x0

    .line 1892
    .local v3, fw:Ljava/io/FileWriter;
    const/4 v1, 0x0

    .line 1893
    .local v1, fr:Ljava/io/FileReader;
    const/4 v9, 0x0

    .line 1894
    .local v9, out:Ljava/io/BufferedWriter;
    const/4 v6, 0x0

    .line 1898
    .local v6, in:Ljava/io/BufferedReader;
    const-string v11, "VideoPlayerbackService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "batteryChargingblock_clear "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v11, "/sys/class/power_supply/battery/chargingblock_clear"

    invoke-direct {v2, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1902
    .end local v1           #fr:Ljava/io/FileReader;
    .local v2, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1904
    .end local v6           #in:Ljava/io/BufferedReader;
    .local v7, in:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 1905
    .local v8, line:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1906
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1907
    .local v5, icb:I
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 1909
    if-eqz p1, :cond_0

    .line 1910
    const-string v11, "VideoPlayerbackService"

    const-string v12, "Video start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    or-int/lit8 v5, v5, 0x8

    .line 1918
    :goto_0
    new-instance v4, Ljava/io/FileWriter;

    const-string v11, "/sys/class/power_supply/battery/chargingblock_clear"

    const/4 v12, 0x0

    invoke-direct {v4, v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1919
    .end local v3           #fw:Ljava/io/FileWriter;
    .local v4, fw:Ljava/io/FileWriter;
    :try_start_3
    new-instance v10, Ljava/io/BufferedWriter;

    invoke-direct {v10, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1920
    .end local v9           #out:Ljava/io/BufferedWriter;
    .local v10, out:Ljava/io/BufferedWriter;
    :try_start_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1921
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    move-object v3, v4

    .line 1925
    .end local v4           #fw:Ljava/io/FileWriter;
    .end local v5           #icb:I
    .end local v8           #line:Ljava/lang/String;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :goto_1
    return-void

    .line 1914
    .end local v1           #fr:Ljava/io/FileReader;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v5       #icb:I
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v8       #line:Ljava/lang/String;
    :cond_0
    :try_start_5
    const-string v11, "VideoPlayerbackService"

    const-string v12, "Video stop"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1915
    and-int/lit8 v5, v5, -0x9

    goto :goto_0

    .line 1922
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v5           #icb:I
    .end local v7           #in:Ljava/io/BufferedReader;
    .end local v8           #line:Ljava/lang/String;
    .restart local v1       #fr:Ljava/io/FileReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v11

    move-object v0, v11

    .line 1923
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    const-string v11, "VideoPlayerbackService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1922
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    :catch_1
    move-exception v11

    move-object v0, v11

    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    goto :goto_2

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v7       #in:Ljava/io/BufferedReader;
    :catch_2
    move-exception v11

    move-object v0, v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    goto :goto_2

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v3           #fw:Ljava/io/FileWriter;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileWriter;
    .restart local v5       #icb:I
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v8       #line:Ljava/lang/String;
    :catch_3
    move-exception v11

    move-object v0, v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    goto :goto_2

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v3           #fw:Ljava/io/FileWriter;
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v9           #out:Ljava/io/BufferedWriter;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileWriter;
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v10       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v11

    move-object v0, v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    goto :goto_2
.end method

.method private checkPauseEnable()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "VideoPlayerbackService"

    .line 1852
    iget-wide v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 1854
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    .line 1857
    const-string v0, "VideoPlayerbackService"

    const-string v0, "TouchPlayer::checkPauseEnable() - Local play. duration is -1. FF/REW disable"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    invoke-static {v5, v4, v4}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setBtnEnableFlag(ZZZ)V

    .line 1871
    :goto_0
    return-void

    .line 1862
    :cond_0
    const-string v0, "VideoPlayerbackService"

    const-string v0, "TouchPlayer::checkPauseEnable() - Streaming play. duration is -1. FF/REW disable"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    invoke-static {v4, v4, v4}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setBtnEnableFlag(ZZZ)V

    goto :goto_0

    .line 1868
    :cond_1
    const-string v0, "VideoPlayerbackService"

    const-string v0, "TouchPlayer::checkPauseEnable() - duration > 0."

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    invoke-static {v5, v5, v5}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setBtnEnableFlag(ZZZ)V

    goto :goto_0
.end method

.method private setIsInitialized(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    const/4 v3, 0x0

    .line 1382
    const-string v0, "VideoPlayerbackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsInitialized - flag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mIsInitialized:Z

    .line 1385
    if-nez p1, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoWidth:I
    invoke-static {v0, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1402(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1388
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoHeight:I
    invoke-static {v0, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1502(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1390
    :cond_0
    return-void
.end method


# virtual methods
.method public duration()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1840
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1841
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    .line 1843
    iget-wide v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1844
    const-string v0, "VideoPlayerbackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration() - mDuration <= 0. mDuration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_0
    iget-wide v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    return-wide v0
.end method

.method public internalSetEq(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const-string v5, "VideoPlayerbackService"

    .line 1212
    const-string v3, "VideoPlayerbackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "internalSetEq(mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is called"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    .line 1216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1217
    .local v1, eqValue:Landroid/os/Parcel;
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1219
    .local v2, eqValueReply:Landroid/os/Parcel;
    const v3, 0x12fd1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1221
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1223
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaPlayer;->setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1232
    .end local v1           #eqValue:Landroid/os/Parcel;
    .end local v2           #eqValueReply:Landroid/os/Parcel;
    :cond_0
    :goto_0
    return-void

    .line 1225
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1226
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1227
    const-string v3, "VideoPlayerbackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException occured 1 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1228
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 1229
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1230
    const-string v3, "VideoPlayerbackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException occured 2 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1378
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mIsInitialized:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 1448
    const-string v0, "VideoPlayerbackService"

    const-string v1, "TouchPlayer :: pause() : start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 1452
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->batteryChargingblock_clear(Z)V

    .line 1453
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1455
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1456
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1457
    :cond_1
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1461
    const-string v0, "VideoPlayerbackService"

    const-string v1, "TouchPlayer::reset() - start!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1465
    invoke-direct {p0, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->batteryChargingblock_clear(Z)V

    .line 1467
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1468
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1471
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1475
    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V

    .line 1476
    return-void
.end method

.method public resetPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1480
    const-string v0, "VideoPlayerbackService"

    const-string v1, "TouchPlayer::resetPlayer() - start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1484
    invoke-direct {p0, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->batteryChargingblock_clear(Z)V

    .line 1485
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 1486
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1490
    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V

    .line 1492
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    .line 1493
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mProcessingFailurePos:J

    .line 1494
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1495
    return-void
.end method

.method public seek(J)J
    .locals 4
    .parameter "whereto"

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1881
    :cond_0
    return-wide p1
.end method

.method public setDataSource(Landroid/net/Uri;)V
    .locals 10
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    const-string v9, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    const-string v8, "VideoPlayerbackService"

    .line 1301
    const-string v4, "VideoPlayerbackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDataSource() E - Uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v3

    .line 1304
    .local v3, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1306
    .local v1, path:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_0

    .line 1308
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V

    .line 1309
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 1310
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1315
    :cond_0
    const-wide/16 v4, 0x0

    :try_start_0
    iput-wide v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    .line 1316
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1317
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1318
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1319
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1325
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnPlayReadyErrorListener(Landroid/media/MediaPlayer$OnPlayReadyErrorListener;)V

    .line 1328
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 1329
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1330
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 1331
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 1332
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/4 v5, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBufferPercentage:I
    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1302(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1334
    const-string v4, "content://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1335
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1339
    :goto_0
    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 1341
    .local v2, sh:Landroid/view/SurfaceHolder;
    if-eqz v2, :cond_2

    .line 1342
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1349
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1350
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 1351
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 1374
    .end local v2           #sh:Landroid/view/SurfaceHolder;
    :goto_1
    return-void

    .line 1337
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1353
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1355
    .local v0, ex:Ljava/io/IOException;
    const-string v4, "VideoPlayerbackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException occured  9 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    invoke-direct {p0, v7}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V

    .line 1357
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v5, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v4, v9}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto :goto_1

    .line 1345
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v2       #sh:Landroid/view/SurfaceHolder;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->resetPlayer()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 1360
    .end local v2           #sh:Landroid/view/SurfaceHolder;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 1362
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v4, "VideoPlayerbackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException occured  10 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    invoke-direct {p0, v7}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V

    .line 1364
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v5, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v4, v9}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto :goto_1

    .line 1367
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 1369
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v4, "VideoPlayerbackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalStateException occured  11 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    invoke-direct {p0, v7}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V

    .line 1371
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v5, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v4, v9}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public setDataSourceAsync(Landroid/net/Uri;)V
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v6, 0x0

    const-string v8, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    const-string v7, "VideoPlayerbackService"

    .line 1236
    const-string v3, "VideoPlayerbackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSourceAsync() - Uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v2

    .line 1240
    .local v2, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    .line 1242
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 1243
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 1244
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1249
    :cond_0
    const-wide/16 v3, 0x0

    :try_start_0
    iput-wide v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    .line 1250
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1251
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1252
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1253
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1259
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPlayReadyErrorListener(Landroid/media/MediaPlayer$OnPlayReadyErrorListener;)V

    .line 1262
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 1263
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1264
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 1265
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 1266
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v3, v4, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1267
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/4 v4, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBufferPercentage:I
    invoke-static {v3, v4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1302(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1269
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 1271
    .local v1, sh:Landroid/view/SurfaceHolder;
    if-eqz v1, :cond_1

    .line 1272
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1279
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1280
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 1281
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 1297
    .end local v1           #sh:Landroid/view/SurfaceHolder;
    :goto_0
    return-void

    .line 1275
    .restart local v1       #sh:Landroid/view/SurfaceHolder;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->resetPlayer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1283
    .end local v1           #sh:Landroid/view/SurfaceHolder;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1285
    .local v0, ex:Ljava/io/IOException;
    const-string v3, "VideoPlayerbackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured  7 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    invoke-direct {p0, v6}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V

    .line 1287
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v4, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v3, v8}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto :goto_0

    .line 1290
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 1292
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v3, "VideoPlayerbackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException occured  8 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    invoke-direct {p0, v6}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V

    .line 1294
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v4, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v3, v8}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDataSourcePrepare(Ljava/lang/String;)V
    .locals 3
    .parameter "video_uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1191
    const-string v0, "VideoPlayerbackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TouchPlayer :: setDataSourcePrepare() : start. URI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    if-nez p1, :cond_0

    .line 1208
    :goto_0
    return-void

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$202(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V

    .line 1199
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1202
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setDataSourceAsync(Landroid/net/Uri;)V

    goto :goto_0

    .line 1206
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setDataSource(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 1836
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mHandler:Landroid/os/Handler;

    .line 1837
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .parameter "vol"

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1888
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 1394
    const/4 v0, 0x0

    .line 1395
    .local v0, movieVolume:F
    const-string v1, "VideoPlayerbackService"

    const-string v2, "TouchPlayer :: start() : start!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mIsInitialized:Z

    if-eqz v1, :cond_2

    .line 1399
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCallState:I
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1405
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1406
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/media/AudioManager;

    move-result-object v1

    const-string v2, "situation=7;device=0"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1408
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$300(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setVolume(F)V

    .line 1411
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->batteryChargingblock_clear(Z)V

    .line 1412
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 1413
    const/4 v1, 0x0

    sput v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I

    .line 1415
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1416
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1418
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v1, "VideoPlayerbackService"

    .line 1422
    const-string v0, "VideoPlayerbackService"

    const-string v0, "TouchPlayer :: stop() : start!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1426
    invoke-direct {p0, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->batteryChargingblock_clear(Z)V

    .line 1427
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1428
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1431
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1443
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V

    .line 1444
    return-void

    .line 1438
    :cond_1
    const-string v0, "VideoPlayerbackService"

    const-string v0, "TouchPlayer :: stop() : PLAYBACK_ERR_MEDIA_NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_ERR_MEDIA_NULL"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto :goto_0
.end method
