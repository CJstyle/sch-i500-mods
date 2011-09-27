.class public Lcom/android/music/player/service/CorePlayerService;
.super Landroid/app/Service;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/player/service/CorePlayerService$ServiceStub;,
        Lcom/android/music/player/service/CorePlayerService$FindSong;,
        Lcom/android/music/player/service/CorePlayerService$MultiPlayer;,
        Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;
    }
.end annotation


# static fields
.field public static final SKIP_TIME:[I


# instance fields
.field private final CHECK_DRM_CALL_INTERNAL_NEXT:I

.field private final CHECK_DRM_CALL_PREPARE_PLAY:I

.field private final CHECK_DRM_SHOW_POPUP:I

.field private final ERROR_FILE_PATH_NULL:I

.field private final MEDIA_ERROR_CURRUPT:I

.field private final MEDIA_ERROR_NOTSUPPORT:I

.field private asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

.field private bLowBattery:Z

.field private drmManager:Lcom/android/music/common/manager/MusicDrmManager;

.field private ffRewRepeatTime:I

.field private isEjectSD:Z

.field private isMediaUnMounted:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBinder:Landroid/os/IBinder;

.field mCursorCols:[Ljava/lang/String;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mErrorCount:I

.field private mFileToPlay:Ljava/lang/String;

.field private final mHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mHeadsetToast:Ljava/lang/Runnable;

.field private mIB:Landroid/os/IBinder;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSupposedToBePlaying:Z

.field mIsUlpByPass:Z

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaplayerHandler:Landroid/os/Handler;

.field private mMusicDB:Lcom/android/music/common/data/MusicDB;

.field private mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

.field private mNextPlay:Lcom/android/music/player/service/CorePlayerService$FindSong;

.field private mNotiImage:Landroid/graphics/Bitmap;

.field private mNotiManager:Landroid/app/NotificationManager;

.field private mNotification:Landroid/app/Notification;

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayDirection:Z

.field mPlayedTimeForUlp:J

.field private mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

.field mResetForUlp:Z

.field final mServiceHandler:Landroid/os/Handler;

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field protected final mSystemReceiver:Landroid/content/BroadcastReceiver;

.field private mToastServiceError:Landroid/widget/Toast;

.field private mUserAction:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWasPlaying:Z

.field private mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/music/player/service/CorePlayerService;->SKIP_TIME:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
        0x80t 0x3et 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/16 v1, -0xa

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 765
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 174
    const/4 v0, -0x4

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService;->MEDIA_ERROR_NOTSUPPORT:I

    .line 175
    iput v1, p0, Lcom/android/music/player/service/CorePlayerService;->MEDIA_ERROR_CURRUPT:I

    .line 221
    iput v1, p0, Lcom/android/music/player/service/CorePlayerService;->ERROR_FILE_PATH_NULL:I

    .line 222
    iput v3, p0, Lcom/android/music/player/service/CorePlayerService;->CHECK_DRM_CALL_PREPARE_PLAY:I

    .line 223
    iput v2, p0, Lcom/android/music/player/service/CorePlayerService;->CHECK_DRM_CALL_INTERNAL_NEXT:I

    .line 224
    iput v5, p0, Lcom/android/music/player/service/CorePlayerService;->CHECK_DRM_SHOW_POPUP:I

    .line 229
    iput-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 230
    iput-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiManager:Landroid/app/NotificationManager;

    .line 231
    iput-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    .line 232
    iput-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    .line 233
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$FindSong;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$FindSong;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Lcom/android/music/player/service/CorePlayerService$FindSong;

    .line 234
    iput-boolean v3, p0, Lcom/android/music/player/service/CorePlayerService;->mUserAction:Z

    .line 235
    iput-boolean v2, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayDirection:Z

    .line 236
    iput-boolean v3, p0, Lcom/android/music/player/service/CorePlayerService;->mWasPlaying:Z

    .line 240
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayedTimeForUlp:J

    .line 241
    iput-boolean v3, p0, Lcom/android/music/player/service/CorePlayerService;->mResetForUlp:Z

    .line 242
    iput-boolean v3, p0, Lcom/android/music/player/service/CorePlayerService;->mIsUlpByPass:Z

    .line 260
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    .line 261
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio._id AS _id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v2

    const-string v1, "album"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_podcast"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mCursorCols:[Ljava/lang/String;

    .line 278
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService;->mServiceStartId:I

    .line 279
    iput-boolean v3, p0, Lcom/android/music/player/service/CorePlayerService;->mServiceInUse:Z

    .line 280
    iput-boolean v3, p0, Lcom/android/music/player/service/CorePlayerService;->mIsSupposedToBePlaying:Z

    .line 284
    iput-boolean v3, p0, Lcom/android/music/player/service/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    .line 287
    iput-boolean v3, p0, Lcom/android/music/player/service/CorePlayerService;->bLowBattery:Z

    .line 288
    iput-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;

    .line 289
    iput v3, p0, Lcom/android/music/player/service/CorePlayerService;->ffRewRepeatTime:I

    .line 290
    iput-boolean v3, p0, Lcom/android/music/player/service/CorePlayerService;->isMediaUnMounted:Z

    .line 291
    iput-boolean v3, p0, Lcom/android/music/player/service/CorePlayerService;->isEjectSD:Z

    .line 308
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$1;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$1;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 400
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$2;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$2;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 408
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$3;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$3;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 481
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$4;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$4;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 514
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$5;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$5;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    .line 727
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$6;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$6;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1234
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$7;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$7;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 2436
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$8;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$8;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    .line 2645
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$9;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$9;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mHeadsetToast:Ljava/lang/Runnable;

    .line 3778
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$ServiceStub;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mBinder:Landroid/os/IBinder;

    .line 766
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/music/player/service/CorePlayerService;Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)Lcom/android/music/player/service/CorePlayerService$MultiPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/music/player/service/CorePlayerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicAlbumInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/music/player/service/CorePlayerService;Lcom/android/music/player/data/MusicAlbumInfo;)Lcom/android/music/player/data/MusicAlbumInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/music/player/service/CorePlayerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/music/player/service/CorePlayerService;->isEjectSD:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/music/player/service/CorePlayerService;Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;)Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService;->asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/music/player/service/CorePlayerService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/music/player/service/CorePlayerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/music/player/service/CorePlayerService;->useHeadsetMediaButtonReceiver(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/music/player/service/CorePlayerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->bLowBattery:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/music/player/service/CorePlayerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/music/player/service/CorePlayerService;->bLowBattery:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/music/player/service/CorePlayerService;)Landroid/app/ActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/music/player/service/CorePlayerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/music/player/service/CorePlayerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/music/player/service/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/music/player/service/CorePlayerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService;->startAndFadeIn()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/music/player/service/CorePlayerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/music/player/service/CorePlayerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->isMediaUnMounted:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/music/player/service/CorePlayerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/music/player/service/CorePlayerService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/music/player/service/CorePlayerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/music/player/service/CorePlayerService;->isMediaUnMounted:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/music/player/service/CorePlayerService;Ljava/lang/String;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/music/player/service/CorePlayerService;->checkDrmRight(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/music/player/service/CorePlayerService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mHeadsetToast:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/music/player/service/CorePlayerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService;->setEq()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/common/data/MusicDB;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/music/player/service/CorePlayerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/music/player/service/CorePlayerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    return p1
.end method

.method static synthetic access$2510(Lcom/android/music/player/service/CorePlayerService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/music/player/service/CorePlayerService;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/music/player/service/CorePlayerService;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/music/player/service/CorePlayerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mUserAction:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/music/player/service/CorePlayerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/music/player/service/CorePlayerService;->mUserAction:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/music/player/service/CorePlayerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$FindSong;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Lcom/android/music/player/service/CorePlayerService$FindSong;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/music/player/service/CorePlayerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/music/player/service/CorePlayerService;->mIsSupposedToBePlaying:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/music/player/service/CorePlayerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayDirection:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/music/player/service/CorePlayerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayDirection:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/music/player/service/CorePlayerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService;->openCurrent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/music/player/service/CorePlayerService;ZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/player/service/CorePlayerService;->openCurrentOrAnything(ZJ)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/music/player/service/CorePlayerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/music/player/service/CorePlayerService;->setUlpBypassInternal(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/music/player/service/CorePlayerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/music/player/service/CorePlayerService;->stop(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/player/service/CorePlayerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/music/player/service/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/music/player/service/CorePlayerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/music/player/service/CorePlayerService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/music/player/service/CorePlayerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/music/player/service/CorePlayerService;->ffRewRepeatTime:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/music/player/service/CorePlayerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/music/player/service/CorePlayerService;->ffRewRepeatTime:I

    return p1
.end method

.method static synthetic access$804(Lcom/android/music/player/service/CorePlayerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/music/player/service/CorePlayerService;->ffRewRepeatTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService;->ffRewRepeatTime:I

    return v0
.end method

.method static synthetic access$808(Lcom/android/music/player/service/CorePlayerService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/music/player/service/CorePlayerService;->ffRewRepeatTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/music/player/service/CorePlayerService;->ffRewRepeatTime:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/music/player/service/CorePlayerService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/music/player/service/CorePlayerService;->procCommndIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private checkDrmRight(Ljava/lang/String;Z)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, -0xa

    const v7, 0x7f0a0044

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2847
    const-string v0, "CorePlayerService"

    const-string v1, "checkDrmRight(%s,%s) is called"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    new-array v0, v6, [I

    .line 2852
    new-array v1, v6, [Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    .line 2854
    if-nez p1, :cond_1

    .line 2855
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 2856
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;

    invoke-virtual {v0, v7}, Landroid/widget/Toast;->setText(I)V

    .line 2860
    :goto_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v8

    .line 2921
    :goto_1
    return v0

    .line 2858
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;

    goto :goto_0

    .line 2874
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    invoke-virtual {v2, p1}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_6

    .line 2875
    if-nez p2, :cond_3

    .line 2876
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    invoke-virtual {v0}, Lcom/android/music/common/manager/MusicDrmManager;->IsValidFile()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    .line 2877
    goto :goto_1

    :cond_2
    move v0, v4

    .line 2879
    goto :goto_1

    .line 2882
    :cond_3
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/music/common/manager/MusicDrmManager;->getDrmPopup(Z[I[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;)I

    move-result v1

    .line 2885
    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    move v0, v4

    .line 2886
    goto :goto_1

    .line 2887
    :cond_4
    if-nez v1, :cond_5

    move v0, v5

    .line 2888
    goto :goto_1

    .line 2890
    :cond_5
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/music/common/util/DrmPopupActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2893
    const-string v3, "popup.string"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2894
    const-string v0, "popup.remain.counts"

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    invoke-virtual {v3}, Lcom/android/music/common/manager/MusicDrmManager;->getRemainedCounts()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2895
    const-string v0, "popup.type"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2898
    const-string v0, "popup.filepath"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2900
    const-string v0, "popup.from"

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v1}, Lcom/android/music/player/data/MusicPlayerController;->getLaunchMode()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2901
    const/high16 v0, 0x4000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2902
    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2903
    invoke-virtual {p0, v2}, Lcom/android/music/player/service/CorePlayerService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    .line 2906
    goto :goto_1

    :cond_6
    move v0, v5

    .line 2909
    goto :goto_1

    .line 2910
    :catch_0
    move-exception v0

    .line 2911
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2912
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;

    if-nez v0, :cond_7

    .line 2913
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;

    .line 2916
    :goto_2
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v8

    .line 2918
    goto/16 :goto_1

    .line 2915
    :cond_7
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;

    invoke-virtual {v0, v7}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2
.end method

.method private getLastPlayedFile()Z
    .locals 12

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "CorePlayerService"

    .line 2756
    const-string v0, "CorePlayerService"

    const-string v0, "getLastPlayedFile()"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 2763
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media/external/audio/media?limit=1"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "recently_played != 0 AND is_sound = 0"

    const/4 v4, 0x0

    const-string v5, "recently_played DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2765
    if-eqz v0, :cond_5

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 2766
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2767
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 2768
    const/4 v2, 0x1

    :try_start_2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v2

    move v11, v2

    move-object v2, v1

    move v1, v11

    .line 2779
    :goto_0
    if-eqz v0, :cond_4

    .line 2780
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    move-object v1, v2

    .line 2783
    :goto_1
    const-string v2, "CorePlayerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastPlayedFile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    if-nez v1, :cond_1

    .line 2787
    const-string v0, "CorePlayerService"

    const-string v0, "getLastPlayedFile(): filepath==null"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2798
    :goto_2
    return v0

    .line 2770
    :catch_0
    move-exception v0

    move-object v1, v9

    move-object v2, v9

    .line 2771
    :goto_3
    :try_start_3
    const-string v3, "CorePlayerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastPlayedFile, SQLiteFullException getLastPlayedFile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2773
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->forceStopPackage(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2779
    if-eqz v2, :cond_3

    .line 2780
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v0, v10

    goto :goto_1

    .line 2774
    :catch_1
    move-exception v0

    move-object v1, v9

    move-object v2, v9

    .line 2775
    :goto_4
    :try_start_4
    const-string v3, "CorePlayerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastPlayedFile, SQLiteDiskIOException getLastPlayedFile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2777
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->forceStopPackage(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2779
    if-eqz v2, :cond_3

    .line 2780
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v0, v10

    goto/16 :goto_1

    .line 2779
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_5
    if-eqz v1, :cond_0

    .line 2780
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 2792
    :cond_1
    if-gez v0, :cond_2

    .line 2793
    const-string v0, "CorePlayerService"

    const-string v0, "getLastPlayedFile() audioId < 0"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2794
    goto :goto_2

    .line 2796
    :cond_2
    new-instance v1, Lcom/android/music/common/data/MpListFilter;

    invoke-direct {v1, v8, v8}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 2797
    iget-object v2, v1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v1, v8, v10, v9}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v3, v2, v7

    .line 2798
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/android/music/player/data/MusicPlayerController;->initIterator(Landroid/net/Uri;Lcom/android/music/common/data/MpListFilter;)Z

    move-result v0

    goto/16 :goto_2

    .line 2779
    :catchall_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 2774
    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto :goto_4

    .line 2770
    :catch_4
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_3

    :catch_5
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto/16 :goto_3

    :cond_3
    move v0, v10

    goto/16 :goto_1

    :cond_4
    move v0, v1

    move-object v1, v2

    goto/16 :goto_1

    :cond_5
    move v1, v10

    move-object v2, v9

    goto/16 :goto_0
.end method

.method private getLastPlayedFileFromSP()Z
    .locals 2

    .prologue
    .line 2713
    const-string v0, "CorePlayerService"

    const-string v1, "getLastPlayedFileFromSP()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    const/4 v0, 0x0

    return v0
.end method

.method private gotoIdleState()V
    .locals 4

    .prologue
    .line 1994
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1995
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1996
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1997
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->hideNotification()V

    .line 1998
    return-void
.end method

.method private loadPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1148
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getShuffle(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/music/player/data/MusicPlayerController;->setShuffle(Z)V

    .line 1149
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getRepeat(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->setRepeatMode(I)V

    .line 1151
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mappingMenuArray:[I

    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getEqualizer(Landroid/content/Context;)I

    move-result v2

    aget v1, v1, v2

    aput v1, v0, v4

    .line 1153
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEffect;->mappingMenuArray:[I

    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getEffect(Landroid/content/Context;)I

    move-result v2

    aget v1, v1, v2

    aput v1, v0, v3

    .line 1155
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v1, 0x2

    const/high16 v2, 0x40

    aput v2, v0, v1

    .line 1156
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v1, 0x3

    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getVisualization(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_2

    const/high16 v2, 0x100

    :goto_0
    aput v2, v0, v1

    .line 1160
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v0, v0, v3

    const/high16 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v0, v0, v3

    const v1, 0x8000

    if-ne v0, v1, :cond_1

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1163
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/16 v1, 0x1000

    aput v1, v0, v3

    .line 1164
    invoke-static {v4}, Lcom/android/music/common/util/MusicValueSaveController;->setEffect(I)V

    .line 1165
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 1168
    :cond_1
    return-void

    .line 1156
    :cond_2
    const/high16 v2, 0x80

    goto :goto_0
.end method

.method private makeMusicNotification()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2508
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020147

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNotification:Landroid/app/Notification;

    .line 2510
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 2511
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2512
    return-void
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1319
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1320
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getAudioId()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1321
    const-string v1, "artist"

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1322
    const-string v1, "album"

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1323
    const-string v1, "track"

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1324
    const-string v1, "playing"

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1325
    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1337
    return-void
.end method

.method private openCurrent()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v3, "CorePlayerService"

    .line 1521
    const-string v0, "CorePlayerService"

    const-string v0, "openCurrent()"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v0

    .line 1525
    invoke-direct {p0, v4}, Lcom/android/music/player/service/CorePlayerService;->stop(Z)V

    .line 1527
    if-eqz v0, :cond_1

    .line 1528
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v1}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/music/player/service/CorePlayerService;->checkDrmRight(Ljava/lang/String;Z)I

    move-result v1

    .line 1530
    if-nez v1, :cond_2

    .line 1531
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 1542
    :goto_0
    return v0

    .line 1535
    :cond_0
    const-string v0, "CorePlayerService"

    const-string v0, "openCurrent() open FAIL"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move v0, v4

    .line 1542
    goto :goto_0

    .line 1537
    :cond_2
    if-eq v1, v2, :cond_3

    const/16 v0, -0xa

    if-ne v1, v0, :cond_1

    .line 1538
    :cond_3
    iget v0, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    .line 1539
    const-string v0, "CorePlayerService"

    const-string v0, "openCurrent() mErrorCount--"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private openCurrentOrAnything(ZJ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, -0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1548
    const-string v0, "CorePlayerService"

    const-string v1, "openCurrentOrAnything(%s)"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v0

    .line 1551
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->doFindMediaToPlay()Landroid/net/Uri;

    move-result-object v0

    .line 1555
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/music/common/util/MusicUtils;->isMusicPlayerTopActivity(Landroid/content/Context;Z)Z

    move-result v1

    .line 1557
    invoke-direct {p0, v5}, Lcom/android/music/player/service/CorePlayerService;->stop(Z)V

    .line 1559
    if-eqz v0, :cond_4

    .line 1560
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v2, v0}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1561
    invoke-direct {p0, v2, v1}, Lcom/android/music/player/service/CorePlayerService;->checkDrmRight(Ljava/lang/String;Z)I

    move-result v1

    .line 1564
    :goto_0
    iput-boolean p1, p0, Lcom/android/music/player/service/CorePlayerService;->mWasPlaying:Z

    .line 1565
    if-nez v1, :cond_2

    .line 1566
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1567
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0, p2, p3}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->seek(J)J

    .line 1568
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->play()V

    .line 1577
    :cond_1
    :goto_1
    return-void

    .line 1570
    :cond_2
    if-eq v1, v4, :cond_3

    if-ne v1, v6, :cond_1

    .line 1571
    :cond_3
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Lcom/android/music/player/service/CorePlayerService$FindSong;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1572
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Lcom/android/music/player/service/CorePlayerService$FindSong;

    invoke-virtual {v0, v5, v4}, Lcom/android/music/player/service/CorePlayerService$FindSong;->setFindSong(ZZ)V

    .line 1573
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Lcom/android/music/player/service/CorePlayerService$FindSong;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    move v1, v6

    goto :goto_0
.end method

.method private procCommndIntent(Landroid/content/Intent;)V
    .locals 11
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/16 v7, 0x320

    const/4 v6, 0x0

    const-string v5, "CorePlayerService"

    .line 552
    if-nez p1, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 556
    const-string v1, "command"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 557
    const-class v2, Lcom/android/music/player/receiver/HeadsetIntentReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "from"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 559
    const-string v3, "CorePlayerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "procCommndIntent() cmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v3, "CorePlayerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "procCommndIntent() action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v3, "next"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.android.music.musicservicecommand.next"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 567
    :cond_2
    const-string v0, "ignore_repeat_one"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 568
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->isInitialedMpListFilter()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 569
    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->next(Z)Z

    goto :goto_0

    .line 571
    :cond_3
    invoke-direct {p0, v8, v9, v10}, Lcom/android/music/player/service/CorePlayerService;->openCurrentOrAnything(ZJ)V

    goto :goto_0

    .line 572
    :cond_4
    const-string v3, "previous"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 573
    :cond_5
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->isInitialedMpListFilter()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 574
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->position()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    .line 575
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->prev()V

    goto/16 :goto_0

    .line 577
    :cond_6
    invoke-virtual {p0, v9, v10}, Lcom/android/music/player/service/CorePlayerService;->seek(J)J

    .line 578
    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mWasPlaying:Z

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->play()V

    goto/16 :goto_0

    .line 582
    :cond_7
    invoke-direct {p0, v8, v9, v10}, Lcom/android/music/player/service/CorePlayerService;->openCurrentOrAnything(ZJ)V

    goto/16 :goto_0

    .line 583
    :cond_8
    const-string v3, "togglepause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 584
    :cond_9
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 587
    const-string v3, "service.brcm.bt.avkey"

    const-string v4, "pause"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pause"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "togglepause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 588
    const-string v0, "CorePlayerService"

    const-string v0, " ooo avrcp - paused"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->pause()V

    .line 590
    iput-boolean v6, p0, Lcom/android/music/player/service/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    goto/16 :goto_0

    .line 591
    :cond_a
    const-string v1, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz v2, :cond_0

    .line 592
    :cond_b
    const-string v0, "CorePlayerService"

    const-string v0, " ooo toggle - paused"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->pause()V

    .line 594
    iput-boolean v6, p0, Lcom/android/music/player/service/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    goto/16 :goto_0

    .line 598
    :cond_c
    invoke-static {}, Lcom/android/music/common/util/MusicUtils;->isFactoryTest()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 599
    const-string v0, "CorePlayerService"

    const-string v0, "Default ESN state : Blocking Enable."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 604
    :cond_d
    const-string v3, "CorePlayerService"

    const-string v3, "Default ESN state : Blocking Disable."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string v3, "service.brcm.bt.avkey"

    const-string v4, "play"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "play"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "togglepause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 609
    const-string v0, "CorePlayerService"

    const-string v0, " ooo avrcp - played"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->play()V

    goto/16 :goto_0

    .line 611
    :cond_e
    const-string v1, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz v2, :cond_0

    .line 612
    :cond_f
    const-string v0, "CorePlayerService"

    const-string v0, " ooo toggle - played"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->play()V

    goto/16 :goto_0

    .line 617
    :cond_10
    const-string v2, "pause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 618
    :cond_11
    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    :cond_12
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->pause()V

    .line 622
    iput-boolean v6, p0, Lcom/android/music/player/service/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    goto/16 :goto_0

    .line 623
    :cond_13
    const-string v2, "stop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 627
    invoke-direct {p0, v8}, Lcom/android/music/player/service/CorePlayerService;->stop(Z)V

    goto/16 :goto_0

    .line 634
    :cond_14
    const-string v2, "com.android.music.musicservicecommand.resume"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 635
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->play()V

    goto/16 :goto_0

    .line 636
    :cond_15
    const-string v2, "com.android.alarmclock.ALARM_ALERT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 637
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->pause()V

    goto/16 :goto_0

    .line 640
    :cond_16
    const-string v2, "com.android.music.musicservicecommand.checkplaystatus"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 641
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isStop()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->sendMediaPlayInfo(Z)V

    goto/16 :goto_0

    .line 642
    :cond_17
    const-string v2, "fastforward_down"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "com.android.music.musicservicecommand.ff.down"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 643
    :cond_18
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 644
    iput v7, v0, Landroid/os/Message;->what:I

    .line 645
    iput v8, v0, Landroid/os/Message;->arg1:I

    .line 646
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 648
    const-string v0, "musicplayer.show.progressbar"

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 649
    :cond_19
    const-string v2, "fastforward_up"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "com.android.music.musicservicecommand.ff.up"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 650
    :cond_1a
    iput v6, p0, Lcom/android/music/player/service/CorePlayerService;->ffRewRepeatTime:I

    .line 651
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 652
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 655
    :cond_1b
    const-string v0, "musicplayer.hide.progressbar"

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 656
    :cond_1c
    const-string v2, "rewind_down"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "com.android.music.musicservicecommand.rew.down"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 657
    :cond_1d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 658
    iput v7, v0, Landroid/os/Message;->what:I

    .line 659
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 660
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 662
    const-string v0, "musicplayer.show.progressbar"

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 663
    :cond_1e
    const-string v2, "rewind_up"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "com.android.music.musicservicecommand.rew.up"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 664
    :cond_1f
    iput v6, p0, Lcom/android/music/player/service/CorePlayerService;->ffRewRepeatTime:I

    .line 665
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 666
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 669
    :cond_20
    const-string v0, "musicplayer.hide.progressbar"

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 670
    :cond_21
    const-string v2, "com.android.music.musicservicecommand.prepare"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 671
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    const-string v1, "bPlay"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 673
    invoke-direct {p0, v6}, Lcom/android/music/player/service/CorePlayerService;->stop(Z)V

    .line 674
    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->play()V

    goto/16 :goto_0

    .line 676
    :cond_22
    const-string v1, "com.android.music.musicservicecommand.set.eq"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 677
    const-string v0, "musicPlayer.service.BLUETOOTH_HEADSET_STATE_CHANGE"

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 678
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService;->setEq()V

    goto/16 :goto_0

    .line 679
    :cond_23
    const-string v1, "com.android.music.musicservicecommand.hide.notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->hideNotification()V

    goto/16 :goto_0
.end method

.method private setEq()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2656
    .line 2658
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    if-nez v0, :cond_0

    .line 2659
    const-string v0, "CorePlayerService"

    const-string v1, "setEq() mPlayer==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    :goto_0
    return-void

    .line 2667
    :cond_0
    invoke-static {}, Lcom/android/music/common/util/R2vsUtil;->getR2vsSum()I

    move-result v0

    .line 2669
    sget-object v1, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v1, v1, v5

    const/16 v2, 0x800

    if-ne v1, v2, :cond_3

    .line 2670
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getCustomEqualizer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2671
    new-array v2, v6, [I

    .line 2673
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {v3, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    .line 2676
    :goto_1
    if-ge v1, v6, :cond_2

    .line 2677
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2678
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2679
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v1

    .line 2676
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2681
    :cond_1
    const/4 v4, 0x3

    aput v4, v2, v1

    goto :goto_2

    .line 2684
    :cond_2
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v1, v0, v2}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->internalSetUserEQ(I[I)V

    goto :goto_0

    .line 2686
    :cond_3
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v1, v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->internalSetEq(I)V

    goto :goto_0
.end method

.method private setUlpBypassInternal(Z)V
    .locals 8
    .parameter "bUlpByPass"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "CorePlayerService"

    .line 696
    const-string v2, "CorePlayerService"

    const-string v2, "setUlpBypassInternal(%s -> %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/android/music/player/service/CorePlayerService;->mIsUlpByPass:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-boolean v2, p0, Lcom/android/music/player/service/CorePlayerService;->mIsUlpByPass:Z

    if-eq p1, v2, :cond_1

    .line 699
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v2}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v1

    .line 700
    .local v1, curUri:Landroid/net/Uri;
    iput-boolean p1, p0, Lcom/android/music/player/service/CorePlayerService;->mIsUlpByPass:Z

    .line 702
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 703
    const-string v2, "CorePlayerService"

    const-string v2, "setUlpBypassInternal : reset for ULP"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iput-boolean v6, p0, Lcom/android/music/player/service/CorePlayerService;->mResetForUlp:Z

    .line 705
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->position()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayedTimeForUlp:J

    .line 706
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isPlaying()Z

    move-result v0

    .line 708
    .local v0, bPlaying:Z
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->stop()V

    .line 710
    if-eqz v1, :cond_0

    .line 711
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/music/player/service/CorePlayerService;->open(Ljava/lang/String;)Z

    .line 712
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 713
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-wide v3, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayedTimeForUlp:J

    invoke-virtual {v2, v3, v4}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->seek(J)J

    .line 714
    if-eqz v0, :cond_0

    .line 715
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->start()V

    .line 716
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService;->setEq()V

    .line 720
    :cond_0
    iput-boolean v5, p0, Lcom/android/music/player/service/CorePlayerService;->mResetForUlp:Z

    .line 723
    .end local v0           #bPlaying:Z
    .end local v1           #curUri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private setupMusicRemoteButtons(Landroid/widget/RemoteViews;)V
    .locals 14
    .parameter

    .prologue
    const v13, 0x7f0c0116

    const v12, 0x7f0c0115

    const v11, 0x7f0c0112

    const v10, 0x7010002

    const/4 v9, 0x0

    .line 2517
    .line 2519
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2520
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    .line 2525
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget v1, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbumID:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/music/common/data/MusicDB;->getAlbumArt(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2526
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2527
    const/4 v2, 0x4

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2528
    const/16 v2, 0x32

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2529
    const/16 v2, 0x32

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2530
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    .line 2533
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 2534
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v11, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2538
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "sec.musicplayer.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2539
    const/high16 v1, 0x3400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2540
    const/4 v1, 0x1

    invoke-static {p0, v1, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2542
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.previous"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2544
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand.rew.down"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2546
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.music.musicservicecommand.rew.up"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2548
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 2552
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2553
    invoke-virtual {p1, v13, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2554
    const/16 v5, 0x8

    invoke-virtual {p1, v12, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2559
    :goto_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.music.musicservicecommand.next"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 2561
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.music.musicservicecommand.ff.down"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10, v6, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2563
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.music.musicservicecommand.ff.up"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2565
    invoke-virtual {p1, v11, v0}, Landroid/widget/RemoteViews;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2567
    const v0, 0x7f0c0114

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2568
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mIB:Landroid/os/IBinder;

    const v1, 0x7f0c0114

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setOnLongClickPendingIntent(Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 2570
    invoke-virtual {p1, v12, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2571
    invoke-virtual {p1, v13, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2573
    const v0, 0x7f0c0117

    invoke-virtual {p1, v0, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2574
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mIB:Landroid/os/IBinder;

    const v1, 0x7f0c0117

    invoke-virtual {p1, v0, v1, v6, v7}, Landroid/widget/RemoteViews;->setOnLongClickPendingIntent(Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 2575
    return-void

    .line 2536
    :cond_2
    const v0, 0x7f02013b

    invoke-virtual {p1, v11, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 2556
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {p1, v13, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2557
    invoke-virtual {p1, v12, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method private startAndFadeIn()V
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 306
    return-void
.end method

.method private stop(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1706
    const-string v0, "CorePlayerService"

    const-string v1, "stop(%s)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget v0, v0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->stop()V

    .line 1711
    :cond_0
    iput-boolean v4, p0, Lcom/android/music/player/service/CorePlayerService;->mResetForUlp:Z

    .line 1712
    iput-boolean v4, p0, Lcom/android/music/player/service/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    .line 1713
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1715
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1716
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->setVolume(F)V

    .line 1720
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mFileToPlay:Ljava/lang/String;

    .line 1725
    if-eqz p1, :cond_3

    .line 1726
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService;->gotoIdleState()V

    .line 1728
    iput-boolean v4, p0, Lcom/android/music/player/service/CorePlayerService;->mIsSupposedToBePlaying:Z

    .line 1730
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 1732
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1733
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1734
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/music/player/service/CorePlayerService;->sendMediaPlayInfo(Z)V

    .line 1744
    :goto_0
    return-void

    .line 1737
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/music/player/service/CorePlayerService;->stopForeground(Z)V

    .line 1738
    invoke-virtual {p0, v4}, Lcom/android/music/player/service/CorePlayerService;->sendMediaPlayInfo(Z)V

    goto :goto_0
.end method

.method private useHeadsetMediaButtonReceiver(Z)V
    .locals 5
    .parameter

    .prologue
    const-class v3, Lcom/android/music/player/receiver/HeadsetIntentReceiver;

    const-class v2, Lcom/android/music/player/receiver/BluetoothIntentReceiver;

    .line 3782
    if-eqz p1, :cond_0

    const-class v0, Lcom/android/music/player/receiver/BluetoothIntentReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3783
    :goto_0
    if-eqz p1, :cond_1

    const-class v1, Lcom/android/music/player/receiver/HeadsetIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3784
    :goto_1
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 3785
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 3786
    return-void

    .line 3782
    :cond_0
    const-class v0, Lcom/android/music/player/receiver/HeadsetIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3783
    :cond_1
    const-class v1, Lcom/android/music/player/receiver/BluetoothIntentReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public doFindMediaToPlay()Landroid/net/Uri;
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "doFindMediaToPlay() mediaUri="

    const-string v7, "CorePlayerService"

    .line 2691
    .line 2693
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService;->getLastPlayedFileFromSP()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2694
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService;->getLastPlayedFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2696
    new-instance v0, Lcom/android/music/common/data/MpListFilter;

    invoke-direct {v0, v5, v5}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 2697
    iget-object v1, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v5, v3, v4}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v2, v1, v6

    .line 2699
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v1, v0, v6}, Lcom/android/music/common/data/MusicDB;->getItemContentUri(Lcom/android/music/common/data/MpListFilter;I)Landroid/net/Uri;

    move-result-object v1

    .line 2701
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v2, v1, v0}, Lcom/android/music/player/data/MusicPlayerController;->initIterator(Landroid/net/Uri;Lcom/android/music/common/data/MpListFilter;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v4

    .line 2703
    :goto_0
    const-string v1, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFindMediaToPlay() mediaUri="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    :goto_2
    return-object v0

    :cond_0
    move-object v2, v4

    .line 2703
    goto :goto_1

    .line 2707
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v0

    .line 2708
    const-string v1, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFindMediaToPlay() mediaUri="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move-object v2, v4

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected doSaveNowPlayingMediaInfo(Landroid/net/Uri;)V
    .locals 3
    .parameter

    .prologue
    const-string v2, "CorePlayerService"

    .line 2813
    const-string v0, "CorePlayerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doSaveNowPlayingMediaInfo(mediaUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    if-nez v0, :cond_1

    .line 2816
    const-string v0, "CorePlayerService"

    const-string v0, "doSaveNowPlayingMediaInfo():mMusicPlayerController == null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    :cond_0
    :goto_0
    return-void

    .line 2820
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getMpListFilter()Lcom/android/music/common/data/MpListFilter;

    move-result-object v0

    .line 2821
    if-nez v0, :cond_2

    .line 2822
    const-string v0, "CorePlayerService"

    const-string v0, "doSaveNowPlayingMediaInfo():mFilter == null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2826
    :cond_2
    iget v0, v0, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 2827
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v1}, Lcom/android/music/player/data/MusicPlayerController;->getCurAudioId()I

    move-result v1

    .line 2837
    if-lez v1, :cond_0

    .line 2838
    const/16 v2, 0xb

    if-eq v0, v2, :cond_3

    .line 2839
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v2, v1}, Lcom/android/music/common/data/MusicDB;->updatePlayedTime(I)Z

    .line 2840
    :cond_3
    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    .line 2841
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v0, v1}, Lcom/android/music/common/data/MusicDB;->updatePlayedCount(I)Z

    goto :goto_0
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2381
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->duration()J

    move-result-wide v0

    .line 2383
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2333
    monitor-enter p0

    .line 2334
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    if-nez v0, :cond_0

    .line 2335
    const/4 v0, 0x0

    monitor-exit p0

    .line 2336
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 2337
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2316
    monitor-enter p0

    .line 2317
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    if-nez v0, :cond_0

    .line 2318
    const/4 v0, 0x0

    monitor-exit p0

    .line 2319
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/android/music/player/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 2320
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioId()I
    .locals 1

    .prologue
    .line 2278
    monitor-enter p0

    .line 2282
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getCurAudioId()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2283
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 2430
    monitor-enter p0

    .line 2431
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->getAudioSessionId()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2432
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getShuffle()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2350
    monitor-enter p0

    .line 2351
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    if-nez v0, :cond_0

    .line 2352
    const/4 v0, 0x0

    monitor-exit p0

    .line 2353
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 2354
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected hideNotification()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "CorePlayerService"

    .line 2579
    const-string v0, "CorePlayerService"

    const-string v0, "hideNotification()"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2581
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2582
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.hide.notification"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2584
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    .line 2585
    const-string v0, "CorePlayerService"

    const-string v0, "CorePlayerService::hideNotification: mNotiManager==null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    :cond_0
    :goto_0
    return-void

    .line 2589
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->stopForeground(Z)V

    .line 2592
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2593
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method isInitialedMpListFilter()Z
    .locals 2

    .prologue
    .line 2925
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getMpListFilter()Lcom/android/music/common/data/MpListFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2926
    const/4 v0, 0x1

    .line 2928
    :goto_0
    return v0

    .line 2927
    :cond_0
    const-string v0, "CorePlayerService"

    const-string v1, "MusicPlayerController is not initialed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1806
    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public next(Z)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "com.android.music.metachanged"

    const-string v3, "CorePlayerService"

    const-string v0, "com.android.music.playstatechanged"

    .line 1889
    const-string v0, "CorePlayerService"

    const-string v0, "next(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    monitor-enter p0

    .line 1897
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v0, p1}, Lcom/android/music/player/data/MusicPlayerController;->getNext(Z)Landroid/net/Uri;

    move-result-object v0

    .line 1898
    if-nez v0, :cond_0

    .line 1899
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->stop(Z)V

    .line 1900
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mWasPlaying:Z

    .line 1901
    const-string v0, "musicPlayer.service.updateSeekPlayedTime"

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 1903
    monitor-exit p0

    move v0, v5

    .line 1950
    :goto_0
    return v0

    .line 1906
    :cond_0
    iput-boolean p1, p0, Lcom/android/music/player/service/CorePlayerService;->mUserAction:Z

    .line 1907
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayDirection:Z

    .line 1908
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/music/common/util/MusicUtils;->isMusicPlayerTopActivity(Landroid/content/Context;Z)Z

    move-result v1

    .line 1909
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v2}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    move v3, v4

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/android/music/player/service/CorePlayerService;->checkDrmRight(Ljava/lang/String;Z)I

    move-result v2

    .line 1910
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/music/player/service/CorePlayerService;->stop(Z)V

    .line 1912
    const-string v3, "musicPlayer.service.updateMediaInfo"

    invoke-virtual {p0, v3}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 1914
    if-nez v2, :cond_4

    .line 1915
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1916
    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mWasPlaying:Z

    if-eqz v0, :cond_1

    .line 1917
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->play()V

    :cond_1
    move v0, v5

    .line 1930
    :goto_2
    if-eqz v0, :cond_2

    .line 1931
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mIsSupposedToBePlaying:Z

    .line 1932
    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mUserAction:Z

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 1933
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 1934
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 1948
    :cond_2
    :goto_3
    monitor-exit p0

    move v0, v4

    .line 1950
    goto :goto_0

    :cond_3
    move v3, v5

    .line 1909
    goto :goto_1

    .line 1921
    :cond_4
    if-eq v2, v4, :cond_5

    const/16 v0, -0xa

    if-ne v2, v0, :cond_6

    .line 1922
    :cond_5
    iget v0, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    move v0, v4

    goto :goto_2

    .line 1924
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mIsSupposedToBePlaying:Z

    .line 1925
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 1926
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 1927
    monitor-exit p0

    move v0, v5

    goto :goto_0

    .line 1936
    :cond_7
    const-string v0, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next().......result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/music/player/service/CorePlayerService;->mUserAction:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mUserAction:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getRepeatMode()I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 1939
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->stop(Z)V

    .line 1940
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    goto :goto_3

    .line 1948
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1942
    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Lcom/android/music/player/service/CorePlayerService$FindSong;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1943
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Lcom/android/music/player/service/CorePlayerService$FindSong;

    iget-boolean v1, p0, Lcom/android/music/player/service/CorePlayerService;->mUserAction:Z

    iget-boolean v2, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayDirection:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/music/player/service/CorePlayerService$FindSong;->setFindSong(ZZ)V

    .line 1944
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Lcom/android/music/player/service/CorePlayerService$FindSong;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_9
    move v0, v4

    goto/16 :goto_2
.end method

.method protected notifyBroadcast(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2599
    const-string v0, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyBroadcast("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2601
    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2602
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter

    .prologue
    .line 1178
    const-string v0, "CorePlayerService"

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mServiceInUse:Z

    .line 1181
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 770
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 771
    const-string v6, "CorePlayerService"

    const-string v7, "onCreate()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iput-boolean v9, p0, Lcom/android/music/player/service/CorePlayerService;->mResetForUlp:Z

    .line 773
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    .line 774
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/music/player/service/CorePlayerService;->useHeadsetMediaButtonReceiver(Z)V

    .line 782
    new-instance v6, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-direct {v6, p0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    .line 783
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 785
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    if-nez v6, :cond_0

    .line 786
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v6

    iput-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    .line 788
    :cond_0
    new-instance v6, Lcom/android/music/common/manager/MusicDrmManager;

    invoke-direct {v6}, Lcom/android/music/common/manager/MusicDrmManager;-><init>()V

    iput-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    .line 789
    new-instance v6, Lcom/android/music/player/data/MusicPlayerController;

    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/music/player/data/MusicPlayerController;-><init>(Lcom/android/music/common/data/MusicDB;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    .line 790
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    iput-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 795
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 796
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v6, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 797
    const-string v6, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 798
    const-string v6, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 799
    const-string v6, "com.android.music.musicservicecommand.next"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 800
    const-string v6, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 802
    const-string v6, "com.android.music.musicservicecommand.resume"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 803
    const-string v6, "com.android.alarmclock.ALARM_ALERT"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 804
    const-string v6, "com.android.music.musicservicecommand.checkplaystatus"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 805
    const-string v6, "com.android.music.musicservicecommand.ff.down"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 806
    const-string v6, "com.android.music.musicservicecommand.ff.up"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 807
    const-string v6, "com.android.music.musicservicecommand.rew.down"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 808
    const-string v6, "com.android.music.musicservicecommand.rew.up"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 809
    const-string v6, "com.android.music.musicservicecommand.set.eq"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 810
    const-string v6, "com.android.music.musicservicecommand.hide.notification"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 819
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v0}, Lcom/android/music/player/service/CorePlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 822
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 824
    .local v2, intentMediaStateFilter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 825
    const-string v6, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 826
    const-string v6, "file"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 827
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/android/music/player/service/CorePlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 829
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 830
    .local v1, intentHeadSetFilter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 831
    const-string v6, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 832
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v1}, Lcom/android/music/player/service/CorePlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 834
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 835
    .local v3, intentSystemFilter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 836
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 839
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v3}, Lcom/android/music/player/service/CorePlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 841
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService;->loadPreferences()V

    .line 842
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService;->makeMusicNotification()V

    .line 845
    const-string v6, "power"

    invoke-virtual {p0, v6}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 846
    .local v5, pm:Landroid/os/PowerManager;
    const/4 v6, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 847
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 851
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 852
    .local v4, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v7, 0xea60

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 853
    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    iput-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mIB:Landroid/os/IBinder;

    .line 857
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v6, :cond_1

    .line 858
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iput-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiManager:Landroid/app/NotificationManager;

    .line 860
    :cond_1
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mNotification:Landroid/app/Notification;

    iput v9, v6, Landroid/app/Notification;->icon:I

    .line 862
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiManager:Landroid/app/NotificationManager;

    const v7, 0x7010002

    iget-object v8, p0, Lcom/android/music/player/service/CorePlayerService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 864
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "CorePlayerService"

    .line 868
    const-string v1, "CorePlayerService"

    const-string v1, "onDestroy()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/music/player/service/CorePlayerService;->mResetForUlp:Z

    .line 871
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 872
    const-string v1, "CorePlayerService"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-direct {p0, v4}, Lcom/android/music/player/service/CorePlayerService;->stop(Z)V

    .line 876
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 877
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 878
    const-string v1, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 880
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v1}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->release()V

    .line 881
    iput-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    .line 883
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 886
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 887
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 888
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 890
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/player/service/CorePlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 892
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/player/service/CorePlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 893
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/player/service/CorePlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 894
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/player/service/CorePlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 897
    iput-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    .line 898
    iput-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    .line 900
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    invoke-virtual {v1}, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_1

    .line 901
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    invoke-virtual {v1, v4}, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->cancel(Z)Z

    .line 905
    :cond_1
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 906
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 907
    iput-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    .line 915
    :cond_2
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 916
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 917
    :cond_3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 918
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 1186
    const-string v0, "CorePlayerService"

    const-string v1, "onRebind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mServiceInUse:Z

    .line 1189
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x0

    .line 1193
    iput p3, p0, Lcom/android/music/player/service/CorePlayerService;->mServiceStartId:I

    .line 1194
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1196
    invoke-direct {p0, p1}, Lcom/android/music/player/service/CorePlayerService;->procCommndIntent(Landroid/content/Intent;)V

    .line 1200
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1201
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1202
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1203
    const/4 v1, 0x1

    return v1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    .line 1208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mServiceInUse:Z

    .line 1213
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 1231
    :goto_0
    return v0

    .line 1222
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isStop()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    .line 1226
    goto :goto_0

    .line 1230
    :cond_3
    iget v0, p0, Lcom/android/music/player/service/CorePlayerService;->mServiceStartId:I

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->stopSelf(I)V

    move v0, v1

    .line 1231
    goto :goto_0
.end method

.method public open(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "CorePlayerService"

    .line 1584
    const-string v0, "CorePlayerService"

    const-string v0, "open(%s)"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    monitor-enter p0

    .line 1586
    if-nez p1, :cond_0

    .line 1587
    :try_start_0
    monitor-exit p0

    move v0, v3

    .line 1621
    :goto_0
    return v0

    .line 1591
    :cond_0
    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mResetForUlp:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->pauseAnotherPlay()V

    .line 1592
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Lcom/android/music/player/service/CorePlayerService$FindSong;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1594
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService;->mFileToPlay:Ljava/lang/String;

    .line 1595
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->setDataSource(Ljava/lang/String;)Z

    .line 1604
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1605
    const-string v0, "CorePlayerService"

    const-string v1, "open() FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->stop(Z)V

    .line 1607
    iget v0, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    .line 1608
    monitor-exit p0

    move v0, v3

    goto :goto_0

    .line 1610
    :cond_2
    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mResetForUlp:Z

    if-nez v0, :cond_3

    .line 1611
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/music/common/util/MusicUtils;->isMusicPlayerTopActivity(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/music/common/util/MusicPlayerUtil;->isMusicPlayerResume:Z

    if-nez v0, :cond_4

    .line 1613
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->showNotification()V

    .line 1618
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getItemCountFromDB()I

    move-result v0

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    .line 1619
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mUserAction:Z

    .line 1620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayDirection:Z

    .line 1621
    monitor-exit p0

    move v0, v2

    goto :goto_0

    .line 1615
    :cond_4
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->hideNotification()V

    goto :goto_1

    .line 1623
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 7

    .prologue
    .line 1757
    monitor-enter p0

    .line 1759
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mResetForUlp:Z

    .line 1760
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1762
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1763
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->setVolume(F)V

    .line 1767
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1768
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget v0, v0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    const v1, 0x11020

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget v0, v0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    const v1, 0x11040

    if-ne v0, v1, :cond_3

    .line 1769
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->pause()V

    .line 1770
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mIsSupposedToBePlaying:Z

    .line 1772
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mWasPlaying:Z

    .line 1774
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1775
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1776
    :cond_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1777
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_5

    .line 1778
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/music/common/util/MusicUtils;->isMusicPlayerTopActivity(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1780
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->showNotification()V

    .line 1781
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1782
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    add-long/2addr v2, v4

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.music.musicservicecommand.hide.notification"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1792
    :goto_0
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 1793
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->sendMediaPlayInfo(Z)V

    .line 1797
    :cond_3
    monitor-exit p0

    .line 1798
    return-void

    .line 1785
    :cond_4
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->hideNotification()V

    goto :goto_0

    .line 1797
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1788
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->hideNotification()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public pauseAnotherPlay()V
    .locals 3

    .prologue
    .line 2804
    const-string v0, "CorePlayerService"

    const-string v1, "pauseAnotherPlay() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2807
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2808
    const-string v1, "from"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2809
    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2810
    return-void
.end method

.method public play()V
    .locals 6

    .prologue
    const v2, 0x7f0a00dc

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "com.android.music.playstatechanged"

    const-string v1, "CorePlayerService"

    .line 1630
    const-string v0, "CorePlayerService"

    const-string v0, "play()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iput-boolean v3, p0, Lcom/android/music/player/service/CorePlayerService;->mResetForUlp:Z

    .line 1634
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1703
    :goto_0
    return-void

    .line 1637
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1638
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1639
    const-string v0, "CorePlayerService"

    const-string v0, "startPlay Can\'t play during call"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 1641
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    .line 1642
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1647
    :goto_1
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v5}, Lcom/android/music/player/service/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    goto :goto_0

    .line 1644
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;

    .line 1645
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1652
    :cond_2
    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->bLowBattery:Z

    if-eqz v0, :cond_3

    .line 1653
    const-string v0, "CorePlayerService"

    const-string v0, "play() but LowBattery~"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->hideNotification()V

    goto :goto_0

    .line 1660
    :cond_3
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1662
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->useHeadsetMediaButtonReceiver(Z)V

    .line 1664
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1672
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->pauseAnotherPlay()V

    .line 1673
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->start()V

    .line 1674
    iput-boolean v4, p0, Lcom/android/music/player/service/CorePlayerService;->mWasPlaying:Z

    .line 1676
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mIsSupposedToBePlaying:Z

    .line 1677
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v5}, Lcom/android/music/player/service/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 1680
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService;->setEq()V

    .line 1682
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1683
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1685
    :cond_4
    iput-boolean v3, p0, Lcom/android/music/player/service/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    .line 1687
    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/music/common/util/MusicUtils;->isMusicPlayerTopActivity(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/music/common/util/MusicPlayerUtil;->isMusicPlayerResume:Z

    if-nez v0, :cond_5

    .line 1690
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->showNotification()V

    .line 1694
    :goto_2
    const-string v0, "musicPlayer.service.startUpdateStatus"

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 1695
    const-string v0, "videoplayer.service.MoviePlaybackService.videopause"

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 1696
    invoke-virtual {p0, v3}, Lcom/android/music/player/service/CorePlayerService;->sendMediaPlayInfo(Z)V

    goto/16 :goto_0

    .line 1692
    :cond_5
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->hideNotification()V

    goto :goto_2

    .line 1699
    :cond_6
    const-wide/16 v0, 0x0

    invoke-direct {p0, v4, v0, v1}, Lcom/android/music/player/service/CorePlayerService;->openCurrentOrAnything(ZJ)V

    goto/16 :goto_0
.end method

.method public playAfterSeek(J)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1983
    const-string v0, "CorePlayerService"

    const-string v1, "playAfterSeek(%d)"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1985
    invoke-direct {p0, v5, p1, p2}, Lcom/android/music/player/service/CorePlayerService;->openCurrentOrAnything(ZJ)V

    .line 1990
    :goto_0
    return-void

    .line 1987
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->seek(J)J

    .line 1988
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->play()V

    goto :goto_0
.end method

.method public playIt(Landroid/net/Uri;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1955
    const-string v0, "CorePlayerService"

    const-string v1, "playIt(%s,%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    iput-boolean v5, p0, Lcom/android/music/player/service/CorePlayerService;->mUserAction:Z

    .line 1958
    iput-boolean p2, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayDirection:Z

    .line 1960
    invoke-direct {p0, v4}, Lcom/android/music/player/service/CorePlayerService;->stop(Z)V

    .line 1961
    if-eqz p1, :cond_3

    .line 1962
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v0, p1}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/music/player/service/CorePlayerService;->mUserAction:Z

    invoke-direct {p0, v0, v1}, Lcom/android/music/player/service/CorePlayerService;->checkDrmRight(Ljava/lang/String;Z)I

    move-result v0

    .line 1963
    const-string v1, "musicPlayer.service.updateMediaInfo"

    invoke-virtual {p0, v1}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 1964
    if-nez v0, :cond_3

    .line 1965
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1967
    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mWasPlaying:Z

    if-eqz v0, :cond_0

    .line 1968
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->play()V

    :cond_0
    move v0, v4

    .line 1974
    :goto_1
    if-eqz v0, :cond_1

    .line 1976
    iput-boolean v4, p0, Lcom/android/music/player/service/CorePlayerService;->mIsSupposedToBePlaying:Z

    .line 1977
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 1978
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 1980
    :cond_1
    return-void

    .line 1955
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_1
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2395
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2396
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->position()J

    move-result-wide v0

    .line 2398
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public prev()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "com.android.music.playstatechanged"

    const-string v0, "com.android.music.metachanged"

    .line 1836
    const-string v0, "CorePlayerService"

    const-string v1, "prev()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    monitor-enter p0

    .line 1842
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getPrev()Landroid/net/Uri;

    move-result-object v0

    .line 1843
    if-nez v0, :cond_0

    .line 1844
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->stop(Z)V

    .line 1845
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mWasPlaying:Z

    .line 1846
    const-string v0, "musicPlayer.service.updateSeekPlayedTime"

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 1847
    monitor-exit p0

    .line 1884
    :goto_0
    return-void

    .line 1850
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/player/service/CorePlayerService;->mUserAction:Z

    .line 1851
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayDirection:Z

    .line 1852
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/music/common/util/MusicUtils;->isMusicPlayerTopActivity(Landroid/content/Context;Z)Z

    move-result v1

    .line 1853
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v2}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/music/player/service/CorePlayerService;->checkDrmRight(Ljava/lang/String;Z)I

    move-result v2

    .line 1854
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/music/player/service/CorePlayerService;->stop(Z)V

    .line 1855
    const-string v3, "musicPlayer.service.updateMediaInfo"

    invoke-virtual {p0, v3}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 1856
    if-nez v2, :cond_3

    .line 1857
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1858
    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mWasPlaying:Z

    if-eqz v0, :cond_1

    .line 1859
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->play()V

    :cond_1
    move v0, v4

    .line 1872
    :goto_1
    if-eqz v0, :cond_2

    .line 1873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mIsSupposedToBePlaying:Z

    .line 1874
    if-eqz v1, :cond_6

    .line 1875
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 1876
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 1883
    :cond_2
    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1863
    :cond_3
    if-eq v2, v5, :cond_4

    const/16 v0, -0xa

    if-ne v2, v0, :cond_5

    .line 1864
    :cond_4
    :try_start_1
    iget v0, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    move v0, v5

    goto :goto_1

    .line 1866
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mIsSupposedToBePlaying:Z

    .line 1867
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 1868
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 1869
    monitor-exit p0

    goto :goto_0

    .line 1878
    :cond_6
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Lcom/android/music/player/service/CorePlayerService$FindSong;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1879
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Lcom/android/music/player/service/CorePlayerService$FindSong;

    iget-boolean v1, p0, Lcom/android/music/player/service/CorePlayerService;->mUserAction:Z

    iget-boolean v2, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayDirection:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/music/player/service/CorePlayerService$FindSong;->setFindSong(ZZ)V

    .line 1880
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Lcom/android/music/player/service/CorePlayerService$FindSong;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_7
    move v0, v5

    goto :goto_1
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2408
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x0

    .line 2409
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->duration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->duration()J

    move-result-wide p1

    .line 2410
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->seek(J)J

    move-result-wide v0

    .line 2412
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected sendMediaPlayInfo(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1340
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.mediainfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1341
    const-string v1, "mediauri"

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v2}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1343
    const-string v1, "playing"

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1344
    const-string v1, "isStop"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1345
    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1346
    const-string v0, "CorePlayerService"

    const-string v1, "sendMediaPlayInfo() is Ended:mMediaUri=%s,%s,%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v4}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v4

    :goto_1
    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    return-void

    :cond_0
    move-object v2, v5

    .line 1341
    goto :goto_0

    :cond_1
    move-object v4, v5

    .line 1346
    goto :goto_1
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v0, p1}, Lcom/android/music/player/data/MusicPlayerController;->setRepeatMode(I)V

    .line 2248
    invoke-static {p1}, Lcom/android/music/common/util/MusicValueSaveController;->setRepeat(I)V

    .line 2249
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 2255
    return-void
.end method

.method public setShuffleMode(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "shufflemode"

    .prologue
    .line 2215
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/music/player/data/MusicPlayerController;->setShuffle(Z)V

    .line 2216
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicValueSaveController;->setShuffle(Z)V

    .line 2217
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 2240
    return-void
.end method

.method protected showNotification()V
    .locals 7

    .prologue
    const v6, 0x7f0a00ea

    const v5, 0x7f0c0118

    const/4 v3, 0x0

    const-string v4, "CorePlayerService"

    .line 2457
    const-string v0, "CorePlayerService"

    const-string v0, "showNotification()"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2459
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.hide.notification"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2462
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2463
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2504
    :goto_0
    return-void

    .line 2469
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    .line 2470
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiManager:Landroid/app/NotificationManager;

    .line 2473
    :cond_1
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03002c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2474
    invoke-direct {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->setupMusicRemoteButtons(Landroid/widget/RemoteViews;)V

    .line 2477
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2478
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mNotification:Landroid/app/Notification;

    const v2, 0x7f020147

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 2485
    :goto_1
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mNotification:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2486
    const-string v1, ""

    .line 2489
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    if-eqz v1, :cond_7

    .line 2490
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v1, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_5

    invoke-virtual {p0, v6}, Lcom/android/music/player/service/CorePlayerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2491
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v3, v3, Lcom/android/music/player/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v3, "<unknown>"

    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v4, v4, Lcom/android/music/player/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/music/player/service/CorePlayerService;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2499
    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2500
    const/4 v1, -0x1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 2501
    const-string v1, "setSelected"

    const/4 v2, 0x1

    invoke-virtual {v0, v5, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2503
    const v0, 0x7010002

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lcom/android/music/player/service/CorePlayerService;->startForeground(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 2479
    :cond_3
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v1}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isStop()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mPlayer:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-virtual {v1}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2480
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mNotification:Landroid/app/Notification;

    iput v3, v1, Landroid/app/Notification;->icon:I

    goto :goto_1

    .line 2482
    :cond_4
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mNotification:Landroid/app/Notification;

    const v2, 0x7f020146

    iput v2, v1, Landroid/app/Notification;->icon:I

    goto :goto_1

    .line 2490
    :cond_5
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v1, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    goto :goto_2

    .line 2491
    :cond_6
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v3, v3, Lcom/android/music/player/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    goto :goto_3

    .line 2495
    :cond_7
    const-string v0, "CorePlayerService"

    const-string v0, "showNotification(): mediaAlbumInfo==null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->hideNotification()V

    goto/16 :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1750
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->stop(Z)V

    .line 1751
    return-void
.end method
