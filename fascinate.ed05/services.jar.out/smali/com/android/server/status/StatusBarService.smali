.class public Lcom/android/server/status/StatusBarService;
.super Landroid/app/IStatusBar$Stub;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/status/StatusBarService$UninstallReceiver;,
        Lcom/android/server/status/StatusBarService$BrightnessContentObserver;,
        Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;,
        Lcom/android/server/status/StatusBarService$BTHeadSetBroadcastReceiver;,
        Lcom/android/server/status/StatusBarService$DriveContentObserver;,
        Lcom/android/server/status/StatusBarService$OrientationContentObserver;,
        Lcom/android/server/status/StatusBarService$MobileDataContentObserver;,
        Lcom/android/server/status/StatusBarService$GpsContentObserver;,
        Lcom/android/server/status/StatusBarService$MyTicker;,
        Lcom/android/server/status/StatusBarService$Launcher;,
        Lcom/android/server/status/StatusBarService$H;,
        Lcom/android/server/status/StatusBarService$ExpandedDialog;,
        Lcom/android/server/status/StatusBarService$NotificationCallbacks;,
        Lcom/android/server/status/StatusBarService$DisableRecord;,
        Lcom/android/server/status/StatusBarService$PendingOp;
    }
.end annotation


# static fields
.field static final ANIM_FRAME_DURATION:I = 0x10

.field static final EXPANDED_FULL_OPEN:I = -0x2711

.field static final EXPANDED_LEAVE_ALONE:I = -0x2710

.field private static final FMRADIO_LAUNCH_ACTION:Ljava/lang/String; = "com.android.fm.player"

.field private static final FMRADIO_OFF_ACTION:Ljava/lang/String; = "com.android.fm.player.off"

.field private static final FMRADIO_ON_ACTION:Ljava/lang/String; = "com.android.fm.player.on"

.field private static final FMRADIO_TUNE_NEXT_ACTION:Ljava/lang/String; = "com.android.fm.player.tune.next"

.field private static final FMRADIO_TUNE_PREV_ACTION:Ljava/lang/String; = "com.android.fm.player.tune.prev"

.field private static final FMRADIO_TURNED_OFF:Ljava/lang/String; = "com.android.fm.player.status.off"

.field private static final FMRADIO_TURNED_ON:Ljava/lang/String; = "com.android.fm.player.status.on"

.field private static final MAX_SCREEN_BRIGHTNESS:I = 0xff

.field private static final MIN_SCREEN_BRIGHTNESS:I = 0x28

.field private static final MSG_ANIMATE:I = 0x3e8

.field private static final MSG_ANIMATE_REVEAL:I = 0x3e9

.field private static final MSG_UPDATTE_SWITCHBTN:I = 0x3ea

.field private static final MUSICPLAYER_FF_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field private static final MUSICPLAYER_FF_DOWN_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.ff.down"

.field private static final MUSICPLAYER_FF_UP_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.ff.up"

.field private static final MUSICPLAYER_REW_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.previous"

.field private static final MUSICPLAYER_REW_DOWN_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.rew.down"

.field private static final MUSICPLAYER_REW_UP_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.rew.up"

.field private static final MUSICPLAYER_STATE_CHANGED:Ljava/lang/String; = "com.android.music.musicservicecommand.mediainfo"

.field private static final MUSICPLAYER_STATE_EXTRA:Ljava/lang/String; = "playing"

.field private static final MUSICPLAYER_TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"

.field private static final MUSIC_ALBUMART_URI_BASE:Ljava/lang/String; = "content://media/external/audio/albumart/"

.field private static final OP_ADD_ICON:I = 0x1

.field private static final OP_DISABLE:I = 0x7

.field private static final OP_EXPAND:I = 0x5

.field private static final OP_REMOVE_ICON:I = 0x3

.field private static final OP_SET_VISIBLE:I = 0x4

.field private static final OP_TOGGLE:I = 0x6

.field private static final OP_UPDATE_ICON:I = 0x2

.field private static final QUICKPANEL_BT:I = 0x2

.field private static final QUICKPANEL_CALL:I = 0x1

.field private static final QUICKPANEL_GPS:I = 0x4

.field private static final QUICKPANEL_MOBILE_DATA:I = 0x8

.field private static final QUICKPANEL_MUSIC:I = 0x2

.field private static final QUICKPANEL_NONE:I = 0x0

.field private static final QUICKPANEL_ORIENTATION:I = 0x10

.field private static final QUICKPANEL_RADIO:I = 0x8

.field private static final QUICKPANEL_RECORD:I = 0x4

.field private static final QUICKPANEL_WIFI:I = 0x1

.field static final SPEW:Z = false

.field static final TAG:Ljava/lang/String; = "StatusBar"

.field private static final TEXT_COLOR_OFF:I = -0x383839

.field private static final TEXT_COLOR_ON:I = -0x1

.field static final TWDBG:Z = false

.field private static final VOICERECORDER_BUTTON_ACTION:Ljava/lang/String; = "com.samsung.sec.android.RecordReceiver"

.field private static final VOICERECORDER_BUTTON_FUNCTION:Ljava/lang/String; = "recordFunction"

.field private static final VOICERECORDER_BUTTON_LAUNCH:I = 0x5

.field private static final VOICERECORDER_BUTTON_PAUSE:I = 0x3

.field private static final VOICERECORDER_BUTTON_RESUME:I = 0x4

.field private static final VOICERECORDER_BUTTON_SAVE:I = 0x2

.field private static final VOICERECORDER_BUTTON_START:I = 0x1

.field private static final VOICERECORDER_STATE_CHANGED:Ljava/lang/String; = "com.android.notification.voicerecordcommand"

.field private static final VOICERECORDER_STATE_EXTRA_COMMAND_NAME:Ljava/lang/String; = "command"

.field private static final VOICERECORDER_STATE_EXTRA_FROM_NAME:Ljava/lang/String; = "from"

.field private static final VOICERECORDER_STATE_EXTRA_FROM_VALUE:Ljava/lang/String; = "com.sec.app.voicerecorder.activity"

.field private static final VOICERECORDER_STATE_IDLE:I = 0xc

.field private static final VOICERECORDER_STATE_PAUSE:I = 0xd

.field private static final VOICERECORDER_STATE_RECORD:I = 0xb

.field private static mIsAutoBrightness:Z


# instance fields
.field mAbsPos:[I

.field mAnimAccel:F

.field mAnimLastTime:J

.field mAnimVel:F

.field mAnimY:F

.field mAnimating:Z

.field mAnimatingReveal:Z

.field mBTBtn:Landroid/widget/TextView;

.field private mBTBtnClickListener:Landroid/view/View$OnClickListener;

.field mBTHeadsetReceiver:Lcom/android/server/status/StatusBarService$BTHeadSetBroadcastReceiver;

.field mBTStatus:Z

.field mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

.field mBrightnessObserver:Lcom/android/server/status/StatusBarService$BrightnessContentObserver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCallStatus:I

.field mClearButton:Landroid/widget/TextView;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field mCloseView:Lcom/android/server/status/CloseDragHandle;

.field mContentResolver:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field mCurAnimationTime:J

.field mDateView:Lcom/android/server/status/DateView;

.field mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/StatusBarService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field mDisabled:I

.field final mDisplay:Landroid/view/Display;

.field mDisplayHeight:F

.field mDriveObserver:Lcom/android/server/status/StatusBarService$DriveContentObserver;

.field mEdgeBorder:I

.field mExpanded:Z

.field mExpandedContents:Landroid/view/View;

.field mExpandedDialog:Landroid/app/Dialog;

.field mExpandedParams:Landroid/view/WindowManager$LayoutParams;

.field mExpandedView:Lcom/android/server/status/ExpandedView;

.field mExpandedVisible:Z

.field mFFLongPressed:Z

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mGPSBtn:Landroid/widget/TextView;

.field private mGPSBtnClickListener:Landroid/view/View$OnClickListener;

.field mGPSStatus:Z

.field mGpsObserver:Lcom/android/server/status/StatusBarService$GpsContentObserver;

.field mHandler:Lcom/android/server/status/StatusBarService$H;

.field mIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/StatusBarIcon;",
            ">;"
        }
    .end annotation
.end field

.field mIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/status/StatusBarIcon;",
            ">;"
        }
    .end annotation
.end field

.field mIcons:Landroid/widget/LinearLayout;

.field mIsHeadsetPlugged:Z

.field mLatestItems:Landroid/widget/LinearLayout;

.field mLatestTitle:Landroid/widget/TextView;

.field mMiniCallVisible:Z

.field mMiniMusicVisible:Z

.field mMiniRadioVisible:Z

.field mMiniRecorderVisible:Z

.field mMobileDataBtn:Landroid/widget/TextView;

.field private mMobileDataBtnClickListener:Landroid/view/View$OnClickListener;

.field mMobileDataObserver:Lcom/android/server/status/StatusBarService$MobileDataContentObserver;

.field mMobileDataStatus:Z

.field mMoreIcon:Lcom/android/server/status/StatusBarIcon;

.field mMusicAlbumArtHeight:I

.field mMusicAlbumArtWidth:I

.field mMusicStatus:Z

.field mNewBaseTime:J

.field mNoNotificationsTitle:Landroid/widget/TextView;

.field mNotificationCallbacks:Lcom/android/server/status/StatusBarService$NotificationCallbacks;

.field mNotificationData:Lcom/android/server/status/NotificationViewList;

.field mNotificationIcons:Lcom/android/server/status/IconMerger;

.field mNotificationLinearLayout:Landroid/view/View;

.field mOldBaseTime:J

.field mOngoingItems:Landroid/widget/LinearLayout;

.field mOngoingTitle:Landroid/widget/TextView;

.field mOrientationBtn:Landroid/widget/TextView;

.field private mOrientationBtnClickListener:Landroid/view/View$OnClickListener;

.field mOrientationObserver:Lcom/android/server/status/StatusBarService$OrientationContentObserver;

.field mOrientationStatus:Z

.field private mPanelSlightlyVisible:Z

.field mPixelFormat:I

.field mPlmnLabel:Landroid/widget/TextView;

.field mPositionTmp:[I

.field mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/StatusBarService$PendingOp;",
            ">;"
        }
    .end annotation
.end field

.field mQueueLock:Ljava/lang/Object;

.field mQuickPanelContainer:Landroid/widget/LinearLayout;

.field mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

.field mREWLongPressed:Z

.field mRadioStatus:Z

.field mRecorderStatus:I

