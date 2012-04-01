.class public Lcom/sec/android/app/videoplayer/activity/MoviePlayer;
.super Landroid/app/Activity;
.source "MoviePlayer.java"

# interfaces
.implements Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$OnVideoLockStateChangedObserver;
.implements Lcom/sec/android/app/videoplayer/view/MainVideoWindow$OnViewChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingListAdapter;,
        Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;,
        Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;
    }
.end annotation


# static fields
.field private static nTempRepeatType:I


# instance fields
.field private BookmarkExistToast:Landroid/widget/Toast;

.field private BookmarkfullToast:Landroid/widget/Toast;

.field private DuringCallToast:Landroid/widget/Toast;

.field private NobookmarkToast:Landroid/widget/Toast;

.field private final TAG:Ljava/lang/String;

.field private TempLongKeyCnt:I

.field private brightToast:Landroid/widget/Toast;

.field private brightnessVal:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBookMarkDialog:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

.field private mBrightPopup:Landroid/app/AlertDialog;

.field private mColortonePopup:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDrmPopup:Landroid/app/AlertDialog;

.field private mDrmPopupType:I

.field private mErrorPopup:Landroid/app/AlertDialog;

.field private mErrorPopupShow:Z

.field private mExit:Z

.field private mExitPlayer:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mKeyType:I

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLicErrorRelatedPopupShow:Z

.field private mLowBtteryPopup:Landroid/app/AlertDialog;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaToast:Landroid/widget/Toast;

.field private mMenu:Landroid/view/Menu;

.field private mNewPlay:Z

.field private mOutdoorPopup:Landroid/app/AlertDialog;

.field private mPlayStart:Ljava/lang/Runnable;

.field private mPopupLowBattShow:Z

.field private mPreference_brightness:Ljava/lang/String;

.field private mPreference_colortone:Ljava/lang/String;

.field private mPreference_outdoor:Ljava/lang/String;

.field private mPreference_repeat:Ljava/lang/String;

.field private mPreference_screenmode:Ljava/lang/String;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mRepeatPopup:Landroid/app/AlertDialog;

.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mSendAppListDialog:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;

.field private mSensorOn:Ljava/lang/Runnable;

.field private mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mSettingAdapter:Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingListAdapter;

.field private mSettingPopup:Landroid/app/AlertDialog;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private final mStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mThumbKicker:Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;

.field private mUri:Landroid/net/Uri;

.field private mVideoActivityOnResume:Z

.field private mVideoDetailsDialog:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;

.field private mVideoLayout:Landroid/widget/RelativeLayout;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mWasPlaying:Z

.field private mbAutoBright:Z

.field private mbDrmPopupShow:Z

.field private mbrightProgressBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private mbrightnessChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field private paused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->nTempRepeatType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 96
    const-string v0, "MoviePlayer"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->TAG:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    .line 99
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 100
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMenu:Landroid/view/Menu;

    .line 103
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    .line 104
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRootLayout:Landroid/widget/LinearLayout;

    .line 105
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoLayout:Landroid/widget/RelativeLayout;

    .line 108
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;

    .line 109
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLowBtteryPopup:Landroid/app/AlertDialog;

    .line 110
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;

    .line 111
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBrightPopup:Landroid/app/AlertDialog;

    .line 112
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRepeatPopup:Landroid/app/AlertDialog;

    .line 113
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mColortonePopup:Landroid/app/AlertDialog;

    .line 114
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mOutdoorPopup:Landroid/app/AlertDialog;

    .line 115
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSettingPopup:Landroid/app/AlertDialog;

    .line 117
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z

    .line 120
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    .line 123
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPopupLowBattShow:Z

    .line 124
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z

    .line 125
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbAutoBright:Z

    .line 161
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSendAppListDialog:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;

    .line 162
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDetailsDialog:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;

    .line 163
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBookMarkDialog:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    .line 164
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSettingAdapter:Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingListAdapter;

    .line 173
    iput v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    .line 174
    iput v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopupType:I

    .line 175
    iput v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->TempLongKeyCnt:I

    .line 176
    iput v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->brightnessVal:I

    .line 179
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mExit:Z

    .line 180
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mNewPlay:Z

    .line 181
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mWasPlaying:Z

    .line 182
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbrightProgressBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 183
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->brightToast:Landroid/widget/Toast;

    .line 184
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->NobookmarkToast:Landroid/widget/Toast;

    .line 185
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->BookmarkfullToast:Landroid/widget/Toast;

    .line 186
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->BookmarkExistToast:Landroid/widget/Toast;

    .line 187
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->DuringCallToast:Landroid/widget/Toast;

    .line 188
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMediaToast:Landroid/widget/Toast;

    .line 190
    const-string v0, "VideoPlayer_Brightness"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPreference_brightness:Ljava/lang/String;

    .line 191
    const-string v0, "VideoPlayer_RepeatMode"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPreference_repeat:Ljava/lang/String;

    .line 192
    const-string v0, "VideoPlayer_Colortone"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPreference_colortone:Ljava/lang/String;

    .line 193
    const-string v0, "VideoPlayer_ScreenMode"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPreference_screenmode:Ljava/lang/String;

    .line 194
    const-string v0, "VideoPlayer_Outdoorvisibility"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPreference_outdoor:Ljava/lang/String;

    .line 1851
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;

    .line 1874
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 2197
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 2288
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$5;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2537
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$11;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbrightnessChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 2943
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 3009
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$18;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$18;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 3131
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$19;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$19;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mExitPlayer:Ljava/lang/Runnable;

    .line 3139
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$20;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$20;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSensorOn:Ljava/lang/Runnable;

    .line 3159
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$21;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$21;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPlayStart:Ljava/lang/Runnable;

    .line 3180
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$22;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$22;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 3598
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mThumbKicker:Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;

    .line 3647
    return-void
.end method

