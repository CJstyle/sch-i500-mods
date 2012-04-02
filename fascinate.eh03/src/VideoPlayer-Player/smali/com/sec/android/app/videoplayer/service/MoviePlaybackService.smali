.class public Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;
.super Landroid/app/Service;
.source "MoviePlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;
    }
.end annotation


# static fields
.field public static mDrmPopupType:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBinder:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;

.field private final mBroadcastListener:Landroid/content/BroadcastReceiver;

.field private mBufferPercentage:I

.field private mCMDAction:I

.field private mCMDCheckCnt:I

.field private mCallState:I

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private final mDelayedStopHandler:Landroid/os/Handler;

.field mDrmStringType:[Ljava/lang/String;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field private mUri:Landroid/net/Uri;

.field private mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

.field private mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

.field private mVideoHeight:I

.field private final mVideoPlayerHandler:Landroid/os/Handler;

.field private mVideoWidth:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 76
    const-string v0, "VideoPlayerbackService"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->TAG:Ljava/lang/String;

    .line 152
    iput v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCallState:I

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceStartId:I

    .line 157
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    .line 158
    iput v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 159
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceInUse:Z

    .line 161
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 162
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    .line 163
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    .line 164
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mUri:Landroid/net/Uri;

    .line 165
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 166
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 167
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 169
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_NULL"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_VALID_COUNT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_INVALID_CD"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_INVALID_SD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_FIRST_INTERVAL_RENDER"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_WMDRM_INVALID"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_NOT_AUTHORIZED"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_NOT_REGISTERED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_RENTAL_EXPIRED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_RENTAL_INFO"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmStringType:[Ljava/lang/String;

    .line 259
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    .line 408
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 425
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBroadcastListener:Landroid/content/BroadcastReceiver;

    .line 558
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$4;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 1930
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBinder:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBufferPercentage:I

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getPublisher()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    return p1
.end method

.method static synthetic access$2402(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlayCheck()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPauseCheck()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isStopCheck()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCallState:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCallState:I

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getPublisher()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 990
    const-string v8, " "

    .line 991
    .local v8, publisher:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mUri:Landroid/net/Uri;

    .line 993
    .local v1, video_uri:Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 995
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isBrowser(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v3, 0x1c

    if-eq v0, v3, :cond_2

    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v3, 0x1b

    if-eq v0, v3, :cond_2

    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v3, 0x1f

    if-eq v0, v3, :cond_2

    .line 1000
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v3, 0x18

    if-ne v0, v3, :cond_3

    .line 1002
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getID()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1008
    :cond_0
    :goto_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "artist"

    aput-object v0, v2, v5

    .line 1011
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1013
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1017
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1018
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 1020
    :cond_1
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1029
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    return-object v8

    .line 1003
    :cond_3
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v3, 0x17

    if-ne v0, v3, :cond_0

    .line 1005
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getID()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 1020
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1023
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 1024
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "VideoPlayerbackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteException occured  3 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private gotoIdleState()V
    .locals 4

    .prologue
    .line 1153
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1155
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1156
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1157
    return-void
.end method

.method private isBrowser(Ljava/lang/String;)Z
    .locals 1
    .parameter "scheme"

    .prologue
    .line 569
    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rtsp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    :cond_0
    const/4 v0, 0x1

    .line 572
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPauseCheck()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 222
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->pause()V

    .line 229
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 230
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 238
    :goto_0
    return-void

    .line 225
    :cond_0
    iput v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 234
    :cond_1
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    .line 235
    iput v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private isPlayCheck()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 203
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->play()V

    .line 210
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 211
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 219
    :goto_0
    return-void

    .line 206
    :cond_0
    iput v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 215
    :cond_1
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    .line 216
    iput v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private isStopCheck()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x6

    .line 241
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->stop()V

    .line 248
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 249
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 257
    :goto_0
    return-void

    .line 244
    :cond_0
    iput v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 253
    :cond_1
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    .line 254
    iput v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 4
    .parameter "what"

    .prologue
    .line 576
    const-string v1, "VideoPlayerbackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyChange() - string :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 579
    return-void
.end method

.method private notifyChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "what"
    .parameter "errorUrl"

    .prologue
    .line 584
    const-string v1, "VideoPlayerbackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyChange() - string :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errorUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 587
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 588
    return-void
.end method

.method private stop(Z)V
    .locals 2
    .parameter "remove_status_icon"

    .prologue
    .line 1115
    const-string v0, "VideoPlayerbackService"

    const-string v1, "stop() : start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->stop()V

    .line 1119
    const-string v0, "videoplayer.service.MoviePlaybackService.PLAYBACK_UPDATE"

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1121
    :cond_0
    if-eqz p1, :cond_1

    .line 1122
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->gotoIdleState()V

    .line 1124
    :cond_1
    return-void
.end method


# virtual methods
.method public addRecentry(Ljava/lang/String;)V
    .locals 7
    .parameter "video_uri"

    .prologue
    const/4 v6, 0x5

    .line 864
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 865
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "VideoPlayerbackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addRecentry() - uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 867
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "video_uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    if-eqz v3, :cond_0

    .line 870
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->getList()Landroid/database/Cursor;

    move-result-object v0

    .line 871
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 872
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-interface {v3, v4, v5, v2}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->update(JLandroid/content/ContentValues;)I

    .line 875
    :goto_0
    if-eqz v0, :cond_0

    .line 877
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 880
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_0
    return-void

    .line 874
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->add(Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public checkIsDRM(Ljava/lang/String;)Z
    .locals 14
    .parameter "video_uri"

    .prologue
    const/4 v13, 0x1

    const/16 v11, 0x1e

    const/4 v10, 0x0

    const-string v12, "checkIsDRM() : pop up type = "

    const-string v9, "VideoPlayerbackService"

    .line 596
    if-eqz p1, :cond_10

    .line 598
    const/16 v6, 0x64

    iput v6, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    .line 599
    iput v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 600
    const/4 v4, 0x0

    .line 602
    .local v4, path:Ljava/lang/String;
    const/4 v1, 0x0

    .line 606
    .local v1, filePath:Ljava/lang/String;
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 608
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getID()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v4

    .line 609
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setCurPlayingPath(Ljava/lang/String;)V

    .line 610
    const-string v6, "VideoPlayerbackService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIsDRM() : path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :goto_0
    if-eqz v4, :cond_a

    .line 639
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v6}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->reset()V

    .line 641
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsOMADrm(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 643
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkValidRights(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 645
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->setDrmMsgPopup(I)I

    move-result v6

    sput v6, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    .line 646
    const-string v6, "VideoPlayerbackService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIsDRM() - Invalid rights. mDrmPopupType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    sget v6, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    if-eq v11, v6, :cond_3

    .line 650
    const-string v6, "VideoPlayerbackService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIsDRM() : pop up type = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmStringType:[Ljava/lang/String;

    sget v8, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    sub-int/2addr v8, v11

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmStringType:[Ljava/lang/String;

    sget v7, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    sub-int/2addr v7, v11

    aget-object v6, v6, v7

    invoke-direct {p0, v6}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    move v6, v10

    .line 813
    .end local v1           #filePath:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    :goto_1
    return v6

    .line 617
    .restart local v1       #filePath:Ljava/lang/String;
    .restart local v4       #path:Ljava/lang/String;
    :cond_0
    const-string v6, "VideoPlayerbackService"

    const-string v6, "MoviePlayBackService :: URL file "

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsPlayReady(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 619
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v6}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsWifiEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 621
    const-string v6, "VideoPlayerbackService"

    const-string v6, "Wifi is connected proceed = "

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 625
    :cond_1
    const-string v6, "VideoPlayerbackService"

    const-string v6, "Wifi is not connected "

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "Wifi is not connected"

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    move v6, v10

    .line 627
    goto :goto_1

    .line 632
    :cond_2
    const-string v6, "VideoPlayerbackService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This is not a playready URL = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 656
    :cond_3
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->updateOMADRMInfo(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 658
    const-string v6, "VideoPlayerbackService"

    const-string v6, "checkIsDRM() - get DRM information error"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string v6, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_INVALID"

    invoke-direct {p0, v6}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    move v6, v10

    .line 660
    goto :goto_1

    .line 664
    :cond_4
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->setDrmMsgPopup(I)I

    move-result v6

    sput v6, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    .line 666
    const-string v6, "VideoPlayerbackService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIsDRM() - mDrmPopupType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    sget v6, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    if-eq v11, v6, :cond_6

    .line 670
    const-string v6, "VideoPlayerbackService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIsDRM() : pop up type = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmStringType:[Ljava/lang/String;

    sget v8, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    sub-int/2addr v8, v11

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmStringType:[Ljava/lang/String;

    sget v7, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    sub-int/2addr v7, v11

    aget-object v6, v6, v7

    invoke-direct {p0, v6}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    move v6, v10

    .line 672
    goto/16 :goto_1

    .line 676
    :cond_5
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsWMDRM(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 678
    const-string v6, "VideoPlayerbackService"

    const-string v6, "checkIsDRM() - this file is WMDrm."

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsValidWMDrm(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 683
    const-string v6, "VideoPlayerbackService"

    const-string v6, "checkIsDRM() : Invaild WMDRM."

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_6
    :goto_2
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsDivx(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 730
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkDivxRightStatus(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    .line 731
    const-string v6, "VideoPlayerbackService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIsDRM() - this file is Divx. mDrmPopupType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    sget v6, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    if-eq v11, v6, :cond_e

    .line 735
    const-string v6, "VideoPlayerbackService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIsDRM() : pop up type = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmStringType:[Ljava/lang/String;

    sget v8, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    sub-int/2addr v8, v11

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmStringType:[Ljava/lang/String;

    sget v7, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    sub-int/2addr v7, v11

    aget-object v6, v6, v7

    invoke-direct {p0, v6}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    move v6, v10

    .line 737
    goto/16 :goto_1

    .line 693
    :cond_7
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsPlayReady(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 695
    const-string v6, "VideoPlayerbackService"

    const-string v6, "checkIsDRM() - this file is Playready."

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const-wide/16 v2, 0x0

    .line 698
    .local v2, file_length:J
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 699
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 701
    const-wide/32 v6, 0x186a0

    cmp-long v6, v2, v6

    if-gez v6, :cond_8

    .line 703
    const-string v6, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_ACQUISITION_FAILED"

    invoke-direct {p0, v6}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    move v6, v10

    .line 704
    goto/16 :goto_1

    .line 707
    :cond_8
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsValidPlayReady(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 709
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 711
    .local v5, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_9

    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v6}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsWifiEnabled()Z

    move-result v6

    if-nez v6, :cond_9

    .line 714
    const-string v6, "VideoPlayerbackService"

    const-string v6, "No Network Connection"

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const-string v6, "videoplayer.service.MoviePlaybackService.NO_DATA_CONNECTIVITY_POPUP"

    invoke-direct {p0, v6}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 719
    :cond_9
    const-string v6, "MoviePlaybackService"

    const-string v7, "No Rights Present show Acquiring License popup"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v6, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SHOW_ACQUIRING_POPUP"

    invoke-direct {p0, v6}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 746
    .end local v0           #file:Ljava/io/File;
    .end local v2           #file_length:J
    .end local v5           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_a
    const-string v6, "VideoPlayerbackService"

    const-string v6, "path is null"

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getVideoUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 750
    const-string v6, "file://"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 752
    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 755
    :cond_b
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v6, v1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsWMDRM(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 757
    const-string v6, "VideoPlayerbackService"

    const-string v6, "checkIsDRM() - this file is WMDrm."

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v6, v1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsValidWMDrm(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 762
    const-string v6, "VideoPlayerbackService"

    const-string v6, "checkIsDRM() : Invaild WMDRM."

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_c
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v6, v1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsPlayReady(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v13, :cond_e

    .line 774
    const-string v6, "VideoPlayerbackService"

    const-string v6, "openPath() - this file is Playready."

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const-wide/16 v2, 0x0

    .line 777
    .restart local v2       #file_length:J
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 778
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 780
    const-wide/32 v6, 0x186a0

    cmp-long v6, v2, v6

    if-gez v6, :cond_d

    .line 782
    const-string v6, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_ACQUISITION_FAILED"

    invoke-direct {p0, v6}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    move v6, v10

    .line 783
    goto/16 :goto_1

    .line 786
    :cond_d
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v6, v1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsValidPlayReady(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 788
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 790
    .restart local v5       #telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_f

    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v6}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsWifiEnabled()Z

    move-result v6

    if-nez v6, :cond_f

    .line 793
    const-string v6, "VideoPlayerbackService"

    const-string v6, "No Network Connection"

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const-string v6, "videoplayer.service.MoviePlaybackService.NO_DATA_CONNECTIVITY_POPUP"

    invoke-direct {p0, v6}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 808
    .end local v0           #file:Ljava/io/File;
    .end local v2           #file_length:J
    .end local v5           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_e
    :goto_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->addRecentry(Ljava/lang/String;)V

    move v6, v13

    .line 809
    goto/16 :goto_1

    .line 798
    .restart local v0       #file:Ljava/io/File;
    .restart local v2       #file_length:J
    .restart local v5       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_f
    const-string v6, "MoviePlaybackService"

    const-string v7, "No Rights Present show Acquiring License popup"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v6, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SHOW_ACQUIRING_POPUP"

    invoke-direct {p0, v6}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_3

    .end local v0           #file:Ljava/io/File;
    .end local v1           #filePath:Ljava/lang/String;
    .end local v2           #file_length:J
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_10
    move v6, v10

    .line 813
    goto/16 :goto_1
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->duration()J

    move-result-wide v0

    .line 1043
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 843
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBufferPercentage:I

    .line 845
    :cond_0
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBufferPercentage:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v3, 0x1

    const-string v14, "content://mms"

    const-string v13, "VideoPlayerbackService"

    .line 884
    const-string v0, "VideoPlayerbackService"

    const-string v0, "getDisplayName E"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const-string v7, ""

    .line 886
    .local v7, displayName:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mUri:Landroid/net/Uri;

    .line 888
    .local v1, video_uri:Landroid/net/Uri;
    if-eqz v1, :cond_a

    .line 890
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isBrowser(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v2, 0x1c

    if-eq v0, v2, :cond_7

    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_7

    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_7

    .line 895
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v2, 0x18

    if-eq v0, v2, :cond_0

    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_5

    .line 898
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getID()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 908
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 910
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 914
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 917
    .local v10, idx:I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 918
    const-string v0, "VideoPlayerbackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDispalyName(): displayName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 923
    .end local v10           #idx:I
    :cond_2
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 969
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mIsMovieStore:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mFileTitle:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 971
    const-string v0, "VideoPlayerbackService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayNam : movie store : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mIsMovieStore:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mFileTitle:Ljava/lang/String;

    .line 975
    :cond_4
    const-string v0, "<unknown>"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 977
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content://mms"

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 980
    const-string v0, "VideoPlayerbackService"

    const-string v0, "getDispalyName(): unknown and startsWidth content://mms."

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 985
    :goto_2
    return-object v0

    .line 900
    :cond_5
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v2, 0x17

    if-eq v0, v2, :cond_6

    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v2, 0x19

    if-ne v0, v2, :cond_1

    .line 903
    :cond_6
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getID()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    .line 923
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 927
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 929
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "VideoPlayerbackService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException occured  2 :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 934
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :cond_7
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mFileTitle:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 936
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mFileTitle:Ljava/lang/String;

    goto/16 :goto_1

    .line 942
    :cond_8
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content://mms"

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content://com.android.email.attachmentprovider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 945
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 947
    .local v9, filePath:Ljava/lang/String;
    const-string v0, "VideoPlayerbackService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDispalyName(): browser type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const-string v0, "/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 950
    .local v11, lastIndex1:I
    const-string v0, "."

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 952
    .local v12, lastIndex2:I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    if-ge v11, v0, :cond_9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    if-ge v12, v0, :cond_9

    .line 956
    add-int/lit8 v0, v11, 0x1

    :try_start_4
    invoke-virtual {v9, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v7

    goto/16 :goto_1

    .line 958
    :catch_1
    move-exception v8

    .line 960
    .local v8, e:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v7, ""

    .line 961
    goto/16 :goto_1

    .line 964
    .end local v8           #e:Ljava/lang/StringIndexOutOfBoundsException;
    :cond_9
    const-string v7, ""

    goto/16 :goto_1

    .end local v9           #filePath:Ljava/lang/String;
    .end local v11           #lastIndex1:I
    .end local v12           #lastIndex2:I
    :cond_a
    move-object v0, v7

    .line 985
    goto/16 :goto_2
.end method

.method public getFullPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1036
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 857
    const/4 v0, 0x0

    .line 859
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoHeight:I

    goto :goto_0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 850
    const/4 v0, 0x0

    .line 852
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoWidth:I

    goto :goto_0
.end method

.method public internalSetEq(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->internalSetEq(I)V

    .line 1064
    :cond_0
    return-void
.end method

.method public isConnectionAlive()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 185
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_1

    move v2, v4

    .line 197
    :goto_0
    return v2

    .line 191
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 192
    .local v1, networks:[Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 194
    .local v0, activeNet:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v4

    .line 197
    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isPlaying()Z

    move-result v0

    .line 1070
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceInUse:Z

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBinder:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 475
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 476
    const-string v3, "VideoPlayerbackService"

    const-string v4, "onCreate() : start!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v3, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    .line 479
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setHandler(Landroid/os/Handler;)V

    .line 480
    const/16 v3, 0x64

    iput v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    .line 481
    iput v5, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 482
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 484
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 485
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    .line 487
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 490
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 491
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 493
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 494
    .local v1, powermanager:Landroid/os/PowerManager;
    const/16 v3, 0xa

    const-string v4, "MoviePlayer-Sleep"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 495
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 503
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 504
    .local v0, intentfilter:Landroid/content/IntentFilter;
    const-string v3, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 505
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBroadcastListener:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 508
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 512
    const-string v1, "VideoPlayerbackService"

    const-string v2, "onDestroy() : start!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBroadcastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 519
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 520
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 521
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 522
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 523
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceInUse:Z

    .line 534
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 537
    iput p2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceStartId:I

    .line 538
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 539
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 540
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 541
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 544
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceInUse:Z

    .line 546
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    .line 555
    :goto_0
    return v1

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 550
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 551
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v1, v4

    .line 552
    goto :goto_0

    .line 554
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    iget v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->stopSelf(I)V

    .line 555
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v1

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1133
    const-string v0, "VideoPlayerbackService"

    const-string v1, "puase() - current is not playing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :goto_0
    return-void

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1138
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->pause()V

    .line 1139
    const-string v0, "videoplayer.service.MoviePlaybackService.PLAYBACK_UPDATE"

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1142
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->gotoIdleState()V

    goto :goto_0
.end method

.method public play()V
    .locals 7

    .prologue
    const-string v6, "VideoPlayerbackService"

    .line 1079
    const-string v3, "VideoPlayerbackService"

    const-string v3, "play() : start!"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v2

    .line 1083
    .local v2, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getSurfaceExists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1085
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->resetPlayer()V

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1091
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1092
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "command"

    const-string v4, "pause"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    const-string v3, "from"

    const-string v4, "com.sec.android.app.videoplayer"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1097
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getID()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v1

    .line 1098
    .local v1, path:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setCurPlayingPath(Ljava/lang/String;)V

    .line 1100
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getCurPlayingPath()Ljava/lang/String;

    move-result-object v1

    .line 1102
    if-eqz v1, :cond_2

    .line 1104
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsDivx(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1105
    const-string v3, "VideoPlayerbackService"

    const-string v3, "play() - divX file. check Tv-Out function"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->start()V

    .line 1109
    const-string v3, "videoplayer.service.MoviePlaybackService.PLAYBACK_UPDATE"

    invoke-direct {p0, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->position()J

    move-result-wide v0

    .line 1050
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 1147
    const-string v0, "VideoPlayerbackService"

    const-string v1, "reset() call!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->reset()V

    .line 1149
    return-void
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->seek(J)J

    move-result-wide v0

    .line 1057
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setWakeMode(Z)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1161
    if-eqz p1, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1168
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public startPlay(Ljava/lang/String;)Z
    .locals 5
    .parameter "video_uri"

    .prologue
    const/4 v4, 0x0

    .line 818
    if-eqz p1, :cond_0

    .line 820
    const/16 v1, 0x64

    iput v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    .line 821
    iput v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 825
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setDataSourcePrepare(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->addRecentry(Ljava/lang/String;)V

    .line 835
    const/4 v1, 0x1

    .line 838
    :goto_0
    return v1

    .line 827
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 829
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 830
    const-string v1, "VideoPlayerbackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occured  1 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 831
    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    move v1, v4

    .line 838
    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1127
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->stop(Z)V

    .line 1128
    return-void
.end method
