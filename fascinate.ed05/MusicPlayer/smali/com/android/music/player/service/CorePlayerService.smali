.class public Lcom/android/music/player/service/CorePlayerService;
.super Landroid/app/Service;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/player/service/CorePlayerService$LyricInfo;,
        Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;
    }
.end annotation


# static fields
.field public static final ALARM_ALERT_ACTION:Ljava/lang/String; = "com.android.alarmclock.ALARM_ALERT"

.field public static final BLUETOOTH_HEADSET_STATE_CHANGE:Ljava/lang/String; = "musicPlayer.service.BLUETOOTH_HEADSET_STATE_CHANGE"

.field private static final CHARGINGBLOCK_CLEAR_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/chargingblock_clear"

.field public static final CHECK_STATUS_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.checkplaystatus"

.field public static final CMDFASTFORWARD_DOWN:Ljava/lang/String; = "fastforward_down"

.field public static final CMDFASTFORWARD_UP:Ljava/lang/String; = "fastforward_up"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field public static final CMDREWIND_DOWN:Ljava/lang/String; = "rewind_down"

.field public static final CMDREWIND_UP:Ljava/lang/String; = "rewind_up"

.field public static final CMDSTOP:Ljava/lang/String; = "stop"

.field public static final CMDTOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field static final DISPLAY_NOTIFICATION:I = 0x64

.field public static final DOCK_PLUG_CHANGE:Ljava/lang/String; = "musicPlayer.service.DOCK_PLUG_CHANGE"

.field static final ErrDrmLicenseExpired:I = 0x1f4

.field static final ErrDrmLicenseNotFound:I = 0x258

.field public static final FF_DOWN_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.ff.down"

.field static final FF_MODE:I = 0x0

.field public static final FF_UP_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.ff.up"

.field public static final FILTER_STRING:Ljava/lang/String; = "musicPlayer.service."

.field public static final HEADSET_PLUG_CHANGE:Ljava/lang/String; = "musicPlayer.service.HEADSET_PLUG_CHANGE"

.field static final HIDE_NOTIFICATION:I = 0x2bc

.field public static final HIDE_PREPARE:Ljava/lang/String; = "musicPlayer.service.prepare.hide"

.field public static final LIVE_STREAM_MODE:Ljava/lang/String; = "musicPlayer.service.liveStreamMode"

.field static final LONG_PRESSED_EVENT:I = 0x320

.field protected static final MEDIA_PLAYER_IDLE:I = 0x2

.field protected static final MEDIA_PLAYER_INITIALIZED:I = 0x4

.field protected static final MEDIA_PLAYER_PAUSED:I = 0x11040

.field protected static final MEDIA_PLAYER_PLAYBACK_COMPLETE:I = 0x11080

.field protected static final MEDIA_PLAYER_PREPARED:I = 0x11010

.field protected static final MEDIA_PLAYER_PREPARING:I = 0x10008

.field protected static final MEDIA_PLAYER_STARTED:I = 0x11020

.field protected static final MEDIA_PLAYER_STATE_CAN_PLAY:I = 0x1000

.field protected static final MEDIA_PLAYER_STATE_CAN_STOP:I = 0x10000

.field protected static final MEDIA_PLAYER_STATE_ERROR:I = 0x1

.field protected static final MEDIA_PLAYER_STOPPED:I = 0x10010

.field public static final MEDIA_UNMOUNTED:Ljava/lang/String; = "media.unmounted"

.field private static final MP3_PLAYING:I = 0x4

.field public static final MUSIC_TASK:Ljava/lang/String; = "com.android.music"

.field public static final NEXT_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field public static final NORMAL_MODE:Ljava/lang/String; = "musicPlayer.service.normalMode"

.field public static final NOTI_STATUS:I = 0x1

.field public static final PAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field protected static final PREFERENCE_RECENT_FILTER_ID:Ljava/lang/String; = "RECENT_FILTER_ID"

.field protected static final PREFERENCE_RECENT_FILTER_IS_ID:Ljava/lang/String; = "RECENT_FILTER_IS_ID"

.field protected static final PREFERENCE_RECENT_FILTER_STRING:Ljava/lang/String; = "RECENT_FILTER_STRING"

.field protected static final PREFERENCE_RECENT_LIST_TYPE:Ljava/lang/String; = "RECENT_LIST_TYPE"

.field public static final PREPARE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.prepare"

.field public static final PREVIOUS_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.previous"

.field public static final RESUME_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.resume"

.field public static final REW_DOWN_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.rew.down"

.field static final REW_MODE:I = 0x1

.field public static final REW_UP_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.rew.up"

.field public static final SEND_MEDIA_INFO:Ljava/lang/String; = "com.android.music.musicservicecommand.mediainfo"

.field protected static final SERVER_DIED:I = 0x3

.field public static final SERVICECMD:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field public static final SET_SOUND_EFFECT:Ljava/lang/String; = "com.android.music.musicservicecommand.set.eq"

.field public static final SHOW_PREPARE:Ljava/lang/String; = "musicPlayer.service.prepare.show"