.field mRightIconSlots:[Ljava/lang/String;

.field mRightIcons:[Lcom/android/server/status/StatusBarIcon;

.field private mScreenBrightness:Landroid/widget/SeekBar;

.field mScrollView:Landroid/widget/ScrollView;

.field mSpnLabel:Landroid/widget/TextView;

.field mStartTracing:Ljava/lang/Runnable;

.field mStatusBarView:Lcom/android/server/status/StatusBarView;

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStopTracing:Ljava/lang/Runnable;

.field mTTSWork:Ljava/lang/Runnable;

.field private mTicker:Lcom/android/server/status/Ticker;

.field private mTickerView:Landroid/view/View;

.field private mTicking:Z

.field mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field mTracking:Z

.field mTrackingParams:Landroid/view/WindowManager$LayoutParams;

.field mTrackingPosition:I

.field mTrackingView:Lcom/android/server/status/TrackingView;

.field mTts:Landroid/speech/tts/TextToSpeech;

.field mTtsListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field mTtsObserver:Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;

.field private mUninstallReceiver:Lcom/android/server/status/StatusBarService$UninstallReceiver;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mViewDelta:I

.field mWiFiBtn:Landroid/widget/TextView;

.field private mWiFiBtnClickListener:Landroid/view/View$OnClickListener;

.field mWiFiStatus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const-wide/high16 v5, -0x8000

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 501
    invoke-direct {p0}, Landroid/app/IStatusBar$Stub;-><init>()V

    .line 313
    new-instance v0, Lcom/android/server/status/StatusBarService$H;

    invoke-direct {v0, p0, v2}, Lcom/android/server/status/StatusBarService$H;-><init>(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$1;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    .line 314
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mQueueLock:Ljava/lang/Object;

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mIconList:Ljava/util/ArrayList;

    .line 335
    new-instance v0, Lcom/android/server/status/NotificationViewList;

    invoke-direct {v0}, Lcom/android/server/status/NotificationViewList;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    .line 351
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mPositionTmp:[I

    .line 382
    iput-boolean v1, p0, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    .line 384
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mAbsPos:[I

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    .line 388
    iput v1, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    .line 391
    new-instance v0, Lcom/android/server/status/StatusBarService$DriveContentObserver;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$DriveContentObserver;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mDriveObserver:Lcom/android/server/status/StatusBarService$DriveContentObserver;

    .line 392
    new-instance v0, Lcom/android/server/status/StatusBarService$BTHeadSetBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$BTHeadSetBroadcastReceiver;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mBTHeadsetReceiver:Lcom/android/server/status/StatusBarService$BTHeadSetBroadcastReceiver;

    .line 393
    iput-object v2, p0, Lcom/android/server/status/StatusBarService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 394
    new-instance v0, Lcom/android/server/status/StatusBarService$1;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$1;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    .line 411
    new-instance v0, Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mTtsObserver:Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;

    .line 412
    iput-object v2, p0, Lcom/android/server/status/StatusBarService;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 413
    new-instance v0, Lcom/android/server/status/StatusBarService$2;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$2;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mTtsListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 426
    new-instance v0, Lcom/android/server/status/StatusBarService$BrightnessContentObserver;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$BrightnessContentObserver;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mBrightnessObserver:Lcom/android/server/status/StatusBarService$BrightnessContentObserver;

    .line 448
    new-instance v0, Lcom/android/server/status/StatusBarService$GpsContentObserver;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$GpsContentObserver;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mGpsObserver:Lcom/android/server/status/StatusBarService$GpsContentObserver;

    .line 461
    new-instance v0, Lcom/android/server/status/StatusBarService$MobileDataContentObserver;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$MobileDataContentObserver;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mMobileDataObserver:Lcom/android/server/status/StatusBarService$MobileDataContentObserver;

    .line 465
    new-instance v0, Lcom/android/server/status/StatusBarService$OrientationContentObserver;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$OrientationContentObserver;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mOrientationObserver:Lcom/android/server/status/StatusBarService$OrientationContentObserver;

    .line 472
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mMusicStatus:Z

    .line 473
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/server/status/StatusBarService;->mRecorderStatus:I

    .line 474
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mRadioStatus:Z

    .line 476
    iput v1, p0, Lcom/android/server/status/StatusBarService;->mMusicAlbumArtWidth:I

    .line 477
    iput v1, p0, Lcom/android/server/status/StatusBarService;->mMusicAlbumArtHeight:I

    .line 492
    iput-wide v5, p0, Lcom/android/server/status/StatusBarService;->mOldBaseTime:J

    .line 493
    iput-wide v5, p0, Lcom/android/server/status/StatusBarService;->mNewBaseTime:J

    .line 1262
    new-instance v0, Lcom/android/server/status/StatusBarService$3;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$3;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 2750
    new-instance v0, Lcom/android/server/status/StatusBarService$25;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$25;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3122
    new-instance v0, Lcom/android/server/status/StatusBarService$27;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$27;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mClearButtonListener:Landroid/view/View$OnClickListener;

    .line 3129
    new-instance v0, Lcom/android/server/status/StatusBarService$28;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$28;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3538
    new-instance v0, Lcom/android/server/status/StatusBarService$29;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$29;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mTTSWork:Ljava/lang/Runnable;

    .line 3696
    new-instance v0, Lcom/android/server/status/StatusBarService$30;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$30;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mWiFiBtnClickListener:Landroid/view/View$OnClickListener;

    .line 3736
    new-instance v0, Lcom/android/server/status/StatusBarService$31;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$31;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mBTBtnClickListener:Landroid/view/View$OnClickListener;

    .line 3775
    new-instance v0, Lcom/android/server/status/StatusBarService$32;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$32;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mGPSBtnClickListener:Landroid/view/View$OnClickListener;

    .line 3817
    new-instance v0, Lcom/android/server/status/StatusBarService$33;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$33;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mMobileDataBtnClickListener:Landroid/view/View$OnClickListener;

    .line 3875
    new-instance v0, Lcom/android/server/status/StatusBarService$34;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$34;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mOrientationBtnClickListener:Landroid/view/View$OnClickListener;

    .line 4008
    new-instance v0, Lcom/android/server/status/StatusBarService$35;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$35;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mStartTracing:Ljava/lang/Runnable;

    .line 4018
    new-instance v0, Lcom/android/server/status/StatusBarService$36;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$36;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mStopTracing:Ljava/lang/Runnable;

    .line 502
    iput-object p1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    .line 503
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    .line 505
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->makeStatusBarView(Landroid/content/Context;)V

    .line 506
    new-instance v0, Lcom/android/server/status/StatusBarService$UninstallReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$UninstallReceiver;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mUninstallReceiver:Lcom/android/server/status/StatusBarService$UninstallReceiver;

    .line 509
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    .line 512
    return-void
.end method

.method private ChronometerStart(I)V
    .locals 6
    .parameter "mask"

    .prologue
    .line 4071
    const/4 v1, 0x0

    .line 4073
    .local v1, viewGroup:Landroid/view/ViewGroup;
    packed-switch p1, :pswitch_data_0

    .line 4079
    :goto_0
    const v2, 0x2040059

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    .line 4081
    .local v0, timer:Landroid/widget/Chronometer;
    iget-wide v2, p0, Lcom/android/server/status/StatusBarService;->mOldBaseTime:J

    const-wide/high16 v4, -0x8000

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 4082
    iget-wide v2, p0, Lcom/android/server/status/StatusBarService;->mNewBaseTime:J

    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 4087
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/status/StatusBarService;->mOldBaseTime:J

    .line 4088
    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 4105
    return-void

    .line 4075
    .end local v0           #timer:Landroid/widget/Chronometer;
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v3, 0x204005a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #viewGroup:Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .restart local v1       #viewGroup:Landroid/view/ViewGroup;
    goto :goto_0

    .line 4084
    .restart local v0       #timer:Landroid/widget/Chronometer;
    :cond_0
    iget-wide v2, p0, Lcom/android/server/status/StatusBarService;->mOldBaseTime:J

    iget-wide v4, p0, Lcom/android/server/status/StatusBarService;->mNewBaseTime:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    goto :goto_1

    .line 4073
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private ChronometerStop(I)V
    .locals 4
    .parameter "mask"

    .prologue
    .line 4108
    const/4 v1, 0x0

    .line 4110
    .local v1, viewGroup:Landroid/view/ViewGroup;
    packed-switch p1, :pswitch_data_0

    .line 4116
    :goto_0
    const v2, 0x2040059

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    .line 4118
    .local v0, timer:Landroid/widget/Chronometer;
    iget-wide v2, p0, Lcom/android/server/status/StatusBarService;->mOldBaseTime:J

    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 4119
    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 4127
    return-void

    .line 4112
    .end local v0           #timer:Landroid/widget/Chronometer;
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v3, 0x204005a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #viewGroup:Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .restart local v1       #viewGroup:Landroid/view/ViewGroup;
    goto :goto_0

    .line 4110
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/android/server/status/StatusBarService;ILandroid/os/IBinder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/status/StatusBarService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->updateWifi(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/status/StatusBarService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->updateBluetooth(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/status/StatusBarService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->updateSpeakerStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/status/StatusBarService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->updateMusicStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/status/StatusBarService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->updateRadioIStatus(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/status/StatusBarService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->updateRecorderStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/status/StatusBarService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->prepareQuickPanelSettingIcon(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/status/StatusBarService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->isHomeForeground()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/status/StatusBarService;Ljava/lang/String;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Lcom/android/server/status/StatusBarService;->getIndex(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/status/StatusBarService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->getCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/status/StatusBarService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->getContact(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/status/StatusBarService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->getTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/status/StatusBarService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    sput-boolean p0, Lcom/android/server/status/StatusBarService;->mIsAutoBrightness:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->disPlayGPSOnAlert()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/status/StatusBarService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->sendLBSStatus(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->disPlayMobileDataOnAlert()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/status/StatusBarService;Landroid/widget/Button;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/status/StatusBarService;->updateSwitchButton(Landroid/widget/Button;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/status/StatusBarService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->alwaysHandle(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->doREWLongPress()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->doFFLongPress()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/status/StatusBarService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/android/server/status/StatusBarService;->mTicking:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/status/StatusBarService;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mTickerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/status/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Lcom/android/server/status/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private addPendingOp(II)V
    .locals 4
    .parameter "code"
    .parameter "integer"

    .prologue
    const/4 v3, 0x1

    .line 853
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 854
    :try_start_0
    new-instance v0, Lcom/android/server/status/StatusBarService$PendingOp;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/status/StatusBarService$PendingOp;-><init>(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$1;)V

    .line 855
    .local v0, op:Lcom/android/server/status/StatusBarService$PendingOp;
    iput p1, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    .line 856
    iput p2, v0, Lcom/android/server/status/StatusBarService$PendingOp;->integer:I

    .line 857
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 859
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->sendEmptyMessage(I)Z

    .line 861
    :cond_0
    monitor-exit v1

    .line 862
    return-void

    .line 861
    .end local v0           #op:Lcom/android/server/status/StatusBarService$PendingOp;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private addPendingOp(ILandroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;I)V
    .locals 4
    .parameter "code"
    .parameter "key"
    .parameter "data"
    .parameter "n"
    .parameter "i"

    .prologue
    const/4 v3, 0x0

    .line 825
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 826
    :try_start_0
    new-instance v0, Lcom/android/server/status/StatusBarService$PendingOp;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/status/StatusBarService$PendingOp;-><init>(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$1;)V

    .line 827
    .local v0, op:Lcom/android/server/status/StatusBarService$PendingOp;
    iput-object p2, v0, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    .line 828
    iput p1, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    .line 829
    if-nez p3, :cond_1

    move-object v2, v3

    :goto_0
    iput-object v2, v0, Lcom/android/server/status/StatusBarService$PendingOp;->iconData:Lcom/android/server/status/IconData;

    .line 830
    iput-object p4, v0, Lcom/android/server/status/StatusBarService$PendingOp;->notificationData:Lcom/android/server/status/NotificationData;

    .line 831
    iput p5, v0, Lcom/android/server/status/StatusBarService$PendingOp;->integer:I

    .line 832
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 834
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->sendEmptyMessage(I)Z

    .line 836
    :cond_0
    monitor-exit v1

    .line 837
    return-void

    .line 829
    :cond_1
    invoke-virtual {p3}, Lcom/android/server/status/IconData;->clone()Lcom/android/server/status/IconData;

    move-result-object v2

    goto :goto_0

    .line 836
    .end local v0           #op:Lcom/android/server/status/StatusBarService$PendingOp;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private addPendingOp(ILandroid/os/IBinder;Z)V
    .locals 4
    .parameter "code"
    .parameter "key"
    .parameter "visible"

    .prologue
    const/4 v3, 0x1

    .line 840
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 841
    :try_start_0
    new-instance v0, Lcom/android/server/status/StatusBarService$PendingOp;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/status/StatusBarService$PendingOp;-><init>(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$1;)V

    .line 842
    .local v0, op:Lcom/android/server/status/StatusBarService$PendingOp;
    iput-object p2, v0, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    .line 843
    iput p1, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    .line 844
    iput-boolean p3, v0, Lcom/android/server/status/StatusBarService$PendingOp;->visible:Z

    .line 845
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 847
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->sendEmptyMessage(I)Z

    .line 849
    :cond_0
    monitor-exit v1

    .line 850
    return-void

    .line 849
    .end local v0           #op:Lcom/android/server/status/StatusBarService$PendingOp;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private alwaysHandle(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 1104
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private calcScreenBrightness(Landroid/view/MotionEvent;)I
    .locals 3
    .parameter "event"

    .prologue
    .line 4131
    const/high16 v1, 0x437f

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v2}, Lcom/android/server/status/StatusBarView;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->floatValue()F

    move-result v2

    div-float v0, v1, v2

    .line 4132
    .local v0, propFactor:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    return v1
.end method

.method private checkMinMax(I)I
    .locals 1
    .parameter "screenBrightness"

    .prologue
    .line 4136
    const/16 v0, 0x28

    if-le v0, p1, :cond_1

    .line 4137
    const/16 p1, 0x28

    .line 4142
    :cond_0
    :goto_0
    return p1

    .line 4138
    :cond_1
    const/16 v0, 0xff

    if-ge v0, p1, :cond_0

    .line 4139
    const/16 p1, 0xff

    goto :goto_0
.end method

.method private disPlayGPSOnAlert()V
    .locals 6

    .prologue
    .line 4289
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 4290
    .local v0, GpsAlertLayout:Landroid/view/LayoutInflater;
    const v4, 0x109008a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4309
    .local v1, GpsAlertView:Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4310
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x10404b9

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4312
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4313
    const v4, 0x10404bb

    new-instance v5, Lcom/android/server/status/StatusBarService$40;

    invoke-direct {v5, p0}, Lcom/android/server/status/StatusBarService$40;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4323
    const/high16 v4, 0x104

    new-instance v5, Lcom/android/server/status/StatusBarService$41;

    invoke-direct {v5, p0}, Lcom/android/server/status/StatusBarService$41;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4328
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4329
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 4330
    .local v2, alert:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 4331
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 4332
    return-void
.end method

.method private disPlayMobileDataOnAlert()V
    .locals 7

    .prologue
    .line 4228
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 4229
    .local v0, MobileDataAlertLayout:Landroid/view/LayoutInflater;
    const v5, 0x109008b

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4231
    .local v1, MobileDataAlertView:Landroid/view/View;
    const v5, 0x10202a0

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 4232
    .local v4, cbMobileData:Landroid/widget/CheckBox;
    new-instance v5, Lcom/android/server/status/StatusBarService$37;

    invoke-direct {v5, p0}, Lcom/android/server/status/StatusBarService$37;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4246
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4247
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x10404bd

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4248
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4249
    const v5, 0x104000a

    new-instance v6, Lcom/android/server/status/StatusBarService$38;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarService$38;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4276
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/server/status/StatusBarService$39;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarService$39;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4281
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4282
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 4283
    .local v2, alert:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 4284
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 4285
    return-void
.end method

.method private doFFLongPress()V
    .locals 3

    .prologue
    .line 4219
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/status/StatusBarService;->mFFLongPressed:Z

    .line 4221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.ff.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4222
    .local v0, longIntent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "quickpanel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4223
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4224
    return-void
.end method

.method private doREWLongPress()V
    .locals 3

    .prologue
    .line 4211
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/status/StatusBarService;->mREWLongPressed:Z

    .line 4213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.rew.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4214
    .local v0, longIntent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "quickpanel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4215
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4216
    return-void
.end method

.method private enforceExpandStatusBar()V
    .locals 3

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.EXPAND_STATUS_BAR"

    const-string v2, "StatusBarService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    return-void
.end method

.method private enforceStatusBar()V
    .locals 3

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "StatusBarService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    return-void
.end method

.method private getContact(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 969
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v1, p1}, Lcom/android/server/status/NotificationViewList;->getLatest(I)Lcom/android/server/status/StatusBarNotification;

    move-result-object v0

    .line 970
    .local v0, stn:Lcom/android/server/status/StatusBarNotification;
    iget-object v1, v0, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-object v1, v1, Lcom/android/server/status/NotificationData;->contact:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCount(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 964
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v1, p1}, Lcom/android/server/status/NotificationViewList;->getLatest(I)Lcom/android/server/status/StatusBarNotification;

    move-result-object v0

    .line 965
    .local v0, stn:Lcom/android/server/status/StatusBarNotification;
    iget-object v1, v0, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget v1, v1, Lcom/android/server/status/NotificationData;->missedCount:I

    return v1
.end method

.method private getHomeList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3671
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3672
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3673
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3675
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getIndex(Ljava/lang/String;I)I
    .locals 4
    .parameter "pkg"
    .parameter "req"

    .prologue
    .line 928
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v3}, Lcom/android/server/status/NotificationViewList;->latestCount()I

    move-result v1

    .line 929
    .local v1, size:I
    const/4 v2, 0x0

    .line 931
    .local v2, stn:Lcom/android/server/status/StatusBarNotification;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 932
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v3, v0}, Lcom/android/server/status/NotificationViewList;->getLatest(I)Lcom/android/server/status/StatusBarNotification;

    move-result-object v2

    .line 934
    if-eqz v2, :cond_0

    .line 935
    iget-object v3, v2, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-object v3, v3, Lcom/android/server/status/NotificationData;->pkg:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget v3, v3, Lcom/android/server/status/NotificationData;->id:I

    if-ne v3, p2, :cond_0

    move v3, v0

    .line 940
    :goto_1
    return v3

    .line 931
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 940
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private getIntent(I)Landroid/app/PendingIntent;
    .locals 2
    .parameter "index"

    .prologue
    .line 974
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v1, p1}, Lcom/android/server/status/NotificationViewList;->getLatest(I)Lcom/android/server/status/StatusBarNotification;

    move-result-object v0

    .line 975
    .local v0, stn:Lcom/android/server/status/StatusBarNotification;
    iget-object v1, v0, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-object v1, v1, Lcom/android/server/status/NotificationData;->contentIntent:Landroid/app/PendingIntent;

    return-object v1
.end method

.method private getMiniControllerVisiblility(I)I
    .locals 7
    .parameter "type"

    .prologue
    .line 2177
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v6, 0x204002a

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2178
    .local v0, call:Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v6, 0x2040030

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2179
    .local v1, music:Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v6, 0x204005a

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 2180
    .local v3, record:Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v6, 0x2040036

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2182
    .local v2, radio:Landroid/view/ViewGroup;
    const/16 v4, 0x8

    .line 2184
    .local v4, visibility:I
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_1

    .line 2185
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    .line 2196
    :cond_0
    :goto_0
    return v4

    .line 2187
    :cond_1
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_2

    .line 2188
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    goto :goto_0

    .line 2190
    :cond_2
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_3

    .line 2191
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    goto :goto_0

    .line 2193
    :cond_3
    and-int/lit8 v5, p1, 0x8

    if-eqz v5, :cond_0

    .line 2194
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    goto :goto_0
.end method

.method private getRightIconIndex(Ljava/lang/String;)I
    .locals 3
    .parameter "slot"

    .prologue
    .line 917
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mRightIconSlots:[Ljava/lang/String;

    array-length v0, v2

    .line 918
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 919
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mRightIconSlots:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    .line 923
    :goto_1
    return v2

    .line 918
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 923
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getText(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 950
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v2, p1}, Lcom/android/server/status/NotificationViewList;->getLatest(I)Lcom/android/server/status/StatusBarNotification;

    move-result-object v0

    .line 951
    .local v0, stn:Lcom/android/server/status/StatusBarNotification;
    iget-object v2, v0, Lcom/android/server/status/StatusBarNotification;->contentView:Landroid/view/View;

    const v3, 0x1020040

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 952
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getTime(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 956
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v2, p1}, Lcom/android/server/status/NotificationViewList;->getLatest(I)Lcom/android/server/status/StatusBarNotification;

    move-result-object v0

    .line 957
    .local v0, stn:Lcom/android/server/status/StatusBarNotification;
    iget-object v2, v0, Lcom/android/server/status/StatusBarNotification;->contentView:Landroid/view/View;

    const v3, 0x102005b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 958
    .local v1, time:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getTitle(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 944
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v2, p1}, Lcom/android/server/status/NotificationViewList;->getLatest(I)Lcom/android/server/status/StatusBarNotification;

    move-result-object v0

    .line 945
    .local v0, stn:Lcom/android/server/status/StatusBarNotification;
    iget-object v2, v0, Lcom/android/server/status/StatusBarNotification;->contentView:Landroid/view/View;

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 946
    .local v1, title:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private hideCallOnGoingView()V
    .locals 3

    .prologue
    .line 4202
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    const v2, 0x204005c

    invoke-virtual {v1, v2}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/server/status/CallOnGoingView;

    .line 4204
    .local v0, cogv:Lcom/android/server/status/CallOnGoingView;
    if-eqz v0, :cond_0

    .line 4205
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v1, v0}, Lcom/android/server/status/StatusBarView;->removeView(Landroid/view/View;)V

    .line 4207
    :cond_0
    return-void
.end method

.method private initQuickPanelSetting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1344
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mWiFiStatus:Z

    .line 1347
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mBTStatus:Z

    .line 1350
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mGPSStatus:Z

    .line 1359
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mobile_data"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    .line 1362
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mOrientationStatus:Z

    .line 1365
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/server/status/StatusBarService;->mIsAutoBrightness:Z

    .line 1367
    invoke-direct {p0, v2}, Lcom/android/server/status/StatusBarService;->prepareQuickPanelSettingIcon(I)V

    .line 1368
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/status/StatusBarService;->prepareQuickPanelSettingIcon(I)V

    .line 1369
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/status/StatusBarService;->prepareQuickPanelSettingIcon(I)V

    .line 1371
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/status/StatusBarService;->prepareQuickPanelSettingIcon(I)V

    .line 1372
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/status/StatusBarService;->prepareQuickPanelSettingIcon(I)V

    .line 1374
    return-void

    :cond_0
    move v0, v3

    .line 1359
    goto :goto_0

    :cond_1
    move v0, v3

    .line 1362
    goto :goto_1

    :cond_2
    move v0, v3

    .line 1365
    goto :goto_2
.end method

.method private isHomeForeground()Z
    .locals 10

    .prologue
    const-string v9, "StatusBar"

    .line 3649
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->getHomeList()Ljava/util/List;

    move-result-object v2

    .line 3650
    .local v2, homeList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 3652
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3653
    .local v6, runningAppInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 3654
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3655
    const-string v7, "StatusBar"

    const-string v8, "mBTHeadsetReceiver-onReceive:Home"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v8, 0x64

    if-ne v7, v8, :cond_1

    .line 3658
    const-string v7, "StatusBar"

    const-string v8, "mBTHeadsetReceiver-onReceive:Home:Foreground"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3659
    const/4 v7, 0x1

    .line 3667
    .end local v0           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v2           #homeList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v6           #runningAppInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v7

    .line 3664
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 3665
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "StatusBar"

    const-string v7, "mBTHeadsetReceiver-onReceive:Exception"

    invoke-static {v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private isMiniControllerVisible()Z
    .locals 6

    .prologue
    .line 2166
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x204002a

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2167
    .local v0, call:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x2040030

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2168
    .local v1, music:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x204005a

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 2169
    .local v3, record:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x2040036

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2170
    .local v2, radio:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 2
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 2761
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2762
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 2763
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2765
    :cond_0
    return-object v0
.end method

.method private makeExpandedVisible()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2322
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_1

    .line 2346
    :cond_0
    :goto_0
    return-void

    .line 2326
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    .line 2327
    invoke-virtual {p0, v3}, Lcom/android/server/status/StatusBarService;->panelSlightlyVisible(Z)V

    .line 2329
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 2330
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2331
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2332
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2333
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedView:Lcom/android/server/status/ExpandedView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/status/ExpandedView;->requestFocus(I)Z

    .line 2334
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/status/TrackingView;->setVisibility(I)V

    .line 2336
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mTicking:Z

    if-nez v0, :cond_2

    .line 2337
    const/high16 v0, 0x10a

    invoke-virtual {p0, v3, v0}, Lcom/android/server/status/StatusBarService;->setDateViewVisibility(ZI)V

    .line 2341
    :cond_2
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->isMiniControllerVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2343
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_0
.end method

.method private makeStatusBarView(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const v13, 0x2040048

    const v12, 0x1080079

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 522
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 523
    .local v4, res:Landroid/content/res/Resources;
    const v7, 0x1070009

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mRightIconSlots:[Ljava/lang/String;

    .line 524
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mRightIconSlots:[Ljava/lang/String;

    array-length v7, v7

    new-array v7, v7, [Lcom/android/server/status/StatusBarIcon;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mRightIcons:[Lcom/android/server/status/StatusBarIcon;

    .line 527
    const v7, 0x203000e

    invoke-static {p1, v7, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/server/status/ExpandedView;

    .line 529
    .local v1, expanded:Lcom/android/server/status/ExpandedView;
    iput-object p0, v1, Lcom/android/server/status/ExpandedView;->mService:Lcom/android/server/status/StatusBarService;

    .line 530
    const v7, 0x1090062

    invoke-static {p1, v7, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/server/status/StatusBarView;

    .line 532
    .local v5, sb:Lcom/android/server/status/StatusBarView;
    iput-object p0, v5, Lcom/android/server/status/StatusBarView;->mService:Lcom/android/server/status/StatusBarService;

    .line 535
    const/4 v7, -0x3

    iput v7, p0, Lcom/android/server/status/StatusBarService;->mPixelFormat:I

    .line 536
    invoke-virtual {v5}, Lcom/android/server/status/StatusBarView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 537
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    iput v7, p0, Lcom/android/server/status/StatusBarService;->mPixelFormat:I

    .line 541
    :cond_0
    iput-object v5, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    .line 542
    const v7, 0x102020b

    invoke-virtual {v5, v7}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 543
    const v7, 0x102020a

    invoke-virtual {v5, v7}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/server/status/IconMerger;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    .line 544
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    iput-object p0, v7, Lcom/android/server/status/IconMerger;->service:Lcom/android/server/status/StatusBarService;

    .line 545
    const v7, 0x1020209

    invoke-virtual {v5, v7}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    .line 546
    const v7, 0x102020c

    invoke-virtual {v5, v7}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mTickerView:Landroid/view/View;

    .line 547
    const v7, 0x102005a

    invoke-virtual {v5, v7}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/server/status/DateView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mDateView:Lcom/android/server/status/DateView;

    .line 549
    new-instance v7, Lcom/android/server/status/StatusBarService$ExpandedDialog;

    invoke-direct {v7, p0, p1}, Lcom/android/server/status/StatusBarService$ExpandedDialog;-><init>(Lcom/android/server/status/StatusBarService;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    .line 550
    iput-object v1, p0, Lcom/android/server/status/StatusBarService;->mExpandedView:Lcom/android/server/status/ExpandedView;

    .line 551
    invoke-virtual {v1, v13}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mExpandedContents:Landroid/view/View;

    .line 552
    const v7, 0x204004a

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    .line 553
    const v7, 0x204004b

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    .line 554
    const v7, 0x204004c

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    .line 555
    const v7, 0x204004d

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    .line 556
    const v7, 0x2040049

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    .line 557
    const v7, 0x204004e

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mClearButton:Landroid/widget/TextView;

    .line 558
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mClearButton:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    const v7, 0x2040055

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    .line 560
    const v7, 0x2040054

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    .line 561
    const v7, 0x2040047

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    .line 562
    invoke-virtual {v1, v13}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mNotificationLinearLayout:Landroid/view/View;

    .line 564
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    new-instance v7, Lcom/android/server/status/StatusBarService$MyTicker;

    invoke-direct {v7, p0, p1, v5}, Lcom/android/server/status/StatusBarService$MyTicker;-><init>(Lcom/android/server/status/StatusBarService;Landroid/content/Context;Lcom/android/server/status/StatusBarView;)V

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mTicker:Lcom/android/server/status/Ticker;

    .line 569
    const v7, 0x102020e

    invoke-virtual {v5, v7}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/server/status/TickerView;

    .line 570
    .local v6, tickerView:Lcom/android/server/status/TickerView;
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mTicker:Lcom/android/server/status/Ticker;

    iput-object v7, v6, Lcom/android/server/status/TickerView;->mTicker:Lcom/android/server/status/Ticker;

    .line 573
    const v7, 0x2030010

    invoke-static {p1, v7, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/server/status/TrackingView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    .line 575
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    iput-object p0, v7, Lcom/android/server/status/TrackingView;->mService:Lcom/android/server/status/StatusBarService;

    .line 578
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    const v8, 0x2040050

    invoke-virtual {v7, v8}, Lcom/android/server/status/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/server/status/CloseDragHandle;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    .line 579
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    iput-object p0, v7, Lcom/android/server/status/CloseDragHandle;->mService:Lcom/android/server/status/StatusBarService;

    .line 581
    const v7, 0x105000a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/status/StatusBarService;->mEdgeBorder:I

    .line 584
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2a

    invoke-static {v10, v7, v12, v11, v8}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v3

    .line 586
    .local v3, moreData:Lcom/android/server/status/IconData;
    new-instance v7, Lcom/android/server/status/StatusBarIcon;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    invoke-direct {v7, p1, v3, v8}, Lcom/android/server/status/StatusBarIcon;-><init>(Landroid/content/Context;Lcom/android/server/status/IconData;Landroid/view/ViewGroup;)V

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mMoreIcon:Lcom/android/server/status/StatusBarIcon;

    .line 587
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mMoreIcon:Lcom/android/server/status/StatusBarIcon;

    iget-object v7, v7, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setId(I)V

    .line 588
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mMoreIcon:Lcom/android/server/status/StatusBarIcon;

    iput-object v8, v7, Lcom/android/server/status/IconMerger;->moreIcon:Lcom/android/server/status/StatusBarIcon;

    .line 589
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mMoreIcon:Lcom/android/server/status/StatusBarIcon;

    iget-object v8, v8, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    invoke-virtual {v7, v8}, Lcom/android/server/status/IconMerger;->addView(Landroid/view/View;)V

    .line 592
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setAreThereNotifications()V

    .line 593
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mDateView:Lcom/android/server/status/DateView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/server/status/DateView;->setVisibility(I)V

    .line 596
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    const v8, 0x1040364

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 597
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 602
    const v7, 0x102020f

    invoke-virtual {v5, v7}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mScreenBrightness:Landroid/widget/SeekBar;

    .line 603
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mScreenBrightness:Landroid/widget/SeekBar;

    invoke-virtual {v7, v9}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 604
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mScreenBrightness:Landroid/widget/SeekBar;

    const/16 v8, 0xd7

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 608
    const v7, 0x2040041

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelContainer:Landroid/widget/LinearLayout;

    .line 609
    const v7, 0x2040040

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    .line 611
    const v7, 0x2040042

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mWiFiBtn:Landroid/widget/TextView;

    .line 612
    const v7, 0x2040043

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mBTBtn:Landroid/widget/TextView;

    .line 613
    const v7, 0x204005b

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mGPSBtn:Landroid/widget/TextView;

    .line 615
    const v7, 0x2040061

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mMobileDataBtn:Landroid/widget/TextView;

    .line 616
    const v7, 0x204005f

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mOrientationBtn:Landroid/widget/TextView;

    .line 619
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mWiFiBtn:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mWiFiBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mBTBtn:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mBTBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mGPSBtn:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mGPSBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mMobileDataBtn:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mMobileDataBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mOrientationBtn:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mOrientationBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setupQuickPanelCallView()V

    .line 628
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setupQuickPanelMusicView()V

    .line 629
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setupQuickPanelRecordView()V

    .line 630
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setupQuickPanelRadioView()V

    .line 634
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 635
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 636
    const-string v7, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 637
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 638
    const-string v7, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 640
    const-string v7, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 645
    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 653
    const-string v7, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 654
    const-string v7, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 655
    const-string v7, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 660
    const-string v7, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 663
    const-string v7, "com.android.notification.voicerecordcommand"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 666
    const-string v7, "com.android.fm.player.status.on"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 667
    const-string v7, "com.android.fm.player.status.off"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 669
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 670
    return-void
.end method

.method private prepareQuickPanelSettingIcon(I)V
    .locals 5
    .parameter "mask"

    .prologue
    .line 1409
    const/4 v2, 0x0

    .line 1410
    .local v2, textColor:I
    const/4 v0, 0x0

    .line 1411
    .local v0, btnTextView:Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 1413
    .local v1, settingIcon:Landroid/graphics/drawable/Drawable;
    sparse-switch p1, :sswitch_data_0

    .line 1488
    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/status/StatusBarService;->updateQuickPanelSettingIcon(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;I)V

    .line 1489
    return-void

    .line 1415
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mWiFiBtn:Landroid/widget/TextView;

    .line 1417
    iget-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mWiFiStatus:Z

    if-eqz v3, :cond_0

    .line 1418
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2020062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1419
    const/4 v2, -0x1

    goto :goto_0

    .line 1421
    :cond_0
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x202005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1422
    const v2, -0x383839

    .line 1424
    goto :goto_0

    .line 1427
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mBTBtn:Landroid/widget/TextView;

    .line 1429
    iget-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mBTStatus:Z

    if-eqz v3, :cond_1

    .line 1430
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x202005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1431
    const/4 v2, -0x1

    goto :goto_0

    .line 1433
    :cond_1
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x202005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1434
    const v2, -0x383839

    .line 1436
    goto :goto_0

    .line 1439
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mGPSBtn:Landroid/widget/TextView;

    .line 1441
    iget-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mGPSStatus:Z

    if-eqz v3, :cond_2

    .line 1442
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20200be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1443
    const/4 v2, -0x1

    goto :goto_0

    .line 1445
    :cond_2
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20200bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1446
    const v2, -0x383839

    .line 1448
    goto :goto_0

    .line 1451
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mMobileDataBtn:Landroid/widget/TextView;

    .line 1453
    iget-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    if-eqz v3, :cond_3

    .line 1454
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x202011b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1455
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 1457
    :cond_3
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x202011a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1458
    const v2, -0x383839

    .line 1460
    goto/16 :goto_0

    .line 1463
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mOrientationBtn:Landroid/widget/TextView;

    .line 1465
    iget-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mOrientationStatus:Z

    if-eqz v3, :cond_4

    .line 1466
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20200c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1467
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 1469
    :cond_4
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20200c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1470
    const v2, -0x383839

    goto/16 :goto_0

    .line 1413
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method private registerObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1378
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mGpsObserver:Lcom/android/server/status/StatusBarService$GpsContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1387
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mMobileDataObserver:Lcom/android/server/status/StatusBarService$MobileDataContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1390
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mOrientationObserver:Lcom/android/server/status/StatusBarService$OrientationContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1400
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mTtsObserver:Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1404
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mBrightnessObserver:Lcom/android/server/status/StatusBarService$BrightnessContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1405
    return-void
.end method

.method private sendLBSStatus(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 3803
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.location.intent.action.LBS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3804
    .local v0, lbsChanged:Landroid/content/Intent;
    const-string v1, "lbsEnabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3805
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3806
    return-void
.end method

.method private setAreThereNotifications()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 2301
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    .line 2302
    .local v1, ongoing:Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    .line 2304
    .local v0, latest:Z
    :goto_1
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v2}, Lcom/android/server/status/NotificationViewList;->hasClearableItems()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2305
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2310
    :goto_2
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2311
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    move v3, v4

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2313
    if-nez v1, :cond_0

    if-eqz v0, :cond_6

    .line 2314
    :cond_0
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2318
    :goto_5
    return-void

    .end local v0           #latest:Z
    .end local v1           #ongoing:Z
    :cond_1
    move v1, v4

    .line 2301
    goto :goto_0

    .restart local v1       #ongoing:Z
    :cond_2
    move v0, v4

    .line 2302
    goto :goto_1

    .line 2307
    .restart local v0       #latest:Z
    :cond_3
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mClearButton:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v5

    .line 2310
    goto :goto_3

    :cond_5
    move v3, v5

    .line 2311
    goto :goto_4

    .line 2316
    :cond_6
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method

.method private setupQuickPanelCallView()V
    .locals 9

    .prologue
    .line 1505
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v8, 0x204002a

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1506
    .local v0, call:Landroid/view/ViewGroup;
    const v7, 0x2040051

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1507
    .local v5, typeButton:Landroid/widget/Button;
    const v7, 0x204002b

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1508
    .local v2, muteButton:Landroid/widget/Button;
    const v7, 0x2040052

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1509
    .local v6, unholdButton:Landroid/widget/Button;
    const v7, 0x204002c

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1510
    .local v3, speakerButton:Landroid/widget/Button;
    const v7, 0x204002d

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1511
    .local v1, endButton:Landroid/widget/Button;
    const v7, 0x2040059

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Chronometer;

    .line 1514
    .local v4, timer:Landroid/widget/Chronometer;
    new-instance v7, Lcom/android/server/status/StatusBarService$4;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$4;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1538
    new-instance v7, Lcom/android/server/status/StatusBarService$5;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$5;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1553
    new-instance v7, Lcom/android/server/status/StatusBarService$6;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$6;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1574
    new-instance v7, Lcom/android/server/status/StatusBarService$7;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$7;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1616
    new-instance v7, Lcom/android/server/status/StatusBarService$8;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$8;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1641
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->updateSpeakerIcon()V

    .line 1643
    return-void
.end method

.method private setupQuickPanelMusicView()V
    .locals 9

    .prologue
    .line 1761
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v8, 0x2040030

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1762
    .local v3, music:Landroid/view/ViewGroup;
    const v7, 0x2040053

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1763
    .local v2, launchButton:Landroid/widget/Button;
    const v7, 0x2040031

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1764
    .local v6, rewButton:Landroid/widget/Button;
    const v7, 0x2040032

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1765
    .local v5, playButton:Landroid/widget/Button;
    const v7, 0x2040033

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1766
    .local v4, pauseButton:Landroid/widget/Button;
    const v7, 0x2040034

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1769
    .local v0, ffButton:Landroid/widget/Button;
    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1770
    .local v1, l_d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iput v7, p0, Lcom/android/server/status/StatusBarService;->mMusicAlbumArtWidth:I

    .line 1771
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    iput v7, p0, Lcom/android/server/status/StatusBarService;->mMusicAlbumArtHeight:I

    .line 1773
    new-instance v7, Lcom/android/server/status/StatusBarService$9;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$9;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1787
    new-instance v7, Lcom/android/server/status/StatusBarService$10;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$10;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1800
    new-instance v7, Lcom/android/server/status/StatusBarService$11;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$11;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1826
    new-instance v7, Lcom/android/server/status/StatusBarService$12;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$12;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1833
    new-instance v7, Lcom/android/server/status/StatusBarService$13;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$13;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1840
    new-instance v7, Lcom/android/server/status/StatusBarService$14;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$14;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1853
    new-instance v7, Lcom/android/server/status/StatusBarService$15;

    invoke-direct {v7, p0}, Lcom/android/server/status/StatusBarService$15;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1878
    return-void
.end method

.method private setupQuickPanelRadioView()V
    .locals 8

    .prologue
    .line 2049
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v7, 0x2040036

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 2050
    .local v4, radio:Landroid/view/ViewGroup;
    const v6, 0x2040056

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2051
    .local v1, launchButton:Landroid/widget/Button;
    const v6, 0x2040037

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 2052
    .local v5, rewButton:Landroid/widget/Button;
    const v6, 0x2040038

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 2053
    .local v3, playButton:Landroid/widget/Button;
    const v6, 0x2040039

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2054
    .local v2, pauseButton:Landroid/widget/Button;
    const v6, 0x204003a

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2056
    .local v0, ffButton:Landroid/widget/Button;
    new-instance v6, Lcom/android/server/status/StatusBarService$20;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarService$20;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2065
    new-instance v6, Lcom/android/server/status/StatusBarService$21;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarService$21;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2072
    new-instance v6, Lcom/android/server/status/StatusBarService$22;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarService$22;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2081
    new-instance v6, Lcom/android/server/status/StatusBarService$23;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarService$23;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2090
    new-instance v6, Lcom/android/server/status/StatusBarService$24;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarService$24;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2096
    return-void
.end method

.method private setupQuickPanelRecordView()V
    .locals 8

    .prologue
    .line 1927
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v7, 0x204005a

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1928
    .local v2, record:Landroid/view/ViewGroup;
    const v6, 0x2040057

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1929
    .local v0, launchButton:Landroid/widget/Button;
    const v6, 0x204003d

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1930
    .local v3, recordButton:Landroid/widget/Button;
    const v6, 0x204003e

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1931
    .local v1, pauseButton:Landroid/widget/ImageButton;
    const v6, 0x2040058

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1932
    .local v4, saveButton:Landroid/widget/Button;
    const v6, 0x2040059

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Chronometer;

    .line 1934
    .local v5, timer:Landroid/widget/Chronometer;
    new-instance v6, Lcom/android/server/status/StatusBarService$16;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarService$16;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1953
    new-instance v6, Lcom/android/server/status/StatusBarService$17;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarService$17;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1970
    new-instance v6, Lcom/android/server/status/StatusBarService$18;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarService$18;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1983
    new-instance v6, Lcom/android/server/status/StatusBarService$19;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarService$19;-><init>(Lcom/android/server/status/StatusBarService;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1990
    return-void
.end method

.method private showCallOnGoingView(J)V
    .locals 4
    .parameter "callDurationBaseTime"

    .prologue
    .line 4192
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v2, 0x2030012

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/server/status/CallOnGoingView;

    .line 4194
    .local v0, cogv:Lcom/android/server/status/CallOnGoingView;
    if-eqz v0, :cond_0

    .line 4195
    iput-object p0, v0, Lcom/android/server/status/CallOnGoingView;->mService:Lcom/android/server/status/StatusBarService;

    .line 4196
    invoke-virtual {v0, p1, p2}, Lcom/android/server/status/CallOnGoingView;->setDurationBaseTime(J)V

    .line 4197
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v1, v0}, Lcom/android/server/status/StatusBarView;->addView(Landroid/view/View;)V

    .line 4199
    :cond_0
    return-void
.end method

.method private showPreviousMiniController()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2141
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x204002a

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2142
    .local v0, call:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x2040030

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2143
    .local v1, music:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x204005a

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 2144
    .local v3, record:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x2040036

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2146
    .local v2, radio:Landroid/view/ViewGroup;
    iget-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mMiniCallVisible:Z

    if-eqz v4, :cond_0

    .line 2147
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2150
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mMiniMusicVisible:Z

    if-eqz v4, :cond_1

    .line 2151
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2154
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mMiniRecorderVisible:Z

    if-eqz v4, :cond_2

    .line 2155
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2158
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mMiniRadioVisible:Z

    if-eqz v4, :cond_3

    .line 2159
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2161
    :cond_3
    return-void
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 3210
    const/4 v0, 0x1

    .line 3211
    .local v0, needUpdate:Z
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3213
    .local v1, state:I
    const/16 v2, 0xc

    if-ne v2, v1, :cond_1

    .line 3214
    iput-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mBTStatus:Z

    .line 3221
    :goto_0
    if-eqz v0, :cond_0

    .line 3222
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mBTBtn:Landroid/widget/TextView;

    const v3, 0x2080005

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 3223
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mBTBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3224
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/status/StatusBarService;->prepareQuickPanelSettingIcon(I)V

    .line 3226
    :cond_0
    return-void

    .line 3215
    :cond_1
    const/16 v2, 0xa

    if-ne v2, v1, :cond_2

    .line 3216
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mBTStatus:Z

    goto :goto_0

    .line 3218
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMiniControllerVisibility(IZ)V
    .locals 8
    .parameter "mask"
    .parameter "visible"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 2127
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x204002a

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2128
    .local v0, call:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x2040030

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2129
    .local v1, music:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x204005a

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 2130
    .local v3, record:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x2040036

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2132
    .local v2, radio:Landroid/view/ViewGroup;
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    move v4, v6

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2133
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    move v4, v6

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2134
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    move v4, v6

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2135
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    move v4, v6

    :goto_3
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2136
    return-void

    :cond_0
    move v4, v7

    .line 2132
    goto :goto_0

    :cond_1
    move v4, v7

    .line 2133
    goto :goto_1

    :cond_2
    move v4, v7

    .line 2134
    goto :goto_2

    :cond_3
    move v4, v7

    .line 2135
    goto :goto_3
.end method

.method private final updateMusicStatus(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const-string v13, "StatusBar"

    .line 3233
    const-string v0, "playing"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 3234
    .local v12, isMusicOn:Z
    const-string v0, "mediauri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 3235
    .local v1, mediaUri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 3236
    const-string v0, "StatusBar"

    const-string v0, "updateMusicStatus : Ignore invalid music status : no mediaUri "

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    :goto_0
    return-void

    .line 3240
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3242
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 3243
    .local v9, albumTitle:Ljava/lang/String;
    const/4 v7, 0x0

    .line 3244
    .local v7, albumArtist:Ljava/lang/String;
    const/4 v8, 0x0

    .line 3247
    .local v8, albumId:Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3248
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3250
    :try_start_1
    const-string v0, "title"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3251
    const-string v0, "artist"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3252
    const-string v0, "album_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 3256
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3260
    :cond_1
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/server/status/StatusBarService;->getAlbumArtBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 3265
    .local v6, albumArt:Landroid/graphics/Bitmap;
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mMusicStatus:Z

    if-eq v0, v12, :cond_2

    .line 3266
    iput-boolean v12, p0, Lcom/android/server/status/StatusBarService;->mMusicStatus:Z

    .line 3267
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->updateQuickPanelMusicIconVisibility()V

    .line 3270
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/android/server/status/StatusBarService;->updateQuickPanelMusicViewContent(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3274
    .end local v6           #albumArt:Landroid/graphics/Bitmap;
    .end local v7           #albumArtist:Ljava/lang/String;
    .end local v8           #albumId:Ljava/lang/String;
    .end local v9           #albumTitle:Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v11, v0

    .line 3275
    .local v11, e:Ljava/lang/Exception;
    const-string v0, "StatusBar"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMusicStatus : Fail to query media uri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3253
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v7       #albumArtist:Ljava/lang/String;
    .restart local v8       #albumId:Ljava/lang/String;
    .restart local v9       #albumTitle:Ljava/lang/String;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v0

    move-object v11, v0

    .line 3254
    .local v11, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3256
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method private updateQuickPanelCallView(Lcom/android/server/status/NotificationData;)V
    .locals 13
    .parameter "data"

    .prologue
    .line 1688
    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v12, 0x204002a

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1689
    .local v0, call:Landroid/view/ViewGroup;
    const v11, 0x2040051

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 1690
    .local v9, typeButton:Landroid/widget/Button;
    const v11, 0x204002b

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1691
    .local v6, muteButton:Landroid/widget/Button;
    const v11, 0x2040052

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 1692
    .local v10, unholdButton:Landroid/widget/Button;
    const v11, 0x204002c

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 1693
    .local v7, speakerButton:Landroid/widget/Button;
    const v11, 0x204002d

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1694
    .local v3, endButton:Landroid/widget/Button;
    const v11, 0x2040059

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Chronometer;

    .line 1697
    .local v8, timer:Landroid/widget/Chronometer;
    const-wide/high16 v1, -0x8000

    .line 1699
    .local v1, callDurationBaseTime:J
    :try_start_0
    const-string v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 1702
    .local v5, iTelephony:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->getActiveCallsCount()I

    move-result v11

    if-nez v11, :cond_1

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->getHoldCallsCount()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 1703
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 1704
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 1705
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 1712
    :goto_0
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->getCallBaseTime()J

    move-result-wide v1

    .line 1713
    const-wide/16 v11, -0x1

    cmp-long v11, v1, v11

    if-lez v11, :cond_2

    .line 1714
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 1715
    invoke-virtual {v8, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 1716
    invoke-virtual {v8}, Landroid/widget/Chronometer;->start()V

    .line 1729
    :goto_1
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->updateSpeakerIcon()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1735
    .end local v5           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :goto_2
    iget-object v11, p1, Lcom/android/server/status/NotificationData;->twQuickPanelDescription:Ljava/lang/CharSequence;

    if-eqz v11, :cond_0

    iget-object v11, p1, Lcom/android/server/status/NotificationData;->twQuickPanelDescription:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 1736
    const v11, 0x204002e

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iget-object v11, p1, Lcom/android/server/status/NotificationData;->twQuickPanelDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1738
    :cond_0
    return-void

    .line 1707
    .restart local v5       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .restart local p0
    :cond_1
    const/16 v11, 0x8

    :try_start_1
    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 1708
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 1709
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1731
    .end local v5           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 1732
    .local v4, ex:Landroid/os/RemoteException;
    const-string v11, "StatusBar"

    const-string v12, "RemoteException from getPhoneInterface()"

    invoke-static {v11, v12, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1721
    .end local v4           #ex:Landroid/os/RemoteException;
    .restart local v5       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    const/4 v11, 0x4

    :try_start_2
    invoke-virtual {v8, v11}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 1722
    invoke-virtual {v8}, Landroid/widget/Chronometer;->stop()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private updateQuickPanelMusicIconVisibility()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1894
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v4, 0x2040030

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1895
    .local v0, music:Landroid/view/ViewGroup;
    const v3, 0x2040032

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1896
    .local v2, playButton:Landroid/widget/Button;
    const v3, 0x2040033

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1898
    .local v1, pauseButton:Landroid/widget/Button;
    iget-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mMusicStatus:Z

    if-eqz v3, :cond_0

    .line 1899
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1900
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1905
    :goto_0
    return-void

    .line 1902
    :cond_0
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1903
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateQuickPanelMusicView(Lcom/android/server/status/NotificationData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 1881
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->updateQuickPanelMusicIconVisibility()V

    .line 1891
    return-void
.end method

.method private updateQuickPanelMusicViewContent(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "description"
    .parameter "albumArt"

    .prologue
    .line 1909
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v5, 0x2040030

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1910
    .local v3, music:Landroid/view/ViewGroup;
    if-eqz p1, :cond_0

    .line 1911
    const v4, 0x2040035

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1912
    .local v1, desc:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1915
    .end local v1           #desc:Landroid/widget/TextView;
    :cond_0
    const v4, 0x2040053

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1916
    .local v2, launchButton:Landroid/widget/Button;
    if-eqz p2, :cond_1

    .line 1917
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v0, v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1918
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1922
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-void

    .line 1920
    :cond_1
    const v4, 0x20200b0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updateQuickPanelRadioIcon()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2108
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v4, 0x2040036

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2109
    .local v2, radio:Landroid/view/ViewGroup;
    const v3, 0x2040038

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2110
    .local v1, playButton:Landroid/widget/Button;
    const v3, 0x2040039

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2113
    .local v0, pauseButton:Landroid/widget/Button;
    iget-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mRadioStatus:Z

    if-eqz v3, :cond_0

    .line 2114
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 2115
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2121
    :goto_0
    return-void

    .line 2117
    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2118
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateQuickPanelRadioView(Lcom/android/server/status/NotificationData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 2099
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->updateQuickPanelRadioIcon()V

    .line 2101
    iget-object v1, p1, Lcom/android/server/status/NotificationData;->twQuickPanelDescription:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2102
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v2, 0x2040036

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2103
    .local v0, radio:Landroid/view/ViewGroup;
    const v1, 0x204003b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/server/status/NotificationData;->twQuickPanelDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2105
    .end local v0           #radio:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private updateQuickPanelResources()V
    .locals 11

    .prologue
    .line 3953
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mWiFiBtn:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v10, 0x2080004

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3954
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mBTBtn:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v10, 0x2080005

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3955
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mGPSBtn:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v10, 0x208001d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3957
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mMobileDataBtn:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v10, 0x2080021

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3958
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mOrientationBtn:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v10, 0x208001f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3963
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v9, 0x204002a

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3964
    .local v0, call:Landroid/view/ViewGroup;
    const v8, 0x204002b

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 3965
    .local v2, muteButton:Landroid/widget/Button;
    const v8, 0x2040052

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 3966
    .local v7, unholdButton:Landroid/widget/Button;
    const v8, 0x204002c

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 3967
    .local v6, speakerButton:Landroid/widget/Button;
    const v8, 0x204002d

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 3969
    .local v1, endButton:Landroid/widget/Button;
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v9, 0x2080008

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3970
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v9, 0x208000f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3971
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v9, 0x2080009

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3972
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v9, 0x208000a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3975
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v9, 0x204005a

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 3976
    .local v3, record:Landroid/view/ViewGroup;
    const v8, 0x204003d

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 3977
    .local v4, recordButton:Landroid/widget/Button;
    const v8, 0x2040058

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 3979
    .local v5, saveButton:Landroid/widget/Button;
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v9, 0x2080016

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3980
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v9, 0x2080015

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3982
    return-void
.end method

.method private updateQuickPanelSettingIcon(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .parameter "btnText"
    .parameter "settingIcon"
    .parameter "textColor"

    .prologue
    const/4 v2, 0x0

    .line 1493
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1494
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1495
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1496
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1498
    invoke-virtual {p1, v2, p2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1499
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1500
    return-void
.end method

.method private updateQuickPanelVoiceRecordIcon()V
    .locals 11

    .prologue
    const/high16 v10, 0x205

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 1997
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v7, 0x204005a

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1998
    .local v2, record:Landroid/view/ViewGroup;
    const v6, 0x204003d

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1999
    .local v3, recordButton:Landroid/widget/Button;
    const v6, 0x204003e

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 2000
    .local v1, pauseButton:Landroid/widget/ImageButton;
    const v6, 0x2040058

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 2001
    .local v4, saveButton:Landroid/widget/Button;
    const v6, 0x204003f

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2002
    .local v0, description:Landroid/widget/TextView;
    const v6, 0x2040059

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Chronometer;

    .line 2004
    .local v5, timer:Landroid/widget/Chronometer;
    iget v6, p0, Lcom/android/server/status/StatusBarService;->mRecorderStatus:I

    packed-switch v6, :pswitch_data_0

    .line 2038
    :pswitch_0
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 2039
    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2040
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 2041
    const v6, 0x2080019

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2042
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2043
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 2046
    :goto_0
    return-void

    .line 2011
    :pswitch_1
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 2012
    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2013
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 2014
    const v6, 0x2080016

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2015
    const/high16 v6, -0x1

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2016
    invoke-virtual {v5, v8}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_0

    .line 2024
    :pswitch_2
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 2025
    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2026
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 2027
    const v6, 0x2080018

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2028
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2029
    invoke-virtual {v5, v8}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_0

    .line 2004
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateQuickPanelVoiceRecordView(Lcom/android/server/status/NotificationData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 1993
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->updateQuickPanelVoiceRecordIcon()V

    .line 1994
    return-void
.end method

.method private final updateRadioIStatus(Z)V
    .locals 1
    .parameter "isRadioOn"

    .prologue
    .line 3380
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mRadioStatus:Z

    if-eq v0, p1, :cond_0

    .line 3381
    iput-boolean p1, p0, Lcom/android/server/status/StatusBarService;->mRadioStatus:Z

    .line 3382
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->updateQuickPanelRadioIcon()V

    .line 3384
    :cond_0
    return-void
.end method

.method private final updateRecorderStatus(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/16 v2, 0xc

    const/4 v4, 0x4

    .line 3346
    const-string v1, "command"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3349
    .local v0, currentStatus:I
    packed-switch v0, :pswitch_data_0

    .line 3365
    :pswitch_0
    iput v2, p0, Lcom/android/server/status/StatusBarService;->mRecorderStatus:I

    .line 3367
    invoke-direct {p0, v4}, Lcom/android/server/status/StatusBarService;->ChronometerStop(I)V

    .line 3368
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/android/server/status/StatusBarService;->mNewBaseTime:J

    iput-wide v1, p0, Lcom/android/server/status/StatusBarService;->mOldBaseTime:J

    .line 3372
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/status/StatusBarService;->mMiniRecorderVisible:Z

    if-eqz v1, :cond_0

    .line 3373
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->updateQuickPanelVoiceRecordIcon()V

    .line 3375
    :cond_0
    return-void

    .line 3351
    :pswitch_1
    iput v0, p0, Lcom/android/server/status/StatusBarService;->mRecorderStatus:I

    .line 3352
    const-string v1, "currentTime"

    iget-wide v2, p0, Lcom/android/server/status/StatusBarService;->mNewBaseTime:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/status/StatusBarService;->mNewBaseTime:J

    .line 3353
    invoke-direct {p0, v4}, Lcom/android/server/status/StatusBarService;->ChronometerStart(I)V

    goto :goto_0

    .line 3358
    :pswitch_2
    iput v0, p0, Lcom/android/server/status/StatusBarService;->mRecorderStatus:I

    .line 3360
    invoke-direct {p0, v4}, Lcom/android/server/status/StatusBarService;->ChronometerStop(I)V

    goto :goto_0

    .line 3349
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateScreenBrightness(I)V
    .locals 1
    .parameter "screenBrightness"

    .prologue
    .line 4159
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mScreenBrightness:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 4160
    return-void
.end method

.method private final updateSpeakerIcon()V
    .locals 5

    .prologue
    const-string v4, "StatusBar"

    .line 1747
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v3, 0x204002a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1748
    .local v0, call:Landroid/view/ViewGroup;
    const v2, 0x204002c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1749
    .local v1, speakerButton:Landroid/widget/Button;
    iget-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mIsHeadsetPlugged:Z

    if-eqz v2, :cond_0

    .line 1750
    const-string v2, "StatusBar"

    const-string v2, "  updateSpeakerIcon speakerButton.setEnabled(false)"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1757
    :goto_0
    return-void

    .line 1754
    :cond_0
    const-string v2, "StatusBar"

    const-string v2, "  updateSpeakerIcon speakerButton.setEnabled(true)"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private final updateSpeakerStatus(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1742
    const-string v0, "state"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mIsHeadsetPlugged:Z

    .line 1743
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->updateSpeakerIcon()V

    .line 1744
    return-void

    :cond_0
    move v0, v1

    .line 1742
    goto :goto_0
.end method

.method private updateSwitchButton(Landroid/widget/Button;Z)V
    .locals 1
    .parameter "btn"
    .parameter "isSwitchOn"

    .prologue
    .line 1666
    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/status/StatusBarService;->updateSwitchButton(Landroid/widget/Button;ZZ)V

    .line 1667
    return-void
.end method

.method private updateSwitchButton(Landroid/widget/Button;ZZ)V
    .locals 3
    .parameter "btn"
    .parameter "isEnable"
    .parameter "isSwitchOn"

    .prologue
    const/4 v2, 0x0

    .line 1671
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1685
    :cond_0
    :goto_0
    return-void

    .line 1676
    :cond_1
    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    .line 1677
    const v0, 0x202011f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1682
    :goto_1
    const/4 v0, 0x2

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1683
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1680
    :cond_2
    const v0, 0x202011e

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private final updateWifi(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 3191
    const/4 v0, 0x1

    .line 3192
    .local v0, needUpdate:Z
    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3194
    .local v1, state:I
    const/4 v2, 0x3

    if-ne v2, v1, :cond_1

    .line 3195
    iput-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mWiFiStatus:Z

    .line 3202
    :goto_0
    if-eqz v0, :cond_0

    .line 3203
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mWiFiBtn:Landroid/widget/TextView;

    const v3, 0x2080004

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 3204
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mWiFiBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3205
    invoke-direct {p0, v4}, Lcom/android/server/status/StatusBarService;->prepareQuickPanelSettingIcon(I)V

    .line 3207
    :cond_0
    return-void

    .line 3196
    :cond_1
    if-ne v4, v1, :cond_2

    .line 3197
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mWiFiStatus:Z

    goto :goto_0

    .line 3199
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 3

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceExpandStatusBar()V

    .line 699
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Z)V

    .line 700
    return-void
.end method

.method public addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;
    .locals 7
    .parameter "data"
    .parameter "n"

    .prologue
    const-string v5, "\'"

    .line 802
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 803
    iget-object v0, p1, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/status/StatusBarService;->getRightIconIndex(Ljava/lang/String;)I

    move-result v6

    .line 804
    .local v6, slot:I
    if-gez v6, :cond_2

    .line 805
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid status bar icon slot: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v3, "null"

    goto :goto_0

    .line 809
    .end local v6           #slot:I
    :cond_1
    const/4 v6, -0x1

    .line 811
    .restart local v6       #slot:I
    :cond_2
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 812
    .local v2, key:Landroid/os/IBinder;
    const/4 v1, 0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;I)V

    .line 813
    return-object v2
.end method

.method public addIcon(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/IBinder;
    .locals 2
    .parameter "slot"
    .parameter "iconPackage"
    .parameter "iconId"
    .parameter "iconLevel"

    .prologue
    .line 730
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 731
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method addNotificationView(Lcom/android/server/status/StatusBarNotification;)V
    .locals 6
    .parameter "notification"

    .prologue
    .line 2201
    iget-object v3, p1, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2202
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Assertion failed: notification.view="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2206
    :cond_0
    iget-object v3, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-boolean v3, v3, Lcom/android/server/status/NotificationData;->ongoingEvent:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    move-object v2, v3

    .line 2208
    .local v2, parent:Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/status/StatusBarService;->makeNotificationView(Lcom/android/server/status/StatusBarNotification;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2209
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_2

    .line 2224
    :goto_1
    return-void

    .line 2206
    .end local v0           #child:Landroid/view/View;
    .end local v2           #parent:Landroid/widget/LinearLayout;
    :cond_1
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    move-object v2, v3

    goto :goto_0

    .line 2213
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #parent:Landroid/widget/LinearLayout;
    :cond_2
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v3, p1}, Lcom/android/server/status/NotificationViewList;->getExpandedIndex(Lcom/android/server/status/StatusBarNotification;)I

    move-result v1

    .line 2216
    .local v1, index:I
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v3}, Lcom/android/server/status/NotificationViewList;->ongoingCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 2217
    const/4 v3, 0x1

    if-lt v1, v3, :cond_3

    .line 2218
    add-int/lit8 v1, v1, -0x1

    .line 2223
    :cond_3
    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method

.method animateCollapse()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2371
    iget-boolean v1, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-nez v1, :cond_0

    .line 2386
    :goto_0
    return-void

    .line 2376
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    if-eqz v1, :cond_1

    .line 2377
    iget v1, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    float-to-int v0, v1

    .line 2383
    .local v0, y:I
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    .line 2384
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/status/StatusBarService;->prepareTracking(IZ)V

    .line 2385
    const/high16 v1, -0x3b06

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/status/StatusBarService;->performFling(IFZ)V

    goto :goto_0

    .line 2379
    .end local v0           #y:I
    :cond_1
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    sub-int v0, v1, v2

    .restart local v0       #y:I
    goto :goto_1
.end method

.method animateExpand()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2350
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2359
    :cond_0
    :goto_0
    return-void

    .line 2353
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_0

    .line 2357
    invoke-virtual {p0, v1, v2}, Lcom/android/server/status/StatusBarService;->prepareTracking(IZ)V

    .line 2358
    const/high16 v0, 0x44fa

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/status/StatusBarService;->performFling(IFZ)V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 703
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceExpandStatusBar()V

    .line 704
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Z)V

    .line 705
    return-void
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 4
    .parameter "what"
    .parameter "token"
    .parameter "pkg"

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 714
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mNotificationCallbacks:Lcom/android/server/status/StatusBarService$NotificationCallbacks;

    monitor-enter v1

    .line 720
    :try_start_0
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 721
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/status/StatusBarService;->manageDisableListLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->gatherDisableActionsLocked()I

    move-result v0

    .line 723
    .local v0, net:I
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mNotificationCallbacks:Lcom/android/server/status/StatusBarService$NotificationCallbacks;

    invoke-interface {v3, v0}, Lcom/android/server/status/StatusBarService$NotificationCallbacks;->onSetDisabled(I)V

    .line 724
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    const/4 v2, 0x7

    :try_start_2
    invoke-direct {p0, v2, v0}, Lcom/android/server/status/StatusBarService;->addPendingOp(II)V

    .line 726
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 727
    return-void

    .line 724
    .end local v0           #net:I
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 726
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method doAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2444
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 2447
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->incrementAnim()V

    .line 2449
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 2451
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    .line 2452
    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 2453
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->performExpand()V

    .line 2467
    :cond_0
    :goto_0
    return-void

    .line 2455
    :cond_1
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v1}, Lcom/android/server/status/StatusBarView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 2457
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    .line 2458
    invoke-virtual {p0, v3}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 2459
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->performCollapse()V

    goto :goto_0

    .line 2462
    :cond_2
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 2463
    iget-wide v0, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    .line 2464
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/server/status/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/status/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method doRevealAnimation()V
    .locals 5

    .prologue
    .line 2489
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/server/status/CloseDragHandle;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v2}, Lcom/android/server/status/StatusBarView;->getHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 2490
    .local v0, h:I
    iget-boolean v1, p0, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 2491
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->incrementAnim()V

    .line 2492
    iget v1, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 2493
    int-to-float v1, v0

    iput v1, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    .line 2494
    iget v1, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 2502
    :cond_0
    :goto_0
    return-void

    .line 2496
    :cond_1
    iget v1, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 2497
    iget-wide v1, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    .line 2498
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/status/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 13
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2774
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.DUMP"

    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 2776
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2886
    :goto_0
    return-void

    .line 2782
    :cond_0
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2783
    :try_start_0
    const-string v10, "Current Status Bar state:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2784
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mExpanded="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mExpandedVisible="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2786
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mTicking="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/status/StatusBarService;->mTicking:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2787
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mTracking="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/status/StatusBarService;->mTracking:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2788
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mAnimating="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mAnimY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mAnimVel="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mAnimAccel="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2791
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurAnimationTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mAnimLastTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/status/StatusBarService;->mAnimLastTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2793
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDisplayHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mDisplayHeight:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mAnimatingReveal="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mViewDelta="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mViewDelta:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2796
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDisplayHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mDisplayHeight:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2797
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2798
    .local v0, N:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mQueue.size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2799
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2800
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/status/StatusBarService$PendingOp;

    .line 2801
    .local v7, op:Lcom/android/server/status/StatusBarService$PendingOp;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " code="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " visible="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v7, Lcom/android/server/status/StatusBarService$PendingOp;->visible:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2803
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "           iconData="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/server/status/StatusBarService$PendingOp;->iconData:Lcom/android/server/status/IconData;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2804
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "           notificationData="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/server/status/StatusBarService$PendingOp;->notificationData:Lcom/android/server/status/NotificationData;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2799
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2806
    .end local v7           #op:Lcom/android/server/status/StatusBarService$PendingOp;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mExpandedParams: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2807
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mExpandedView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mExpandedView:Lcom/android/server/status/ExpandedView;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2808
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mExpandedDialog: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2809
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mTrackingParams: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2810
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mTrackingView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2811
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mOngoingTitle: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2812
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mOngoingItems: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2813
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mLatestTitle: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2814
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mLatestItems: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2815
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mNoNotificationsTitle: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2816
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCloseView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2817
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mTickerView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mTickerView:Landroid/view/View;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2818
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mScrollView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " scroll "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v11}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v11}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2820
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mNotificationLinearLayout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mNotificationLinearLayout:Landroid/view/View;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2821
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2822
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 2823
    :try_start_1
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 2824
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mIconMap.size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2825
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 2826
    .local v5, keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/IBinder;>;"
    const/4 v1, 0x0

    .line 2827
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 2828
    .local v4, key:Landroid/os/IBinder;
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/status/StatusBarIcon;

    .line 2829
    .local v3, icon:Lcom/android/server/status/StatusBarIcon;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2830
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "           data="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2831
    add-int/lit8 v1, v1, 0x1

    .line 2832
    goto :goto_2

    .line 2821
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #icon:Lcom/android/server/status/StatusBarIcon;
    .end local v4           #key:Landroid/os/IBinder;
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/IBinder;>;"
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 2833
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/IBinder;>;"
    :cond_2
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2834
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    monitor-enter v9

    .line 2835
    :try_start_4
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v10}, Lcom/android/server/status/NotificationViewList;->ongoingCount()I

    move-result v0

    .line 2836
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  ongoingCount.size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2837
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 2838
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v10, v1}, Lcom/android/server/status/NotificationViewList;->getOngoing(I)Lcom/android/server/status/StatusBarNotification;

    move-result-object v6

    .line 2839
    .local v6, n:Lcom/android/server/status/StatusBarNotification;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/status/StatusBarNotification;->key:Landroid/os/IBinder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " view="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2840
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "           data="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2837
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2833
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/IBinder;>;"
    .end local v6           #n:Lcom/android/server/status/StatusBarNotification;
    :catchall_1
    move-exception v10

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v10

    .line 2842
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/IBinder;>;"
    :cond_3
    :try_start_6
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v10}, Lcom/android/server/status/NotificationViewList;->latestCount()I

    move-result v0

    .line 2843
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  ongoingCount.size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2844
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 2845
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v10, v1}, Lcom/android/server/status/NotificationViewList;->getLatest(I)Lcom/android/server/status/StatusBarNotification;

    move-result-object v6

    .line 2846
    .restart local v6       #n:Lcom/android/server/status/StatusBarNotification;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/status/StatusBarNotification;->key:Landroid/os/IBinder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " view="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2847
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "           data="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2844
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2849
    .end local v6           #n:Lcom/android/server/status/StatusBarNotification;
    :cond_4
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2850
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v9

    .line 2851
    :try_start_7
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2852
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDisableRecords.size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mDisabled=0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2854
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_5

    .line 2855
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/status/StatusBarService$DisableRecord;

    .line 2856
    .local v8, tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] what=0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/server/status/StatusBarService$DisableRecord;->what:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pkg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/android/server/status/StatusBarService$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/android/server/status/StatusBarService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2854
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2849
    .end local v8           #tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    :catchall_2
    move-exception v10

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v10

    .line 2859
    :cond_5
    :try_start_9
    monitor-exit v9

    goto/16 :goto_0

    :catchall_3
    move-exception v10

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v10
.end method

.method gatherDisableActionsLocked()I
    .locals 4

    .prologue
    .line 907
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 909
    .local v0, N:I
    const/4 v2, 0x0

    .line 910
    .local v2, net:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 911
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/status/StatusBarService$DisableRecord;

    iget v3, v3, Lcom/android/server/status/StatusBarService$DisableRecord;->what:I

    or-int/2addr v2, v3

    .line 910
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 913
    :cond_0
    return v2
.end method

.method getAlbumArtBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "albumId"

    .prologue
    .line 3284
    const/4 v0, 0x0

    .line 3285
    .local v0, albumArt:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 3286
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://media/external/audio/albumart/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3287
    .local v3, currentAlbumArtURI:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 3289
    .local v7, inputStream:Ljava/io/InputStream;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 3294
    :goto_0
    if-eqz v7, :cond_0

    .line 3295
    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3296
    .local v2, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3297
    const/4 v9, 0x0

    invoke-static {v7, v9, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3298
    .local v1, b:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 3299
    const/4 v7, 0x0

    .line 3301
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v9, :cond_0

    .line 3302
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v10, p0, Lcom/android/server/status/StatusBarService;->mMusicAlbumArtWidth:I

    mul-int/lit8 v10, v10, 0x2

    div-int v8, v9, v10

    .line 3303
    .local v8, wx:I
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v10, p0, Lcom/android/server/status/StatusBarService;->mMusicAlbumArtHeight:I

    mul-int/lit8 v10, v10, 0x2

    div-int v5, v9, v10

    .line 3304
    .local v5, hx:I
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 3306
    .local v6, inSampleSize:I
    const/4 v9, 0x0

    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3307
    const/4 v9, 0x1

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3313
    :try_start_2
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .line 3316
    :goto_1
    const/4 v9, 0x0

    :try_start_3
    invoke-static {v7, v9, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3317
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 3318
    const/4 v7, 0x0

    .line 3319
    if-eqz v1, :cond_0

    .line 3320
    iget v9, p0, Lcom/android/server/status/StatusBarService;->mMusicAlbumArtWidth:I

    iget v10, p0, Lcom/android/server/status/StatusBarService;->mMusicAlbumArtHeight:I

    const/4 v11, 0x1

    invoke-static {v1, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 3327
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v2           #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #hx:I
    .end local v6           #inSampleSize:I
    .end local v8           #wx:I
    :cond_0
    if-eqz v7, :cond_1

    .line 3329
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 3333
    :goto_2
    const/4 v7, 0x0

    .line 3338
    .end local v3           #currentAlbumArtURI:Landroid/net/Uri;
    .end local v7           #inputStream:Ljava/io/InputStream;
    :cond_1
    return-object v0

    .line 3290
    .restart local v3       #currentAlbumArtURI:Landroid/net/Uri;
    .restart local v7       #inputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 3291
    .local v4, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3324
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    move-object v4, v9

    .line 3325
    .local v4, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3327
    if-eqz v7, :cond_1

    .line 3329
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 3330
    :catch_2
    move-exception v9

    goto :goto_2

    .line 3327
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v7, :cond_2

    .line 3329
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 3333
    :goto_3
    const/4 v7, 0x0

    .line 3327
    :cond_2
    throw v9

    .line 3330
    :catch_3
    move-exception v10

    goto :goto_3

    :catch_4
    move-exception v9

    goto :goto_2

    .line 3314
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v2       #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #hx:I
    .restart local v6       #inSampleSize:I
    .restart local v8       #wx:I
    :catch_5
    move-exception v9

    goto :goto_1
.end method

.method public getEventContact(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 787
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->getContact(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventCount(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 782
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->getCount(I)I

    move-result v0

    return v0
.end method

.method public getEventIndexWithReq(Ljava/lang/String;I)I
    .locals 1
    .parameter "pkg"
    .parameter "req"

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 760
    invoke-direct {p0, p1, p2}, Lcom/android/server/status/StatusBarService;->getIndex(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEventIntent(I)Landroid/app/PendingIntent;
    .locals 1
    .parameter "index"

    .prologue
    .line 791
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 792
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->getIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getEventText(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 770
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventTime(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 775
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->getTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventTitle(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 765
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getExpandedHeight()I
    .locals 2

    .prologue
    .line 3060
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v1}, Lcom/android/server/status/StatusBarView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/server/status/CloseDragHandle;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getIconNumberForView(Landroid/view/View;)I
    .locals 6
    .parameter "v"

    .prologue
    .line 1237
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 1238
    const/4 v3, 0x0

    .line 1239
    .local v3, icon:Lcom/android/server/status/StatusBarIcon;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1240
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1241
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/status/StatusBarIcon;

    .line 1242
    .local v2, ic:Lcom/android/server/status/StatusBarIcon;
    iget-object v5, v2, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    if-ne v5, p1, :cond_1

    .line 1243
    move-object v3, v2

    .line 1247
    .end local v2           #ic:Lcom/android/server/status/StatusBarIcon;
    :cond_0
    if-eqz v3, :cond_2

    .line 1248
    invoke-virtual {v3}, Lcom/android/server/status/StatusBarIcon;->getNumber()I

    move-result v5

    monitor-exit v4

    move v4, v5

    .line 1250
    :goto_1
    return v4

    .line 1240
    .restart local v2       #ic:Lcom/android/server/status/StatusBarIcon;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1250
    .end local v2           #ic:Lcom/android/server/status/StatusBarIcon;
    :cond_2
    const/4 v5, -0x1

    monitor-exit v4

    move v4, v5

    goto :goto_1

    .line 1252
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method getNotification(Landroid/os/IBinder;)Lcom/android/server/status/StatusBarNotification;
    .locals 2
    .parameter "key"

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    monitor-enter v0

    .line 1258
    :try_start_0
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v1, p1}, Lcom/android/server/status/NotificationViewList;->get(Landroid/os/IBinder;)Lcom/android/server/status/StatusBarNotification;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1259
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hideScreenBrightness()V
    .locals 2

    .prologue
    .line 4155
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mScreenBrightness:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 4156
    return-void
.end method

.method incrementAnim()V
    .locals 8

    .prologue
    .line 2476
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2477
    .local v1, now:J
    iget-wide v6, p0, Lcom/android/server/status/StatusBarService;->mAnimLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v3, v6, v7

    .line 2478
    .local v3, t:F
    iget v5, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    .line 2479
    .local v5, y:F
    iget v4, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    .line 2480
    .local v4, v:F
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    .line 2481
    .local v0, a:F
    mul-float v6, v4, v3

    add-float/2addr v6, v5

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v3

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    .line 2482
    mul-float v6, v0, v3

    add-float/2addr v6, v4

    iput v6, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    .line 2483
    iput-wide v1, p0, Lcom/android/server/status/StatusBarService;->mAnimLastTime:J

    .line 2486
    return-void
.end method

.method interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "event"

    .prologue
    .line 2599
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_1

    .line 2600
    const-string v18, "StatusBar"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "interceptTouchEvent event:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2602
    .local v4, N:I
    const/4 v12, 0x0

    .line 2603
    .local v12, tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v4, :cond_0

    .line 2604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/status/StatusBarService$DisableRecord;

    .line 2605
    .local v11, t:Lcom/android/server/status/StatusBarService$DisableRecord;
    const-string v18, "StatusBar"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "what=0x:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v11

    iget v0, v0, Lcom/android/server/status/StatusBarService$DisableRecord;->what:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " token:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v11

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$DisableRecord;->token:Landroid/os/IBinder;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " pkg:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v11

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$DisableRecord;->pkg:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2607
    .end local v11           #t:Lcom/android/server/status/StatusBarService$DisableRecord;
    :cond_0
    const/16 v18, 0x0

    .line 2668
    .end local v4           #N:I
    .end local v7           #i:I
    .end local v12           #tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    :goto_1
    return v18

    .line 2610
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/status/StatusBarView;->getHeight()I

    move-result v10

    .line 2611
    .local v10, statusBarSize:I
    mul-int/lit8 v6, v10, 0x2

    .line 2612
    .local v6, hitSize:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    if-nez v18, :cond_7

    .line 2613
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2615
    .local v16, y:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 2616
    sub-int v18, v10, v16

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/status/StatusBarService;->mViewDelta:I

    .line 2621
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    move/from16 v0, v16

    move v1, v6

    if-lt v0, v1, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/Display;->getHeight()I

    move-result v18

    sub-int v18, v18, v6

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 2627
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move v14, v0

    .line 2628
    .local v14, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/status/StatusBarService;->mEdgeBorder:I

    move v5, v0

    .line 2629
    .local v5, edgeBorder:I
    if-lt v14, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/Display;->getWidth()I

    move-result v18

    sub-int v18, v18, v5

    move v0, v14

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 2630
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    move/from16 v18, v0

    if-nez v18, :cond_6

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/status/StatusBarService;->prepareTracking(IZ)V

    .line 2631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2668
    .end local v5           #edgeBorder:I
    .end local v14           #x:I
    .end local v16           #y:I
    :cond_4
    :goto_4
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 2618
    .restart local v16       #y:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mAbsPos:[I

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/status/TrackingView;->getLocationOnScreen([I)V

    .line 2619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mAbsPos:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/status/TrackingView;->getHeight()I

    move-result v19

    add-int v18, v18, v19

    sub-int v18, v18, v16

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/status/StatusBarService;->mViewDelta:I

    goto/16 :goto_2

    .line 2630
    .restart local v5       #edgeBorder:I
    .restart local v14       #x:I
    :cond_6
    const/16 v18, 0x0

    goto :goto_3

    .line 2634
    .end local v5           #edgeBorder:I
    .end local v14           #x:I
    .end local v16           #y:I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/status/StatusBarService;->mTracking:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 2635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/status/CloseDragHandle;->getHeight()I

    move-result v18

    add-int v8, v10, v18

    .line 2637
    .local v8, minY:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 2638
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2639
    .restart local v16       #y:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move/from16 v0, v16

    move v1, v8

    if-lt v0, v1, :cond_4

    .line 2642
    :cond_8
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    .line 2643
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/status/StatusBarService;->mViewDelta:I

    move/from16 v18, v0

    add-int v18, v18, v16

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    goto/16 :goto_4

    .line 2645
    .end local v16           #y:I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 2646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x3e8

    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v17

    .line 2649
    .local v17, yVel:F
    const/16 v18, 0x0

    cmpg-float v18, v17, v18

    if-gez v18, :cond_d

    const/16 v18, 0x1

    move/from16 v9, v18

    .line 2651
    .local v9, negative:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v15

    .line 2652
    .local v15, xVel:F
    const/16 v18, 0x0

    cmpg-float v18, v15, v18

    if-gez v18, :cond_a

    .line 2653
    neg-float v15, v15

    .line 2655
    :cond_a
    const/high16 v18, 0x4316

    cmpl-float v18, v15, v18

    if-lez v18, :cond_b

    .line 2656
    const/high16 v15, 0x4316

    .line 2659
    :cond_b
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move v0, v15

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move v13, v0

    .line 2660
    .local v13, vel:F
    if-eqz v9, :cond_c

    .line 2661
    neg-float v13, v13

    .line 2664
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move v2, v13

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/status/StatusBarService;->performFling(IFZ)V

    goto/16 :goto_4

    .line 2649
    .end local v9           #negative:Z
    .end local v13           #vel:F
    .end local v15           #xVel:F
    :cond_d
    const/16 v18, 0x0

    move/from16 v9, v18

    goto :goto_5
.end method

.method isAutoBrightness()Z
    .locals 1

    .prologue
    .line 4186
    sget-boolean v0, Lcom/android/server/status/StatusBarService;->mIsAutoBrightness:Z

    return v0
.end method

.method makeNotificationView(Lcom/android/server/status/StatusBarNotification;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .parameter "notification"
    .parameter "parent"

    .prologue
    .line 1271
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    move-object v15, v0

    .line 1272
    .local v15, n:Lcom/android/server/status/NotificationData;
    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v16, v0

    .line 1273
    .local v16, remoteViews:Landroid/widget/RemoteViews;
    if-nez v16, :cond_0

    .line 1274
    const/4 v4, 0x0

    .line 1338
    :goto_0
    return-object v4

    .line 1282
    :cond_0
    iget v4, v15, Lcom/android/server/status/NotificationData;->twQuickPanelEvent:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1283
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/server/status/StatusBarService;->updateQuickPanelCallView(Lcom/android/server/status/NotificationData;)V

    .line 1284
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/status/StatusBarService;->updateMiniControllerVisibility(IZ)V

    .line 1285
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/status/StatusBarService;->mMiniCallVisible:Z

    .line 1286
    const/4 v4, 0x0

    goto :goto_0

    .line 1287
    :cond_1
    iget v4, v15, Lcom/android/server/status/NotificationData;->twQuickPanelEvent:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 1288
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/server/status/StatusBarService;->updateQuickPanelMusicView(Lcom/android/server/status/NotificationData;)V

    .line 1289
    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/status/StatusBarService;->updateMiniControllerVisibility(IZ)V

    .line 1290
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/status/StatusBarService;->mMiniMusicVisible:Z

    .line 1291
    const/4 v4, 0x0

    goto :goto_0

    .line 1292
    :cond_2
    iget v4, v15, Lcom/android/server/status/NotificationData;->twQuickPanelEvent:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1293
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/server/status/StatusBarService;->updateQuickPanelVoiceRecordView(Lcom/android/server/status/NotificationData;)V

    .line 1294
    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/status/StatusBarService;->updateMiniControllerVisibility(IZ)V

    .line 1295
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/status/StatusBarService;->mMiniRecorderVisible:Z

    .line 1296
    const/4 v4, 0x0

    goto :goto_0

    .line 1297
    :cond_3
    iget v4, v15, Lcom/android/server/status/NotificationData;->twQuickPanelEvent:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 1298
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/server/status/StatusBarService;->updateQuickPanelRadioView(Lcom/android/server/status/NotificationData;)V

    .line 1299
    const/16 v4, 0x8

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/status/StatusBarService;->updateMiniControllerVisibility(IZ)V

    .line 1300
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/status/StatusBarService;->mMiniRadioVisible:Z

    .line 1301
    const/4 v4, 0x0

    goto :goto_0

    .line 1306
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 1308
    .local v14, inflater:Landroid/view/LayoutInflater;
    const v4, 0x1090065

    const/4 v5, 0x0

    move-object v0, v14

    move v1, v4

    move-object/from16 v2, p2

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 1311
    .local v17, row:Landroid/view/View;
    const v4, 0x1020002

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 1312
    .local v11, content:Landroid/view/ViewGroup;
    const/high16 v4, 0x6

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    move-object v4, v0

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1314
    iget-object v6, v15, Lcom/android/server/status/NotificationData;->contentIntent:Landroid/app/PendingIntent;

    .line 1315
    .local v6, contentIntent:Landroid/app/PendingIntent;
    if-eqz v6, :cond_5

    .line 1316
    new-instance v4, Lcom/android/server/status/StatusBarService$Launcher;

    iget-object v7, v15, Lcom/android/server/status/NotificationData;->pkg:Ljava/lang/String;

    iget-object v8, v15, Lcom/android/server/status/NotificationData;->tag:Ljava/lang/String;

    iget v9, v15, Lcom/android/server/status/NotificationData;->id:I

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/status/StatusBarService$Launcher;-><init>(Lcom/android/server/status/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1319
    :cond_5
    const/4 v10, 0x0

    .line 1320
    .local v10, child:Landroid/view/View;
    const/4 v13, 0x0

    .line 1322
    .local v13, exception:Ljava/lang/Exception;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1327
    :goto_1
    if-nez v10, :cond_6

    .line 1328
    const-string v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t inflate view for package "

    .end local v6           #contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Lcom/android/server/status/NotificationData;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1329
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1324
    .restart local v6       #contentIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v4

    move-object v12, v4

    .line 1325
    .local v12, e:Ljava/lang/RuntimeException;
    move-object v13, v12

    goto :goto_1

    .line 1331
    .end local v12           #e:Ljava/lang/RuntimeException;
    :cond_6
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1333
    const/4 v4, 0x1

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1335
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    .line 1336
    move-object v0, v10

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/status/StatusBarNotification;->contentView:Landroid/view/View;

    move-object/from16 v4, v17

    .line 1338
    goto/16 :goto_0
.end method

.method manageDisableListLocked(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 8
    .parameter "what"
    .parameter "token"
    .parameter "pkg"

    .prologue
    .line 867
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "manageDisableList what=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 872
    :try_start_0
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 873
    .local v0, N:I
    const/4 v4, 0x0

    .line 875
    .local v4, tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 876
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/status/StatusBarService$DisableRecord;

    .line 877
    .local v3, t:Lcom/android/server/status/StatusBarService$DisableRecord;
    iget-object v6, v3, Lcom/android/server/status/StatusBarService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v6, p2, :cond_3

    .line 878
    move-object v4, v3

    .line 882
    .end local v3           #t:Lcom/android/server/status/StatusBarService$DisableRecord;
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v6

    if-nez v6, :cond_4

    .line 883
    :cond_1
    if-eqz v4, :cond_2

    .line 884
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 885
    iget-object v6, v4, Lcom/android/server/status/StatusBarService$DisableRecord;->token:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-interface {v6, v4, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 902
    :cond_2
    :goto_1
    monitor-exit v5

    .line 903
    :goto_2
    return-void

    .line 875
    .restart local v3       #t:Lcom/android/server/status/StatusBarService$DisableRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 888
    .end local v3           #t:Lcom/android/server/status/StatusBarService$DisableRecord;
    :cond_4
    if-nez v4, :cond_5

    .line 889
    new-instance v4, Lcom/android/server/status/StatusBarService$DisableRecord;

    .end local v4           #tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/android/server/status/StatusBarService$DisableRecord;-><init>(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    .restart local v4       #tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {p2, v4, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 896
    :try_start_2
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    :cond_5
    iput p1, v4, Lcom/android/server/status/StatusBarService$DisableRecord;->what:I

    .line 899
    iput-object p2, v4, Lcom/android/server/status/StatusBarService$DisableRecord;->token:Landroid/os/IBinder;

    .line 900
    iput-object p3, v4, Lcom/android/server/status/StatusBarService$DisableRecord;->pkg:Ljava/lang/String;

    goto :goto_1

    .line 902
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 893
    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v4       #tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    :catch_0
    move-exception v1

    .line 894
    .local v1, ex:Landroid/os/RemoteException;
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method onBarViewAttached()V
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 2895
    const/4 v5, -0x3

    .line 2896
    .local v5, pixelFormat:I
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    invoke-virtual {v2}, Lcom/android/server/status/TrackingView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2897
    .local v6, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 2898
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    .line 2901
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7de

    const v4, 0x20300

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 2910
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2911
    const-string v1, "TrackingView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2912
    iget v1, p0, Lcom/android/server/status/StatusBarService;->mTrackingPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2913
    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    .line 2915
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2916
    return-void
.end method

.method onTrackingViewAttached()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 2924
    const/4 v3, -0x3

    .line 2926
    .local v3, pixelFormat:I
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 2927
    .local v0, disph:I
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2928
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2929
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->getExpandedHeight()I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2930
    const/4 v4, 0x0

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2931
    neg-int v4, v0

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v4, p0, Lcom/android/server/status/StatusBarService;->mTrackingPosition:I

    .line 2932
    const/16 v4, 0x7de

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2933
    const/16 v4, 0x1328

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2938
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2939
    const/16 v4, 0x37

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2940
    const-string v4, "StatusBarExpanded"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2941
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2942
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setFormat(I)V

    .line 2943
    iput-object v2, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    .line 2945
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 2946
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mExpandedView:Lcom/android/server/status/ExpandedView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2949
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2950
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 2951
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mExpandedView:Lcom/android/server/status/ExpandedView;

    invoke-virtual {v4}, Lcom/android/server/status/ExpandedView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 2952
    .local v1, hack:Landroid/widget/FrameLayout;
    return-void
.end method

.method panelSlightlyVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 3079
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mPanelSlightlyVisible:Z

    if-eq v0, p1, :cond_0

    .line 3080
    iput-boolean p1, p0, Lcom/android/server/status/StatusBarService;->mPanelSlightlyVisible:Z

    .line 3081
    if-eqz p1, :cond_0

    .line 3083
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mNotificationCallbacks:Lcom/android/server/status/StatusBarService$NotificationCallbacks;

    invoke-interface {v0}, Lcom/android/server/status/StatusBarService$NotificationCallbacks;->onPanelRevealed()V

    .line 3086
    :cond_0
    return-void
.end method

.method performAddUpdateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V
    .locals 19
    .parameter "key"
    .parameter "data"
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/status/StatusBarException;
        }
    .end annotation

    .prologue
    .line 1113
    if-eqz p3, :cond_2

    .line 1114
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/status/StatusBarService;->getNotification(Landroid/os/IBinder;)Lcom/android/server/status/StatusBarNotification;

    move-result-object v8

    .line 1115
    .local v8, notification:Lcom/android/server/status/StatusBarNotification;
    const/4 v9, 0x0

    .line 1116
    .local v9, oldData:Lcom/android/server/status/NotificationData;
    if-nez v8, :cond_4

    .line 1118
    new-instance v8, Lcom/android/server/status/StatusBarNotification;

    .end local v8           #notification:Lcom/android/server/status/StatusBarNotification;
    invoke-direct {v8}, Lcom/android/server/status/StatusBarNotification;-><init>()V

    .line 1119
    .restart local v8       #notification:Lcom/android/server/status/StatusBarNotification;
    move-object/from16 v0, p1

    move-object v1, v8

    iput-object v0, v1, Lcom/android/server/status/StatusBarNotification;->key:Landroid/os/IBinder;

    .line 1120
    move-object/from16 v0, p3

    move-object v1, v8

    iput-object v0, v1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    move-object v15, v0

    monitor-enter v15

    .line 1122
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/server/status/NotificationViewList;->add(Lcom/android/server/status/StatusBarNotification;)V

    .line 1123
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1124
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/server/status/StatusBarService;->addNotificationView(Lcom/android/server/status/StatusBarNotification;)V

    .line 1125
    invoke-direct/range {p0 .. p0}, Lcom/android/server/status/StatusBarService;->setAreThereNotifications()V

    .line 1137
    :goto_0
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/status/NotificationData;->tickerText:Ljava/lang/CharSequence;

    move-object v15, v0

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/server/status/StatusBarView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v15

    if-eqz v15, :cond_1

    if-eqz v9, :cond_0

    iget-object v15, v9, Lcom/android/server/status/NotificationData;->tickerText:Ljava/lang/CharSequence;

    if-eqz v15, :cond_0

    iget-object v15, v9, Lcom/android/server/status/NotificationData;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/status/NotificationData;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/internal/util/CharSequences;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1141
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    move v15, v0

    and-int/lit8 v15, v15, 0xa

    if-nez v15, :cond_1

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mTicker:Lcom/android/server/status/Ticker;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarIcon;->getIcon(Landroid/content/Context;Lcom/android/server/status/IconData;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/status/NotificationData;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v1, p3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/status/Ticker;->addEntry(Lcom/android/server/status/NotificationData;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 1146
    :cond_1
    const/16 v15, -0x2710

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 1150
    .end local v8           #notification:Lcom/android/server/status/StatusBarNotification;
    .end local v9           #oldData:Lcom/android/server/status/NotificationData;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    move-object v15, v0

    monitor-enter v15

    .line 1151
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/status/StatusBarIcon;

    .line 1152
    .local v6, icon:Lcom/android/server/status/StatusBarIcon;
    if-nez v6, :cond_9

    .line 1154
    if-nez p3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v14, v16

    .line 1156
    .local v14, v:Landroid/widget/LinearLayout;
    :goto_1
    new-instance v6, Lcom/android/server/status/StatusBarIcon;

    .end local v6           #icon:Lcom/android/server/status/StatusBarIcon;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/status/StatusBarIcon;-><init>(Landroid/content/Context;Lcom/android/server/status/IconData;Landroid/view/ViewGroup;)V

    .line 1157
    .restart local v6       #icon:Lcom/android/server/status/StatusBarIcon;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    if-nez p3, :cond_8

    .line 1161
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/status/StatusBarService;->getRightIconIndex(Ljava/lang/String;)I

    move-result v13

    .line 1162
    .local v13, slotIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mRightIcons:[Lcom/android/server/status/StatusBarIcon;

    move-object v12, v0

    .line 1163
    .local v12, rightIcons:[Lcom/android/server/status/StatusBarIcon;
    aget-object v16, v12, v13

    if-nez v16, :cond_7

    .line 1164
    const/4 v11, 0x0

    .line 1165
    .local v11, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mRightIcons:[Lcom/android/server/status/StatusBarIcon;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v4, v16, v17

    .local v4, i:I
    :goto_2
    if-le v4, v13, :cond_6

    .line 1166
    aget-object v5, v12, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1167
    .local v5, ic:Lcom/android/server/status/StatusBarIcon;
    if-eqz v5, :cond_3

    .line 1168
    add-int/lit8 v11, v11, 0x1

    .line 1165
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1123
    .end local v4           #i:I
    .end local v5           #ic:Lcom/android/server/status/StatusBarIcon;
    .end local v6           #icon:Lcom/android/server/status/StatusBarIcon;
    .end local v11           #pos:I
    .end local v12           #rightIcons:[Lcom/android/server/status/StatusBarIcon;
    .end local v13           #slotIndex:I
    .end local v14           #v:Landroid/widget/LinearLayout;
    .restart local v8       #notification:Lcom/android/server/status/StatusBarNotification;
    .restart local v9       #oldData:Lcom/android/server/status/NotificationData;
    :catchall_0
    move-exception v16

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v16

    .line 1128
    :cond_4
    iget-object v9, v8, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    .line 1129
    move-object/from16 v0, p3

    move-object v1, v8

    iput-object v0, v1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    .line 1130
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/android/server/status/StatusBarService;->updateNotificationView(Lcom/android/server/status/StatusBarNotification;Lcom/android/server/status/NotificationData;)V

    goto/16 :goto_0

    .line 1154
    .end local v8           #notification:Lcom/android/server/status/StatusBarNotification;
    .end local v9           #oldData:Lcom/android/server/status/NotificationData;
    .restart local v6       #icon:Lcom/android/server/status/StatusBarIcon;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    move-object/from16 v16, v0

    move-object/from16 v14, v16

    goto :goto_1

    .line 1171
    .restart local v4       #i:I
    .restart local v11       #pos:I
    .restart local v12       #rightIcons:[Lcom/android/server/status/StatusBarIcon;
    .restart local v13       #slotIndex:I
    .restart local v14       #v:Landroid/widget/LinearLayout;
    :cond_6
    aput-object v6, v12, v13

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object v0, v6

    iget-object v0, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1197
    .end local v4           #i:I
    .end local v11           #pos:I
    .end local v12           #rightIcons:[Lcom/android/server/status/StatusBarIcon;
    .end local v13           #slotIndex:I
    .end local v14           #v:Landroid/widget/LinearLayout;
    :goto_3
    monitor-exit v15

    .line 1198
    :goto_4
    return-void

    .line 1174
    .restart local v12       #rightIcons:[Lcom/android/server/status/StatusBarIcon;
    .restart local v13       #slotIndex:I
    .restart local v14       #v:Landroid/widget/LinearLayout;
    :cond_7
    const-string v16, "StatusBar"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "duplicate icon in slot "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1177
    monitor-exit v15

    goto :goto_4

    .line 1197
    .end local v6           #icon:Lcom/android/server/status/StatusBarIcon;
    .end local v12           #rightIcons:[Lcom/android/server/status/StatusBarIcon;
    .end local v13           #slotIndex:I
    .end local v14           #v:Landroid/widget/LinearLayout;
    :catchall_1
    move-exception v16

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v16

    .line 1180
    .restart local v6       #icon:Lcom/android/server/status/StatusBarIcon;
    .restart local v14       #v:Landroid/widget/LinearLayout;
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/status/NotificationViewList;->getIconIndex(Lcom/android/server/status/NotificationData;)I

    move-result v7

    .line 1181
    .local v7, iconIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    move-object/from16 v16, v0

    move-object v0, v6

    iget-object v0, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/status/IconMerger;->addView(Landroid/view/View;I)V

    goto :goto_3

    .line 1184
    .end local v7           #iconIndex:I
    .end local v14           #v:Landroid/widget/LinearLayout;
    :cond_9
    if-nez p3, :cond_a

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/status/StatusBarIcon;->update(Landroid/content/Context;Lcom/android/server/status/IconData;)V

    goto :goto_3

    .line 1189
    :cond_a
    move-object v0, v6

    iget-object v0, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 1190
    .local v10, parent:Landroid/view/ViewGroup;
    move-object v0, v6

    iget-object v0, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    move-object/from16 v16, v0

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/status/StatusBarIcon;->update(Landroid/content/Context;Lcom/android/server/status/IconData;)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/status/NotificationViewList;->getIconIndex(Lcom/android/server/status/NotificationData;)I

    move-result v7

    .line 1194
    .restart local v7       #iconIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    move-object/from16 v16, v0

    move-object v0, v6

    iget-object v0, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/status/IconMerger;->addView(Landroid/view/View;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_3
.end method

.method performCollapse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2417
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_1

    .line 2441
    :cond_0
    :goto_0
    return-void

    .line 2420
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    .line 2421
    invoke-virtual {p0, v3}, Lcom/android/server/status/StatusBarService;->panelSlightlyVisible(Z)V

    .line 2422
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2423
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2424
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2425
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/status/TrackingView;->setVisibility(I)V

    .line 2429
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 2432
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 2433
    const/4 v0, 0x1

    const/high16 v1, 0x10a

    invoke-virtual {p0, v0, v1}, Lcom/android/server/status/StatusBarService;->setNotificationIconVisibility(ZI)V

    .line 2435
    :cond_2
    const v0, 0x10a0001

    invoke-virtual {p0, v3, v0}, Lcom/android/server/status/StatusBarService;->setDateViewVisibility(ZI)V

    .line 2437
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 2440
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    goto :goto_0
.end method

.method performDisableActions(I)V
    .locals 4
    .parameter "net"

    .prologue
    const-string v3, "StatusBar"

    .line 3089
    iget v1, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    .line 3090
    .local v1, old:I
    xor-int v0, p1, v1

    .line 3091
    .local v0, diff:I
    iput p1, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    .line 3094
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 3095
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    .line 3096
    const-string v2, "StatusBar"

    const-string v2, "DISABLE_EXPAND: yes"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->animateCollapse()V

    .line 3100
    :cond_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_4

    .line 3101
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_3

    .line 3102
    const-string v2, "StatusBar"

    const-string v2, "DISABLE_NOTIFICATION_ICONS: yes"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    iget-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mTicking:Z

    if-eqz v2, :cond_2

    .line 3104
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/status/IconMerger;->setVisibility(I)V

    .line 3105
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mTicker:Lcom/android/server/status/Ticker;

    invoke-virtual {v2}, Lcom/android/server/status/Ticker;->halt()V

    .line 3120
    :cond_1
    :goto_0
    return-void

    .line 3107
    :cond_2
    const/4 v2, 0x0

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Lcom/android/server/status/StatusBarService;->setNotificationIconVisibility(ZI)V

    goto :goto_0

    .line 3110
    :cond_3
    const-string v2, "StatusBar"

    const-string v2, "DISABLE_NOTIFICATION_ICONS: no"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    iget-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-nez v2, :cond_1

    .line 3112
    const/4 v2, 0x1

    const/high16 v3, 0x10a

    invoke-virtual {p0, v2, v3}, Lcom/android/server/status/StatusBarService;->setNotificationIconVisibility(ZI)V

    goto :goto_0

    .line 3115
    :cond_4
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_1

    .line 3116
    iget-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mTicking:Z

    if-eqz v2, :cond_1

    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_1

    .line 3117
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mTicker:Lcom/android/server/status/Ticker;

    invoke-virtual {v2}, Lcom/android/server/status/Ticker;->halt()V

    goto :goto_0
.end method

.method performExpand()V
    .locals 1

    .prologue
    .line 2390
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2411
    :cond_0
    :goto_0
    return-void

    .line 2393
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_0

    .line 2406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    .line 2407
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->makeExpandedVisible()V

    .line 2408
    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_0
.end method

.method performFling(IFZ)V
    .locals 9
    .parameter "y"
    .parameter "vel"
    .parameter "always"

    .prologue
    const/high16 v8, 0x44fa

    const/high16 v3, 0x4348

    const/high16 v7, -0x3b06

    const/high16 v6, -0x3cb8

    const/4 v5, 0x0

    .line 2534
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    .line 2535
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/server/status/StatusBarService;->mDisplayHeight:F

    .line 2537
    int-to-float v2, p1

    iput v2, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    .line 2538
    iput p2, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    .line 2542
    iget-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-eqz v2, :cond_3

    .line 2543
    if-nez p3, :cond_2

    cmpl-float v2, p2, v3

    if-gtz v2, :cond_0

    int-to-float v2, p1

    iget v3, p0, Lcom/android/server/status/StatusBarService;->mDisplayHeight:F

    const/high16 v4, 0x41c8

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    cmpl-float v2, p2, v6

    if-lez v2, :cond_2

    .line 2548
    :cond_0
    iput v8, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    .line 2549
    cmpg-float v2, p2, v5

    if-gez v2, :cond_1

    .line 2550
    iput v5, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    .line 2583
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2584
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/server/status/StatusBarService;->mAnimLastTime:J

    .line 2585
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    .line 2586
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    .line 2587
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->removeMessages(I)V

    .line 2588
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->removeMessages(I)V

    .line 2589
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Lcom/android/server/status/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/status/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2590
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->stopTracking()V

    .line 2591
    return-void

    .line 2555
    .end local v0           #now:J
    :cond_2
    iput v7, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    .line 2556
    cmpl-float v2, p2, v5

    if-lez v2, :cond_1

    .line 2557
    iput v5, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    goto :goto_0

    .line 2561
    :cond_3
    if-nez p3, :cond_4

    cmpl-float v2, p2, v3

    if-gtz v2, :cond_4

    int-to-float v2, p1

    iget v3, p0, Lcom/android/server/status/StatusBarService;->mDisplayHeight:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    cmpl-float v2, p2, v6

    if-lez v2, :cond_5

    .line 2566
    :cond_4
    iput v8, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    .line 2567
    cmpg-float v2, p2, v5

    if-gez v2, :cond_1

    .line 2568
    iput v5, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    goto :goto_0

    .line 2574
    :cond_5
    iput v7, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    .line 2575
    cmpl-float v2, p2, v5

    if-lez v2, :cond_1

    .line 2576
    iput v5, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    goto :goto_0
.end method

.method performRemoveIcon(Landroid/os/IBinder;)V
    .locals 6
    .parameter "key"

    .prologue
    .line 1211
    monitor-enter p0

    .line 1215
    :try_start_0
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/status/StatusBarIcon;

    .line 1216
    .local v0, icon:Lcom/android/server/status/StatusBarIcon;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1217
    if-eqz v0, :cond_0

    .line 1218
    iget-object v4, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1219
    .local v2, parent:Landroid/view/ViewGroup;
    iget-object v4, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1220
    iget-object v4, v0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget-object v4, v4, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/status/StatusBarService;->getRightIconIndex(Ljava/lang/String;)I

    move-result v3

    .line 1221
    .local v3, slotIndex:I
    if-ltz v3, :cond_0

    .line 1222
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mRightIcons:[Lcom/android/server/status/StatusBarIcon;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    .line 1225
    .end local v2           #parent:Landroid/view/ViewGroup;
    .end local v3           #slotIndex:I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/status/StatusBarService;->getNotification(Landroid/os/IBinder;)Lcom/android/server/status/StatusBarNotification;

    move-result-object v1

    .line 1226
    .local v1, notification:Lcom/android/server/status/StatusBarNotification;
    if-eqz v1, :cond_1

    .line 1227
    invoke-virtual {p0, v1}, Lcom/android/server/status/StatusBarService;->removeNotificationView(Lcom/android/server/status/StatusBarNotification;)V

    .line 1228
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1229
    :try_start_1
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v5, v1}, Lcom/android/server/status/NotificationViewList;->remove(Lcom/android/server/status/StatusBarNotification;)V

    .line 1230
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1231
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setAreThereNotifications()V

    .line 1233
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1234
    return-void

    .line 1230
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    .line 1233
    .end local v0           #icon:Lcom/android/server/status/StatusBarIcon;
    .end local v1           #notification:Lcom/android/server/status/StatusBarNotification;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4
.end method

.method performSetIconVisibility(Landroid/os/IBinder;Z)V
    .locals 4
    .parameter "key"
    .parameter "visible"

    .prologue
    .line 1201
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1205
    :try_start_0
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/status/StatusBarIcon;

    .line 1206
    .local v0, icon:Lcom/android/server/status/StatusBarIcon;
    iget-object v2, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1207
    monitor-exit v1

    .line 1208
    return-void

    .line 1206
    :cond_0
    const/16 v3, 0x8

    goto :goto_0

    .line 1207
    .end local v0           #icon:Lcom/android/server/status/StatusBarIcon;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method postStartTracing()V
    .locals 4

    .prologue
    .line 3990
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mStartTracing:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/status/StatusBarService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3991
    return-void
.end method

.method prepScreenBrightness(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 4146
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->calcScreenBrightness(Landroid/view/MotionEvent;)I

    move-result v0

    .line 4147
    .local v0, screenBrightness:I
    invoke-direct {p0, v0}, Lcom/android/server/status/StatusBarService;->updateScreenBrightness(I)V

    .line 4148
    return-void
.end method

.method prepareTracking(IZ)V
    .locals 6
    .parameter "y"
    .parameter "opening"

    .prologue
    const/16 v5, 0x3e9

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    .line 2505
    iput-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mTracking:Z

    .line 2506
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2507
    if-eqz p2, :cond_0

    .line 2508
    const/high16 v2, 0x44fa

    iput v2, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    .line 2509
    const/high16 v2, 0x4348

    iput v2, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    .line 2510
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v2}, Lcom/android/server/status/StatusBarView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    .line 2511
    iget v2, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 2512
    iput-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    .line 2513
    iput-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    .line 2514
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->removeMessages(I)V

    .line 2515
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    invoke-virtual {v2, v5}, Lcom/android/server/status/StatusBarService$H;->removeMessages(I)V

    .line 2516
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2517
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/server/status/StatusBarService;->mAnimLastTime:J

    .line 2518
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    .line 2519
    iput-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    .line 2520
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    invoke-virtual {v3, v5}, Lcom/android/server/status/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/status/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2522
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->makeExpandedVisible()V

    .line 2531
    .end local v0           #now:J
    :goto_0
    return-void

    .line 2525
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    if-eqz v2, :cond_1

    .line 2526
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    .line 2527
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->removeMessages(I)V

    .line 2529
    :cond_1
    iget v2, p0, Lcom/android/server/status/StatusBarService;->mViewDelta:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_0
.end method

.method public removeIcon(Landroid/os/IBinder;)V
    .locals 6
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 741
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 742
    const/4 v1, 0x3

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;I)V

    .line 743
    return-void
.end method

.method removeNotificationView(Lcom/android/server/status/StatusBarNotification;)V
    .locals 8
    .parameter "notification"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2270
    iget-object v2, p1, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    .line 2271
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 2272
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2273
    .local v1, parent:Landroid/view/ViewGroup;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2274
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    .line 2277
    .end local v1           #parent:Landroid/view/ViewGroup;
    :cond_0
    iget-object v0, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    .line 2278
    .local v0, n:Lcom/android/server/status/NotificationData;
    iget v3, v0, Lcom/android/server/status/NotificationData;->twQuickPanelEvent:I

    if-eqz v3, :cond_2

    .line 2279
    iget v3, v0, Lcom/android/server/status/NotificationData;->twQuickPanelEvent:I

    if-ne v3, v4, :cond_3

    .line 2280
    invoke-direct {p0, v7, v5}, Lcom/android/server/status/StatusBarService;->updateMiniControllerVisibility(IZ)V

    .line 2281
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarService;->mMiniRecorderVisible:Z

    .line 2296
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->showPreviousMiniController()V

    .line 2298
    :cond_2
    return-void

    .line 2282
    :cond_3
    iget v3, v0, Lcom/android/server/status/NotificationData;->twQuickPanelEvent:I

    if-ne v3, v6, :cond_4

    .line 2284
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->hideCallOnGoingView()V

    .line 2286
    invoke-direct {p0, v4, v5}, Lcom/android/server/status/StatusBarService;->updateMiniControllerVisibility(IZ)V

    .line 2287
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarService;->mMiniCallVisible:Z

    goto :goto_0

    .line 2288
    :cond_4
    iget v3, v0, Lcom/android/server/status/NotificationData;->twQuickPanelEvent:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 2289
    const/16 v3, 0x8

    invoke-direct {p0, v3, v5}, Lcom/android/server/status/StatusBarService;->updateMiniControllerVisibility(IZ)V

    .line 2290
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarService;->mMiniRadioVisible:Z

    goto :goto_0

    .line 2291
    :cond_5
    iget v3, v0, Lcom/android/server/status/NotificationData;->twQuickPanelEvent:I

    if-ne v3, v7, :cond_1

    .line 2292
    invoke-direct {p0, v6, v5}, Lcom/android/server/status/StatusBarService;->updateMiniControllerVisibility(IZ)V

    .line 2293
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarService;->mMiniMusicVisible:Z

    goto :goto_0
.end method

.method setDateViewVisibility(ZI)V
    .locals 2
    .parameter "visible"
    .parameter "anim"

    .prologue
    .line 2955
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDateView:Lcom/android/server/status/DateView;

    invoke-virtual {v0, p1}, Lcom/android/server/status/DateView;->setUpdates(Z)V

    .line 2956
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDateView:Lcom/android/server/status/DateView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/status/DateView;->setVisibility(I)V

    .line 2957
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDateView:Lcom/android/server/status/DateView;

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/status/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/status/DateView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2958
    return-void

    .line 2956
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public setIconVisibility(Landroid/os/IBinder;Z)V
    .locals 1
    .parameter "key"
    .parameter "visible"

    .prologue
    .line 821
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Z)V

    .line 822
    return-void
.end method

.method public setNotificationCallbacks(Lcom/android/server/status/StatusBarService$NotificationCallbacks;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/server/status/StatusBarService;->mNotificationCallbacks:Lcom/android/server/status/StatusBarService$NotificationCallbacks;

    .line 516
    return-void
.end method

.method setNotificationIconVisibility(ZI)V
    .locals 4
    .parameter "visible"
    .parameter "anim"

    .prologue
    .line 2961
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    invoke-virtual {v2}, Lcom/android/server/status/IconMerger;->getVisibility()I

    move-result v0

    .line 2962
    .local v0, old:I
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    move v1, v2

    .line 2963
    .local v1, v:I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 2964
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    invoke-virtual {v2, v1}, Lcom/android/server/status/IconMerger;->setVisibility(I)V

    .line 2965
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/server/status/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/status/IconMerger;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2967
    :cond_0
    return-void

    .line 2962
    .end local v1           #v:I
    :cond_1
    const/4 v2, 0x4

    move v1, v2

    goto :goto_0
.end method

.method setScreenBrightness(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 4163
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->calcScreenBrightness(Landroid/view/MotionEvent;)I

    move-result v1

    .line 4164
    .local v1, screenBrightness:I
    invoke-direct {p0, v1}, Lcom/android/server/status/StatusBarService;->updateScreenBrightness(I)V

    .line 4171
    invoke-direct {p0, v1}, Lcom/android/server/status/StatusBarService;->checkMinMax(I)I

    move-result v1

    .line 4173
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4176
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 4178
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 4179
    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4183
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 4181
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method showScreenBrightness()V
    .locals 2

    .prologue
    .line 4151
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mScreenBrightness:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 4152
    return-void
.end method

.method stopTracking()V
    .locals 1

    .prologue
    .line 2470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mTracking:Z

    .line 2471
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2473
    return-void
.end method

.method public systemReady()V
    .locals 7

    .prologue
    .line 673
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    .line 674
    .local v6, view:Lcom/android/server/status/StatusBarView;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    invoke-virtual {v6}, Lcom/android/server/status/StatusBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/16 v3, 0x7d0

    const/16 v4, 0x48

    iget v5, p0, Lcom/android/server/status/StatusBarService;->mPixelFormat:I

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 682
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 683
    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 684
    const v1, 0x1030069

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 686
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 689
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->initQuickPanelSetting()V

    .line 690
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->registerObserver()V

    .line 692
    return-void
.end method

.method public toggle()V
    .locals 3

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceExpandStatusBar()V

    .line 709
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Z)V

    .line 710
    return-void
.end method

.method updateExpandedHeight()V
    .locals 2

    .prologue
    .line 3064
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedView:Lcom/android/server/status/ExpandedView;

    if-eqz v0, :cond_0

    .line 3065
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->getExpandedHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3066
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3068
    :cond_0
    return-void
.end method

.method updateExpandedViewPos(I)V
    .locals 12
    .parameter "expandedPosition"

    .prologue
    const/4 v11, 0x1

    .line 2976
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v8}, Lcom/android/server/status/StatusBarView;->getHeight()I

    move-result v3

    .line 2977
    .local v3, h:I
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 2981
    .local v2, disph:I
    iget-boolean v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-nez v8, :cond_2

    .line 2982
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    if-eqz v8, :cond_0

    .line 2983
    neg-int v8, v2

    iput v8, p0, Lcom/android/server/status/StatusBarService;->mTrackingPosition:I

    .line 2984
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_0

    .line 2985
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, p0, Lcom/android/server/status/StatusBarService;->mTrackingPosition:I

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2986
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9, v10}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2989
    :cond_0
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_1

    .line 2992
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v9, v2

    mul-int/lit8 v9, v9, 0x2

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2997
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3057
    :cond_1
    :goto_0
    return-void

    .line 3004
    :cond_2
    const/16 v8, -0x2711

    if-ne p1, v8, :cond_6

    .line 3005
    move v6, v3

    .line 3018
    .local v6, pos:I
    :goto_1
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v6, p0, Lcom/android/server/status/StatusBarService;->mTrackingPosition:I

    .line 3019
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v9, v2, v3

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3020
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9, v10}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3022
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_1

    .line 3023
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mPositionTmp:[I

    invoke-virtual {v8, v9}, Lcom/android/server/status/CloseDragHandle;->getLocationInWindow([I)V

    .line 3024
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mPositionTmp:[I

    aget v0, v8, v11

    .line 3026
    .local v0, closePos:I
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedContents:Landroid/view/View;

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mPositionTmp:[I

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 3027
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mPositionTmp:[I

    aget v8, v8, v11

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mExpandedContents:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int v1, v8, v9

    .line 3029
    .local v1, contentsBottom:I
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    invoke-virtual {v9}, Lcom/android/server/status/TrackingView;->getHeight()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v10, v0

    sub-int/2addr v9, v10

    sub-int/2addr v9, v1

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3031
    move v4, v3

    .line 3032
    .local v4, max:I
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    if-le v8, v4, :cond_3

    .line 3033
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3035
    :cond_3
    iget v5, p0, Lcom/android/server/status/StatusBarService;->mTrackingPosition:I

    .line 3036
    .local v5, min:I
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v8, v5, :cond_4

    .line 3037
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3040
    :cond_4
    iget v8, p0, Lcom/android/server/status/StatusBarService;->mTrackingPosition:I

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    invoke-virtual {v9}, Lcom/android/server/status/TrackingView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    if-le v8, v3, :cond_9

    move v7, v11

    .line 3041
    .local v7, visible:Z
    :goto_2
    if-nez v7, :cond_5

    .line 3044
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v9, v2

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3046
    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/server/status/StatusBarService;->panelSlightlyVisible(Z)V

    .line 3047
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    .line 3007
    .end local v0           #closePos:I
    .end local v1           #contentsBottom:I
    .end local v4           #max:I
    .end local v5           #min:I
    .end local v6           #pos:I
    .end local v7           #visible:Z
    :cond_6
    const/16 v8, -0x2710

    if-ne p1, v8, :cond_7

    .line 3008
    iget v6, p0, Lcom/android/server/status/StatusBarService;->mTrackingPosition:I

    .restart local v6       #pos:I
    goto/16 :goto_1

    .line 3011
    .end local v6           #pos:I
    :cond_7
    if-gt p1, v2, :cond_8

    .line 3012
    move v6, p1

    .line 3016
    .restart local v6       #pos:I
    :goto_3
    sub-int v8, v2, v3

    sub-int/2addr v6, v8

    goto/16 :goto_1

    .line 3014
    .end local v6           #pos:I
    :cond_8
    move v6, v2

    .restart local v6       #pos:I
    goto :goto_3

    .line 3040
    .restart local v0       #closePos:I
    .restart local v1       #contentsBottom:I
    .restart local v4       #max:I
    .restart local v5       #min:I
    :cond_9
    const/4 v8, 0x0

    move v7, v8

    goto :goto_2
.end method

.method public updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V
    .locals 6
    .parameter "key"
    .parameter "data"
    .parameter "n"

    .prologue
    .line 817
    const/4 v1, 0x2

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;I)V

    .line 818
    return-void
.end method

.method public updateIcon(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .parameter "key"
    .parameter "slot"
    .parameter "iconPackage"
    .parameter "iconId"
    .parameter "iconLevel"

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 737
    const/4 v0, 0x0

    invoke-static {p2, p3, p4, p5, v0}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 738
    return-void
.end method

.method public updateMuteState(ZZ)V
    .locals 8
    .parameter "isEnable"
    .parameter "isMuteOn"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1647
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v3, 0x204002a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1648
    .local v0, call:Landroid/view/ViewGroup;
    const v2, 0x204002b

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1649
    .local v1, muteButton:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/16 v4, 0x3ea

    if-eqz p1, :cond_1

    move v5, v7

    :goto_0
    if-eqz p2, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/android/server/status/StatusBarService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1650
    return-void

    :cond_1
    move v5, v6

    .line 1649
    goto :goto_0
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string v5, ""

    .line 3905
    const/4 v0, 0x0

    .line 3907
    .local v0, something:Z
    if-eqz p3, :cond_1

    .line 3908
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3909
    if-eqz p4, :cond_0

    .line 3910
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3919
    :goto_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 3920
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3921
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3922
    const/4 v0, 0x1

    .line 3927
    :goto_1
    return-void

    .line 3912
    :cond_0
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    const v2, 0x1040364

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 3915
    :cond_1
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3916
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3924
    :cond_2
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3925
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method updateNotificationView(Lcom/android/server/status/StatusBarNotification;Lcom/android/server/status/NotificationData;)V
    .locals 9
    .parameter "notification"
    .parameter "oldData"

    .prologue
    .line 2231
    iget-object v8, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    .line 2232
    .local v8, n:Lcom/android/server/status/NotificationData;
    if-eqz p2, :cond_1

    if-eqz v8, :cond_1

    iget-wide v0, v8, Lcom/android/server/status/NotificationData;->when:J

    iget-wide v3, p2, Lcom/android/server/status/NotificationData;->when:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    iget-boolean v0, v8, Lcom/android/server/status/NotificationData;->ongoingEvent:Z

    iget-boolean v1, p2, Lcom/android/server/status/NotificationData;->ongoingEvent:Z

    if-ne v0, v1, :cond_1

    iget-object v0, v8, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    iget-object v1, v8, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v0, v8, Lcom/android/server/status/NotificationData;->twQuickPanelEvent:I

    if-nez v0, :cond_1

    .line 2244
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v0, p1}, Lcom/android/server/status/NotificationViewList;->update(Lcom/android/server/status/StatusBarNotification;)V

    .line 2246
    :try_start_0
    iget-object v0, v8, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/server/status/StatusBarNotification;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 2249
    iget-object v0, p1, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 2251
    .local v6, content:Landroid/view/ViewGroup;
    iget-object v2, v8, Lcom/android/server/status/NotificationData;->contentIntent:Landroid/app/PendingIntent;

    .line 2252
    .local v2, contentIntent:Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 2253
    new-instance v0, Lcom/android/server/status/StatusBarService$Launcher;

    iget-object v3, v8, Lcom/android/server/status/NotificationData;->pkg:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/server/status/NotificationData;->tag:Ljava/lang/String;

    iget v5, v8, Lcom/android/server/status/NotificationData;->id:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/status/StatusBarService$Launcher;-><init>(Lcom/android/server/status/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2266
    .end local v2           #contentIntent:Landroid/app/PendingIntent;
    .end local v6           #content:Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setAreThereNotifications()V

    .line 2267
    return-void

    .line 2256
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 2258
    .local v7, e:Ljava/lang/RuntimeException;
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t reapply views for package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v8, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2259
    invoke-virtual {p0, p1}, Lcom/android/server/status/StatusBarService;->removeNotificationView(Lcom/android/server/status/StatusBarNotification;)V

    goto :goto_0

    .line 2262
    .end local v7           #e:Ljava/lang/RuntimeException;
    :cond_1
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v0, p1}, Lcom/android/server/status/NotificationViewList;->update(Lcom/android/server/status/StatusBarNotification;)V

    .line 2263
    invoke-virtual {p0, p1}, Lcom/android/server/status/StatusBarService;->removeNotificationView(Lcom/android/server/status/StatusBarNotification;)V

    .line 2264
    invoke-virtual {p0, p1}, Lcom/android/server/status/StatusBarService;->addNotificationView(Lcom/android/server/status/StatusBarNotification;)V

    goto :goto_0
.end method

.method updateResources()V
    .locals 4

    .prologue
    .line 3937
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3939
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mClearButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v3, 0x1040391

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3940
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v3, 0x1040393

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3941
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v3, 0x1040394

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3942
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v3, 0x1040392

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3944
    const v1, 0x105000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/status/StatusBarService;->mEdgeBorder:I

    .line 3948
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->updateQuickPanelResources()V

    .line 3949
    return-void
.end method

.method public updateSpeakerState(Z)V
    .locals 7
    .parameter "isSpeakerOn"

    .prologue
    const/4 v6, 0x1

    .line 1654
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQuickPanelMiniContainer:Landroid/widget/LinearLayout;

    const v3, 0x204002a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1655
    .local v0, call:Landroid/view/ViewGroup;
    const v2, 0x204002c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1656
    .local v1, speakerButton:Landroid/widget/Button;
    const-string v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSpeakerState speakerButton.isEnabled() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1660
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/16 v4, 0x3ea

    if-eqz p1, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {v3, v4, v6, v5, v1}, Lcom/android/server/status/StatusBarService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1662
    :cond_0
    return-void

    .line 1660
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method vibrate()V
    .locals 3

    .prologue
    .line 3994
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 3996
    .local v0, vib:Landroid/os/Vibrator;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 3997
    return-void
.end method

.method vibrateWithDuration(J)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 4002
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 4004
    .local v0, vib:Landroid/os/Vibrator;
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 4005
    return-void
.end method

.method public viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .parameter "v"

    .prologue
    const-string v2, ","

    .line 2769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