.method private AddBookmark(Ljava/lang/String;J)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 976
    const-wide/16 v0, -0x1

    .line 978
    invoke-static {}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getInstance()Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v2

    .line 979
    invoke-static {p2, p3}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getUriByVideoId(J)Landroid/net/Uri;

    move-result-object v3

    .line 981
    if-nez v3, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v4, :cond_2

    .line 988
    :try_start_0
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v4}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    move-wide v4, v0

    .line 997
    :goto_1
    const-wide/16 v0, 0x3e8

    cmp-long v0, v4, v0

    if-ltz v0, :cond_0

    .line 1000
    invoke-virtual {v2, v8}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->getTotalCnt(J)I

    move-result v0

    .line 1002
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 1004
    const-string v0, "TAG"

    const-string v1, "mAddBookmarkOnClickListener : Total count is 10."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getBookmarkFullToast()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1006
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getBookmarkFullToast()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 990
    :catch_0
    move-exception v4

    .line 992
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 993
    const-string v5, "MoviePlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException occured  1 :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-wide v4, v0

    goto :goto_1

    .line 1010
    :cond_3
    invoke-virtual {v2, v8}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->addBookmark(Ljava/lang/String;JJ)Z

    move-result v0

    .line 1012
    if-eqz v0, :cond_4

    .line 1013
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f070033

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1016
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getBookmarkExistToast()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1017
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getBookmarkExistToast()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->queueNextRefresh(IJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->activityFinish()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->batteryCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/Activity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->popupLowBattery(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopupType:I

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopupType:I

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getDuringCallToast()Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setVideoPlayerBrightness()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->resumeByDialog()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createSettingPopup()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSettingPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSettingPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createRepeatPopup()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbAutoBright:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getBrightToast()Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createBrightPopup()V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createColortonePopup()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoActivityOnResume:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createOutdoorvisibilityPopup()V

    return-void
.end method

.method static synthetic access$3100()I
    .locals 1

    .prologue
    .line 95
    sget v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->nTempRepeatType:I

    return v0
.end method

.method static synthetic access$3102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    sput p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->nTempRepeatType:I

    return p0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRepeatPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRepeatPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mColortonePopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mColortonePopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mOutdoorPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mOutdoorPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->brightnessVal:I

    return v0
.end method

.method static synthetic access$3502(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->brightnessVal:I

    return p1
.end method

.method static synthetic access$3600(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBrightPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBrightPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPopupLowBattShow:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLowBtteryPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getMediaToast()Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->paused:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setVolume()V

    return-void
.end method

.method static synthetic access$4100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkLockScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    return v0
.end method

.method private activityFinish()V
    .locals 3

    .prologue
    .line 1828
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityFinish() - mExit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mExit:Z

    if-eqz v0, :cond_0

    .line 1839
    :goto_0
    return-void

    .line 1833
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mExit:Z

    .line 1834
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoActivityOnResume:Z

    .line 1835
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->dismissDialogPopup()V

    .line 1836
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->stopPlayingChecker()V

    .line 1837
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->stopBufferingChecker()V

    .line 1838
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->finish()V

    goto :goto_0
.end method

.method private batteryCheck()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "batteryCheck : read in length is 0.."

    const-string v7, "MoviePlayer"

    .line 3032
    const-string v0, "MoviePlayer"

    const-string v0, "batteryCheck() is called"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    new-array v0, v9, [B

    .line 3039
    const/4 v1, 0x0

    .line 3040
    const-string v2, "/sys/class/power_supply/battery/charging_source"

    .line 3042
    const/4 v2, 0x0

    .line 3046
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/sys/class/power_supply/battery/charging_source"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3054
    if-eqz v3, :cond_9

    .line 3056
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 3057
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 3060
    :goto_0
    if-eqz v2, :cond_0

    .line 3061
    new-instance v1, Ljava/lang/String;

    sub-int/2addr v2, v6

    invoke-direct {v1, v0, v5, v2}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v1

    .line 3066
    :goto_1
    if-nez v0, :cond_3

    move v0, v6

    .line 3087
    :goto_2
    return v0

    .line 3063
    :cond_0
    const-string v0, "MoviePlayer"

    const-string v0, "batteryCheck : read in length is 0.."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 3064
    goto :goto_1

    .line 3048
    :catch_0
    move-exception v3

    .line 3050
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3054
    if-eqz v2, :cond_8

    .line 3056
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 3057
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    move v2, v3

    .line 3060
    :goto_3
    if-eqz v2, :cond_1

    .line 3061
    new-instance v1, Ljava/lang/String;

    sub-int/2addr v2, v6

    invoke-direct {v1, v0, v5, v2}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v1

    goto :goto_1

    .line 3063
    :cond_1
    const-string v0, "MoviePlayer"

    const-string v0, "batteryCheck : read in length is 0.."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 3064
    goto :goto_1

    .line 3054
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_7

    .line 3056
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 3057
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    move v2, v3

    .line 3060
    :goto_4
    if-eqz v2, :cond_2

    .line 3061
    new-instance v3, Ljava/lang/String;

    sub-int/2addr v2, v6

    invoke-direct {v3, v0, v5, v2}, Ljava/lang/String;-><init>([BII)V

    .line 3063
    :goto_5
    throw v1

    :cond_2
    const-string v0, "MoviePlayer"

    const-string v0, "batteryCheck : read in length is 0.."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3069
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3071
    if-nez v0, :cond_6

    move v0, v5

    move v1, v5

    .line 3073
    :goto_6
    const/4 v2, 0x5

    if-ge v0, v2, :cond_4

    .line 3074
    :try_start_2
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getVoltage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    add-int/2addr v1, v2

    .line 3073
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3076
    :catch_1
    move-exception v0

    .line 3077
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3078
    const-string v2, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "batteryCheck : IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    :cond_4
    div-int/lit8 v0, v1, 0x5

    if-gt v0, v9, :cond_5

    .line 3081
    const-string v0, "MoviePlayer"

    const-string v0, "batteryCheck : Low Battery.."

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 3082
    goto/16 :goto_2

    :cond_5
    move v0, v6

    .line 3084
    goto/16 :goto_2

    :cond_6
    move v0, v6

    .line 3087
    goto/16 :goto_2

    :cond_7
    move v2, v5

    goto :goto_4

    :cond_8
    move v2, v5

    goto/16 :goto_3

    :cond_9
    move v2, v5

    goto/16 :goto_0
.end method

.method private checkAutoBrighteness()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3467
    const/4 v0, -0x1

    .line 3471
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3478
    :goto_0
    if-ne v0, v3, :cond_0

    move v0, v3

    .line 3481
    :goto_1
    return v0

    .line 3473
    :catch_0
    move-exception v1

    .line 3475
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3481
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private checkIsCalling(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 3425
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 3427
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3428
    const/4 v0, 0x1

    .line 3430
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkLCDOnOff()Z
    .locals 4

    .prologue
    .line 3804
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 3805
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 3807
    const-string v1, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLCDOnOff() isScreenOn :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    return v0
.end method

.method private checkLockScreenOn()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "MoviePlayer"

    .line 3771
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_2

    .line 3773
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3775
    const-string v0, "MoviePlayer"

    const-string v0, "checkLockScreenOn() - Lock screen on"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3777
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v0, :cond_0

    .line 3781
    :try_start_0
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3783
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasPlayingWhenPaused:Z

    .line 3784
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    .line 3785
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3794
    :cond_0
    const/4 v0, 0x1

    .line 3799
    :goto_0
    return v0

    .line 3788
    :catch_0
    move-exception v0

    .line 3790
    const-string v1, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occured :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 3791
    goto :goto_0

    :cond_1
    move v0, v3

    .line 3797
    goto :goto_0

    :cond_2
    move v0, v3

    .line 3799
    goto :goto_0
.end method

.method private createBrightPopup()V
    .locals 3

    .prologue
    .line 2481
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2482
    const v1, 0x7f03000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2484
    const v0, 0x7f0a002b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbrightProgressBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 2486
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbrightProgressBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    if-eqz v0, :cond_0

    .line 2488
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getBright()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->brightnessVal:I

    .line 2489
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbrightProgressBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->brightnessVal:I

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 2490
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbrightProgressBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setMax(I)V

    .line 2491
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbrightProgressBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbrightnessChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 2492
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbrightProgressBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setVisibility(I)V

    .line 2493
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbrightProgressBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontEnable(Z)V

    .line 2496
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2497
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2499
    const v1, 0x7f070021

    new-instance v2, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$9;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2516
    const/high16 v1, 0x104

    new-instance v2, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$10;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$10;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2532
    const v1, 0x7f070011

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2533
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBrightPopup:Landroid/app/AlertDialog;

    .line 2534
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBrightPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2535
    return-void
.end method

.method private createColortonePopup()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2379
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2380
    const v1, 0x7f070013

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2381
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2385
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getColortone()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 2400
    :goto_0
    const v2, 0x7f040005

    new-instance v3, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$7;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$7;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2431
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mColortonePopup:Landroid/app/AlertDialog;

    .line 2432
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mColortonePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2433
    return-void

    :pswitch_0
    move v1, v2

    .line 2388
    goto :goto_0

    .line 2391
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2394
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 2385
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createErrorDialog(ILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const-string v4, "MoviePlayer"

    .line 2567
    const-string v0, "MoviePlayer"

    const-string v0, "In Service specific error, VIDEO_DRM_LICENSE_ACQUISITION_FAILED 1"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z

    if-eqz v0, :cond_0

    .line 2856
    :goto_0
    return-void

    .line 2573
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z

    .line 2574
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->error_count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->error_count:I

    .line 2583
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2586
    :pswitch_1
    const v0, 0x7f070003

    .line 2632
    :goto_1
    const-string v1, "MoviePlayer"

    const-string v1, "In Service specific error, VIDEO_DRM_LICENSE_ACQUISITION_FAILED 3"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2640
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2646
    :cond_1
    :goto_2
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v1

    .line 2647
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setEmptyTitleName()V

    .line 2649
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2650
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2652
    const v0, 0x104000a

    new-instance v2, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2810
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$13;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2854
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;

    .line 2855
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 2589
    :pswitch_2
    const v0, 0x7f070002

    .line 2590
    goto :goto_1

    .line 2594
    :pswitch_3
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    .line 2595
    const-string v0, "MoviePlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In Service specific error, VIDEO_DRM_LICENSE_ACQUISITION_FAILED 2, action1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    const v0, 0x7f070065

    .line 2597
    goto :goto_1

    .line 2599
    :pswitch_4
    const-string v0, "MoviePlayer"

    const-string v0, "Create License Not Found popup"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    .line 2601
    const v0, 0x7f070066

    .line 2602
    goto :goto_1

    .line 2604
    :pswitch_5
    const-string v0, "MoviePlayer"

    const-string v0, "Create License Expired popup"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    .line 2606
    const v0, 0x7f070067

    .line 2607
    goto/16 :goto_1

    .line 2609
    :pswitch_6
    const-string v0, "MoviePlayer"

    const-string v0, "Create NO_DATA_CONNECTIVITY popup"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    .line 2611
    const v0, 0x7f07006e

    .line 2612
    goto/16 :goto_1

    .line 2616
    :pswitch_7
    const v0, 0x7f070004

    .line 2617
    goto/16 :goto_1

    .line 2619
    :pswitch_8
    const v0, 0x7f070005

    .line 2620
    goto/16 :goto_1

    .line 2622
    :pswitch_9
    const v0, 0x7f07004c

    .line 2623
    goto/16 :goto_1

    .line 2625
    :pswitch_a
    const v0, 0x7f070047

    .line 2626
    goto/16 :goto_1

    .line 2642
    :catch_0
    move-exception v1

    .line 2644
    const-string v2, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSendViaPopup(): RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2583
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private createOutdoorvisibilityPopup()V
    .locals 4

    .prologue
    .line 2437
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2438
    const v1, 0x7f070014

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2439
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2443
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getOutdoorvisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2444
    const/4 v1, 0x0

    .line 2448
    :goto_0
    const v2, 0x7f040004

    new-instance v3, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$8;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$8;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2475
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mOutdoorPopup:Landroid/app/AlertDialog;

    .line 2476
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mOutdoorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2477
    return-void

    .line 2446
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private createRepeatPopup()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2329
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2330
    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2331
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2335
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getRepeatType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 2348
    :goto_0
    const/high16 v2, 0x7f04

    new-instance v3, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2373
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRepeatPopup:Landroid/app/AlertDialog;

    .line 2374
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRepeatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2375
    return-void

    :pswitch_0
    move v1, v2

    .line 2338
    goto :goto_0

    .line 2340
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2342
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 2335
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createSettingPopup()V
    .locals 3

    .prologue
    .line 2235
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->pauseByDialog()V

    .line 2237
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2239
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->updateAdapter()V

    .line 2240
    const v1, 0x7f07000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2241
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSettingAdapter:Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2243
    new-instance v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2277
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSettingPopup:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    .line 2278
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSettingPopup:Landroid/app/AlertDialog;

    .line 2279
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSettingPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2286
    :cond_0
    :goto_0
    return-void

    .line 2281
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSettingPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2282
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSettingPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private dismissDialogPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3495
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3496
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3498
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBrightPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBrightPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3499
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBrightPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3501
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRepeatPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRepeatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3502
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRepeatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3504
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mColortonePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mColortonePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3505
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mColortonePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3507
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mOutdoorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mOutdoorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3508
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mOutdoorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3510
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSettingPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSettingPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3511
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSettingPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3513
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3514
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3516
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLowBtteryPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLowBtteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3517
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLowBtteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3518
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPopupLowBattShow:Z

    .line 3521
    :cond_7
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSendviaPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSendviaPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3523
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSendviaPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3524
    sput-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSendviaPopup:Landroid/app/AlertDialog;

    .line 3527
    :cond_8
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDetailPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDetailPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3528
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDetailPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3529
    sput-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDetailPopup:Landroid/app/AlertDialog;

    .line 3532
    :cond_9
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3534
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3535
    sput-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    .line 3538
    :cond_a
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3540
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3541
    sput-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    .line 3544
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBookMarkDialog:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBookMarkDialog:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3545
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBookMarkDialog:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->dismiss()V

    .line 3547
    :cond_c
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z

    .line 3548
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z

    .line 3549
    return-void
.end method

.method private getActivityPreferences()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 614
    invoke-virtual {p0, v8}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 616
    .local v4, settings:Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPreference_repeat:Ljava/lang/String;

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 617
    .local v5, type:I
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPreference_brightness:Ljava/lang/String;

    const/4 v7, 0x4

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 618
    .local v1, createbright:I
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPreference_colortone:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 619
    .local v0, colortype:I
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPreference_outdoor:Ljava/lang/String;

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 620
    .local v2, outtype:Z
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPreference_screenmode:Ljava/lang/String;

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 622
    .local v3, screenMode:I
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setRepeatType(I)V

    .line 623
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setColortone(I)V

    .line 624
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setOutdoorvisibility(Z)V

    .line 625
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setFitToScreenMode(I)V

    .line 627
    iget-boolean v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbAutoBright:Z

    if-nez v6, :cond_0

    .line 628
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setBright(I)V

    .line 629
    :cond_0
    return-void
.end method

.method private getBookmarkExistToast()Landroid/widget/Toast;
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->BookmarkExistToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f070034

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->BookmarkExistToast:Landroid/widget/Toast;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->BookmarkExistToast:Landroid/widget/Toast;

    return-object v0
.end method

.method private getBookmarkFullToast()Landroid/widget/Toast;
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->BookmarkfullToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f070032

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->BookmarkfullToast:Landroid/widget/Toast;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->BookmarkfullToast:Landroid/widget/Toast;

    return-object v0
.end method

.method private getBrightString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3716
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getBright()I

    move-result v0

    .line 3717
    .local v0, level:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getBrightToast()Landroid/widget/Toast;
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->brightToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f070064

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->brightToast:Landroid/widget/Toast;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->brightToast:Landroid/widget/Toast;

    return-object v0
.end method

.method private getColorToneString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3722
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getColortone()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3731
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3725
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f070061

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3727
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f070063

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3729
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f070062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3722
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getDuringCallToast()Landroid/widget/Toast;
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->DuringCallToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f070026

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->DuringCallToast:Landroid/widget/Toast;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->DuringCallToast:Landroid/widget/Toast;

    return-object v0
.end method

.method private getMediaToast()Landroid/widget/Toast;
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMediaToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f07003a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMediaToast:Landroid/widget/Toast;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMediaToast:Landroid/widget/Toast;

    return-object v0
.end method

.method private getNoBookmarkToast()Landroid/widget/Toast;
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->NobookmarkToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f070031

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->NobookmarkToast:Landroid/widget/Toast;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->NobookmarkToast:Landroid/widget/Toast;

    return-object v0
.end method

.method private getOutDoorString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3737
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getOutdoorvisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3738
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3740
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRepeatString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3701
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getRepeatType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3710
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3704
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3706
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3708
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f07000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3701
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getVoltage()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "/sys/class/power_supply/battery/capacity"

    .line 3092
    const-string v0, "MoviePlayer"

    const-string v1, "getVoltage() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    const-string v0, "/sys/class/power_supply/battery/capacity"

    .line 3100
    new-array v0, v2, [B

    move v1, v5

    .line 3102
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3103
    aput-byte v5, v0, v1

    .line 3102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3108
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3117
    if-eqz v1, :cond_5

    .line 3119
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 3120
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    move v1, v2

    .line 3123
    :goto_1
    if-eqz v1, :cond_3

    .line 3124
    new-instance v2, Ljava/lang/String;

    sub-int/2addr v1, v6

    invoke-direct {v2, v0, v5, v1}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v2

    .line 3127
    :goto_2
    return-object v0

    .line 3110
    :catch_0
    move-exception v1

    .line 3112
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 3113
    const-string v2, "MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVoltage : FileNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3117
    if-eqz v7, :cond_4

    .line 3119
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 3120
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 3123
    :goto_3
    if-eqz v1, :cond_3

    .line 3124
    new-instance v2, Ljava/lang/String;

    sub-int/2addr v1, v6

    invoke-direct {v2, v0, v5, v1}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v2

    goto :goto_2

    .line 3117
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_2

    .line 3119
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 3120
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 3123
    :goto_4
    if-eqz v2, :cond_1

    .line 3124
    new-instance v3, Ljava/lang/String;

    sub-int/2addr v2, v6

    invoke-direct {v3, v0, v5, v2}, Ljava/lang/String;-><init>([BII)V

    :cond_1
    throw v1

    :cond_2
    move v2, v5

    goto :goto_4

    :cond_3
    move-object v0, v7

    goto :goto_2

    :cond_4
    move v1, v5

    goto :goto_3

    :cond_5
    move v1, v5

    goto :goto_1
.end method

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 3745
    const-string v0, "status"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3746
    const-string v1, "scale"

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3747
    const-string v2, "level"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3749
    const-string v3, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleBatteryChanged : Level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    packed-switch v0, :pswitch_data_0

    .line 3758
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mBatteryChargingStatus:Z

    .line 3759
    mul-int/lit8 v0, v2, 0x64

    div-int/2addr v0, v1

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setBatteryLevel(I)V

    .line 3763
    :goto_0
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v0

    .line 3765
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    if-eqz v1, :cond_0

    .line 3766
    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateBatteryImg()V

    .line 3767
    :cond_0
    return-void

    .line 3754
    :pswitch_0
    sput-boolean v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mBatteryChargingStatus:Z

    goto :goto_0

    .line 3751
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Intent;)Z
    .locals 10
    .parameter

    .prologue
    .line 350
    const-string v0, "MoviePlayer"

    const-string v1, "init() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-wide/16 v0, -0x1

    .line 353
    const-string v2, ""

    .line 354
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 356
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1a

    .line 358
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 359
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    const-string v4, "MoviePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Init() - intent.getData():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v4, "MoviePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Init() - scheme : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v4, "title"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 365
    const-string v4, "title"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mFileTitle:Ljava/lang/String;

    .line 366
    const-string v4, "MoviePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Init() - intent.getExtra(\'title\'): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mFileTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_0
    const-string v4, "DISABLE_ALL"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "DISABLE_HDMI"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "DISABLE_VIDEOOUT"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_0
    const/4 v4, 0x1

    :goto_1
    sput-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDisableTvOut:Z

    .line 374
    sget-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDisableTvOut:Z

    if-eqz v4, :cond_1

    .line 375
    const-string v4, "MoviePlayer"

    const-string v5, "Disabling content output based on intent extra"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_1
    const-string v4, "http"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "sshttp"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 380
    :cond_2
    const/16 v2, 0x1d

    iput v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    move-wide v7, v0

    move-wide v1, v7

    move-object v0, v3

    .line 456
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 460
    const-string v3, "/mnt/sdcard/.samsungmediahub"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "file:///mnt/sdcard/.samsungmediahub"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "/mnt/sdcard/sd/movie/avatar.pyv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 463
    :cond_3
    const-string v3, "MoviePlayer"

    const-string v4, "Init() - MovieStore file"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/16 v3, 0x20

    iput v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    .line 465
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mIsMovieStore:Z

    .line 466
    const-string v3, "title_of_movie"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mFileTitle:Ljava/lang/String;

    .line 467
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10

    and-int/2addr v3, v4

    if-nez v3, :cond_4

    .line 470
    const-string v3, "paused_position"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    .line 473
    :cond_4
    sget-wide v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    const-wide/16 v5, 0xbb8

    cmp-long v3, v3, v5

    if-ltz v3, :cond_15

    .line 474
    sget-wide v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    const-wide/16 v5, 0xbb8

    sub-long/2addr v3, v5

    sput-wide v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    .line 477
    :goto_3
    sget-wide v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_16

    .line 478
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasPlayingWhenPaused:Z

    .line 515
    :goto_4
    const/4 v3, 0x2

    sput v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I

    .line 517
    iget v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v4, 0x18

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v4, 0x17

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v4, 0x19

    if-ne v3, v4, :cond_18

    .line 521
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setVideoPath(Ljava/lang/String;J)V

    :cond_6
    :goto_5
    move-wide v0, v1

    .line 591
    :goto_6
    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setKeyType(I)V

    .line 593
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->checkExistSubTitle(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 595
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->initSubTitle()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 596
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->startSubTitleProccessor()V

    .line 604
    :goto_7
    const-string v2, "MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Init() - Video_ID :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init() - WasPlayingWhenPaused : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasPlayingWhenPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init() - PositionWhenPaused : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init() - mKeyType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v0, 0x1

    :goto_8
    return v0

    .line 368
    :cond_7
    const/4 v4, 0x0

    sput-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mFileTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 370
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 382
    :cond_9
    const-string v4, "rtsp"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 384
    const/16 v2, 0x1e

    iput v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    move-wide v7, v0

    move-wide v1, v7

    move-object v0, v3

    goto/16 :goto_2

    .line 386
    :cond_a
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 388
    const/16 v0, 0x16

    iput v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    .line 389
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFileIdbyUri(Landroid/net/Uri;)J

    move-result-wide v0

    .line 390
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    move-wide v8, v0

    move-wide v1, v8

    move-object v0, v7

    goto/16 :goto_2

    .line 392
    :cond_b
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 394
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    .line 395
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFileIdbyUri(Landroid/net/Uri;)J

    move-result-wide v0

    .line 396
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    move-wide v8, v0

    move-wide v1, v8

    move-object v0, v7

    goto/16 :goto_2

    .line 398
    :cond_c
    const-string v2, "file://"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 401
    const-string v0, "preview"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 402
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setPreviewMode(Z)V

    .line 404
    const-string v1, "sort_order"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 405
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setPreviewSortType(I)V

    .line 407
    const-string v1, "key_filename"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setPreviewFilePath(Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 413
    const-string v4, "MoviePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Init() - rootPath :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 417
    if-eqz v0, :cond_e

    .line 418
    const/16 v0, 0x18

    iput v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    .line 422
    :goto_9
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFileIdbyPath_External(Ljava/lang/String;)J

    move-result-wide v0

    .line 438
    :goto_a
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gtz v2, :cond_d

    .line 440
    const/16 v2, 0x1b

    iput v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    :cond_d
    move-wide v7, v0

    move-wide v1, v7

    move-object v0, v3

    .line 442
    goto/16 :goto_2

    .line 420
    :cond_e
    const/16 v0, 0x1a

    iput v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    goto :goto_9

    .line 424
    :cond_f
    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 426
    if-eqz v0, :cond_10

    .line 427
    const/16 v0, 0x17

    iput v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    .line 431
    :goto_b
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFileIdbyPath_Internal(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_a

    .line 429
    :cond_10
    const/16 v0, 0x19

    iput v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    goto :goto_b

    .line 435
    :cond_11
    const/16 v0, 0x1b

    iput v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    .line 436
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFileIdbyUri(Landroid/net/Uri;)J

    move-result-wide v0

    goto :goto_a

    .line 443
    :cond_12
    const-string v2, "content://mms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "content://com.android.email.attachmentprovider"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 447
    :cond_13
    const/16 v2, 0x1f

    iput v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    move-wide v7, v0

    move-wide v1, v7

    move-object v0, v3

    goto/16 :goto_2

    .line 451
    :cond_14
    const/16 v2, 0x1c

    iput v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    move-wide v7, v0

    move-wide v1, v7

    move-object v0, v3

    goto/16 :goto_2

    .line 476
    :cond_15
    const-wide/16 v3, -0x1

    sput-wide v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    goto/16 :goto_3

    .line 480
    :cond_16
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasPlayingWhenPaused:Z

    goto/16 :goto_4

    .line 503
    :cond_17
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mIsMovieStore:Z

    .line 504
    const-wide/16 v3, -0x1

    sput-wide v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    .line 505
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasPlayingWhenPaused:Z

    goto/16 :goto_4

    .line 522
    :cond_18
    iget v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_19

    .line 524
    const-string v3, "rtsp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 525
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    const-string v3, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init() - rtsp URI =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setVideoPath(Ljava/lang/String;J)V

    goto/16 :goto_5

    .line 531
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setVideoPath(Ljava/lang/String;J)V

    goto/16 :goto_5

    .line 535
    :cond_1a
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    .line 536
    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setKeyType(I)V

    .line 538
    sget-object v0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1f

    .line 540
    :cond_1b
    const-string v0, "MoviePlayer"

    const-string v1, "init() - VideoServiceUtil.SCHEME_VIDEO_LIST. Array List is null or size 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    sget-object v0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_1c

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    .line 545
    :cond_1c
    sget-object v0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 546
    sget-object v0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 548
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v0

    .line 549
    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSortType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursor(II)Landroid/database/Cursor;

    move-result-object v0

    .line 551
    if-eqz v0, :cond_20

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_20

    .line 553
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 555
    const/4 v1, 0x0

    :goto_c
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 557
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 558
    sget-object v4, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 561
    :cond_1e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 572
    :cond_1f
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->cur()Z

    move-result v0

    if-nez v0, :cond_21

    .line 574
    const-string v0, "MoviePlayer"

    const-string v1, "Init() - set cur id and filepath fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/videoplayer/activity/VideoList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->startActivity(Landroid/content/Intent;)V

    .line 576
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 577
    const/4 v0, 0x0

    goto/16 :goto_8

    .line 565
    :cond_20
    const-string v0, "MoviePlayer"

    const-string v1, "Init() - cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/videoplayer/activity/VideoList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->startActivity(Landroid/content/Intent;)V

    .line 567
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 568
    const/4 v0, 0x0

    goto/16 :goto_8

    .line 581
    :cond_21
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getID()J

    move-result-wide v0

    .line 582
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getResumePosition(J)J

    move-result-wide v2

    sput-wide v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    .line 583
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasPlayingWhenPaused:Z

    .line 584
    const/4 v2, 0x2

    sput v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I

    .line 587
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mIsMovieStore:Z

    goto/16 :goto_6

    .line 598
    :cond_22
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHasSubtitle:Z

    goto/16 :goto_7

    .line 600
    :cond_23
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHasSubtitle:Z

    .line 601
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    goto/16 :goto_7
.end method

.method private initMainView()V
    .locals 13

    .prologue
    const/16 v9, 0xd

    const/16 v12, 0x8

    const/4 v11, -0x1

    .line 649
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getMainView()Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 650
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getMainView()Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->removeAllViews()V

    .line 652
    :cond_0
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 653
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->removeAllInController()V

    .line 655
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoLayout:Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_2

    .line 656
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 658
    :cond_2
    new-instance v1, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;-><init>(Landroid/content/Context;)V

    .line 659
    .local v1, mainView:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;
    invoke-virtual {v1, p0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->setOnViewChangeListener(Lcom/sec/android/app/videoplayer/view/MainVideoWindow$OnViewChangeListener;)V

    .line 660
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v8, v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->setMainView(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)V

    .line 663
    new-instance v7, Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-direct {v7, p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;-><init>(Landroid/content/Context;)V

    .line 664
    .local v7, videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 665
    .local v5, surfacelp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 666
    invoke-virtual {v7, v5}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 667
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v8, v7}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->setVideoSurface(Lcom/sec/android/app/videoplayer/view/VideoSurface;)V

    .line 669
    new-instance v3, Lcom/sec/android/app/videoplayer/view/VideoStateView;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;-><init>(Landroid/content/Context;)V

    .line 670
    .local v3, stateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getVideoSurfaceHeight()I

    move-result v8

    invoke-direct {v2, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 671
    .local v2, pstate:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v2}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 672
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 673
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v8, v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->setStateView(Lcom/sec/android/app/videoplayer/view/VideoStateView;)V

    .line 674
    invoke-virtual {v3, v12}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 676
    new-instance v8, Landroid/widget/RelativeLayout;

    invoke-direct {v8, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoLayout:Landroid/widget/RelativeLayout;

    .line 677
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoLayout:Landroid/widget/RelativeLayout;

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getVideoSurfaceHeight()I

    move-result v10

    invoke-direct {v9, v11, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 679
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 680
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 683
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;

    iget-object v8, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;-><init>(Landroid/content/Context;)V

    .line 684
    .local v0, lockLayout:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v8, v0}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->setLockCtrlView(Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;)V

    .line 685
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 688
    new-instance v4, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    iget-object v8, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;-><init>(Landroid/content/Context;)V

    .line 689
    .local v4, subTitleView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v8, v4}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->setSubTitleView(Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;)V

    .line 690
    const-string v8, ""

    invoke-virtual {v4, v8}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->updateSubTitle(Ljava/lang/String;)V

    .line 691
    invoke-virtual {v4, v12}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->setVisibility(I)V

    .line 692
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 695
    new-instance v6, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    iget-object v8, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;-><init>(Landroid/content/Context;)V

    .line 696
    .local v6, syncCtrl:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v8, v6}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->setSubTitleSyncView(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)V

    .line 697
    invoke-virtual {v6, v12}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->setVisibility(I)V

    .line 698
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 700
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->addView(Landroid/view/View;)V

    .line 701
    new-instance v8, Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct {v8, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-direct {v9, p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setVideoController(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V

    .line 702
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 703
    return-void
.end method

.method private initMoviePlayer()V
    .locals 6

    .prologue
    const/16 v2, 0x400

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 707
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->queryInLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v5

    :goto_0
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setScreenOrientation(I)V

    .line 710
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->initMainView()V

    .line 712
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getStateView()Lcom/sec/android/app/videoplayer/view/VideoStateView;

    move-result-object v0

    .line 714
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 716
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 718
    if-eqz v0, :cond_1

    .line 720
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 721
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getVideoSurfaceHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 722
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->requestLayout()V

    .line 723
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getVideoUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 725
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getVideoUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 726
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setDrawableMode(Ljava/lang/String;)V

    .line 728
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->doRefreshIcon()V

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 732
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 733
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 734
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 736
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 740
    :cond_2
    iput-boolean v5, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mNewPlay:Z

    .line 744
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->batteryCheck()Z

    move-result v0

    if-nez v0, :cond_4

    .line 745
    invoke-direct {p0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->popupLowBattery(Landroid/app/Activity;)V

    .line 754
    :goto_1
    return-void

    :cond_3
    move v0, v3

    .line 707
    goto :goto_0

    .line 747
    :cond_4
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->startPlayback()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 749
    :catch_0
    move-exception v0

    .line 751
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 752
    const-string v1, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BatteryChecker IOException occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private pauseByDialog()V
    .locals 4

    .prologue
    .line 2159
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v0, :cond_0

    .line 2163
    :try_start_0
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2165
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->pause()V

    .line 2166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mWasPlaying:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2175
    :cond_0
    :goto_0
    return-void

    .line 2169
    :catch_0
    move-exception v0

    .line 2171
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2172
    const-string v1, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured  1 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private popupLowBattery(Landroid/app/Activity;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const-string v3, "MoviePlayer"

    .line 2860
    const-string v0, "MoviePlayer"

    const-string v0, "popupLowBattery"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    sput-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mLowBatteryFinishVideoPlayer:Z

    .line 2863
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPopupLowBattShow:Z

    if-nez v0, :cond_1

    .line 2867
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v0, :cond_0

    .line 2869
    const-string v0, "MoviePlayer"

    const-string v1, "in popup lowbattery pause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2878
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPopupLowBattShow:Z

    .line 2880
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2881
    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2883
    const v1, 0x104000a

    new-instance v2, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$14;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$14;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2892
    new-instance v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$15;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$15;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2901
    new-instance v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2938
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLowBtteryPopup:Landroid/app/AlertDialog;

    .line 2939
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLowBtteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2941
    :cond_1
    return-void

    .line 2873
    :catch_0
    move-exception v0

    .line 2875
    const-string v1, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException occured :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private queryInLandscape()Z
    .locals 3

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1024
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private queueNextRefresh(IJ)V
    .locals 3
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 1843
    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->paused:Z

    if-nez v1, :cond_0

    .line 1845
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1846
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1847
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1849
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private registerBroadcastReciever()V
    .locals 4

    .prologue
    const-string v3, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_ACQUISITION_FAILED"

    .line 1357
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1358
    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1359
    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1360
    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_INCOMINGCALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1361
    const-string v1, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1362
    const-string v1, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_INVALID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1363
    const-string v1, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_NOTSUPPORT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1364
    const-string v1, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_CURRUPT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1365
    const-string v1, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_DIVX_NOTAUTHORIZED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1366
    const-string v1, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_EXPIRED_RENTALCOUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1367
    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_NULL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1368
    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_VALID_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1369
    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_INVALID_CD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1370
    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_INVALID_SD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1371
    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_FIRST_INTERVAL_RENDER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1375
    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SHOW_ACQUIRING_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1376
    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_ACQUISITION_FAILED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1377
    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1378
    const-string v1, "videoplayer.service.MoviePlaybackService.NO_DATA_CONNECTIVITY_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1379
    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_LICENSE_NOT_FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1382
    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_WMDRM_INVALID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1383
    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_NOT_AUTHORIZED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1384
    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_NOT_REGISTERED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1385
    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_RENTAL_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1386
    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_RENTAL_INFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1387
    const-string v1, "android.intent.action.TVOUT_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1388
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1389
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1392
    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_ERR_MEDIA_NULL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1395
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1397
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1399
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1400
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1401
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1402
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1403
    const-string v1, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1404
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1405
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1407
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1408
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1409
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1414
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1415
    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_ACQUISITION_FAILED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1416
    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1417
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1420
    return-void
.end method

.method private resetBrightness()V
    .locals 2

    .prologue
    .line 3456
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbAutoBright:Z

    if-eqz v0, :cond_0

    .line 3463
    :goto_0
    return-void

    .line 3459
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3460
    const/high16 v1, -0x4080

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3462
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private resumeByDialog()V
    .locals 4

    .prologue
    .line 2179
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v0, :cond_0

    .line 2183
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mWasPlaying:Z

    if-eqz v0, :cond_0

    .line 2185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mWasPlaying:Z

    .line 2186
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2195
    :cond_0
    :goto_0
    return-void

    .line 2189
    :catch_0
    move-exception v0

    .line 2191
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2192
    const-string v1, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured  1 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setVideoPlayerBrightness()V
    .locals 3

    .prologue
    .line 3435
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3437
    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbAutoBright:Z

    if-eqz v1, :cond_0

    .line 3439
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3452
    :goto_0
    return-void

    .line 3443
    :cond_0
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getBright()I

    move-result v1

    .line 3445
    if-nez v1, :cond_1

    .line 3446
    const v1, 0x3df5c28f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3451
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 3448
    :cond_1
    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    const v2, 0x3dcccccd

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1
.end method

.method private setVolume()V
    .locals 3

    .prologue
    .line 3486
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 3488
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 3489
    .local v0, nCurrentVolume:I
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setVolumeLevel(I)V

    .line 3491
    .end local v0           #nCurrentVolume:I
    :cond_0
    return-void
.end method

.method private updateAdapter()V
    .locals 4

    .prologue
    .line 3685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3687
    new-instance v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v3, 0x7f070012

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getRepeatString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3688
    new-instance v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v3, 0x7f070011

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getBrightString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3690
    const-string v1, "800x480"

    const-string v2, "400x240"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3692
    new-instance v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v3, 0x7f070013

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getColorToneString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3693
    new-instance v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v3, 0x7f070014

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getOutDoorString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3696
    :cond_0
    new-instance v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingListAdapter;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSettingAdapter:Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingListAdapter;

    .line 3697
    return-void
.end method


# virtual methods
.method public OnVideoLockStateChanged(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "MoviePlayer"

    .line 3553
    const-string v0, "MoviePlayer"

    const-string v0, "OnVideoLockStateChanged."

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v0

    .line 3556
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    move-result-object v1

    .line 3557
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getLockCtrlView()Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;

    move-result-object v2

    .line 3560
    if-nez p1, :cond_2

    .line 3562
    if-nez p2, :cond_3

    .line 3565
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setLockState(Z)V

    .line 3566
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->showLockIcon()V

    .line 3567
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->forceBtnRelease()V

    .line 3569
    iget-object v2, v0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3570
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->hideControls()V

    move v2, v4

    .line 3580
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v3, :cond_1

    .line 3584
    :try_start_0
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-nez v2, :cond_0

    move v4, v5

    :cond_0
    invoke-interface {v3, v4}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->setWakeMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3592
    :cond_1
    :goto_1
    iget-object v3, v0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setEnabled(Z)V

    .line 3593
    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->setEnabled(Z)V

    .line 3594
    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->setEnabled(Z)V

    .line 3596
    :cond_2
    return-void

    .line 3572
    :cond_3
    if-ne p2, v5, :cond_4

    .line 3574
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setLockState(Z)V

    .line 3575
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->hideLockIcon()V

    move v2, v5

    .line 3576
    goto :goto_0

    .line 3586
    :catch_0
    move-exception v3

    .line 3588
    const-string v3, "MoviePlayer"

    const-string v3, "WAKE Error"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_0
.end method

.method public createPopup(I)V
    .locals 8
    .parameter

    .prologue
    const v3, 0x104000a

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3248
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z

    .line 3255
    const/16 v0, 0x1f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x22

    if-eq p1, v0, :cond_0

    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    const/16 v0, 0x27

    if-ne p1, v0, :cond_2

    .line 3258
    :cond_0
    const v0, 0x1040013

    .line 3259
    const v1, 0x1040009

    move v7, v2

    move v2, v0

    move v0, v7

    .line 3278
    :goto_0
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v3

    .line 3279
    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setEmptyTitleName()V

    .line 3281
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getPopupString(I)Ljava/lang/String;

    move-result-object v3

    .line 3282
    const-string v4, "MoviePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createPopup() - pop up String :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3285
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3287
    new-instance v3, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$23;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$23;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v4, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3360
    if-eqz v0, :cond_1

    .line 3362
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$24;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$24;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v4, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3384
    :cond_1
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$25;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$25;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 3417
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;

    .line 3418
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3419
    return-void

    .line 3262
    :cond_2
    const/16 v0, 0x20

    if-eq p1, v0, :cond_3

    const/16 v0, 0x23

    if-ne p1, v0, :cond_4

    .line 3265
    :cond_3
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->error_count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->error_count:I

    move v0, v1

    move v2, v3

    .line 3267
    goto :goto_0

    .line 3269
    :cond_4
    const/16 v0, 0x24

    if-eq p1, v0, :cond_5

    const/16 v0, 0x25

    if-eq p1, v0, :cond_5

    const/16 v0, 0x26

    if-ne p1, v0, :cond_6

    .line 3273
    :cond_5
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->error_count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->error_count:I

    move v0, v1

    move v2, v3

    .line 3275
    goto :goto_0

    :cond_6
    move v0, v2

    move v2, v1

    goto :goto_0
.end method

.method public exitMovieplayer()V
    .locals 1

    .prologue
    .line 1431
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer(I)V

    .line 1432
    return-void
.end method

.method public exitMovieplayer(I)V
    .locals 4
    .parameter

    .prologue
    .line 1436
    const-string v0, "MoviePlayer"

    const-string v1, "exitMovieplayer() - start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->paused:Z

    .line 1439
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->dismissDialogPopup()V

    .line 1441
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRootLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 1444
    :cond_0
    if-lez p1, :cond_1

    .line 1445
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1452
    :goto_0
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->stopPlayingChecker()V

    .line 1453
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->stopBufferingChecker()V

    .line 1454
    return-void

    .line 1449
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v3, "MoviePlayer"

    .line 240
    const-string v2, "MoviePlayer"

    const-string v2, "onCreate()"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 243
    iput-object p0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    .line 245
    invoke-direct {p0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkIsCalling(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    const-string v2, "MoviePlayer"

    const-string v2, "onCreate() - call connect. Do not play video."

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->checkMediaScannerRunning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 255
    const-string v2, "MoviePlayer"

    const-string v2, "onCreate() - MediaScanner is running"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getMediaToast()Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 257
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getMediaToast()Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 258
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_0

    .line 262
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkLCDOnOff()Z

    move-result v2

    if-nez v2, :cond_3

    .line 264
    const-string v2, "MoviePlayer"

    const-string v2, "onCreate() - LCD off"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_0

    .line 269
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->queryInLandscape()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v6

    :goto_1
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setScreenOrientation(I)V

    .line 271
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 272
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    .line 273
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    .line 276
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRootLayout:Landroid/widget/LinearLayout;

    .line 277
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 280
    .local v0, containerParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setContentView(Landroid/view/View;)V

    .line 283
    iput-boolean v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoActivityOnResume:Z

    .line 284
    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->paused:Z

    .line 285
    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mExit:Z

    .line 286
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 287
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 288
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkAutoBrighteness()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbAutoBright:Z

    .line 289
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getActivityPreferences()V

    .line 290
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setVolume()V

    .line 291
    new-instance v2, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSendAppListDialog:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;

    .line 292
    new-instance v2, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDetailsDialog:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;

    .line 293
    new-instance v2, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBookMarkDialog:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    .line 294
    invoke-static {p0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setOnVideoLockStateChangedObserver(Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$OnVideoLockStateChangedObserver;)V

    .line 296
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 298
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->init(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->initMoviePlayer()V

    goto/16 :goto_0

    .end local v0           #containerParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    move v2, v4

    .line 269
    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 758
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMenu:Landroid/view/Menu;

    .line 759
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 760
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 761
    const/4 v0, 0x4

    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v5, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 762
    const/4 v0, 0x4

    const v1, 0x7f07000f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v5, v4, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 763
    const/4 v0, 0x6

    const v1, 0x7f070015

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 764
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 765
    const/4 v0, 0x4

    const/4 v1, 0x6

    const v2, 0x7f07000b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v0, v5, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 766
    const/4 v0, 0x7

    const/4 v1, 0x7

    const v2, 0x7f070071

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 767
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1329
    const-string v0, "MoviePlayer"

    const-string v1, "onDestroy():"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->paused:Z

    .line 1332
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoActivityOnResume:Z

    .line 1333
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->dismissDialogPopup()V

    .line 1335
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPlaybackComplete:Z

    if-eqz v0, :cond_0

    .line 1336
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPlaybackComplete:Z

    .line 1337
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    .line 1338
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasPlayingWhenPaused:Z

    .line 1341
    :cond_0
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->clearObserver()V

    .line 1342
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->SetSRS(I)V

    .line 1343
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setCurPlayingPath(Ljava/lang/String;)V

    .line 1344
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->resumeTvOut()V

    .line 1346
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    if-eqz v0, :cond_1

    .line 1347
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    .line 1349
    :cond_1
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mIsMovieStore:Z

    .line 1352
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1353
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "MoviePlayer"

    .line 1539
    const-string v0, "MoviePlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown() - key event!!!!!!!!!     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    const/16 v0, 0x1a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x55

    if-eq p1, v0, :cond_1

    const/16 v0, 0x56

    if-eq p1, v0, :cond_1

    const/16 v0, 0x59

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x57

    if-eq p1, v0, :cond_1

    const/16 v0, 0x58

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getLockState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1552
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getLockCtrlView()Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;

    move-result-object v0

    .line 1554
    if-eqz v0, :cond_0

    .line 1555
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->showLockIcon()V

    :cond_0
    move v0, v5

    .line 1823
    :goto_0
    return v0

    .line 1560
    :cond_1
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v0

    .line 1563
    :goto_1
    if-nez v0, :cond_3

    .line 1565
    const-string v0, "MoviePlayer"

    const-string v0, "onKeyDown() - does not load VideoSurface"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    move v0, v5

    .line 1567
    goto :goto_0

    .line 1560
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1570
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 1823
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1575
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_b

    .line 1580
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1588
    new-instance v2, Landroid/bluetooth/BluetoothA2dp;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 1590
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1591
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->SetSRS(I)V

    .line 1593
    :cond_4
    if-nez v1, :cond_8

    .line 1595
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->stopPlayingChecker()V

    .line 1599
    :try_start_1
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1600
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->startPlayback()V

    .line 1604
    :goto_2
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1613
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getID()J

    move-result-wide v0

    .line 1615
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->checkExistSubTitle(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1617
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->initSubTitle()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1618
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->startSubTitleProccessor()V

    :goto_3
    move v0, v5

    .line 1626
    goto :goto_0

    .line 1581
    :catch_0
    move-exception v0

    .line 1582
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1583
    const-string v1, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException occured  9 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 1584
    goto/16 :goto_0

    .line 1602
    :cond_5
    :try_start_2
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->play()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1606
    :catch_1
    move-exception v0

    .line 1608
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1609
    const-string v1, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException occured  3 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 1610
    goto/16 :goto_0

    .line 1620
    :cond_6
    sput-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHasSubtitle:Z

    goto :goto_3

    .line 1622
    :cond_7
    sput-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHasSubtitle:Z

    .line 1623
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    goto :goto_3

    .line 1630
    :cond_8
    sget-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPauseEnable:Z

    if-eqz v1, :cond_a

    .line 1632
    if-eqz v0, :cond_9

    .line 1633
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->pause()V

    :cond_9
    :goto_4
    move v0, v5

    .line 1641
    goto/16 :goto_0

    .line 1637
    :cond_a
    if-eqz v0, :cond_9

    .line 1638
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->stop()V

    goto :goto_4

    :cond_b
    move v0, v4

    .line 1644
    goto/16 :goto_0

    .line 1649
    :sswitch_1
    const-string v0, "MoviePlayer"

    const-string v0, "onKeyDown() - KEYCODE_MEDIA_NEXT."

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->next(Z)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1652
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    :cond_c
    move v0, v5

    .line 1654
    goto/16 :goto_0

    .line 1662
    :sswitch_2
    :try_start_3
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v0

    long-to-int v0, v0

    .line 1669
    const/16 v1, 0xbb8

    if-le v0, v1, :cond_f

    .line 1671
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    move-result-object v0

    .line 1673
    if-eqz v0, :cond_d

    .line 1675
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->updateSubTitle(Ljava/lang/String;)V

    .line 1680
    :cond_d
    :try_start_4
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->seek(J)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_e
    :goto_5
    move v0, v5

    .line 1695
    goto/16 :goto_0

    .line 1663
    :catch_2
    move-exception v0

    .line 1664
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1665
    const-string v1, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException occured  4 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 1666
    goto/16 :goto_0

    .line 1682
    :catch_3
    move-exception v0

    .line 1684
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1685
    const-string v1, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException occured  4 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 1686
    goto/16 :goto_0

    .line 1691
    :cond_f
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->prev()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1692
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_5

    .line 1703
    :sswitch_3
    :try_start_5
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1704
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->pause()V

    .line 1705
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1712
    :cond_10
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mLongKeyCnt:I

    const/16 v1, 0x28

    if-le v0, v1, :cond_12

    .line 1713
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->TempLongKeyCnt:I

    .line 1717
    :goto_6
    :try_start_6
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result-wide v0

    long-to-int v0, v0

    .line 1723
    const-wide/high16 v1, 0x4000

    iget v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->TempLongKeyCnt:I

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    .line 1725
    sget v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mLongKeyCnt:I

    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_11

    .line 1727
    :try_start_7
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->seek(J)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 1733
    :cond_11
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mLongKeyCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mLongKeyCnt:I

    move v0, v5

    .line 1734
    goto/16 :goto_0

    .line 1707
    :catch_4
    move-exception v0

    .line 1708
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1709
    const-string v1, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException occured  4 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 1710
    goto/16 :goto_0

    .line 1715
    :cond_12
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mLongKeyCnt:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->TempLongKeyCnt:I

    goto :goto_6

    .line 1718
    :catch_5
    move-exception v0

    .line 1719
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1720
    const-string v1, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException occured  8 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 1721
    goto/16 :goto_0

    .line 1728
    :catch_6
    move-exception v0

    .line 1729
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1730
    const-string v1, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException occured  8 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 1731
    goto/16 :goto_0

    .line 1740
    :sswitch_4
    :try_start_8
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1741
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->pause()V

    .line 1742
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 1751
    :cond_13
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mLongKeyCnt:I

    const/16 v1, 0x28

    if-le v0, v1, :cond_15

    .line 1752
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->TempLongKeyCnt:I

    .line 1756
    :goto_7
    :try_start_9
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    move-result-wide v0

    long-to-int v0, v0

    .line 1762
    const-wide/high16 v1, 0x4000

    iget v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->TempLongKeyCnt:I

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v0, v1

    .line 1764
    sget v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mLongKeyCnt:I

    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_14

    .line 1766
    :try_start_a
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->seek(J)J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 1772
    :cond_14
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mLongKeyCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mLongKeyCnt:I

    move v0, v5

    .line 1773
    goto/16 :goto_0

    .line 1744
    :catch_7
    move-exception v0

    .line 1745
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1746
    const-string v1, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException occured  4 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 1747
    goto/16 :goto_0

    .line 1754
    :cond_15
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mLongKeyCnt:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->TempLongKeyCnt:I

    goto :goto_7

    .line 1757
    :catch_8
    move-exception v0

    .line 1758
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1759
    const-string v1, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException occured  8 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 1760
    goto/16 :goto_0

    .line 1767
    :catch_9
    move-exception v0

    .line 1768
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1769
    const-string v1, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException occured  8 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 1770
    goto/16 :goto_0

    .line 1778
    :sswitch_5
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleSyncView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    move-result-object v1

    .line 1780
    if-eqz v1, :cond_16

    .line 1781
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->hideSyncBtn()V

    .line 1784
    :cond_16
    invoke-virtual {v0, v7}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->removeMessage(I)V

    .line 1785
    invoke-virtual {v0, v5}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->removeMessage(I)V

    .line 1787
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1788
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1790
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setVolumeLevel(I)V

    .line 1791
    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->updateVolumeBar(I)V

    .line 1793
    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 1794
    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->sendMessage(IJ)V

    move v0, v5

    .line 1796
    goto/16 :goto_0

    .line 1801
    :sswitch_6
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleSyncView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    move-result-object v1

    .line 1803
    if-eqz v1, :cond_17

    .line 1804
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->hideSyncBtn()V

    .line 1807
    :cond_17
    invoke-virtual {v0, v7}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->removeMessage(I)V

    .line 1808
    invoke-virtual {v0, v5}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->removeMessage(I)V

    .line 1810
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, v5, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1811
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1813
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setVolumeLevel(I)V

    .line 1814
    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->updateVolumeBar(I)V

    .line 1816
    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 1817
    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->sendMessage(IJ)V

    move v0, v5

    .line 1819
    goto/16 :goto_0

    .line 1570
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_6
        0x19 -> :sswitch_5
        0x55 -> :sswitch_0
        0x57 -> :sswitch_1
        0x58 -> :sswitch_2
        0x59 -> :sswitch_4
        0x5a -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v6, "RemoteException occured  3 :"

    const-string v4, "MoviePlayer"

    .line 1458
    const-string v0, "MoviePlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyUp() - key event :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-eq p1, v0, :cond_0

    const/16 v0, 0x56

    if-eq p1, v0, :cond_0

    const/16 v0, 0x59

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x57

    if-eq p1, v0, :cond_0

    const/16 v0, 0x58

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getLockState()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 1534
    :goto_0
    return v0

    .line 1472
    :cond_0
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v0

    .line 1474
    sparse-switch p1, :sswitch_data_0

    .line 1534
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 1478
    goto :goto_0

    .line 1481
    :sswitch_1
    if-eqz v0, :cond_1

    .line 1482
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->stop()V

    :cond_1
    move v0, v3

    .line 1484
    goto :goto_0

    .line 1488
    :sswitch_2
    sput v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mLongKeyCnt:I

    .line 1491
    :try_start_0
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I

    if-ne v0, v5, :cond_2

    .line 1492
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->play()V

    .line 1493
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move v0, v3

    .line 1500
    goto :goto_0

    .line 1495
    :catch_0
    move-exception v0

    .line 1496
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1497
    const-string v1, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException occured  3 :"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1505
    :sswitch_3
    sput v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mLongKeyCnt:I

    .line 1507
    :try_start_1
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I

    if-ne v0, v5, :cond_3

    .line 1508
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->play()V

    .line 1509
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    move v0, v3

    .line 1515
    goto :goto_0

    .line 1511
    :catch_1
    move-exception v0

    .line 1512
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1513
    const-string v1, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException occured  3 :"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1520
    :sswitch_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    .line 1522
    goto/16 :goto_0

    .line 1525
    :cond_4
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getLockState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1526
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->OnVideoLockStateChanged(II)V

    :goto_3
    move v0, v3

    .line 1530
    goto/16 :goto_0

    .line 1528
    :cond_5
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->OnVideoLockStateChanged(II)V

    goto :goto_3

    .line 1474
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_4
        0x56 -> :sswitch_1
        0x59 -> :sswitch_2
        0x5a -> :sswitch_3
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const-string v2, "MoviePlayer"

    .line 306
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 307
    const-string v1, "MoviePlayer"

    const-string v1, "onNewIntent()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-direct {p0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkIsCalling(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->checkMediaScannerRunning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    const-string v1, "MoviePlayer"

    const-string v1, "onNewIntent() - MediaScanner is running"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getMediaToast()Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 319
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getMediaToast()Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 320
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_0

    .line 324
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkLCDOnOff()Z

    move-result v1

    if-nez v1, :cond_3

    .line 325
    const-string v1, "MoviePlayer"

    const-string v1, "onCreate() - LCD off"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_0

    .line 330
    :cond_3
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getMainView()Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    move-result-object v0

    .line 332
    .local v0, mainView:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;
    if-eqz v0, :cond_4

    .line 333
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 335
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkAutoBrighteness()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbAutoBright:Z

    .line 336
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setVideoPlayerBrightness()V

    .line 338
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setVolume()V

    .line 339
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->clearObserver()V

    .line 340
    invoke-static {p0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setOnVideoLockStateChangedObserver(Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$OnVideoLockStateChangedObserver;)V

    .line 342
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->init(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->initMoviePlayer()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "MoviePlayer"

    .line 772
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 774
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 775
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 777
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    move v0, v4

    .line 883
    :goto_1
    return v0

    .line 781
    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getID()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    .line 783
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getID()J

    move-result-wide v0

    .line 784
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getUriByVideoId(J)Landroid/net/Uri;

    move-result-object v2

    .line 786
    if-nez v2, :cond_2

    .line 788
    const-string v0, "MoviePlayer"

    const-string v0, "onOptionsItemSelected() - uri is null."

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f07006f

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v3

    .line 790
    goto :goto_1

    .line 793
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSendAppListDialog:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v1, v2}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->showSendAppListDialog(JLjava/lang/String;)V

    goto :goto_0

    .line 800
    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getID()J

    move-result-wide v0

    .line 802
    cmp-long v0, v0, v6

    if-gtz v0, :cond_3

    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mIsMovieStore:Z

    if-nez v0, :cond_3

    .line 807
    const-string v0, "MoviePlayer"

    const-string v0, "onOptionsItemSelected() - video ID is null."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 808
    goto :goto_1

    .line 811
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDetailsDialog:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->initdatas()V

    goto :goto_0

    .line 817
    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getVideoUri()Ljava/lang/String;

    move-result-object v0

    .line 818
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getID()J

    move-result-wide v1

    .line 819
    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->AddBookmark(Ljava/lang/String;J)V

    goto :goto_0

    .line 825
    :pswitch_3
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getID()J

    move-result-wide v0

    .line 827
    invoke-static {}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getInstance()Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v2

    .line 828
    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->getTotalCnt(J)I

    move-result v2

    .line 830
    if-nez v2, :cond_4

    .line 832
    const-string v0, "MoviePlayer"

    const-string v0, "Bookmark None"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getNoBookmarkToast()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 834
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getNoBookmarkToast()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 838
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBookMarkDialog:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->initdatas(J)V

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBookMarkDialog:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->show()V

    goto/16 :goto_0

    .line 845
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createSettingPopup()V

    goto/16 :goto_0

    .line 849
    :pswitch_5
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSubTitleSettingPopup(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 853
    :pswitch_6
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 855
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 856
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setBluetoothA2dpForceOn(Z)V

    .line 857
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->SetSRS(I)V

    .line 858
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v0

    .line 860
    if-eqz v0, :cond_1

    .line 861
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->updateSRSBtn()V

    goto/16 :goto_0

    .line 863
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 864
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 865
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 866
    const-string v1, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 869
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 870
    :catch_0
    move-exception v0

    .line 871
    const-string v1, "MoviePlayer"

    const-string v1, "onOptionsItemSelected() share bt - activity not found!"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 879
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setBluetoothA2dpForceOn(Z)V

    goto/16 :goto_0

    .line 777
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 10

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v9, "MoviePlayer"

    .line 1241
    const-string v2, "MoviePlayer"

    const-string v2, "onPause() - start"

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1244
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mThumbKicker:Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;->stopKickThumbSuspend()V

    .line 1248
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1250
    const-string v0, "MoviePlayer"

    const-string v0, "onPause() - mVideoCtrlUtil is null"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1252
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 1325
    :goto_0
    return-void

    .line 1261
    :cond_0
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    if-eqz v2, :cond_1

    .line 1262
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->pauseSubTitleProcessor()V

    .line 1266
    :cond_1
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v2

    move-object v8, v2

    .line 1270
    :goto_1
    if-eqz v8, :cond_5

    .line 1272
    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->onPause()V

    .line 1274
    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getSurfaceExists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1278
    :try_start_0
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v2, :cond_2

    .line 1283
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->updateResumePos(Z)V

    .line 1286
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->broadcastPausedPosition(Landroid/content/Context;)V

    .line 1288
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->stop()V

    .line 1289
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->reset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1305
    :cond_2
    :goto_2
    iput-boolean v7, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoActivityOnResume:Z

    .line 1306
    iput-boolean v7, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mNewPlay:Z

    move-wide v2, v0

    move v6, v5

    .line 1308
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1309
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->dismissDialogPopup()V

    .line 1310
    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->forceBtnRelease()V

    .line 1312
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_3

    .line 1313
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mStatusBar:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v7}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1315
    :cond_3
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->resumeTvOut()V

    .line 1317
    invoke-static {v7}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 1318
    invoke-static {v7}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 1320
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->stopPlayingChecker()V

    .line 1321
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->stopBufferingChecker()V

    .line 1323
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSensorOn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1324
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPlayStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1266
    :cond_4
    const/4 v2, 0x0

    move-object v8, v2

    goto :goto_1

    .line 1292
    :catch_0
    move-exception v2

    .line 1294
    const-string v3, "MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException occured :"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1300
    :cond_5
    const-string v0, "MoviePlayer"

    const-string v0, "onPause() - does not load VideoSurface"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 888
    .line 894
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getCurPlayingPath()Ljava/lang/String;

    move-result-object v0

    .line 896
    if-eqz v0, :cond_c

    .line 897
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsShare(Ljava/lang/String;)Z

    move-result v0

    .line 899
    :goto_0
    sget-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHasSubtitle:Z

    if-nez v1, :cond_b

    move v1, v6

    .line 902
    :goto_1
    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    move v2, v7

    move v3, v7

    move v4, v0

    move v0, v7

    .line 940
    :goto_2
    sget-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mIsMovieStore:Z

    if-eqz v5, :cond_0

    move v3, v7

    .line 944
    :cond_0
    invoke-interface {p1, v6, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 945
    invoke-interface {p1, v7, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 946
    invoke-interface {p1, v10, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 947
    const/4 v3, 0x3

    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 948
    const/4 v2, 0x4

    invoke-interface {p1, v2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 949
    invoke-interface {p1, v8, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 951
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 953
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 954
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 955
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 963
    :goto_3
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020021

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 964
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 965
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020018

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 966
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020019

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 967
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020020

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 968
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020024

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 969
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020023

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 970
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020022

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 971
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 908
    :cond_1
    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v3, 0x19

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_3

    :cond_2
    move v2, v7

    move v3, v7

    move v4, v0

    move v0, v6

    .line 912
    goto/16 :goto_2

    .line 914
    :cond_3
    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v3, 0x17

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v3, 0x18

    if-ne v2, v3, :cond_5

    :cond_4
    move v0, v6

    move v2, v6

    move v3, v7

    move v4, v6

    .line 919
    goto/16 :goto_2

    .line 921
    :cond_5
    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v3, 0x16

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_7

    :cond_6
    move v2, v6

    move v3, v7

    move v4, v0

    move v0, v6

    .line 925
    goto/16 :goto_2

    .line 927
    :cond_7
    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_8

    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_8

    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v3, 0x1d

    if-eq v2, v3, :cond_8

    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_8

    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_a

    :cond_8
    move v0, v6

    move v2, v6

    move v3, v6

    move v4, v6

    .line 935
    goto/16 :goto_2

    .line 957
    :cond_9
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 958
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_a
    move v2, v6

    move v3, v7

    move v4, v0

    move v0, v6

    goto/16 :goto_2

    :cond_b
    move v1, v7

    goto/16 :goto_1

    :cond_c
    move v0, v6

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "MoviePlayer"

    .line 1117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1118
    const-string v0, "MoviePlayer"

    const-string v0, "onResume() - start"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    invoke-static {p0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->checkMediaScannerRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    const-string v0, "MoviePlayer"

    const-string v0, "onResume() - MediaScanner is running"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getMediaToast()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1125
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getMediaToast()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1126
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 1237
    :goto_0
    return-void

    .line 1131
    :cond_0
    invoke-direct {p0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkIsCalling(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1133
    const-string v0, "MoviePlayer"

    const-string v0, "onResume() - call connect. Do not play video."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer(I)V

    goto :goto_0

    .line 1138
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkLCDOnOff()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1140
    const-string v0, "MoviePlayer"

    const-string v0, "onResume() - LCD off"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_0

    .line 1145
    :cond_2
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    if-nez v0, :cond_3

    .line 1147
    const-string v0, "MoviePlayer"

    const-string v0, "onResume() - mVideoCtrlUtil is null"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_0

    .line 1152
    :cond_3
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoActivityOnResume:Z

    .line 1153
    sput-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mReadPosition:Z

    .line 1155
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mThumbKicker:Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;->suspendThumbWork()V

    .line 1157
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v1

    .line 1159
    if-nez v1, :cond_4

    .line 1161
    const-string v0, "MoviePlayer"

    const-string v0, "onResume() - does not load VideoSurface"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_0

    .line 1166
    :cond_4
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->keepScreen()V

    .line 1167
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkAutoBrighteness()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbAutoBright:Z

    .line 1168
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setVideoPlayerBrightness()V

    .line 1169
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setVolume()V

    .line 1171
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDivXTVoutEnable:Z

    if-nez v0, :cond_5

    .line 1172
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->suspendTvOut()V

    .line 1174
    :cond_5
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mStatusBar:Landroid/app/StatusBarManager;

    .line 1175
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mStatusBar:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1177
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getColortone()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 1178
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getOutdoorvisibility()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 1180
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasIncomingCall:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mNewPlay:Z

    if-nez v0, :cond_9

    .line 1192
    :goto_1
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 1194
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadphoneOn()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1196
    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1198
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->SetSRS(I)V

    .line 1199
    iget-object v0, v1, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateSRSBtn()V

    .line 1214
    :cond_7
    :goto_2
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getLockState()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1215
    invoke-virtual {p0, v4, v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->OnVideoLockStateChanged(II)V

    .line 1221
    :goto_3
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->batteryCheck()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1222
    invoke-direct {p0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->popupLowBattery(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    :cond_8
    :goto_4
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->onResume()V

    .line 1233
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setControllerUpdate()V

    .line 1235
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->startSubTitleProccessor()V

    .line 1236
    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mNewPlay:Z

    goto/16 :goto_0

    .line 1188
    :cond_9
    sput-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasIncomingCall:Z

    goto :goto_1

    .line 1201
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadphoneOn()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1203
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->SetSRS(I)V

    .line 1204
    iget-object v0, v1, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateSRSBtn()V

    goto :goto_2

    .line 1209
    :cond_b
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->SetSRS(I)V

    .line 1210
    iget-object v0, v1, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateSRSBtn()V

    goto :goto_2

    .line 1217
    :cond_c
    invoke-virtual {p0, v4, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->OnVideoLockStateChanged(II)V

    goto :goto_3

    .line 1223
    :cond_d
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mNewPlay:Z

    if-nez v0, :cond_8

    .line 1224
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->startPlayback()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1226
    :catch_0
    move-exception v0

    .line 1228
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1229
    const-string v2, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BatteryChecker IOException occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v3, "MoviePlayer"

    .line 1029
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1030
    const-string v0, "MoviePlayer"

    const-string v0, "onStart()"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    invoke-direct {p0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkIsCalling(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1046
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getOutdoorvisibility()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 1049
    :cond_0
    const-string v0, "video"

    invoke-static {v0, v4}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    .line 1050
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setVideoPlayerBrightness()V

    .line 1051
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->registerBroadcastReciever()V

    .line 1056
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1057
    const-string v1, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart() -  NOT support INTERNAL_SD. status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    const/16 v1, 0x1d

    sget v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-eq v1, v2, :cond_2

    const/16 v1, 0x1e

    sget v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-eq v1, v2, :cond_2

    .line 1061
    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "unmounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "bad_removal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1063
    :cond_1
    const-string v0, "MoviePlayer"

    const-string v0, "onStart() - SD card not exist"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 1074
    :goto_0
    return-void

    .line 1070
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1071
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1073
    :cond_3
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, v4, v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->queueNextRefresh(IJ)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1078
    const-string v0, "MoviePlayer"

    const-string v1, "onStop() - start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1084
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1087
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1089
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->saveActivityPreferences()V

    .line 1092
    invoke-direct {p0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkIsCalling(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1104
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 1105
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 1108
    :cond_3
    const-string v0, "video"

    invoke-static {v0, v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    .line 1109
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->resetBrightness()V

    .line 1110
    invoke-static {p0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->unbindFromService(Landroid/content/Context;)V

    .line 1112
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1113
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1424
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mChangeViewDone:Z

    if-nez v0, :cond_0

    .line 1425
    const/4 v0, 0x1

    .line 1426
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onViewChange(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 3422
    return-void
.end method

.method protected saveActivityPreferences()V
    .locals 4

    .prologue
    .line 633
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 634
    .local v1, myPref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 636
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPreference_repeat:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getRepeatType()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 637
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPreference_colortone:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getColortone()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 638
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPreference_outdoor:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getOutdoorvisibility()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 639
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPreference_screenmode:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getFitToScreenMode()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 641
    iget-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbAutoBright:Z

    if-nez v2, :cond_0

    .line 642
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPreference_brightness:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getBright()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 644
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 645
    return-void
.end method