.field public static final SKIP_TIME:[I = null

.field public static final START_UPDATE_STATUS:Ljava/lang/String; = "musicPlayer.service.startUpdateStatus"

.field static final STOP_MUSIC_PLAY:I = 0x384

.field public static final STOP_PLAY:Ljava/lang/String; = "musicPlayer.service.stopPlay"

.field public static final STOP_UPDATE_STATUS:Ljava/lang/String; = "musicPlayer.service.stopUpdateStatus"

.field protected static final TAG:Ljava/lang/String; = null

.field public static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"

.field public static final UPDATE_MEDIA_INFO:Ljava/lang/String; = "musicPlayer.service.updateMediaInfo"

.field static final UPDATE_PLAYING_MEDIA_DB:I = 0x1e

.field public static final UPDATE_PLAY_COMPLETE:Ljava/lang/String; = "musicPlayer.service.updatePlayComplete"

.field public static final UPDATE_PLAY_INFO:Ljava/lang/String; = "musicPlayer.service.updatePlayInfo"

.field public static final UPDATE_SEEK_PLAYED_TIME:Ljava/lang/String; = "musicPlayer.service.updateSeekPlayedTime"

.field public static final UPDATE_STREAM_BUFFER_STATUS:Ljava/lang/String; = "musicPlayer.service.updateStreamBufferStatus"

.field static final VOLUME_FADEIN:I = 0xc8

.field static final VOLUME_FADEIN_DELAYTIME:I = 0x14

.field protected static mLock:Ljava/lang/Object;


# instance fields
.field private final CHECK_DRM_CALL_INTERNAL_NEXT:I

.field private final CHECK_DRM_CALL_PREPARE_PLAY:I

.field private final CHECK_DRM_SHOW_POPUP:I

.field private final ERROR_FILE_PATH_NULL:I

.field private final MEDIA_ERROR_CURRUPT:I

.field private final MEDIA_ERROR_NOTSUPPORT:I

.field protected asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

.field protected bIsUserAction:Z

.field protected bPlayNextMusic:Z

.field protected drmManager:Lcom/android/music/common/manager/MusicDrmManager;

.field private durationTime:I

.field private ffRewRepeatTime:I

.field protected isEjectSD:Z

.field protected isMediaUnMounted:Z

.field protected lyric:Lcom/android/music/player/service/CorePlayerService$LyricInfo;

.field protected mActivityManager:Landroid/app/ActivityManager;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field mAudioManager:Landroid/media/AudioManager;

.field private mBattScale:I

.field protected final mBinder:Lcom/android/music/player/service/ICorePlayerService$Stub;

.field mBufferPercentage:I

.field protected mCurrentState:I

.field private mDuringCallToast:Landroid/widget/Toast;

.field protected mErrorCount:I

.field protected mErrorTostCheck:Ljava/lang/Runnable;

.field private mFileNotExistToast:Landroid/widget/Toast;

.field private mFrom:Ljava/lang/String;

.field final mHandler:Landroid/os/Handler;

.field private final mHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mHeadsetToast:Ljava/lang/Runnable;

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsError:Z

.field mIsLiveStream:Z

.field protected mIsPrepareRequested:Z

.field mIsSeekable:Z

.field protected mIsShowErrorTost:Z

.field protected mIsStopRequested:Z

.field protected mLibraryMediaPlayerCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected mMediaFilePath:Ljava/lang/String;

.field mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field protected mMediaUri:Landroid/net/Uri;

.field mMusicDB:Lcom/android/music/common/data/MusicDB;

.field private mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

.field protected mNextPlay:Ljava/lang/Runnable;

.field protected mNotiManager:Landroid/app/NotificationManager;

.field protected mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field protected mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field protected mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field protected mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mPausedByTransientLossOfFocus:Z

.field protected mPrevPlay:Ljava/lang/Runnable;

.field protected mRecentlyUri:Landroid/net/Uri;

.field mResumeAfterCall:Z

.field mStartPlay:Z

.field protected final mSystemReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mWasPlaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/music/player/service/CorePlayerService;->mLock:Ljava/lang/Object;

    .line 231
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/music/player/service/CorePlayerService;->SKIP_TIME:[I

    return-void

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
    .locals 5

    .prologue
    const/16 v4, -0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 103
    iput-boolean v1, p0, Lcom/android/music/player/service/CorePlayerService;->mResumeAfterCall:Z

    .line 113
    iput-boolean v1, p0, Lcom/android/music/player/service/CorePlayerService;->mIsLiveStream:Z

    .line 114
    iput-boolean v1, p0, Lcom/android/music/player/service/CorePlayerService;->mStartPlay:Z

    .line 115
    iput-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    .line 208
    iput-boolean v1, p0, Lcom/android/music/player/service/CorePlayerService;->mWasPlaying:Z

    .line 209
    iput-boolean v1, p0, Lcom/android/music/player/service/CorePlayerService;->isMediaUnMounted:Z

    .line 210
    iput-boolean v1, p0, Lcom/android/music/player/service/CorePlayerService;->isEjectSD:Z

    .line 230
    iput v1, p0, Lcom/android/music/player/service/CorePlayerService;->ffRewRepeatTime:I

    .line 233
    iput v4, p0, Lcom/android/music/player/service/CorePlayerService;->ERROR_FILE_PATH_NULL:I

    .line 234
    iput v1, p0, Lcom/android/music/player/service/CorePlayerService;->CHECK_DRM_CALL_PREPARE_PLAY:I

    .line 235
    iput v3, p0, Lcom/android/music/player/service/CorePlayerService;->CHECK_DRM_CALL_INTERNAL_NEXT:I

    .line 236
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService;->CHECK_DRM_SHOW_POPUP:I

    .line 238
    const/4 v0, -0x4

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService;->MEDIA_ERROR_NOTSUPPORT:I

    .line 239
    iput v4, p0, Lcom/android/music/player/service/CorePlayerService;->MEDIA_ERROR_CURRUPT:I

    .line 244
    iput-boolean v3, p0, Lcom/android/music/player/service/CorePlayerService;->mIsSeekable:Z

    .line 247
    iput-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mRecentlyUri:Landroid/net/Uri;

    .line 251
    iput-boolean v1, p0, Lcom/android/music/player/service/CorePlayerService;->mIsError:Z

    .line 252
    iput-boolean v1, p0, Lcom/android/music/player/service/CorePlayerService;->mIsPrepareRequested:Z

    .line 253
    iput-boolean v1, p0, Lcom/android/music/player/service/CorePlayerService;->mIsStopRequested:Z

    .line 254
    iput-boolean v1, p0, Lcom/android/music/player/service/CorePlayerService;->mIsShowErrorTost:Z

    .line 255
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    .line 256
    iput v3, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 259
    iput-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    .line 260
    iput-boolean v1, p0, Lcom/android/music/player/service/CorePlayerService;->bIsUserAction:Z

    .line 261
    iput-boolean v3, p0, Lcom/android/music/player/service/CorePlayerService;->bPlayNextMusic:Z

    .line 265
    iput-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaUri:Landroid/net/Uri;

    .line 266
    iput-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaFilePath:Ljava/lang/String;

    .line 268
    iput-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->lyric:Lcom/android/music/player/service/CorePlayerService$LyricInfo;

    .line 270
    iput-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiManager:Landroid/app/NotificationManager;

    .line 276
    iput-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 282
    iput v1, p0, Lcom/android/music/player/service/CorePlayerService;->durationTime:I

    .line 283
    iput-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mDuringCallToast:Landroid/widget/Toast;

    .line 284
    iput-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mFileNotExistToast:Landroid/widget/Toast;

    .line 286
    iput-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 288
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService;->mBattScale:I

    .line 294
    iput-boolean v1, p0, Lcom/android/music/player/service/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    .line 468
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$1;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$1;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 578
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$2;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$2;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 613
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$3;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$3;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    .line 804
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$4;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$4;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    .line 970
    iput-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mFrom:Ljava/lang/String;

    .line 1030
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$5;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$5;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1291
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$6;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$6;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1402
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$7;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$7;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mBinder:Lcom/android/music/player/service/ICorePlayerService$Stub;

    .line 3214
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$8;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$8;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mLibraryMediaPlayerCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 3257
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$9;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$9;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 3330
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$10;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$10;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 3343
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$11;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$11;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 3535
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$12;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$12;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 3544
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$13;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$13;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorTostCheck:Ljava/lang/Runnable;

    .line 3551
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$14;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$14;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Ljava/lang/Runnable;

    .line 3579
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$15;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$15;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPrevPlay:Ljava/lang/Runnable;

    .line 3908
    new-instance v0, Lcom/android/music/player/service/CorePlayerService$16;

    invoke-direct {v0, p0}, Lcom/android/music/player/service/CorePlayerService$16;-><init>(Lcom/android/music/player/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mHeadsetToast:Ljava/lang/Runnable;

    .line 3917
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/player/service/CorePlayerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService;->stopPlay()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/music/player/service/CorePlayerService;Landroid/net/Uri;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/music/player/service/CorePlayerService;->checkDrmRight(Landroid/net/Uri;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/music/player/service/CorePlayerService;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mFileNotExistToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/music/player/service/CorePlayerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/music/player/service/CorePlayerService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mHeadsetToast:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/player/service/CorePlayerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/music/player/service/CorePlayerService;->mBattScale:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/music/player/service/CorePlayerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/music/player/service/CorePlayerService;->mBattScale:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/music/player/service/CorePlayerService;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/player/service/CorePlayerService;->queueUpdate(IJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/music/player/service/CorePlayerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService;->openCurrent()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/music/player/service/CorePlayerService;Ljava/lang/String;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/music/player/service/CorePlayerService;->checkDrmRight(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/music/player/service/CorePlayerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/music/player/service/CorePlayerService;->durationTime:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/music/player/service/CorePlayerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/music/player/service/CorePlayerService;->durationTime:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/music/player/service/CorePlayerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/music/player/service/CorePlayerService;->ffRewRepeatTime:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/music/player/service/CorePlayerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/music/player/service/CorePlayerService;->ffRewRepeatTime:I

    return p1
.end method

.method static synthetic access$708(Lcom/android/music/player/service/CorePlayerService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/music/player/service/CorePlayerService;->ffRewRepeatTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/music/player/service/CorePlayerService;->ffRewRepeatTime:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/music/player/service/CorePlayerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/music/player/service/CorePlayerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/music/player/service/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/music/player/service/CorePlayerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService;->setEq()V

    return-void
.end method

.method private batteryChargingblock_clear(Z)V
    .locals 13
    .parameter "value"

    .prologue
    const-string v11, "/sys/class/power_supply/battery/chargingblock_clear"

    .line 3931
    const/4 v3, 0x0

    .line 3932
    .local v3, fw:Ljava/io/FileWriter;
    const/4 v1, 0x0

    .line 3933
    .local v1, fr:Ljava/io/FileReader;
    const/4 v9, 0x0

    .line 3934
    .local v9, out:Ljava/io/BufferedWriter;
    const/4 v6, 0x0

    .line 3938
    .local v6, in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v11, "/sys/class/power_supply/battery/chargingblock_clear"

    invoke-direct {v2, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3939
    .end local v1           #fr:Ljava/io/FileReader;
    .local v2, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 3940
    .end local v6           #in:Ljava/io/BufferedReader;
    .local v7, in:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 3941
    .local v8, line:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 3942
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3943
    .local v5, icb:I
    if-eqz p1, :cond_3

    .line 3944
    or-int/lit8 v5, v5, 0x4

    .line 3949
    :goto_0
    new-instance v4, Ljava/io/FileWriter;

    const-string v11, "/sys/class/power_supply/battery/chargingblock_clear"

    const/4 v12, 0x0

    invoke-direct {v4, v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 3950
    .end local v3           #fw:Ljava/io/FileWriter;
    .local v4, fw:Ljava/io/FileWriter;
    :try_start_3
    new-instance v10, Ljava/io/BufferedWriter;

    invoke-direct {v10, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 3951
    .end local v9           #out:Ljava/io/BufferedWriter;
    .local v10, out:Ljava/io/BufferedWriter;
    :try_start_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    .line 3956
    if-eqz v7, :cond_0

    .line 3957
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 3962
    :cond_0
    :goto_1
    if-eqz v10, :cond_1

    .line 3963
    :try_start_6
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_1
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

    .line 3968
    .end local v4           #fw:Ljava/io/FileWriter;
    .end local v5           #icb:I
    .end local v8           #line:Ljava/lang/String;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :cond_2
    :goto_2
    return-void

    .line 3947
    .end local v1           #fr:Ljava/io/FileReader;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v5       #icb:I
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v8       #line:Ljava/lang/String;
    :cond_3
    and-int/lit8 v5, v5, -0x5

    goto :goto_0

    .line 3958
    .end local v3           #fw:Ljava/io/FileWriter;
    .end local v9           #out:Ljava/io/BufferedWriter;
    .restart local v4       #fw:Ljava/io/FileWriter;
    .restart local v10       #out:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 3959
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3964
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 3965
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

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

    .line 3967
    .end local v4           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    goto :goto_2

    .line 3952
    .end local v0           #ex:Ljava/io/IOException;
    .end local v5           #icb:I
    .end local v8           #line:Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 3956
    :goto_3
    if-eqz v6, :cond_4

    .line 3957
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 3962
    :cond_4
    :goto_4
    if-eqz v9, :cond_2

    .line 3963
    :try_start_8
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 3964
    :catch_3
    move-exception v0

    .line 3965
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3958
    .end local v0           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 3959
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 3955
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 3956
    :goto_5
    if-eqz v6, :cond_5

    .line 3957
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 3962
    :cond_5
    :goto_6
    if-eqz v9, :cond_6

    .line 3963
    :try_start_a
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 3966
    :cond_6
    :goto_7
    throw v11

    .line 3958
    :catch_5
    move-exception v0

    .line 3959
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 3964
    .end local v0           #ex:Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 3965
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 3955
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v11

    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    goto :goto_5

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v7       #in:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    goto :goto_5

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v3           #fw:Ljava/io/FileWriter;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileWriter;
    .restart local v5       #icb:I
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v8       #line:Ljava/lang/String;
    :catchall_3
    move-exception v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    goto :goto_5

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v3           #fw:Ljava/io/FileWriter;
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v9           #out:Ljava/io/BufferedWriter;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileWriter;
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v10       #out:Ljava/io/BufferedWriter;
    :catchall_4
    move-exception v11

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
    goto :goto_5

    .line 3952
    .end local v1           #fr:Ljava/io/FileReader;
    .end local v5           #icb:I
    .end local v8           #line:Ljava/lang/String;
    .restart local v2       #fr:Ljava/io/FileReader;
    :catch_7
    move-exception v11

    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v7       #in:Ljava/io/BufferedReader;
    :catch_8
    move-exception v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v3           #fw:Ljava/io/FileWriter;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileWriter;
    .restart local v5       #icb:I
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v8       #line:Ljava/lang/String;
    :catch_9
    move-exception v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    goto :goto_3

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v3           #fw:Ljava/io/FileWriter;
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v9           #out:Ljava/io/BufferedWriter;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileWriter;
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v10       #out:Ljava/io/BufferedWriter;
    :catch_a
    move-exception v11

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
    goto :goto_3
.end method

.method private checkDrmRight(Landroid/net/Uri;Z)I
    .locals 8
    .parameter "uri"
    .parameter "showPopup"

    .prologue
    const/16 v7, -0xa

    const/4 v6, 0x0

    const v5, 0x7f0a0043

    .line 3782
    const/4 v0, 0x0

    .line 3784
    .local v0, filePath:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 3785
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "checkDrmRight(uri==null)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mFileNotExistToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 3787
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mFileNotExistToast:Landroid/widget/Toast;

    .line 3790
    :goto_0
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mFileNotExistToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v7

    .line 3814
    :goto_1
    return v1

    .line 3789
    :cond_0
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mFileNotExistToast:Landroid/widget/Toast;

    invoke-virtual {v1, v5}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0

    .line 3794
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3795
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "checkDrmRight(%s):uri startsWith file://"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3796
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3797
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3802
    :goto_2
    if-nez v0, :cond_4

    .line 3803
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "checkDrmRight(filePath==null)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3804
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mFileNotExistToast:Landroid/widget/Toast;

    if-nez v1, :cond_3

    .line 3805
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mFileNotExistToast:Landroid/widget/Toast;

    .line 3809
    :goto_3
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mFileNotExistToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v7

    .line 3811
    goto :goto_1

    .line 3799
    :cond_2
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v1, p1}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 3807
    :cond_3
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mFileNotExistToast:Landroid/widget/Toast;

    invoke-virtual {v1, v5}, Landroid/widget/Toast;->setText(I)V

    goto :goto_3

    .line 3814
    :cond_4
    invoke-direct {p0, v0, p1, p2}, Lcom/android/music/player/service/CorePlayerService;->checkDrmRight(Ljava/lang/String;Landroid/net/Uri;Z)I

    move-result v1

    goto :goto_1
.end method

.method private checkDrmRight(Ljava/lang/String;Landroid/net/Uri;Z)I
    .locals 11
    .parameter "filePath"
    .parameter "uri"
    .parameter "showPopup"

    .prologue
    .line 3720
    sget-object v6, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v7, "checkDrmRight(%s,%s,%s) is called"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_0
    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3722
    const/4 v4, -0x1

    .line 3723
    .local v4, result:I
    const/4 v3, -0x1

    .line 3724
    .local v3, popupType:I
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 3725
    .local v2, popupStrings:[I
    const/4 v6, 0x2

    new-array v5, v6, [Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    .line 3728
    .local v5, softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    :try_start_0
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    invoke-virtual {v6, p1}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 3729
    if-nez p3, :cond_2

    .line 3730
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    invoke-virtual {v6}, Lcom/android/music/common/manager/MusicDrmManager;->IsValidFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3731
    const/4 v4, 0x0

    .line 3777
    :goto_1
    return v4

    .line 3720
    .end local v2           #popupStrings:[I
    .end local v3           #popupType:I
    .end local v4           #result:I
    .end local v5           #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 3733
    .restart local v2       #popupStrings:[I
    .restart local v3       #popupType:I
    .restart local v4       #result:I
    .restart local v5       #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 3736
    :cond_2
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2, v5}, Lcom/android/music/common/manager/MusicDrmManager;->getDrmPopup(Z[I[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;)I

    move-result v3

    .line 3739
    const/16 v6, 0xa

    if-ne v3, v6, :cond_3

    .line 3740
    const/4 v4, 0x1

    goto :goto_1

    .line 3741
    :cond_3
    if-nez v3, :cond_4

    .line 3742
    const/4 v4, 0x0

    goto :goto_1

    .line 3744
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/music/common/util/DrmPopupActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3747
    .local v1, popupIntent:Landroid/content/Intent;
    const-string v6, "popup.string"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 3748
    const-string v6, "popup.remain.counts"

    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    invoke-virtual {v7}, Lcom/android/music/common/manager/MusicDrmManager;->getRemainedCounts()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3749
    const-string v6, "popup.type"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3751
    if-eqz p2, :cond_5

    .line 3752
    const-string v6, "popup.uri"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3753
    :cond_5
    const-string v6, "popup.filepath"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3755
    const-string v6, "popup.from"

    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v7}, Lcom/android/music/player/data/MusicPlayerController;->getLaunchMode()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3756
    const/high16 v6, 0x4000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3757
    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3758
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/CorePlayerService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3760
    const/4 v4, 0x2

    .line 3761
    goto :goto_1

    .line 3764
    .end local v1           #popupIntent:Landroid/content/Intent;
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 3765
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 3766
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 3768
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mFileNotExistToast:Landroid/widget/Toast;

    if-nez v6, :cond_7

    .line 3769
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0043

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mFileNotExistToast:Landroid/widget/Toast;

    .line 3772
    :goto_2
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mFileNotExistToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 3774
    const/16 v4, -0xa

    goto :goto_1

    .line 3771
    :cond_7
    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mFileNotExistToast:Landroid/widget/Toast;

    const v7, 0x7f0a0043

    invoke-virtual {v6, v7}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2
.end method

.method private checkDrmRight(Ljava/lang/String;Z)I
    .locals 5
    .parameter "filePath"
    .parameter "showPopup"

    .prologue
    const v4, 0x7f0a0043

    .line 3819
    if-nez p1, :cond_1

    .line 3820
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "checkDrmRight(filePath==null)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3821
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mFileNotExistToast:Landroid/widget/Toast;

    if-nez v2, :cond_0

    .line 3822
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mFileNotExistToast:Landroid/widget/Toast;

    .line 3826
    :goto_0
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mFileNotExistToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3828
    const/16 v2, -0xa

    .line 3845
    :goto_1
    return v2

    .line 3824
    :cond_0
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mFileNotExistToast:Landroid/widget/Toast;

    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0

    .line 3831
    :cond_1
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v2, p1}, Lcom/android/music/common/data/MusicDB;->getFileId(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 3832
    .local v0, id:I
    const/4 v1, 0x0

    .line 3834
    .local v1, uri:Landroid/net/Uri;
    if-ltz v0, :cond_2

    .line 3836
    const-string v2, "/system/media"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3837
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3845
    :cond_2
    :goto_2
    invoke-direct {p0, p1, v1, p2}, Lcom/android/music/player/service/CorePlayerService;->checkDrmRight(Ljava/lang/String;Landroid/net/Uri;Z)I

    move-result v2

    goto :goto_1

    .line 3840
    :cond_3
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_2
.end method

.method public static declared-synchronized drawDone()V
    .locals 4

    .prologue
    .line 2186
    const-class v0, Lcom/android/music/player/service/CorePlayerService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "drawDone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2188
    :try_start_1
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "drawDone() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 2193
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2194
    monitor-exit v0

    return-void

    .line 2193
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2186
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static drawNone()V
    .locals 2

    .prologue
    .line 2197
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "drawNone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    return-void
.end method

.method private getLastPlayedFile()Z
    .locals 13

    .prologue
    .line 3631
    const/4 v9, 0x0

    .line 3632
    .local v9, c:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 3633
    .local v11, filePath:Ljava/lang/String;
    const-wide/16 v7, -0x1

    .line 3636
    .local v7, audioId:J
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 3637
    .local v2, column:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media/external/audio/media?limit=1"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "recently_played != 0 AND is_sound = 0"

    const/4 v4, 0x0

    const-string v5, "recently_played DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3639
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3640
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3641
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3642
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    int-to-long v7, v0

    .line 3669
    :cond_0
    if-eqz v9, :cond_1

    .line 3670
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3673
    .end local v2           #column:[Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastPlayedFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3676
    if-nez v11, :cond_3

    .line 3677
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "getLastPlayedFile(): filepath==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3678
    const/4 v0, 0x0

    .line 3689
    :goto_1
    return v0

    .line 3644
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 3651
    .local v10, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastPlayedFile, SQLiteFullException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3652
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3653
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3654
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3669
    if-eqz v9, :cond_1

    .line 3670
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3656
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v10           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    move-object v10, v0

    .line 3663
    .local v10, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_2
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastPlayedFile, SQLiteDiskIOException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3665
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 3666
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3669
    if-eqz v9, :cond_1

    .line 3670
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3669
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v10           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 3670
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 3682
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-gez v0, :cond_4

    .line 3683
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "getLastPlayedFile() audioId < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 3687
    :cond_4
    new-instance v12, Lcom/android/music/common/data/MpListFilter;

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {v12, v0, v1}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 3688
    .local v12, listFilter:Lcom/android/music/common/data/MpListFilter;
    iget-object v0, v12, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v2, v12, v3, v4, v5}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v2, v0, v1

    .line 3689
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Lcom/android/music/player/data/MusicPlayerController;->initIterator(Landroid/net/Uri;Lcom/android/music/common/data/MpListFilter;)Z

    move-result v0

    goto/16 :goto_1
.end method

.method private openCurrent()V
    .locals 4

    .prologue
    .line 1365
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "openCurrent() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v1}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v0

    .line 1368
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 1369
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCurrent() uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/music/player/service/CorePlayerService;->preparePlay(Landroid/net/Uri;Z)Z

    .line 1372
    :cond_0
    return-void
.end method

.method private queueUpdate(IJ)V
    .locals 1
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 778
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2bc

    if-ne p1, v0, :cond_1

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 783
    return-void
.end method

.method private setEq()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    .line 2560
    sget-object v7, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v8, "setEq() is called"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    const/4 v3, 0x0

    .line 2563
    .local v3, eq:I
    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    .line 2565
    .local v0, bBt:Z
    if-eqz v0, :cond_0

    .line 2566
    invoke-static {}, Lcom/android/music/common/util/R2vsUtil;->getR2vsBTSum()I

    move-result v3

    .line 2571
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/music/player/service/CorePlayerService;->internalSetEq(I)V

    .line 2573
    sget-object v7, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x800

    if-ne v7, v8, :cond_3

    .line 2574
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getCustomEqualizer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2575
    .local v2, customEqString:Ljava/lang/String;
    new-array v1, v9, [I

    .line 2577
    .local v1, customEqArray:[I
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, "|"

    invoke-direct {v5, v2, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2580
    .local v5, strToken:Ljava/util/StringTokenizer;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v9, :cond_2

    .line 2581
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2582
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2583
    .local v6, token:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v4

    .line 2580
    .end local v6           #token:Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2568
    .end local v1           #customEqArray:[I
    .end local v2           #customEqString:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #strToken:Ljava/util/StringTokenizer;
    :cond_0
    invoke-static {}, Lcom/android/music/common/util/R2vsUtil;->getR2vsSum()I

    move-result v3

    goto :goto_0

    .line 2585
    .restart local v1       #customEqArray:[I
    .restart local v2       #customEqString:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v5       #strToken:Ljava/util/StringTokenizer;
    :cond_1
    const/4 v7, 0x3

    aput v7, v1, v4

    goto :goto_2

    .line 2588
    :cond_2
    invoke-virtual {p0, v3, v1}, Lcom/android/music/player/service/CorePlayerService;->internalSetUserEQ(I[I)V

    .line 2590
    .end local v1           #customEqArray:[I
    .end local v2           #customEqString:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #strToken:Ljava/util/StringTokenizer;
    :cond_3
    return-void
.end method

.method private stopPlay()V
    .locals 7

    .prologue
    const/16 v6, 0x384

    const/16 v5, 0xc8

    const/high16 v4, 0x3f80

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3156
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "stopPlay() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 3212
    :goto_0
    return-void

    .line 3160
    :cond_0
    iget-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService;->mIsPrepareRequested:Z

    if-ne v0, v3, :cond_1

    .line 3161
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mIsPrepareRequested == true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    iput-boolean v3, p0, Lcom/android/music/player/service/CorePlayerService;->mIsStopRequested:Z

    goto :goto_0

    .line 3168
    :cond_1
    iput-boolean v2, p0, Lcom/android/music/player/service/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    .line 3179
    iget v0, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 3180
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3181
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mMediaPlayer.stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    const v0, 0x10010

    iput v0, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 3183
    invoke-virtual {p0, v3}, Lcom/android/music/player/service/CorePlayerService;->sendMediaPlayInfo(Z)V

    .line 3186
    :cond_2
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3188
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3189
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 3192
    :cond_3
    iput-boolean v2, p0, Lcom/android/music/player/service/CorePlayerService;->mResumeAfterCall:Z

    .line 3194
    const-string v0, "mp3"

    invoke-static {v0, v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    .line 3195
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3197
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3200
    :cond_4
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3202
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3203
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3205
    :cond_5
    iput-boolean v2, p0, Lcom/android/music/player/service/CorePlayerService;->mWasPlaying:Z

    .line 3206
    invoke-static {v2}, Lcom/android/music/common/util/MusicPlayerUtil;->setIsPlaying(Z)V

    .line 3207
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->hideNotification()V

    .line 3209
    const-string v0, "musicPlayer.service.updatePlayInfo"

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public canStartMediaPlayer()Z
    .locals 3

    .prologue
    .line 1380
    iget v0, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    .line 1383
    const/4 v0, 0x1

    .line 1386
    :goto_0
    return v0

    .line 1385
    :cond_0
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPrepared()[false],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected doFindMediaToPlay()Landroid/net/Uri;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2204
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v4, "doFindMediaToPlay() is called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    const/4 v1, 0x0

    .line 2207
    .local v1, mediaUri:Landroid/net/Uri;
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService;->getLastPlayedFile()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2209
    new-instance v0, Lcom/android/music/common/data/MpListFilter;

    invoke-direct {v0, v6, v6}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 2210
    .local v0, listFilter:Lcom/android/music/common/data/MpListFilter;
    iget-object v3, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v4, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, -0x1

    invoke-direct {v4, v0, v6, v5, v8}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v4, v3, v7

    .line 2212
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v3, v0, v7}, Lcom/android/music/common/data/MusicDB;->getItemContentUri(Lcom/android/music/common/data/MpListFilter;I)Landroid/net/Uri;

    move-result-object v1

    .line 2214
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v3, v1, v0}, Lcom/android/music/player/data/MusicPlayerController;->initIterator(Landroid/net/Uri;Lcom/android/music/common/data/MpListFilter;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2215
    const/4 v1, 0x0

    .line 2216
    :cond_0
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doFindMediaToPlay() mediaUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 2221
    .end local v0           #listFilter:Lcom/android/music/common/data/MpListFilter;
    .end local v1           #mediaUri:Landroid/net/Uri;
    .local v2, mediaUri:Landroid/net/Uri;
    :goto_1
    return-object v2

    .end local v2           #mediaUri:Landroid/net/Uri;
    .restart local v0       #listFilter:Lcom/android/music/common/data/MpListFilter;
    .restart local v1       #mediaUri:Landroid/net/Uri;
    :cond_1
    move-object v5, v8

    .line 2216
    goto :goto_0

    .line 2219
    .end local v0           #listFilter:Lcom/android/music/common/data/MpListFilter;
    :cond_2
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v3}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v1

    move-object v2, v1

    .line 2221
    .end local v1           #mediaUri:Landroid/net/Uri;
    .restart local v2       #mediaUri:Landroid/net/Uri;
    goto :goto_1
.end method

.method protected doSaveNowPlayingMediaInfo(Landroid/net/Uri;)V
    .locals 7
    .parameter "mediaUri"

    .prologue
    const-string v6, "doSaveNowPlayingMediaInfo(mediaUri="

    .line 2225
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doSaveNowPlayingMediaInfo(mediaUri="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v3}, Lcom/android/music/player/data/MusicPlayerController;->getMpListFilter()Lcom/android/music/common/data/MpListFilter;

    move-result-object v1

    .line 2240
    .local v1, mFilter:Lcom/android/music/common/data/MpListFilter;
    if-nez v1, :cond_0

    .line 2241
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v4, "doSaveNowPlayingMediaInfo():mFilter == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    :goto_0
    return-void

    .line 2245
    :cond_0
    iget v2, v1, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 2246
    .local v2, mListType:I
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v3}, Lcom/android/music/player/data/MusicPlayerController;->getCurAudioId()I

    move-result v0

    .line 2248
    .local v0, audio_id:I
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v3}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaFilePath:Ljava/lang/String;

    .line 2270
    if-lez v0, :cond_2

    .line 2271
    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    .line 2272
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v3, v0}, Lcom/android/music/common/data/MusicDB;->updatePlayedTime(I)Z

    .line 2273
    :cond_1
    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 2274
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v3, v0}, Lcom/android/music/common/data/MusicDB;->updatePlayedCount(I)Z

    .line 2278
    :cond_2
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService;->mRecentlyUri:Landroid/net/Uri;

    .line 2280
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doSaveNowPlayingMediaInfo(mediaUri="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : END"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "<unknown>"

    .line 2698
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "getArtistName() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v1}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v0

    .line 2701
    .local v0, mediaUri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 2702
    const-string v1, "<unknown>"

    move-object v1, v3

    .line 2709
    :goto_0
    return-object v1

    .line 2704
    :cond_0
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    iget-boolean v1, v1, Lcom/android/music/common/data/MediaMetadata;->isParsed:Z

    if-eqz v1, :cond_1

    .line 2705
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v1, v1, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    goto :goto_0

    .line 2706
    :cond_1
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    invoke-virtual {v1, p0, v0}, Lcom/android/music/common/data/MediaMetadata;->makeUIDataFromUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2707
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v1, v1, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    goto :goto_0

    .line 2709
    :cond_2
    const-string v1, "<unknown>"

    move-object v1, v3

    goto :goto_0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 3610
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSubRealEQdata([I)V
    .locals 7
    .parameter "value"

    .prologue
    const/16 v6, 0x18

    .line 310
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CorePlayerService:getSubRealEQdata mMediaPlayer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value.length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_2

    .line 313
    array-length v3, p1

    new-array v2, v3, [S

    .line 314
    .local v2, sValue:[S
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 315
    aget v3, p1, v1

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->getRealEQdata([S)V

    .line 326
    const/4 v1, 0x0

    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 328
    aget-short v3, v2, v1

    if-le v3, v6, :cond_1

    .line 329
    const/16 v3, 0x18

    aput v3, p1, v1

    .line 326
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 330
    :cond_1
    aget-short v3, v2, v1

    if-gez v3, :cond_3

    .line 331
    const/4 v3, 0x0

    aput v3, p1, v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 337
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 340
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 353
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v1           #i:I
    .end local v2           #sValue:[S
    :cond_2
    :goto_3
    return-void

    .line 333
    .restart local v1       #i:I
    .restart local v2       #sValue:[S
    :cond_3
    :try_start_1
    aget-short v3, v2, v1

    aput v3, p1, v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 342
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 345
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3

    .line 347
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 350
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const-string v7, "<unknown>"

    .line 2661
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "getTrackName() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v2}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v1

    .line 2666
    .local v1, mediaUri:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 2667
    :try_start_0
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mBinder:Lcom/android/music/player/service/ICorePlayerService$Stub;

    invoke-virtual {v2}, Lcom/android/music/player/service/ICorePlayerService$Stub;->isThereLastPlayedFile()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2668
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    new-instance v3, Lcom/android/music/common/data/MpListFilter;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Lcom/android/music/player/data/MusicPlayerController;->initIterator(Landroid/net/Uri;Lcom/android/music/common/data/MpListFilter;)Z

    move-result v2

    if-ne v2, v6, :cond_0

    .line 2670
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v2}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v1

    .line 2674
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    if-nez v2, :cond_1

    .line 2675
    new-instance v2, Lcom/android/music/common/data/MediaMetadata;

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-direct {v2, v3}, Lcom/android/music/common/data/MediaMetadata;-><init>(Lcom/android/music/common/data/MusicDB;)V

    iput-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2683
    :cond_1
    :goto_1
    if-nez v1, :cond_3

    .line 2684
    const-string v2, "<unknown>"

    move-object v2, v7

    .line 2693
    :goto_2
    return-object v2

    .line 2672
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v2}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2678
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2679
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preparePlay: mediaUri==null & RemoteException occured "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2686
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    invoke-virtual {v2, v1}, Lcom/android/music/common/data/MediaMetadata;->parse(Landroid/net/Uri;)Z

    .line 2688
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    iget-boolean v2, v2, Lcom/android/music/common/data/MediaMetadata;->isParsed:Z

    if-eqz v2, :cond_4

    .line 2689
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v2, v2, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    goto :goto_2

    .line 2690
    :cond_4
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    invoke-virtual {v2, p0, v1}, Lcom/android/music/common/data/MediaMetadata;->makeUIDataFromUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2691
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v2, v2, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    goto :goto_2

    .line 2693
    :cond_5
    const-string v2, "<unknown>"

    move-object v2, v7

    goto :goto_2
.end method

.method protected hideNotification()V
    .locals 3

    .prologue
    .line 2947
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "hideNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2950
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2bc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2952
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_0

    .line 2953
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "CorePlayerService::hideNotification: mNotiManager==null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    :goto_0
    return-void

    .line 2959
    :cond_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 2960
    .local v0, notification:Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 2961
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 2963
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiManager:Landroid/app/NotificationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method internalGetNext(Z)Landroid/net/Uri;
    .locals 1
    .parameter "ignoreRepeatOne"

    .prologue
    .line 2827
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v0, p1}, Lcom/android/music/player/data/MusicPlayerController;->getNext(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method internalGetPrev()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2823
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getPrev()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method internalPlay(Landroid/net/Uri;ZZZ)Z
    .locals 6
    .parameter "mediaUri"
    .parameter "forcePlay"
    .parameter "bShowPopup"
    .parameter "toNext"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2831
    const/4 v0, 0x0

    .line 2832
    .local v0, rc:Z
    const/4 v1, -0x1

    .line 2833
    .local v1, result:I
    iput-boolean v5, p0, Lcom/android/music/player/service/CorePlayerService;->bPlayNextMusic:Z

    .line 2835
    iget v2, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    const v3, 0x10008

    if-ne v2, v3, :cond_0

    .line 2836
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "internalPlay : It is during preparing...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 2872
    :goto_0
    return v2

    .line 2840
    :cond_0
    if-nez p1, :cond_1

    move v2, v0

    .line 2841
    goto :goto_0

    .line 2844
    :cond_1
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    .line 2845
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 2846
    const v2, 0x10010

    iput v2, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 2847
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 2848
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 2849
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaUri:Landroid/net/Uri;

    .line 2852
    :cond_2
    const-string v2, "musicPlayer.service.updateMediaInfo"

    invoke-virtual {p0, v2}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 2853
    invoke-direct {p0, p1, p3}, Lcom/android/music/player/service/CorePlayerService;->checkDrmRight(Landroid/net/Uri;Z)I

    move-result v1

    .line 2855
    if-nez v1, :cond_6

    .line 2856
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "internalPlay():result == CHECK_DRM_CALL_PREPARE_PLAY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    iget-boolean v2, p0, Lcom/android/music/player/service/CorePlayerService;->mWasPlaying:Z

    if-nez v2, :cond_3

    if-eqz p2, :cond_5

    .line 2858
    :cond_3
    invoke-virtual {p0, p1, v4}, Lcom/android/music/player/service/CorePlayerService;->preparePlay(Landroid/net/Uri;Z)Z

    .line 2862
    :goto_1
    const/4 v0, 0x1

    :cond_4
    :goto_2
    move v2, v0

    .line 2872
    goto :goto_0

    .line 2860
    :cond_5
    invoke-virtual {p0, p1, v5}, Lcom/android/music/player/service/CorePlayerService;->preparePlay(Landroid/net/Uri;Z)Z

    goto :goto_1

    .line 2863
    :cond_6
    if-eq v1, v4, :cond_7

    const/16 v2, -0xa

    if-ne v1, v2, :cond_4

    .line 2864
    :cond_7
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "internalPlay():result == CHECK_DRM_CALL_INTERNAL_NEXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    iget v2, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    .line 2866
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    if-eqz p4, :cond_8

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Ljava/lang/Runnable;

    :goto_3
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2867
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    if-eqz p4, :cond_9

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Ljava/lang/Runnable;

    :goto_4
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2869
    const/4 v0, 0x1

    goto :goto_2

    .line 2866
    :cond_8
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mPrevPlay:Ljava/lang/Runnable;

    goto :goto_3

    .line 2867
    :cond_9
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mPrevPlay:Ljava/lang/Runnable;

    goto :goto_4
.end method

.method internalPlayNext(ZZZ)Z
    .locals 7
    .parameter "forcePlay"
    .parameter "ignoreRepeatOne"
    .parameter "bShowPopup"

    .prologue
    const/4 v6, 0x1

    .line 2714
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "internalPlayNext(forcePlay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",ignoreRepeatOne="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    const/4 v1, 0x0

    .line 2717
    .local v1, rc:Z
    const/4 v0, 0x0

    .line 2718
    .local v0, mediaUri:Landroid/net/Uri;
    const/4 v2, -0x1

    .line 2719
    .local v2, result:I
    iput-boolean v6, p0, Lcom/android/music/player/service/CorePlayerService;->bPlayNextMusic:Z

    .line 2722
    iget v3, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    const v4, 0x10008

    if-ne v3, v4, :cond_0

    .line 2723
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v4, "internalPlayNext : It is during preparing...."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 2769
    :goto_0
    return v3

    .line 2727
    :cond_0
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v3, p2}, Lcom/android/music/player/data/MusicPlayerController;->getNext(Z)Landroid/net/Uri;

    move-result-object v0

    .line 2729
    if-nez v0, :cond_1

    move v3, v1

    .line 2730
    goto :goto_0

    .line 2733
    :cond_1
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_2

    .line 2734
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    .line 2735
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v4, "internalPlayNext(),mMediaPlayer.stop()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    const v3, 0x10010

    iput v3, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 2737
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 2738
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v4, "internalPlayNext(),mMediaPlayer.reset()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 2740
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaUri:Landroid/net/Uri;

    .line 2743
    :cond_2
    const-string v3, "musicPlayer.service.updateMediaInfo"

    invoke-virtual {p0, v3}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 2744
    invoke-direct {p0, v0, p3}, Lcom/android/music/player/service/CorePlayerService;->checkDrmRight(Landroid/net/Uri;Z)I

    move-result v2

    .line 2746
    if-nez v2, :cond_6

    .line 2747
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v4, "internalPlayNext():result == CHECK_DRM_CALL_PREPARE_PLAY"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    iget-boolean v3, p0, Lcom/android/music/player/service/CorePlayerService;->mWasPlaying:Z

    if-nez v3, :cond_3

    if-eqz p1, :cond_5

    .line 2752
    :cond_3
    invoke-virtual {p0, v0, v6}, Lcom/android/music/player/service/CorePlayerService;->preparePlay(Landroid/net/Uri;Z)Z

    .line 2757
    :goto_1
    const/4 v1, 0x1

    :cond_4
    :goto_2
    move v3, v1

    .line 2769
    goto :goto_0

    .line 2755
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/music/player/service/CorePlayerService;->preparePlay(Landroid/net/Uri;Z)Z

    goto :goto_1

    .line 2758
    :cond_6
    if-eq v2, v6, :cond_7

    const/16 v3, -0xa

    if-ne v2, v3, :cond_4

    .line 2759
    :cond_7
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v4, "internalPlayNext():result == CHECK_DRM_CALL_INTERNAL_NEXT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    iget v3, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    sub-int/2addr v3, v6

    iput v3, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    .line 2763
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2764
    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2766
    const/4 v1, 0x1

    goto :goto_2
.end method

.method internalPlayPrev(ZZ)V
    .locals 7
    .parameter "ignoreRepeatOne"
    .parameter "bShowPopup"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2773
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "internalPlayPrev(ignoreRepeatOne="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    const/4 v1, -0x1

    .line 2775
    .local v1, result:I
    iput-boolean v6, p0, Lcom/android/music/player/service/CorePlayerService;->bPlayNextMusic:Z

    .line 2780
    iget v2, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    const v3, 0x10008

    if-ne v2, v3, :cond_1

    .line 2781
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "internalPlayPrev : It is during preparing...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    :cond_0
    :goto_0
    return-void

    .line 2785
    :cond_1
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v2}, Lcom/android/music/player/data/MusicPlayerController;->getPrev()Landroid/net/Uri;

    move-result-object v0

    .line 2787
    .local v0, mediaUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 2791
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    .line 2792
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 2793
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "internalPlayPrev(),mMediaPlayer.stop()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    const v2, 0x10010

    iput v2, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 2795
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 2796
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "internalPlayPrev(),mMediaPlayer.reset()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 2798
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaUri:Landroid/net/Uri;

    .line 2801
    :cond_2
    const-string v2, "musicPlayer.service.updateMediaInfo"

    invoke-virtual {p0, v2}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 2802
    invoke-direct {p0, v0, p2}, Lcom/android/music/player/service/CorePlayerService;->checkDrmRight(Landroid/net/Uri;Z)I

    move-result v1

    .line 2804
    if-nez v1, :cond_4

    .line 2805
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "internalPlayPrev():result == CHECK_DRM_CALL_PREPARE_PLAY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    iget-boolean v2, p0, Lcom/android/music/player/service/CorePlayerService;->mWasPlaying:Z

    if-eqz v2, :cond_3

    .line 2808
    invoke-virtual {p0, v0, v5}, Lcom/android/music/player/service/CorePlayerService;->preparePlay(Landroid/net/Uri;Z)Z

    goto :goto_0

    .line 2810
    :cond_3
    invoke-virtual {p0, v0, v6}, Lcom/android/music/player/service/CorePlayerService;->preparePlay(Landroid/net/Uri;Z)Z

    goto :goto_0

    .line 2812
    :cond_4
    if-eq v1, v5, :cond_5

    const/16 v2, -0xa

    if-ne v1, v2, :cond_0

    .line 2813
    :cond_5
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "internalPlayPrev():result == CHECK_DRM_CALL_INTERNAL_NEXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    iget v2, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/android/music/player/service/CorePlayerService;->mErrorCount:I

    .line 2817
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mPrevPlay:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2818
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mPrevPlay:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method internalSetEq(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const-string v4, "CorePlayerService"

    .line 2594
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalSetEq(mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    :try_start_0
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v1}, Lcom/android/music/player/data/MusicPlayerController;->getLaunchMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2599
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setR2VSMode(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2618
    :cond_0
    :goto_0
    return-void

    .line 2600
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2601
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2602
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 2603
    const-string v1, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException occured 1 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2605
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 2606
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2607
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2608
    const-string v1, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException occured 2 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2610
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 2611
    .local v0, e:Ljava/io/IOException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2612
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2613
    const-string v1, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException occured 3 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method internalSetUserEQ(I[I)V
    .locals 5
    .parameter "mode"
    .parameter "eq"

    .prologue
    const-string v4, "CorePlayerService"

    .line 2622
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalSetUserEQ(mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    :try_start_0
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v1}, Lcom/android/music/player/data/MusicPlayerController;->getLaunchMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2627
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaPlayer;->setR2VSUserEQ(I[I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2646
    :cond_0
    :goto_0
    return-void

    .line 2628
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2629
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2630
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 2631
    const-string v1, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException occured 4 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2633
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 2634
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2635
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2636
    const-string v1, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException occured 5 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2638
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 2639
    .local v0, e:Ljava/io/IOException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2640
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2641
    const-string v1, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException occured 6 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isInternalStop()Z
    .locals 2

    .prologue
    .line 1391
    iget v0, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    const v1, 0x11020

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    const v1, 0x11040

    if-ne v0, v1, :cond_1

    .line 1393
    :cond_0
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "isInternalStop()[false]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    const/4 v0, 0x0

    .line 1397
    :goto_0
    return v0

    .line 1396
    :cond_1
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "isInternalStop()[true]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 4

    .prologue
    .line 2649
    const/4 v0, 0x0

    .line 2651
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 2652
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 2655
    :cond_0
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlaying()["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    return v0
.end method

.method protected loadPreferences()V
    .locals 4

    .prologue
    .line 1327
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "loadPreferences() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getShuffle(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/music/player/data/MusicPlayerController;->setShuffle(Z)V

    .line 1335
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getRepeat(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->setRepeatMode(I)V

    .line 1337
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v1, 0x0

    sget-object v2, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mappingMenuArray:[I

    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getEqualizer(Landroid/content/Context;)I

    move-result v3

    aget v2, v2, v3

    aput v2, v0, v1

    .line 1339
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v1, 0x1

    sget-object v2, Lcom/android/music/common/settings/MusicSettingsEffect;->mappingMenuArray:[I

    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getEffect(Landroid/content/Context;)I

    move-result v3

    aget v2, v2, v3

    aput v2, v0, v1

    .line 1341
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v1, 0x2

    const/high16 v2, 0x40

    aput v2, v0, v1

    .line 1342
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v1, 0x3

    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getVisualization(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x100

    :goto_0
    aput v2, v0, v1

    .line 1346
    return-void

    .line 1342
    :cond_0
    const/high16 v2, 0x80

    goto :goto_0
.end method

.method protected notifyBroadcast(Ljava/lang/String;)V
    .locals 4
    .parameter "action"

    .prologue
    .line 301
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyBroadcast("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 307
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "arg"

    .prologue
    .line 1375
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "onBind() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mBinder:Lcom/android/music/player/service/ICorePlayerService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 355
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 357
    sget-object v5, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v6, "onCreate() called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 360
    iput v10, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 361
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 363
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    if-nez v5, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    .line 367
    :cond_0
    new-instance v5, Lcom/android/music/common/manager/MusicDrmManager;

    invoke-direct {v5}, Lcom/android/music/common/manager/MusicDrmManager;-><init>()V

    iput-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    .line 368
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 369
    .local v4, powermanager:Landroid/os/PowerManager;
    const-string v5, "MusicPlayer-Sleep"

    invoke-virtual {v4, v9, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 371
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 373
    new-instance v5, Lcom/android/music/player/data/MusicPlayerController;

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/music/player/data/MusicPlayerController;-><init>(Lcom/android/music/common/data/MusicDB;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    .line 374
    sput-boolean v8, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    .line 376
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    .line 377
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, -0x1

    invoke-virtual {v5, v8, v10, v6}, Landroid/media/AudioManager;->setRouting(III)V

    .line 379
    new-instance v5, Lcom/android/music/common/data/MediaMetadata;

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-direct {v5, v6}, Lcom/android/music/common/data/MediaMetadata;-><init>(Lcom/android/music/common/data/MusicDB;)V

    iput-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    .line 381
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    iput-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 384
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->registerCmdReceiver()V

    .line 395
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 397
    .local v1, intentMediaStateFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const-string v5, "file"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 400
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/android/music/player/service/CorePlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 402
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 403
    .local v0, intentHeadSetFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/android/music/player/service/CorePlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 407
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 408
    .local v2, intentSystemFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/android/music/player/service/CorePlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 421
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->loadPreferences()V

    .line 428
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 429
    .local v3, notiManager:Landroid/app/NotificationManager;
    invoke-virtual {v3, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 445
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1233
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService;->stopPlay()V

    .line 1236
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1239
    iput v3, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 1240
    iput-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1248
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->savePreferences()V

    .line 1249
    iput-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    .line 1250
    iput-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    .line 1252
    const-string v0, "mp3"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    .line 1253
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1254
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1257
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 1258
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->asyncHeadsetTask:Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;

    invoke-virtual {v0, v3}, Lcom/android/music/player/service/CorePlayerService$UnpluggedHeadsetTask;->cancel(Z)Z

    .line 1262
    :cond_2
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mHeadsetToast:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1263
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1264
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mPrevPlay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1265
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1266
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1269
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1270
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1271
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1272
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1286
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1287
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1288
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    const-string v3, "KEY_FROM_BLUETOOTH_RECEIVER"

    .line 990
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart(startId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadphoneOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 993
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    .line 997
    :goto_0
    if-eqz p1, :cond_1

    .line 998
    const-string v0, "KEY_FROM_BLUETOOTH_RECEIVER"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mFrom:Ljava/lang/String;

    .line 1002
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mFrom:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "KEY_FROM_BLUETOOTH_RECEIVER"

    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mFrom:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1025
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/music/player/service/CorePlayerService;->procCommndIntent(Landroid/content/Intent;)V

    .line 1026
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 1028
    return-void

    .line 995
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    goto :goto_0
.end method

.method public pauseAnotherPlay()V
    .locals 5

    .prologue
    .line 3697
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "pauseAnotherPlay() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3700
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3701
    const-string v1, "from"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3702
    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3704
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 3707
    return-void
.end method

.method pausePlay(Z)V
    .locals 8
    .parameter "isRemainNotification"

    .prologue
    const v7, 0x11040

    const/16 v6, 0xc8

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 3085
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pausePlay(isRemainNotification="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 3087
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "pausePlay() : mMediaPlayer==null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    :goto_0
    return-void

    .line 3091
    :cond_0
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3093
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3094
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 3097
    :cond_1
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3098
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "pausePlay() : stop or paused"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3102
    :cond_2
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3104
    iget v1, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    const v2, 0x11020

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    if-ne v1, v7, :cond_4

    .line 3105
    :cond_3
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 3106
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "pausePlay() : mMediaPlayer.pause()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    iput v7, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 3110
    :cond_4
    const-string v1, "mp3"

    invoke-static {v1, v4}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    .line 3111
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3113
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3121
    :cond_5
    if-eqz p1, :cond_7

    .line 3123
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 3125
    .local v0, rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicPlayer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3127
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->showNotification()V

    .line 3133
    const/16 v1, 0x2bc

    const-wide/32 v2, 0x1d4c0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/music/player/service/CorePlayerService;->queueUpdate(IJ)V

    .line 3140
    .end local v0           #rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_6
    :goto_1
    iput-boolean v4, p0, Lcom/android/music/player/service/CorePlayerService;->mWasPlaying:Z

    .line 3141
    invoke-static {v4}, Lcom/android/music/common/util/MusicPlayerUtil;->setIsPlaying(Z)V

    .line 3143
    invoke-virtual {p0, v4}, Lcom/android/music/player/service/CorePlayerService;->sendMediaPlayInfo(Z)V

    .line 3144
    const-string v1, "musicPlayer.service.updateMediaInfo"

    invoke-virtual {p0, v1}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3145
    const-string v1, "musicPlayer.service.updatePlayInfo"

    invoke-virtual {p0, v1}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3151
    invoke-direct {p0, v4}, Lcom/android/music/player/service/CorePlayerService;->batteryChargingblock_clear(Z)V

    goto/16 :goto_0

    .line 3137
    :cond_7
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->hideNotification()V

    goto :goto_1
.end method

.method public preparePlay(Landroid/net/Uri;Z)Z
    .locals 18
    .parameter "mediaUri"
    .parameter "bPlay"

    .prologue
    .line 2315
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preparePlay(mediaUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",bPlay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    const v12, 0x7f0a0041

    .line 2318
    .local v12, errorMessageResId:I
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/music/common/util/MusicPlayerUtil;->setShowPrepare(Z)V

    .line 2319
    const-string v3, "musicPlayer.service.prepare.hide"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 2321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object v15, v0

    .line 2323
    .local v15, mediaPlayer:Landroid/media/MediaPlayer;
    if-nez p1, :cond_0

    .line 2324
    const/4 v3, 0x0

    .line 2555
    :goto_0
    return v3

    .line 2326
    :cond_0
    if-nez v15, :cond_1

    .line 2327
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v4, "preparePlay: mediaPlayer==null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    const/4 v3, 0x0

    goto :goto_0

    .line 2331
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    move v3, v0

    const v4, 0x10008

    if-ne v3, v4, :cond_2

    .line 2332
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v4, "preparePlay: mCurrentState == MEDIA_PLAYER_PREPARING"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    const/4 v3, 0x0

    goto :goto_0

    .line 2339
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/player/service/CorePlayerService;->mMediaUri:Landroid/net/Uri;

    .line 2341
    invoke-static/range {p1 .. p1}, Lcom/android/music/common/util/UriUtil;->getType(Landroid/net/Uri;)I

    move-result v17

    .line 2342
    .local v17, type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object v3, v0

    const/4 v4, 0x1

    move-object v0, v3

    move-object/from16 v1, p0

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 2343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    move-object v3, v0

    invoke-virtual {v15, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-object v3, v0

    invoke-virtual {v15, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 2345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    move-object v3, v0

    invoke-virtual {v15, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    move-object v3, v0

    invoke-virtual {v15, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 2348
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/player/service/CorePlayerService;->mIsSeekable:Z

    .line 2350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    move-object v14, v0

    .line 2354
    .local v14, handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mNextPlay:Ljava/lang/Runnable;

    move-object v3, v0

    invoke-virtual {v14, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mPrevPlay:Ljava/lang/Runnable;

    move-object v3, v0

    invoke-virtual {v14, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2358
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/player/service/CorePlayerService;->pauseAnotherPlay()V

    .line 2359
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/player/service/CorePlayerService;->stopAnotherPlay()V

    .line 2361
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preparePlay(): mediaUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/player/service/CorePlayerService;->mStartPlay:Z

    .line 2364
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2365
    invoke-virtual {v15}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2366
    invoke-virtual {v15}, Landroid/media/MediaPlayer;->stop()V

    .line 2367
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v4, "mediaPlayer.stop()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    const v3, 0x10010

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 2370
    :cond_3
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v4, "preparePlay(): isPlaying()->stop()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    invoke-virtual {v15}, Landroid/media/MediaPlayer;->reset()V

    .line 2372
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v4, "preparePlay(): reset()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    const/4 v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 2382
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/player/service/CorePlayerService;->lyric:Lcom/android/music/player/service/CorePlayerService$LyricInfo;

    .line 2384
    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2385
    const/4 v3, 0x4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 2386
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v4, "preparePlay(): setDataSource()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->sendMediaPlayInfo(Z)V

    .line 2390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/16 v4, 0x384

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/16 v4, 0x384

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2393
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/16 v4, 0x384

    const-wide/16 v5, 0x4e20

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2395
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/player/service/CorePlayerService;->mIsPrepareRequested:Z

    .line 2397
    const-string v3, "---"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepare uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    const/4 v3, -0x1

    move/from16 v0, v17

    move v1, v3

    if-ne v0, v1, :cond_9

    .line 2399
    const-string v3, "musicPlayer.service.prepare.show"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 2400
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/music/common/util/MusicPlayerUtil;->setShowPrepare(Z)V

    .line 2401
    invoke-virtual {v15}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 2402
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v4, "mediaPlayer.prepareAsync()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    const v3, 0x10008

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 2414
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/music/player/data/MusicPlayerController;->setCurrentMedia(Landroid/net/Uri;)V

    .line 2416
    sget-object v3, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v4, 0x0

    aget v3, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v3, :cond_8

    .line 2417
    const/4 v13, 0x1

    .line 2419
    .local v13, genre:I
    const/16 v16, 0x0

    .line 2424
    .local v16, strGenre:Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/player/service/CorePlayerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mMediaUri:Landroid/net/Uri;

    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "genre_name"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2426
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 2428
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2429
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2432
    :cond_5
    if-eqz v10, :cond_6

    .line 2433
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 2467
    .end local v10           #c:Landroid/database/Cursor;
    :cond_6
    :goto_2
    if-eqz v16, :cond_7

    .line 2468
    :try_start_2
    invoke-static/range {v16 .. v16}, Lcom/android/music/common/util/R2vsUtil;->getEqDefined(Ljava/lang/String;)I

    move-result v13

    .line 2470
    :cond_7
    sput v13, Lcom/android/music/common/util/R2vsUtil;->autoeq_genre:I

    .line 2471
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "R2VS_MODE_AUTO, genre :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 2500
    .end local v13           #genre:I
    .end local v16           #strGenre:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mLibraryMediaPlayerCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    move-object v3, v0

    invoke-virtual {v15, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2553
    :goto_3
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/player/service/CorePlayerService;->mIsShowErrorTost:Z

    .line 2555
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2405
    :cond_9
    :try_start_3
    invoke-virtual {v15}, Landroid/media/MediaPlayer;->prepare()V

    .line 2406
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v4, "mediaPlayer.prepare()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    const v3, 0x10008

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 2408
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/music/common/util/MusicPlayerUtil;->setShowPrepare(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_1

    .line 2474
    :catch_0
    move-exception v3

    move-object v11, v3

    .line 2475
    .local v11, e:Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    :try_start_4
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/player/service/CorePlayerService;->mStartPlay:Z

    .line 2476
    invoke-static/range {p0 .. p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2477
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/player/service/CorePlayerService;->lyric:Lcom/android/music/player/service/CorePlayerService$LyricInfo;

    .line 2478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/16 v4, 0x384

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2479
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preparePlay - IllegalArgumentException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mLibraryMediaPlayerCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    move-object v3, v0

    invoke-virtual {v15, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_3

    .line 2434
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    .restart local v13       #genre:I
    .restart local v16       #strGenre:Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v11, v3

    .line 2441
    .local v11, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_5
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteFullException getMusicMainListCursor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    invoke-static/range {p0 .. p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2443
    const-string v3, "activity"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 2444
    .local v9, am:Landroid/app/ActivityManager;
    const-string v3, "com.android.music"

    invoke-virtual {v9, v3}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_2

    .line 2481
    .end local v9           #am:Landroid/app/ActivityManager;
    .end local v11           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v13           #genre:I
    .end local v16           #strGenre:Ljava/lang/String;
    :catch_2
    move-exception v3

    move-object v11, v3

    .line 2482
    .local v11, e:Ljava/lang/IllegalStateException;
    const/4 v3, 0x0

    :try_start_6
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/player/service/CorePlayerService;->mStartPlay:Z

    .line 2483
    invoke-static/range {p0 .. p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2484
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/player/service/CorePlayerService;->lyric:Lcom/android/music/player/service/CorePlayerService$LyricInfo;

    .line 2485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/16 v4, 0x384

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2486
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preparePlay - IllegalStateException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/player/service/CorePlayerService;->mIsError:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mLibraryMediaPlayerCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    move-object v3, v0

    invoke-virtual {v15, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto/16 :goto_3

    .line 2446
    .end local v11           #e:Ljava/lang/IllegalStateException;
    .restart local v13       #genre:I
    .restart local v16       #strGenre:Ljava/lang/String;
    :catch_3
    move-exception v3

    move-object v11, v3

    .line 2453
    .local v11, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_7
    invoke-static/range {p0 .. p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2454
    const-string v3, "activity"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 2455
    .restart local v9       #am:Landroid/app/ActivityManager;
    const-string v3, "com.android.music"

    invoke-virtual {v9, v3}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_2

    .line 2488
    .end local v9           #am:Landroid/app/ActivityManager;
    .end local v11           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .end local v13           #genre:I
    .end local v16           #strGenre:Ljava/lang/String;
    :catch_4
    move-exception v3

    move-object v11, v3

    .line 2489
    .local v11, e:Ljava/io/IOException;
    const/4 v3, 0x0

    :try_start_8
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/player/service/CorePlayerService;->mStartPlay:Z

    .line 2490
    invoke-static/range {p0 .. p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/16 v4, 0x384

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2492
    sget-object v3, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preparePlay - IOException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/player/service/CorePlayerService;->mIsError:Z

    .line 2494
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/player/service/CorePlayerService;->lyric:Lcom/android/music/player/service/CorePlayerService$LyricInfo;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2498
    const v12, 0x7f0a0041

    .line 2500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mLibraryMediaPlayerCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    move-object v3, v0

    invoke-virtual {v15, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto/16 :goto_3

    .line 2459
    .end local v11           #e:Ljava/io/IOException;
    .restart local v13       #genre:I
    .restart local v16       #strGenre:Ljava/lang/String;
    :catch_5
    move-exception v3

    move-object v11, v3

    .line 2460
    .local v11, e:Landroid/database/sqlite/SQLiteException;
    :try_start_9
    invoke-static/range {p0 .. p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2461
    const-string v3, "activity"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 2462
    .restart local v9       #am:Landroid/app/ActivityManager;
    const-string v3, "com.android.music"

    invoke-virtual {v9, v3}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_2

    .line 2500
    .end local v9           #am:Landroid/app/ActivityManager;
    .end local v11           #e:Landroid/database/sqlite/SQLiteException;
    .end local v13           #genre:I
    .end local v16           #strGenre:Ljava/lang/String;
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/service/CorePlayerService;->mLibraryMediaPlayerCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    move-object v4, v0

    invoke-virtual {v15, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    throw v3
.end method

.method protected procCommndIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    .line 1040
    if-nez p1, :cond_1

    .line 1230
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1043
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1044
    .local v0, action:Ljava/lang/String;
    const-string v7, "command"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1047
    .local v2, cmd:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 1051
    .local v6, rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    sget-object v7, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "procCommndIntent() cmd: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    sget-object v7, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "procCommndIntent() action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x320

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1064
    if-nez v2, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    if-nez v2, :cond_3

    const-string v7, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1070
    :cond_3
    const-string v7, "pause"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1072
    :cond_4
    const-string v7, "from"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1073
    .local v3, from:Ljava/lang/String;
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1075
    :cond_5
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/music/player/service/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    .line 1076
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/music/player/service/CorePlayerService;->pausePlay(Z)V

    goto/16 :goto_0

    .line 1085
    .end local v3           #from:Ljava/lang/String;
    :cond_6
    const-string v7, "com.android.music.musicservicecommand.resume"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1086
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/android/music/player/service/CorePlayerService;->startPlay(ZZ)V

    goto/16 :goto_0

    .line 1087
    :cond_7
    const-string v7, "previous"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1088
    :cond_8
    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v7, :cond_9

    .line 1089
    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v7

    const/16 v8, 0xbb8

    if-le v7, v8, :cond_9

    .line 1090
    sget-object v7, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v8, "CMDPREVIOUS, but position > 3000, seekTo(0)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto/16 :goto_0

    .line 1095
    :cond_9
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/music/player/service/CorePlayerService;->internalPlayPrev(ZZ)V

    goto/16 :goto_0

    .line 1096
    :cond_a
    const-string v7, "next"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1097
    iget-boolean v7, p0, Lcom/android/music/player/service/CorePlayerService;->mWasPlaying:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/music/player/service/CorePlayerService;->internalPlayNext(ZZZ)Z

    goto/16 :goto_0

    .line 1098
    :cond_b
    const-string v7, "com.android.music.musicservicecommand.next"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1099
    iget-boolean v7, p0, Lcom/android/music/player/service/CorePlayerService;->mWasPlaying:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/music/player/service/CorePlayerService;->internalPlayNext(ZZZ)Z

    goto/16 :goto_0

    .line 1100
    :cond_c
    const-string v7, "togglepause"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1103
    :cond_d
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MoviePlayer"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1107
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1110
    const-string v7, "service.brcm.avkey"

    const-string v8, "pause"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "pause"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "togglepause"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1111
    sget-object v7, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v8, " ooo avrcp - paused"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/music/player/service/CorePlayerService;->pausePlay(Z)V

    goto/16 :goto_0

    .line 1113
    :cond_e
    const-string v7, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1114
    sget-object v7, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v8, " ooo toggle - paused"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/music/player/service/CorePlayerService;->pausePlay(Z)V

    goto/16 :goto_0

    .line 1120
    :cond_f
    const-string v7, "service.brcm.avkey"

    const-string v8, "play"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "play"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "togglepause"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1121
    sget-object v7, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v8, " ooo avrcp - played"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/android/music/player/service/CorePlayerService;->startPlay(ZZ)V

    goto/16 :goto_0

    .line 1123
    :cond_10
    const-string v7, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1124
    sget-object v7, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v8, " ooo toggle - played"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/android/music/player/service/CorePlayerService;->startPlay(ZZ)V

    goto/16 :goto_0

    .line 1145
    .restart local p1
    :cond_11
    const-string v7, "stop"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1147
    const-string v7, "from"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1148
    .restart local v3       #from:Ljava/lang/String;
    if-eqz v3, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1152
    :cond_12
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService;->stopPlay()V

    goto/16 :goto_0

    .line 1164
    .end local v3           #from:Ljava/lang/String;
    :cond_13
    const-string v7, "com.android.alarmclock.ALARM_ALERT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1165
    const-string v7, "CMD"

    const-string v8, "ALARM_ALERT_ACTION"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1168
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/music/player/service/CorePlayerService;->pausePlay(Z)V

    goto/16 :goto_0

    .line 1170
    :cond_14
    const-string v7, "com.android.music.musicservicecommand.checkplaystatus"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1171
    const-string v7, "CMD"

    const-string v8, "CHECK_STATUS_ACTION"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/music/player/service/CorePlayerService;->sendMediaPlayInfo(Z)V

    goto/16 :goto_0

    .line 1173
    :cond_15
    const-string v7, "fastforward_down"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    const-string v7, "com.android.music.musicservicecommand.ff.down"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1174
    :cond_16
    const-string v7, "CMD"

    const-string v8, "FF_DOWN_ACTION"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 1176
    .local v4, msg:Landroid/os/Message;
    const/16 v7, 0x320

    iput v7, v4, Landroid/os/Message;->what:I

    .line 1177
    const/4 v7, 0x0

    iput v7, v4, Landroid/os/Message;->arg1:I

    .line 1178
    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1180
    const-string v7, "musicplayer.show.progressbar"

    invoke-virtual {p0, v7}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1181
    .end local v4           #msg:Landroid/os/Message;
    :cond_17
    const-string v7, "fastforward_up"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    const-string v7, "com.android.music.musicservicecommand.ff.up"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1182
    :cond_18
    const-string v7, "CMD"

    const-string v8, "FF_UP_ACTION"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/music/player/service/CorePlayerService;->ffRewRepeatTime:I

    .line 1184
    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x320

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1185
    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x320

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1188
    :cond_19
    const-string v7, "musicplayer.hide.progressbar"

    invoke-virtual {p0, v7}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1189
    :cond_1a
    const-string v7, "rewind_down"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    const-string v7, "com.android.music.musicservicecommand.rew.down"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1190
    :cond_1b
    const-string v7, "CMD"

    const-string v8, "REW_DOWN_ACTION"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 1192
    .restart local v4       #msg:Landroid/os/Message;
    const/16 v7, 0x320

    iput v7, v4, Landroid/os/Message;->what:I

    .line 1193
    const/4 v7, 0x1

    iput v7, v4, Landroid/os/Message;->arg1:I

    .line 1194
    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1196
    const-string v7, "musicplayer.show.progressbar"

    invoke-virtual {p0, v7}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1197
    .end local v4           #msg:Landroid/os/Message;
    :cond_1c
    const-string v7, "rewind_up"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    const-string v7, "com.android.music.musicservicecommand.rew.up"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1198
    :cond_1d
    const-string v7, "CMD"

    const-string v8, "REW_UP_ACTION"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/music/player/service/CorePlayerService;->ffRewRepeatTime:I

    .line 1200
    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x320

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1201
    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x320

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1204
    :cond_1e
    const-string v7, "musicplayer.hide.progressbar"

    invoke-virtual {p0, v7}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1205
    :cond_1f
    const-string v7, "com.android.music.musicservicecommand.prepare"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 1206
    const-string v7, "CMD"

    const-string v8, "PREPARE_ACTION"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const-string v7, "uri"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1208
    .local v5, playUri:Ljava/lang/String;
    const-string v7, "bPlay"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1209
    .local v1, bPlay:Z
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0, v7, v1}, Lcom/android/music/player/service/CorePlayerService;->preparePlay(Landroid/net/Uri;Z)Z

    goto/16 :goto_0

    .line 1210
    .end local v1           #bPlay:Z
    .end local v5           #playUri:Ljava/lang/String;
    :cond_20
    const-string v7, "com.android.music.musicservicecommand.set.eq"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1211
    const-string v7, "CMD"

    const-string v8, "SET_SOUND_EFFECT"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object v7, p0, Lcom/android/music/player/service/CorePlayerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_21

    .line 1216
    const-string v7, "musicPlayer.service.BLUETOOTH_HEADSET_STATE_CHANGE"

    invoke-virtual {p0, v7}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 1220
    :cond_21
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService;->setEq()V

    goto/16 :goto_0
.end method

.method protected registerCmdReceiver()V
    .locals 2

    .prologue
    .line 449
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 450
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string v1, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    const-string v1, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    const-string v1, "com.android.music.musicservicecommand.resume"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    const-string v1, "com.android.music.musicservicecommand.next"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    const-string v1, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    const-string v1, "com.android.alarmclock.ALARM_ALERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    const-string v1, "com.android.music.musicservicecommand.checkplaystatus"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string v1, "com.android.music.musicservicecommand.ff.down"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string v1, "com.android.music.musicservicecommand.ff.up"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    const-string v1, "com.android.music.musicservicecommand.rew.down"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    const-string v1, "com.android.music.musicservicecommand.rew.up"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    const-string v1, "com.android.music.musicservicecommand.set.eq"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/player/service/CorePlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 466
    return-void
.end method

.method savePreferences()V
    .locals 2

    .prologue
    .line 1349
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "savePreferences() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerController;->getShuffle()Z

    move-result v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicValueSaveController;->setShuffle(Z)V

    .line 1361
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getRepeatMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicValueSaveController;->setRepeat(I)V

    .line 1362
    return-void
.end method

.method protected sendMediaPlayInfo(Z)V
    .locals 7
    .parameter "isStop"

    .prologue
    .line 3620
    move v0, p1

    .line 3621
    .local v0, bStop:Z
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.mediainfo"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3622
    .local v1, dataInfo:Landroid/content/Intent;
    const-string v2, "mediauri"

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3623
    const-string v2, "playing"

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3624
    const-string v2, "isStop"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3625
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3626
    sget-object v2, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v3, "sendMediaPlayInfo() is Ended:mMediaUri=%s,%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaUri:Landroid/net/Uri;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3627
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 3
    .parameter "repeat"

    .prologue
    .line 3614
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRepeatMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3615
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v0, p1}, Lcom/android/music/player/data/MusicPlayerController;->setRepeatMode(I)V

    .line 3616
    return-void
.end method

.method protected showNotification()V
    .locals 11

    .prologue
    const v9, 0x7f0a00e2

    const/16 v8, 0x2bc

    const/4 v7, 0x0

    const-string v10, "-"

    .line 2879
    sget-object v4, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v5, "CorePlayerService::showNotification"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2884
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 2885
    .local v3, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_0

    .line 2886
    sget-object v4, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v5, "showNotification Can\'t display during call"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    const/4 v3, 0x0

    .line 2944
    :goto_0
    return-void

    .line 2890
    :cond_0
    const/4 v3, 0x0

    .line 2892
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v4, :cond_1

    .line 2893
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiManager:Landroid/app/NotificationManager;

    .line 2895
    :cond_1
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 2897
    .local v2, notification:Landroid/app/Notification;
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 2900
    :try_start_0
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2901
    const v4, 0x7f020147

    iput v4, v2, Landroid/app/Notification;->icon:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2910
    :goto_1
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030028

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2912
    new-instance v4, Landroid/content/Intent;

    const-string v5, "sec.musicplayer.PLAYBACK_VIEWER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v7, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2914
    const/4 v4, 0x4

    iput v4, v2, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 2915
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2917
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mMusicPlayerController:Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v4}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v1

    .line 2920
    .local v1, mediaUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    iget-boolean v4, v4, Lcom/android/music/common/data/MediaMetadata;->isParsed:Z

    if-eqz v4, :cond_5

    .line 2921
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    invoke-virtual {v4, p0}, Lcom/android/music/common/data/MediaMetadata;->makeUIData(Landroid/content/Context;)V

    .line 2922
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v4, v4, Lcom/android/music/common/data/MediaMetadata;->artistAlbum:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 2923
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    invoke-virtual {p0, v9}, Lcom/android/music/player/service/CorePlayerService;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/music/common/data/MediaMetadata;->artistAlbum:Ljava/lang/String;

    .line 2925
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/android/music/common/data/MediaMetadata;->artistAlbum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/app/Notification;->twQuickPanelDescription:Ljava/lang/CharSequence;

    .line 2941
    :goto_2
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mNotiManager:Landroid/app/NotificationManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 2902
    .end local v1           #mediaUri:Landroid/net/Uri;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mBinder:Lcom/android/music/player/service/ICorePlayerService$Stub;

    invoke-virtual {v4}, Lcom/android/music/player/service/ICorePlayerService$Stub;->isStop()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->canStartMediaPlayer()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2903
    const/4 v4, 0x0

    iput v4, v2, Landroid/app/Notification;->icon:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 2906
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 2907
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 2905
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    const v4, 0x7f020146

    :try_start_2
    iput v4, v2, Landroid/app/Notification;->icon:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 2927
    .restart local v1       #mediaUri:Landroid/net/Uri;
    :cond_5
    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    invoke-virtual {v4, p0, v1}, Lcom/android/music/common/data/MediaMetadata;->makeUIDataFromUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2929
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v4, v4, Lcom/android/music/common/data/MediaMetadata;->artistAlbum:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 2930
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    invoke-virtual {p0, v9}, Lcom/android/music/player/service/CorePlayerService;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/music/common/data/MediaMetadata;->artistAlbum:Ljava/lang/String;

    .line 2932
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaMeta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/android/music/common/data/MediaMetadata;->artistAlbum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/app/Notification;->twQuickPanelDescription:Ljava/lang/CharSequence;

    goto :goto_2

    .line 2935
    :cond_7
    sget-object v4, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v5, "showNotification(): mMediaMeta did not set"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method startPlay(ZZ)V
    .locals 11
    .parameter "isShowNotification"
    .parameter "doPrepare"

    .prologue
    const v10, 0x7f0a00d5

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v4, "IllegalArgumentException occured 12 :"

    .line 2976
    sget-object v4, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v5, "startPlay(isShowNotification=%s,%s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v4, :cond_0

    .line 2978
    sget-object v4, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v5, "startPlay MediaPlayer is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    :goto_0
    return-void

    .line 2983
    :cond_0
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 2984
    .local v3, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_2

    .line 2985
    const-string v4, "CorePlayerService"

    const-string v5, "startPlay Can\'t play during call"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mDuringCallToast:Landroid/widget/Toast;

    if-eqz v4, :cond_1

    .line 2987
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mDuringCallToast:Landroid/widget/Toast;

    invoke-virtual {v4, v10}, Landroid/widget/Toast;->setText(I)V

    .line 2988
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mDuringCallToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2990
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mDuringCallToast:Landroid/widget/Toast;

    .line 2991
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mDuringCallToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2995
    :cond_2
    const/4 v3, 0x0

    .line 2997
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/android/music/player/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 2998
    .local v1, powermanager:Landroid/os/PowerManager;
    sget-object v4, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LowBatteryCheck...."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/music/player/service/CorePlayerService;->mBattScale:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/PowerManager;->getPlugType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    iget v4, p0, Lcom/android/music/player/service/CorePlayerService;->mBattScale:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/android/music/player/service/CorePlayerService;->mBattScale:I

    const/16 v5, 0xa

    if-gt v4, v5, :cond_3

    invoke-virtual {v1}, Landroid/os/PowerManager;->getPlugType()I

    move-result v4

    if-nez v4, :cond_3

    .line 3000
    sget-object v4, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LowBattery...."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/music/player/service/CorePlayerService;->mBattScale:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3004
    :cond_3
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v4, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 3016
    .local v2, rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->canStartMediaPlayer()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3017
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->pauseAnotherPlay()V

    .line 3018
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 3019
    sget-object v4, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v5, "mMediaPlayer.start()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    const v4, 0x11020

    iput v4, p0, Lcom/android/music/player/service/CorePlayerService;->mCurrentState:I

    .line 3021
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService;->setEq()V

    .line 3023
    const-string v4, "mp3"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    .line 3024
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3025
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3028
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/music/player/service/CorePlayerService;->mWasPlaying:Z

    .line 3029
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/music/common/util/MusicPlayerUtil;->isPlaying:Z

    .line 3030
    const-string v4, "musicPlayer.service.startUpdateStatus"

    invoke-virtual {p0, v4}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3032
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/music/player/service/CorePlayerService;->sendMediaPlayInfo(Z)V

    .line 3033
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/music/player/service/CorePlayerService;->mPausedByTransientLossOfFocus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3065
    :goto_1
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz p1, :cond_7

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MusicPlayer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-boolean v4, Lcom/android/music/common/util/MusicPlayerUtil;->isMusicPlayerResume:Z

    if-nez v4, :cond_7

    .line 3070
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->showNotification()V

    .line 3074
    :goto_2
    const-string v4, "musicPlayer.service.updatePlayInfo"

    invoke-virtual {p0, v4}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3075
    const-string v4, "videoplayer.service.MoviePlaybackService.videopause"

    invoke-virtual {p0, v4}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3078
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/android/music/player/service/CorePlayerService;->mLibraryMediaPlayerCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3081
    invoke-direct {p0, v8}, Lcom/android/music/player/service/CorePlayerService;->batteryChargingblock_clear(Z)V

    goto/16 :goto_0

    .line 3037
    :cond_5
    if-ne p2, v8, :cond_6

    .line 3038
    :try_start_1
    sget-object v4, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v5, "startPlay(): mIsPrepared==false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService;->mBinder:Lcom/android/music/player/service/ICorePlayerService$Stub;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/music/player/service/ICorePlayerService$Stub;->prepare(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 3044
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 3045
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3046
    sget-object v4, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalStateException occured 11 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/music/player/service/CorePlayerService;->mIsError:Z

    .line 3048
    const-string v4, "musicPlayer.service.stopUpdateStatus"

    invoke-virtual {p0, v4}, Lcom/android/music/player/service/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 3049
    invoke-direct {p0}, Lcom/android/music/player/service/CorePlayerService;->stopPlay()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3061
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v4

    throw v4

    .line 3041
    :cond_6
    :try_start_3
    sget-object v4, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v5, "startPlay(): mIsPrepared==false, doPrepare==false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 3050
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 3051
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_4
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3052
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 3053
    sget-object v4, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException occured 12 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3055
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 3056
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3057
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3058
    sget-object v4, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException occured 12 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/music/player/service/CorePlayerService;->mIsError:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 3072
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_7
    invoke-virtual {p0}, Lcom/android/music/player/service/CorePlayerService;->hideNotification()V

    goto/16 :goto_2
.end method

.method public stopAnotherPlay()V
    .locals 3

    .prologue
    .line 3710
    sget-object v1, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v2, "stopAnotherPlay() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3713
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3714
    const-string v1, "from"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3715
    invoke-virtual {p0, v0}, Lcom/android/music/player/service/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3716
    return-void
.end method
