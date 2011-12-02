.class public Lcom/android/music/player/activity/MusicPlayer;
.super Landroid/app/Activity;
.source "MusicPlayer.java"

# interfaces
.implements Lcom/android/music/player/widget/MusicPlayerWindow$OnMusicPlayerViewChangeListener;
.implements Lcom/android/music/common/util/OnLowBatteryListener;
.implements Lcom/android/music/list/interfaces/MusicOrientationChanger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;,
        Lcom/android/music/player/activity/MusicPlayer$OnGestureListener;,
        Lcom/android/music/player/activity/MusicPlayer$Worker;,
        Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;,
        Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;,
        Lcom/android/music/player/activity/MusicPlayer$ShareAppListAdapter;,
        Lcom/android/music/player/activity/MusicPlayer$GoogleSearchAdapter;,
        Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;,
        Lcom/android/music/player/activity/MusicPlayer$CallListener;
    }
.end annotation


# static fields
.field protected static final ALBUM_ART_DECODED:I = 0x8

.field protected static final ALBUM_ART_VISUALIZATION:I = 0x9

.field public static final CMDAPPWIDGETLAUNCH:Ljava/lang/String; = "com.android.music.musicservicecommand.launch"

.field protected static final END_SKIP_BACKWARD:I = 0xd

.field protected static final END_SKIP_FORWARD:I = 0xb

.field private static final FLING_IGNORE_DISABLE:I = 0x2

.field private static final FLING_IMAGE_TO_LEFT:I = 0x0

.field private static final FLING_IMAGE_TO_RIGHT:I = 0x1

.field protected static final GET_ALBUM_ART:I = 0x7

.field protected static final HIDE_ADDITIONAL_BAR:I = 0x20

.field protected static final HIDE_PREPARE:I = 0x15

.field protected static final HIDE_VOLUME_BAR:I = 0x1f

.field public static final INTENT_ACTION:Ljava/lang/String; = "musicplayer.action"

.field public static final INTENT_ACTION_LAUNCH_PLAYER:Ljava/lang/String; = "launchplayer"

.field public static final INTENT_ACTION_LIBRARY:Ljava/lang/String; = "Library"

.field public static final INTENT_ACTION_MAINMENU:Ljava/lang/String; = "MainMenu"

.field public static final INTENT_ACTION_PLAY_PLAYLIST:Ljava/lang/String; = "Playlist"

.field public static final INTENT_ACTION_SEARCH:Ljava/lang/String; = "Search"

.field public static final INTENT_HIDE_PROGRESSBAR:Ljava/lang/String; = "musicplayer.hide.progressbar"

.field public static final INTENT_SEARCH_URI:Ljava/lang/String; = "SearchUri"

.field public static final INTENT_SHOW_PROGRESSBAR:Ljava/lang/String; = "musicplayer.show.progressbar"

.field public static final INTENT_STREAM_MEDIA:Ljava/lang/String; = "musicplayer.streammedia"

.field public static final KEYMUSICMAINMENU:Ljava/lang/String; = "com.android.music.musicservicecommand.musicmenukey"

.field protected static final LONG_PRESSED_EVENT:I = 0xe

.field protected static final LONG_PRESS_TIME:J = 0x12cL

.field public static final MAJOR_MOVE:I = 0x14

.field protected static final MENU_ADD_TO_PLAYLIST:I = 0x6

.field protected static final MENU_ADD_TO_QUICK_LIST:I = 0x0

.field protected static final MENU_DETAILS:I = 0xa

.field protected static final MENU_GO_TO_DISC_PLUS:I = 0xb

.field protected static final MENU_GO_TO_QUICK_LIST:I = 0x7

.field protected static final MENU_SETTING:I = 0x9

.field protected static final MENU_SET_AS:I = 0x5

.field protected static final MENU_SHARE_TRACK_VIA:I = 0x4

.field protected static final MENU_SHOP:I = 0x1

.field protected static final MENU_TRANSFER_TO_HEADSET:I = 0x3

.field protected static final MENU_TRANSFER_TO_PHONE:I = 0x2

.field protected static final MESSAGE_DELAY:J = 0x1f4L

.field protected static final PLAYLIST_TYPE:[I = null

.field protected static final PLAY_PLAYLIST:I = 0x4

.field protected static final PLAY_SEARCH:I = 0x5

.field protected static final PLAY_STREAM:I = 0x6

.field protected static final QUIT:I = 0x1

.field protected static final SET_PLAYED_TIME:I = 0x16

.field protected static final SHOW_LYRIC_PANEL:I = 0x28

.field protected static final SHOW_PREPARE:I = 0x14

.field protected static final STARTUP_DELAY:J = 0x64L

.field protected static final START_SKIP_BACKWARD:I = 0xc

.field protected static final START_SKIP_FORWARD:I = 0xa

.field protected static final UPDATE_PLAYER:I = 0x3

.field protected static final UPDATE_STATUS:I = 0x2


# instance fields
.field protected EQBottomImage:[I

.field protected EQBottomImageView:[I

.field protected EQTopImage:[I

.field protected EQTopImageView:[I

.field IDX_ALARM_TONE:I

.field IDX_INDIVIDUAL_RINGTONE:I

.field IDX_VIDEO_CALL_RINGTONE:I

.field IDX_VOICE_CALL_RINGTONE:I

.field protected final PROCESSING_POPUP_DIALOG:I

.field protected final SETAS_OPTION_POPUP_DIALOG:I

.field protected final SETAS_OPTION_POPUP_DIALOG_WITH_MYFAVES:I

.field protected final TAG:Ljava/lang/String;

.field protected additionalPanelFromAlbumArt:Z

.field protected bCalledByList:Z

.field protected bCorePlayerStatusRefeshed:Z

.field private bIsSkipFlingEvent:Z

.field protected bUpdateMediaInfo:Z

.field private defaultHieght:I

.field private defaultTopMargin:I

.field protected drmManager:Lcom/android/music/common/manager/MusicDrmManager;

.field googleSearchMessageBox:Landroid/app/AlertDialog;

.field protected intentAction:Ljava/lang/String;

.field protected intentIndexOfMainListType:I

.field protected intentIsFromList:Z

.field protected intentPlayListName:Ljava/lang/String;

.field protected intentPlayListType:I

.field protected intentStreamMedia:Ljava/lang/String;

.field protected intentStreamMimeType:Ljava/lang/String;

.field protected isActivityExit:Z

.field protected isFirstTime:Z

.field private isSearchShown:Z

.field protected isShownAdditionalBar:Z

.field private isShownVolumeBar:Z

.field protected mAPIWarningDone:Z

.field private mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

.field protected mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

.field protected mAlbumArtWorker:Lcom/android/music/player/activity/MusicPlayer$Worker;

.field private mAnimDelay:I

.field private mAnimDelta:I

.field private mAnimInProgress:Z

.field protected mAnimationScreen:Landroid/widget/FrameLayout;

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mBackgroundPlaying:Z

.field private mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

.field private mBitmap:Landroid/graphics/Bitmap;

.field protected mButtonFF:Landroid/widget/ImageView;

.field protected mButtonList:Landroid/widget/Button;

.field protected mButtonPlay:Landroid/widget/ImageView;

.field protected mButtonRepeat:Landroid/widget/ImageView;

.field protected mButtonRew:Landroid/widget/ImageView;

.field protected mButtonShuffle:Landroid/widget/ImageView;

.field protected mButtonSrs:Landroid/widget/ImageView;

.field protected mButtonVolume:Landroid/widget/ImageView;

.field private mCallListener:Lcom/android/music/player/activity/MusicPlayer$CallListener;

.field protected mConnection:Landroid/content/ServiceConnection;

.field protected mContext:Landroid/content/Context;

.field protected mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

.field protected mCoverflowView:Landroid/widget/ImageView;

.field protected mCursor:Landroid/database/Cursor;

.field private mDefaultBitmap:Landroid/graphics/Bitmap;

.field protected mDetailView:Landroid/widget/LinearLayout;

.field protected mDetailViewImage:Landroid/widget/ImageView;

.field protected mDetailViewImageReflect:Landroid/widget/ImageView;

.field protected mDurationView:Landroid/widget/TextView;

.field private mFFController:Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;

.field private mFlingHandler:Landroid/os/Handler;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mGestureSweepListener:Lcom/android/music/player/activity/MusicPlayer$OnGestureListener;

.field mGoogleSearchListener:Landroid/content/DialogInterface$OnClickListener;

.field final mHandler:Landroid/os/Handler;

.field private mHideBubble:Ljava/lang/Runnable;

.field protected mIndexOfVisualization:I

.field protected mIsLiveStreamMode:Z

.field protected mIsVolumeBubbleRunable:Z

.field protected mIteratorAudioId:I

.field protected mLaunchMode:I

.field protected mLeftArrow:Landroid/widget/ImageView;

.field private mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field protected mLongKey:Z

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field protected mLyricTextView:Landroid/widget/TextView;

.field protected mMediaDuration:I

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field protected mMenu:Landroid/view/Menu;

.field protected mMpListFilter:Lcom/android/music/common/data/MpListFilter;

.field protected mMusicDB:Lcom/android/music/common/data/MusicDB;

.field protected mMusicLyric:Ljava/lang/String;

.field protected mMusicPlayerInitDone:Z

.field protected mMusicPlayerView:Landroid/widget/LinearLayout;

.field protected mMusicPlayerWindow:Lcom/android/music/player/widget/MusicPlayerWindow;

.field protected mOptionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mPause:Z

.field protected mPlayedTimeView:Landroid/widget/TextView;

.field private mPrefs:Landroid/content/SharedPreferences;

.field protected mProgressBar:Landroid/widget/SeekBar;

.field private mProgressBarKeyListener:Landroid/view/View$OnKeyListener;

.field protected final mProgressBarRecceiver:Landroid/content/BroadcastReceiver;

.field private mRewController:Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;

.field protected mRightArrow:Landroid/widget/ImageView;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mShareListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSpeakerButton:Landroid/widget/ImageView;

.field public mSpeakerMode:Z

.field protected mSubCursor:Landroid/database/Cursor;

.field protected mTitleInfoButton:Landroid/view/View;

.field protected mTvAlbum:Landroid/widget/TextView;

.field protected mTvArtist:Landroid/widget/TextView;

.field protected mTvTitle:Landroid/widget/TextView;

.field protected mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

.field protected mViewAlbumImage:Landroid/widget/ImageView;

.field protected mViewAlbumImageTemp:Landroid/widget/ImageView;

.field protected mViewChanging:Z

.field protected mViewLyricLayout:Landroid/view/ViewGroup;

.field protected mViewProgressBar:Landroid/view/ViewGroup;

.field protected mVisualizationType:I

.field protected mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

.field protected mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field protected menuDetailsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field protected menuSettingsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field protected meta:Lcom/android/music/common/data/MediaMetadata;

.field musicPlayerToast:Landroid/widget/Toast;

.field protected myFiles_path:Ljava/lang/String;

.field protected myFiles_sortOrder:I

.field protected preparingDialog:Landroid/app/AlertDialog;

.field protected searchItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private setAsRingtoneOptionNonVT:[I

.field protected showTimeElapsed:Z

.field protected skipCount:I

.field ttsMessageBox:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/music/player/activity/MusicPlayer;->PLAYLIST_TYPE:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 523
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 144
    const-class v0, Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    .line 146
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mSensorManager:Landroid/hardware/SensorManager;

    .line 152
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    .line 154
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    .line 155
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    .line 186
    iput-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownVolumeBar:Z

    .line 190
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerMode:Z

    .line 199
    iput v4, p0, Lcom/android/music/player/activity/MusicPlayer;->intentIndexOfMainListType:I

    .line 201
    iput-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->intentIsFromList:Z

    .line 204
    iput v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    .line 205
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->showTimeElapsed:Z

    .line 207
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    .line 209
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicLyric:Ljava/lang/String;

    .line 210
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    .line 211
    iput v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mIteratorAudioId:I

    .line 215
    iput-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mIsLiveStreamMode:Z

    .line 266
    iput v2, p0, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    .line 273
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mBackgroundPlaying:Z

    .line 274
    iput-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->isActivityExit:Z

    .line 296
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->preparingDialog:Landroid/app/AlertDialog;

    .line 301
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mShareList:Ljava/util/List;

    .line 303
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    .line 304
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->ttsMessageBox:Landroid/app/AlertDialog;

    .line 306
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 312
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mTitleInfoButton:Landroid/view/View;

    .line 313
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    .line 314
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    .line 315
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    .line 316
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    .line 318
    iput-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->isSearchShown:Z

    .line 320
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerWindow:Lcom/android/music/player/widget/MusicPlayerWindow;

    .line 322
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerView:Landroid/widget/LinearLayout;

    .line 325
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtWorker:Lcom/android/music/player/activity/MusicPlayer$Worker;

    .line 332
    iput v2, p0, Lcom/android/music/player/activity/MusicPlayer;->SETAS_OPTION_POPUP_DIALOG:I

    .line 334
    iput v3, p0, Lcom/android/music/player/activity/MusicPlayer;->SETAS_OPTION_POPUP_DIALOG_WITH_MYFAVES:I

    .line 335
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->PROCESSING_POPUP_DIALOG:I

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mOptionItems:Ljava/util/ArrayList;

    .line 338
    iput-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerInitDone:Z

    .line 339
    iput-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mPause:Z

    .line 340
    iput-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->bUpdateMediaInfo:Z

    .line 345
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 348
    iput-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->bCalledByList:Z

    .line 349
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->bCorePlayerStatusRefeshed:Z

    .line 354
    iput-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewChanging:Z

    .line 356
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    .line 357
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCursor:Landroid/database/Cursor;

    .line 358
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mSubCursor:Landroid/database/Cursor;

    .line 359
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    .line 360
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCoverflowView:Landroid/widget/ImageView;

    .line 365
    iput v4, p0, Lcom/android/music/player/activity/MusicPlayer;->myFiles_sortOrder:I

    .line 366
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->myFiles_path:Ljava/lang/String;

    .line 377
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mAnimationScreen:Landroid/widget/FrameLayout;

    .line 379
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mDetailView:Landroid/widget/LinearLayout;

    .line 380
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mDetailViewImage:Landroid/widget/ImageView;

    .line 381
    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mDetailViewImageReflect:Landroid/widget/ImageView;

    .line 382
    iput-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mAPIWarningDone:Z

    .line 384
    iput v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mIndexOfVisualization:I

    .line 386
    iput-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->additionalPanelFromAlbumArt:Z

    .line 389
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAnimDelay:I

    .line 390
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAnimDelta:I

    .line 391
    iput-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mAnimInProgress:Z

    .line 406
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->EQTopImage:[I

    .line 427
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->EQBottomImage:[I

    .line 448
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->EQTopImageView:[I

    .line 471
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->EQBottomImageView:[I

    .line 777
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$4;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$4;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->menuSettingsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 789
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$5;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$5;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->menuDetailsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1744
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$17;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$17;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mFFController:Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;

    .line 1762
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$18;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$18;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mRewController:Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;

    .line 1825
    iput-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mLongKey:Z

    .line 2137
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$19;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$19;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 2684
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$20;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$20;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    .line 3422
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$22;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$22;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 3474
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$23;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$23;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBarRecceiver:Landroid/content/BroadcastReceiver;

    .line 3951
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$24;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$24;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBarKeyListener:Landroid/view/View$OnKeyListener;

    .line 4025
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$25;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$25;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 4051
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$26;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$26;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHideBubble:Ljava/lang/Runnable;

    .line 4120
    iput v2, p0, Lcom/android/music/player/activity/MusicPlayer;->IDX_VOICE_CALL_RINGTONE:I

    .line 4121
    iput v3, p0, Lcom/android/music/player/activity/MusicPlayer;->IDX_VIDEO_CALL_RINGTONE:I

    .line 4122
    iput v5, p0, Lcom/android/music/player/activity/MusicPlayer;->IDX_INDIVIDUAL_RINGTONE:I

    .line 4123
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->IDX_ALARM_TONE:I

    .line 4125
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v1, p0, Lcom/android/music/player/activity/MusicPlayer;->IDX_VOICE_CALL_RINGTONE:I

    aput v1, v0, v2

    iget v1, p0, Lcom/android/music/player/activity/MusicPlayer;->IDX_INDIVIDUAL_RINGTONE:I

    aput v1, v0, v3

    iget v1, p0, Lcom/android/music/player/activity/MusicPlayer;->IDX_ALARM_TONE:I

    aput v1, v0, v5

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->setAsRingtoneOptionNonVT:[I

    .line 4200
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$27;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$27;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mGoogleSearchListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4347
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$28;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$28;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mShareListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4397
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$29;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$29;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4788
    iput-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->bIsSkipFlingEvent:Z

    .line 4790
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$33;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$33;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mFlingHandler:Landroid/os/Handler;

    .line 5594
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$34;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$34;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 5657
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$35;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$35;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 524
    iput v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    .line 526
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$1;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$1;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mConnection:Landroid/content/ServiceConnection;

    .line 542
    return-void

    .line 406
    nop

    :array_0
    .array-data 0x4
        0x8dt 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x91t 0x0t 0x2t 0x7ft
        0x92t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
        0x94t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0x9at 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
        0x9dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 427
    :array_1
    .array-data 0x4
        0x9et 0x0t 0x2t 0x7ft
        0x9ft 0x0t 0x2t 0x7ft
        0xa0t 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
        0xa3t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xa8t 0x0t 0x2t 0x7ft
        0xa9t 0x0t 0x2t 0x7ft
        0xaat 0x0t 0x2t 0x7ft
        0xabt 0x0t 0x2t 0x7ft
        0xact 0x0t 0x2t 0x7ft
        0xadt 0x0t 0x2t 0x7ft
        0xaet 0x0t 0x2t 0x7ft
    .end array-data

    .line 448
    :array_2
    .array-data 0x4
        0x72t 0x0t 0xct 0x7ft
        0x73t 0x0t 0xct 0x7ft
        0x74t 0x0t 0xct 0x7ft
        0x75t 0x0t 0xct 0x7ft
        0x76t 0x0t 0xct 0x7ft
        0x77t 0x0t 0xct 0x7ft
        0x78t 0x0t 0xct 0x7ft
        0x79t 0x0t 0xct 0x7ft
        0x7at 0x0t 0xct 0x7ft
        0x7bt 0x0t 0xct 0x7ft
        0x7ct 0x0t 0xct 0x7ft
        0x7dt 0x0t 0xct 0x7ft
        0x7et 0x0t 0xct 0x7ft
        0x7ft 0x0t 0xct 0x7ft
        0x80t 0x0t 0xct 0x7ft
        0x81t 0x0t 0xct 0x7ft
        0x82t 0x0t 0xct 0x7ft
        0x83t 0x0t 0xct 0x7ft
        0x84t 0x0t 0xct 0x7ft
    .end array-data

    .line 471
    :array_3
    .array-data 0x4
        0x86t 0x0t 0xct 0x7ft
        0x87t 0x0t 0xct 0x7ft
        0x88t 0x0t 0xct 0x7ft
        0x89t 0x0t 0xct 0x7ft
        0x8at 0x0t 0xct 0x7ft
        0x8bt 0x0t 0xct 0x7ft
        0x8ct 0x0t 0xct 0x7ft
        0x8dt 0x0t 0xct 0x7ft
        0x8et 0x0t 0xct 0x7ft
        0x8ft 0x0t 0xct 0x7ft
        0x90t 0x0t 0xct 0x7ft
        0x91t 0x0t 0xct 0x7ft
        0x92t 0x0t 0xct 0x7ft
        0x93t 0x0t 0xct 0x7ft
        0x94t 0x0t 0xct 0x7ft
        0x95t 0x0t 0xct 0x7ft
        0x96t 0x0t 0xct 0x7ft
        0x97t 0x0t 0xct 0x7ft
        0x98t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer;->finishMusicPlayer()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/music/player/activity/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/music/player/activity/MusicPlayer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/music/player/activity/MusicPlayer;->setVolume(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/music/player/activity/MusicPlayer;ILcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/music/player/activity/MusicPlayer;->showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/music/player/activity/MusicPlayer;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mShareList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/music/player/activity/MusicPlayer;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->setAsRingtoneOptionNonVT:[I

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/music/player/activity/MusicPlayer;I)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/music/player/activity/MusicPlayer;->setRingtone(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mDefaultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/music/player/activity/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer;->mDefaultBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/music/player/activity/MusicPlayer;Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/music/player/activity/MusicPlayer;->getDefaultArtwork(Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/music/player/activity/MusicPlayer;IZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/music/player/activity/MusicPlayer;->getArtwork(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/music/player/activity/MusicPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->bIsSkipFlingEvent:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/music/player/activity/MusicPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/music/player/activity/MusicPlayer;->bIsSkipFlingEvent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/music/player/activity/MusicPlayer;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/music/player/activity/MusicPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mFlingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/music/player/activity/MusicPlayer;)Lcom/android/music/common/util/BatteryChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/music/player/activity/MusicPlayer;Lcom/android/music/common/util/BatteryChecker;)Lcom/android/music/common/util/BatteryChecker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/music/player/activity/MusicPlayer;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/music/player/activity/MusicPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/music/player/activity/MusicPlayer;->isSearchShown:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/music/player/activity/MusicPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownVolumeBar:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/music/player/activity/MusicPlayer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/music/player/activity/MusicPlayer;->changeVolume(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer;->updateSpeaker()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer;->playList()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer;->playSearch()V

    return-void
.end method

.method private changeVolume(I)V
    .locals 7
    .parameter "i"

    .prologue
    .line 4065
    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeVolume(volume="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4067
    :try_start_0
    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v4}, Lcom/android/music/player/service/ICorePlayerService;->getMaxVolume()I

    move-result v3

    .line 4068
    .local v3, volMax:I
    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v4}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentVolume()I

    move-result v2

    .line 4072
    .local v2, volLevel:I
    if-nez v2, :cond_0

    if-gez p1, :cond_0

    .line 4073
    const/4 v1, 0x0

    .line 4081
    .local v1, volCur:I
    :goto_0
    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v4, v1}, Lcom/android/music/player/service/ICorePlayerService;->setCurrentVolume(I)V

    .line 4082
    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v4, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 4083
    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->invalidate()V

    .line 4086
    if-lez v1, :cond_2

    .line 4087
    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonVolume:Landroid/widget/ImageView;

    const v5, 0x7f02010d

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4097
    .end local v1           #volCur:I
    .end local v2           #volLevel:I
    .end local v3           #volMax:I
    :goto_1
    return-void

    .line 4074
    .restart local v2       #volLevel:I
    .restart local v3       #volMax:I
    :cond_0
    if-lt v2, v3, :cond_1

    if-lez p1, :cond_1

    .line 4075
    move v1, v3

    .restart local v1       #volCur:I
    goto :goto_0

    .line 4077
    .end local v1           #volCur:I
    :cond_1
    add-int v1, v2, p1

    .line 4078
    .restart local v1       #volCur:I
    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeVolume() index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vol: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4094
    .end local v1           #volCur:I
    .end local v2           #volLevel:I
    .end local v3           #volMax:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 4095
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 4089
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #volCur:I
    .restart local v2       #volLevel:I
    .restart local v3       #volMax:I
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonVolume:Landroid/widget/ImageView;

    const v5, 0x7f0200da

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private finishMusicPlayer()V
    .locals 2

    .prologue
    .line 4653
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "finishMusicPlayer() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->isActivityExit:Z

    .line 4655
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->finish()V

    .line 4656
    return-void
.end method

.method private getArtwork(IZ)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "album_id"
    .parameter "isBigImage"

    .prologue
    .line 5094
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getArtwork(album_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",isBigImage="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5096
    const/4 v0, 0x0

    .line 5097
    .local v0, bm:Landroid/graphics/Bitmap;
    const-string v8, "content://media/external/audio/albumart"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 5099
    .local v5, sArtworkUri:Landroid/net/Uri;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5104
    .local v6, sBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    if-nez v0, :cond_2

    .line 5105
    int-to-long v8, p1

    invoke-static {v5, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 5106
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_2

    .line 5107
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getArtwork: uri ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5108
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 5109
    .local v4, res:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 5111
    .local v3, in:Ljava/io/InputStream;
    if-lez p1, :cond_0

    .line 5112
    :try_start_0
    invoke-virtual {v4, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 5113
    const/4 v8, 0x0

    invoke-static {v3, v8, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 5127
    :cond_0
    if-eqz v3, :cond_1

    .line 5128
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v9, "getArtwork: finally: null != in"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5130
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5140
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 5141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lcom/android/music/player/activity/MusicPlayer;->getDefaultArtwork(Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5147
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #res:Landroid/content/ContentResolver;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_2
    :goto_1
    return-object v0

    .line 5131
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #res:Landroid/content/ContentResolver;
    .restart local v7       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 5132
    .local v1, e:Ljava/io/IOException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 5133
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v9, "fail to read image."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5134
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException occured 2 :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5116
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 5117
    .local v2, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 5118
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException occured 1 :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5127
    if-eqz v3, :cond_3

    .line 5128
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v9, "getArtwork: finally: null != in"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5130
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 5140
    :cond_3
    :goto_2
    if-nez v0, :cond_2

    .line 5141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lcom/android/music/player/activity/MusicPlayer;->getDefaultArtwork(Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 5131
    :catch_2
    move-exception v1

    .line 5132
    .restart local v1       #e:Ljava/io/IOException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 5133
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v9, "fail to read image."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5134
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException occured 2 :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5121
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v8

    move-object v1, v8

    .line 5122
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_4
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Memory allocation failed getArtwork:uri:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5125
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5127
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v8

    if-eqz v3, :cond_4

    .line 5128
    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v10, "getArtwork: finally: null != in"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5130
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 5140
    :cond_4
    :goto_3
    if-nez v0, :cond_5

    .line 5141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v9, p2}, Lcom/android/music/player/activity/MusicPlayer;->getDefaultArtwork(Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_5
    throw v8

    .line 5131
    :catch_4
    move-exception v1

    .line 5132
    .local v1, e:Ljava/io/IOException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 5133
    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v10, "fail to read image."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5134
    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException occured 2 :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private getDefaultArtwork(Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "id"
    .parameter "isBigImage"

    .prologue
    .line 5151
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultArtwork(id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",isBigImage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is called"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5153
    const v2, 0x7f020111

    .line 5154
    .local v2, resId:I
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mDefaultBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 5155
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 5158
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mDefaultBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5166
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5172
    .end local v1           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mDefaultBitmap:Landroid/graphics/Bitmap;

    return-object v3

    .line 5159
    .restart local v1       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 5160
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Memory allocation failed getDefaultArtwork:id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5163
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5165
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v3

    .line 5166
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 5169
    :goto_1
    throw v3

    .line 5167
    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method private initializeControls()V
    .locals 10

    .prologue
    const/16 v9, 0xff

    const/4 v8, 0x4

    .line 1377
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v7, "MusicPlayer::initializeControls() is called"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    new-instance v6, Lcom/android/music/player/activity/MusicPlayer$OnGestureListener;

    invoke-direct {v6, p0}, Lcom/android/music/player/activity/MusicPlayer$OnGestureListener;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mGestureSweepListener:Lcom/android/music/player/activity/MusicPlayer$OnGestureListener;

    .line 1380
    new-instance v6, Landroid/view/GestureDetector;

    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mGestureSweepListener:Lcom/android/music/player/activity/MusicPlayer$OnGestureListener;

    invoke-direct {v6, p0, v7}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1382
    new-instance v2, Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener;

    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-direct {v2, v6}, Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener;-><init>(Landroid/view/GestureDetector;)V

    .line 1384
    .local v2, mFFHandler:Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener;
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mFFController:Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;

    invoke-virtual {v2, v6}, Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener;->setHandler(Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;)V

    .line 1386
    new-instance v3, Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener;

    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-direct {v3, v6}, Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener;-><init>(Landroid/view/GestureDetector;)V

    .line 1388
    .local v3, mRewHandler:Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener;
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mRewController:Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;

    invoke-virtual {v3, v6}, Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener;->setHandler(Lcom/android/music/player/listener/MusicPlayerFfRewOnTouchListener$TouchHandler;)V

    .line 1390
    new-instance v4, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;

    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-direct {v4, v6}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;-><init>(Landroid/view/GestureDetector;)V

    .line 1393
    .local v4, mTouchHandler:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
    new-instance v1, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;

    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-direct {v1, v6}, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;-><init>(Landroid/view/GestureDetector;)V

    .line 1394
    .local v1, lyricHandler:Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;
    const v6, 0x7f0c0099

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewLyricLayout:Landroid/view/ViewGroup;

    .line 1395
    const v6, 0x7f0c009a

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mLyricTextView:Landroid/widget/TextView;

    .line 1396
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mLyricTextView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1397
    new-instance v6, Lcom/android/music/player/activity/MusicPlayer$6;

    invoke-direct {v6, p0}, Lcom/android/music/player/activity/MusicPlayer$6;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-virtual {v1, v6}, Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener;->setHandler(Lcom/android/music/player/listener/MusicPlayerLyricOnTouchListener$TouchHandler;)V

    .line 1411
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mLyricTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1413
    const v6, 0x7f0c009b

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewProgressBar:Landroid/view/ViewGroup;

    .line 1414
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1416
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1417
    .local v0, bottomParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v6, p0, Lcom/android/music/player/activity/MusicPlayer;->defaultTopMargin:I

    .line 1418
    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v6, p0, Lcom/android/music/player/activity/MusicPlayer;->defaultHieght:I

    .line 1420
    const v6, 0x7f0c006e

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    .line 1421
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1422
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1424
    const v6, 0x7f0c006f

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    .line 1425
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1426
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1428
    new-instance v4, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;

    .end local v4           #mTouchHandler:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
    new-instance v6, Landroid/view/GestureDetector;

    new-instance v7, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;

    invoke-direct {v7, p0}, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-direct {v6, p0, v7}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-direct {v4, v6}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;-><init>(Landroid/view/GestureDetector;)V

    .line 1429
    .restart local v4       #mTouchHandler:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
    new-instance v6, Lcom/android/music/player/activity/MusicPlayer$7;

    invoke-direct {v6, p0}, Lcom/android/music/player/activity/MusicPlayer$7;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-virtual {v4, v6}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;->setHandler(Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener$TouchHandler;)V

    .line 1443
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1444
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    new-instance v7, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;

    invoke-direct {v7}, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;-><init>()V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1446
    const v6, 0x7f0c00a2

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 1447
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 1453
    const v6, 0x7f0c00a1

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    .line 1454
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 1456
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleAlign(I)V

    .line 1458
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v6, v8}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 1459
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownVolumeBar:Z

    .line 1461
    new-instance v4, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;

    .end local v4           #mTouchHandler:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-direct {v4, v6}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;-><init>(Landroid/view/GestureDetector;)V

    .line 1462
    .restart local v4       #mTouchHandler:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
    new-instance v6, Lcom/android/music/player/activity/MusicPlayer$8;

    invoke-direct {v6, p0}, Lcom/android/music/player/activity/MusicPlayer$8;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-virtual {v4, v6}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;->setHandler(Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener$TouchHandler;)V

    .line 1469
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v6, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1471
    const v6, 0x7f0c00a5

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    .line 1472
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    const v7, 0x7f020069

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1473
    new-instance v4, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;

    .end local v4           #mTouchHandler:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-direct {v4, v6}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;-><init>(Landroid/view/GestureDetector;)V

    .line 1474
    .restart local v4       #mTouchHandler:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
    new-instance v6, Lcom/android/music/player/activity/MusicPlayer$9;

    invoke-direct {v6, p0}, Lcom/android/music/player/activity/MusicPlayer$9;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-virtual {v4, v6}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;->setHandler(Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener$TouchHandler;)V

    .line 1481
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1482
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    new-instance v7, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;

    invoke-direct {v7}, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;-><init>()V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1494
    const v6, 0x7f0c00a4

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRew:Landroid/widget/ImageView;

    .line 1495
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRew:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1496
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRew:Landroid/widget/ImageView;

    new-instance v7, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;

    invoke-direct {v7}, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;-><init>()V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1498
    const v6, 0x7f0c00a7

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonFF:Landroid/widget/ImageView;

    .line 1499
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonFF:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1500
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonFF:Landroid/widget/ImageView;

    new-instance v7, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;

    invoke-direct {v7}, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;-><init>()V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1502
    const v6, 0x7f0c009e

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    .line 1503
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1506
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBarKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1508
    const v6, 0x7f0c009f

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mPlayedTimeView:Landroid/widget/TextView;

    .line 1509
    const v6, 0x7f0c00a0

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mDurationView:Landroid/widget/TextView;

    .line 1551
    const v6, 0x7f0c006d

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonSrs:Landroid/widget/ImageView;

    .line 1552
    new-instance v4, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;

    .end local v4           #mTouchHandler:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-direct {v4, v6}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;-><init>(Landroid/view/GestureDetector;)V

    .line 1553
    .restart local v4       #mTouchHandler:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
    new-instance v6, Lcom/android/music/player/activity/MusicPlayer$10;

    invoke-direct {v6, p0}, Lcom/android/music/player/activity/MusicPlayer$10;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-virtual {v4, v6}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;->setHandler(Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener$TouchHandler;)V

    .line 1604
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonSrs:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1606
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonSrs:Landroid/widget/ImageView;

    new-instance v7, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;

    invoke-direct {v7}, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;-><init>()V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1608
    const v6, 0x7f0c009c

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    .line 1609
    new-instance v4, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;

    .end local v4           #mTouchHandler:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-direct {v4, v6}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;-><init>(Landroid/view/GestureDetector;)V

    .line 1610
    .restart local v4       #mTouchHandler:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
    new-instance v6, Lcom/android/music/player/activity/MusicPlayer$11;

    invoke-direct {v6, p0}, Lcom/android/music/player/activity/MusicPlayer$11;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-virtual {v4, v6}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;->setHandler(Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener$TouchHandler;)V

    .line 1617
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1619
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    new-instance v7, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;

    invoke-direct {v7}, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;-><init>()V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1621
    const v6, 0x7f0c009d

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    .line 1622
    new-instance v4, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;

    .end local v4           #mTouchHandler:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-direct {v4, v6}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;-><init>(Landroid/view/GestureDetector;)V

    .line 1623
    .restart local v4       #mTouchHandler:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
    new-instance v6, Lcom/android/music/player/activity/MusicPlayer$12;

    invoke-direct {v6, p0}, Lcom/android/music/player/activity/MusicPlayer$12;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-virtual {v4, v6}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;->setHandler(Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener$TouchHandler;)V

    .line 1630
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1632
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    new-instance v7, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;

    invoke-direct {v7}, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;-><init>()V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1634
    const v6, 0x7f0c006c

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mTitleInfoButton:Landroid/view/View;

    .line 1635
    new-instance v4, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;

    .end local v4           #mTouchHandler:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-direct {v4, v6}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;-><init>(Landroid/view/GestureDetector;)V

    .line 1636
    .restart local v4       #mTouchHandler:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
    new-instance v6, Lcom/android/music/player/activity/MusicPlayer$13;

    invoke-direct {v6, p0}, Lcom/android/music/player/activity/MusicPlayer$13;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-virtual {v4, v6}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;->setHandler(Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener$TouchHandler;)V

    .line 1674
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mTitleInfoButton:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1676
    const v6, 0x7f0c006a

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonVolume:Landroid/widget/ImageView;

    .line 1677
    new-instance v4, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;

    .end local v4           #mTouchHandler:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-direct {v4, v6}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;-><init>(Landroid/view/GestureDetector;)V

    .line 1678
    .restart local v4       #mTouchHandler:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
    new-instance v6, Lcom/android/music/player/activity/MusicPlayer$14;

    invoke-direct {v6, p0}, Lcom/android/music/player/activity/MusicPlayer$14;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-virtual {v4, v6}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;->setHandler(Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener$TouchHandler;)V

    .line 1688
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonVolume:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1690
    const v6, 0x7f0c00aa

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerButton:Landroid/widget/ImageView;

    .line 1691
    new-instance v4, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;

    .end local v4           #mTouchHandler:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-direct {v4, v6}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;-><init>(Landroid/view/GestureDetector;)V

    .line 1692
    .restart local v4       #mTouchHandler:Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;
    new-instance v6, Lcom/android/music/player/activity/MusicPlayer$15;

    invoke-direct {v6, p0}, Lcom/android/music/player/activity/MusicPlayer$15;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-virtual {v4, v6}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;->setHandler(Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener$TouchHandler;)V

    .line 1698
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1699
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerButton:Landroid/widget/ImageView;

    new-instance v7, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;

    invoke-direct {v7}, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;-><init>()V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1702
    const v6, 0x7f0c00a8

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 1703
    .local v5, playButtonLayout:Landroid/widget/RelativeLayout;
    const v6, 0x7f0c00a9

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonList:Landroid/widget/Button;

    .line 1704
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonList:Landroid/widget/Button;

    new-instance v7, Lcom/android/music/player/activity/MusicPlayer$16;

    invoke-direct {v7, p0}, Lcom/android/music/player/activity/MusicPlayer$16;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1741
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->attachTitleTextViews()V

    .line 1742
    return-void
.end method

.method private isPlaying()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2974
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "isPlaying() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v0, :cond_0

    move v0, v2

    .line 2984
    :goto_0
    return v0

    .line 2979
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2980
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "isPlaying()[true]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    const/4 v0, 0x1

    goto :goto_0

    .line 2983
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "isPlaying()[false]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 2984
    goto :goto_0
.end method

.method private playList()V
    .locals 11

    .prologue
    const/4 v7, -0x1

    .line 2989
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v6, "playList() is called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    const/4 v5, 0x0

    :try_start_0
    iput v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    .line 2993
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v5}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/music/player/activity/MusicPlayer;->changePlayButton(ZZ)V

    .line 2994
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mIsLiveStreamMode:Z

    .line 2996
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    .line 2997
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    iget v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    invoke-interface {v5, v6}, Lcom/android/music/player/service/ICorePlayerService;->setLaunchMode(I)V

    .line 2999
    const/4 v4, 0x0

    .line 3000
    .local v4, listFilter:Lcom/android/music/common/data/MpListFilter;
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v1, v5

    .line 3001
    .local v1, cols:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 3004
    .local v0, c:Landroid/database/Cursor;
    iget v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    if-eq v5, v7, :cond_5

    .line 3005
    iget v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    const/4 v6, 0x4

    if-ge v5, v6, :cond_2

    .line 3006
    new-instance v4, Lcom/android/music/common/data/MpListFilter;

    .end local v4           #listFilter:Lcom/android/music/common/data/MpListFilter;
    sget-object v5, Lcom/android/music/player/activity/MusicPlayer;->PLAYLIST_TYPE:[I

    iget v6, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    aget v5, v5, v6

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 3007
    .restart local v4       #listFilter:Lcom/android/music/common/data/MpListFilter;
    iget-object v5, v4, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v6, 0x0

    new-instance v7, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-direct {v7, v4, v8, v9, v10}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v7, v5, v6

    .line 3036
    :cond_0
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    sget-object v6, Lcom/android/music/player/activity/MusicPlayer;->PLAYLIST_TYPE:[I

    iget v7, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    aget v6, v6, v7

    const-string v7, "1"

    invoke-virtual {v5, v6, v4, v1, v7}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3037
    if-eqz v0, :cond_4

    .line 3039
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 3041
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3042
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 3044
    .local v2, d_id:I
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v5, v2, v4}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIteratorWithFilter(ILcom/android/music/common/data/MpListFilter;)V

    .line 3046
    .end local v2           #d_id:I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3051
    :goto_0
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    .line 3052
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListName:Ljava/lang/String;

    .line 3053
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->doPrepare()V

    .line 3054
    const/4 v5, 0x3

    const-wide/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 3063
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #cols:[Ljava/lang/String;
    .end local v4           #listFilter:Lcom/android/music/common/data/MpListFilter;
    :goto_1
    return-void

    .line 3010
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #cols:[Ljava/lang/String;
    .restart local v4       #listFilter:Lcom/android/music/common/data/MpListFilter;
    :cond_2
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListName:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 3011
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v6, "playList(): intentPlayListType < 4,intentPlayListName==null "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    const v5, 0x7f0a00b3

    invoke-virtual {p0, v5}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3059
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #cols:[Ljava/lang/String;
    .end local v4           #listFilter:Lcom/android/music/common/data/MpListFilter;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 3060
    .local v3, e:Landroid/os/RemoteException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3061
    const-string v5, "MusicPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException occured 37 :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3019
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #cols:[Ljava/lang/String;
    .restart local v4       #listFilter:Lcom/android/music/common/data/MpListFilter;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/music/common/data/MusicDB;->getPlaylistTracklistFilterByPlaylistName(Ljava/lang/String;)Lcom/android/music/common/data/MpListFilter;

    move-result-object v4

    .line 3021
    if-nez v4, :cond_0

    .line 3022
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v6, "playList(): intentPlayListType==4, filter==null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    const v5, 0x7f0a00b3

    invoke-virtual {p0, v5}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 3048
    :cond_4
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v6, "playList(): cursor == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3056
    :cond_5
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v6, "playList() intentPlayList==null error!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private playSearch()V
    .locals 4

    .prologue
    .line 3066
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "playSearch() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    .line 3070
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->changePlayButton(ZZ)V

    .line 3071
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mIsLiveStreamMode:Z

    .line 3073
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/music/player/service/ICorePlayerService;->setLaunchMode(I)V

    .line 3074
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3075
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIteratorWithUri(Ljava/lang/String;)V

    .line 3076
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    .line 3077
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->doPrepare()V

    .line 3078
    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 3089
    :goto_0
    return-void

    .line 3080
    :cond_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "playSearch() intentStreamMedia==null error!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->doPrepare()V

    .line 3082
    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3085
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3086
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3087
    const-string v1, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 38 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    .line 1958
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v6, "MusicPlayer::processIntent()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    if-eqz p1, :cond_2

    .line 1960
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    int-to-long v1, v5

    .line 1961
    .local v1, flag:J
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processIntent(): flag= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    .line 1963
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mIteratorAudioId:I

    .line 1965
    const-wide/32 v5, 0x100000

    and-long/2addr v5, v1

    const-wide/32 v7, 0x100000

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 1966
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v6, "processIntent(): FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->doPrepare()V

    .line 1970
    const/4 v5, 0x3

    const-wide/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 1973
    :cond_0
    const-string v5, "musicplayer.action"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentAction:Ljava/lang/String;

    .line 1974
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    .line 1975
    const-string v5, "PlaylistType"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    .line 1976
    const-string v5, "PlaylistName"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListName:Ljava/lang/String;

    .line 1977
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMimeType:Ljava/lang/String;

    .line 1978
    const-string v5, "FromList"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentIsFromList:Z

    .line 1984
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentAction:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 1987
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentAction:Ljava/lang/String;

    const-string v6, "Library"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1988
    const-string v5, "IndexOfMainlistType"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentIndexOfMainListType:I

    .line 1991
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/music/player/activity/MusicPlayer;->bCalledByList:Z

    .line 1992
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    if-nez v5, :cond_c

    .line 1993
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    .line 1995
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentAction:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentAction:Ljava/lang/String;

    const-string v6, "Search"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1997
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v6, "processIntent() INTENT_ACTION_SEARCH"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    const-string v5, "SearchUri"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1999
    .local v3, intentSearchUri:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 2000
    iput-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    .line 2001
    const/4 v5, 0x5

    const-wide/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 2072
    .end local v3           #intentSearchUri:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processIntent():intentAction="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->intentAction:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",intentStreamMedia="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",intentPlayListType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",intentPlayListName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",bCalledByList="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/music/player/activity/MusicPlayer;->bCalledByList:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mLaunchMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    .end local v1           #flag:J
    :cond_2
    return-void

    .line 2003
    .restart local v1       #flag:J
    .restart local v3       #intentSearchUri:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v6, "processIntent: INTENT_SEARCH_URI == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    invoke-direct {p0, p1}, Lcom/android/music/player/activity/MusicPlayer;->setPlayIteratorWithIntent(Landroid/content/Intent;)V

    .line 2005
    const/4 v5, 0x5

    const-wide/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_0

    .line 2009
    .end local v3           #intentSearchUri:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentAction:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentAction:Ljava/lang/String;

    const-string v6, "launchplayer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMimeType:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMimeType:Ljava/lang/String;

    const-string v6, "com.android.music/launchplayer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2012
    :cond_6
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v6, "processIntent() INTENT_ACTION_LAUNCH_PLAYER"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2014
    :cond_7
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMimeType:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMimeType:Ljava/lang/String;

    const-string v6, "com.android.music/playlist"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2017
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processIntent() Voice_Command,lilstType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    iget v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    .line 2021
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v6, "processIntent: intentPlayListType == -1"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    :goto_1
    const/4 v5, 0x4

    const-wide/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto/16 :goto_0

    .line 2023
    :cond_8
    const/4 v4, 0x0

    .line 2024
    .local v4, listFilter:Lcom/android/music/common/data/MpListFilter;
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v0, v5

    .line 2026
    .local v0, cols:[Ljava/lang/String;
    iget v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_9

    .line 2027
    const-string v5, "PlaylistName"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListName:Ljava/lang/String;

    .line 2030
    :cond_9
    iget v5, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    const/4 v6, 0x4

    if-ge v5, v6, :cond_a

    .line 2031
    new-instance v4, Lcom/android/music/common/data/MpListFilter;

    .end local v4           #listFilter:Lcom/android/music/common/data/MpListFilter;
    sget-object v5, Lcom/android/music/player/activity/MusicPlayer;->PLAYLIST_TYPE:[I

    iget v6, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    aget v5, v5, v6

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 2032
    .restart local v4       #listFilter:Lcom/android/music/common/data/MpListFilter;
    iget-object v5, v4, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v6, 0x0

    new-instance v7, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-direct {v7, v4, v8, v9, v10}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v7, v5, v6

    goto :goto_1

    .line 2034
    :cond_a
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/music/common/data/MusicDB;->getPlaylistTracklistFilterByPlaylistName(Ljava/lang/String;)Lcom/android/music/common/data/MpListFilter;

    goto :goto_1

    .line 2044
    .end local v0           #cols:[Ljava/lang/String;
    .end local v4           #listFilter:Lcom/android/music/common/data/MpListFilter;
    :cond_b
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v6, "processIntent() List"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/music/player/activity/MusicPlayer;->bCalledByList:Z

    .line 2047
    invoke-direct {p0, p1}, Lcom/android/music/player/activity/MusicPlayer;->setPlayIteratorWithIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2052
    :cond_c
    const-string v5, "key_filename"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->myFiles_path:Ljava/lang/String;

    .line 2054
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->myFiles_path:Ljava/lang/String;

    if-eqz v5, :cond_d

    .line 2055
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v6, "processIntent() LAUNCH_MYFILES"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    const/4 v5, 0x3

    iput v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    .line 2057
    const-string v5, "sort_order"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/music/player/activity/MusicPlayer;->myFiles_sortOrder:I

    .line 2067
    :goto_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mIsLiveStreamMode:Z

    .line 2068
    const/4 v5, 0x6

    const-wide/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto/16 :goto_0

    .line 2059
    :cond_d
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v6, "processIntent() LAUNCH_PREVIEW"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    .line 2061
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/music/player/activity/MusicPlayer;->myFiles_sortOrder:I

    goto :goto_2
.end method

.method private registerMediaScannerReceiver()V
    .locals 3

    .prologue
    .line 3409
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "registerMediaScannerReceiver() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3413
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3414
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3418
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3419
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/player/activity/MusicPlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3420
    return-void
.end method

.method private registerTelephonyListener()V
    .locals 3

    .prologue
    .line 713
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "registerTelephonyListener() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/music/player/activity/MusicPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 715
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCallListener:Lcom/android/music/player/activity/MusicPlayer$CallListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 716
    return-void
.end method

.method private setPlayIteratorWithIntent(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 2084
    const-string v5, "setPlayIterator.id"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mIteratorAudioId:I

    .line 2086
    iget v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mIteratorAudioId:I

    if-eq v5, v8, :cond_1

    .line 2087
    const-string v5, "setPlayIterator.listType"

    invoke-virtual {p1, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2088
    .local v2, listType:I
    const-string v5, "setPlayIterator.filterId"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2089
    .local v0, filterId:I
    const-string v5, "setPlayIterator.filterId2"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2090
    .local v1, filterId2:I
    const-string v5, "setPlayIterator.strFilter"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2091
    .local v3, strFilter:Ljava/lang/String;
    const-string v5, "setPlayIterator.strFilter2"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2093
    .local v4, strFilter2:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPlayIterator : LAUNCH_NORMAL, _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mIteratorAudioId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",listType= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",filterId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",strFilter="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",filterId2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",strFilter2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    if-gt v1, v8, :cond_0

    if-eqz v4, :cond_3

    .line 2099
    :cond_0
    new-instance v5, Lcom/android/music/common/data/MpListFilter;

    const/4 v6, 0x2

    invoke-direct {v5, v2, v6}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    iput-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    .line 2101
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v5, v5, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v6, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v1, v8, :cond_2

    move v8, v9

    :goto_0
    invoke-direct {v6, v7, v8, v1, v4}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v6, v5, v9

    .line 2111
    .end local v0           #filterId:I
    .end local v1           #filterId2:I
    .end local v2           #listType:I
    .end local v3           #strFilter:Ljava/lang/String;
    .end local v4           #strFilter2:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .restart local v0       #filterId:I
    .restart local v1       #filterId2:I
    .restart local v2       #listType:I
    .restart local v3       #strFilter:Ljava/lang/String;
    .restart local v4       #strFilter2:Ljava/lang/String;
    :cond_2
    move v8, v10

    .line 2101
    goto :goto_0

    .line 2105
    :cond_3
    new-instance v5, Lcom/android/music/common/data/MpListFilter;

    invoke-direct {v5, v2, v9}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    iput-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    .line 2107
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v5, v5, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v6, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v0, v8, :cond_4

    move v8, v9

    :goto_2
    invoke-direct {v6, v7, v8, v0, v3}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v6, v5, v10

    goto :goto_1

    :cond_4
    move v8, v10

    goto :goto_2
.end method

.method private setRingtone(I)Landroid/net/Uri;
    .locals 22
    .parameter "position"

    .prologue
    .line 4434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRingtone(position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4437
    const/16 v19, 0x0

    .line 4438
    .local v19, ringtoneType:I
    const/16 v18, 0x0

    .line 4441
    .local v18, ringUri:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;

    move-result-object v21

    .line 4442
    .local v21, strUri:Ljava/lang/String;
    if-nez v21, :cond_0

    .line 4443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "setRingtone() strUri == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, v18

    .line 4565
    .end local v21           #strUri:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 4446
    .restart local v21       #strUri:Ljava/lang/String;
    :cond_0
    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 4447
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/player/activity/MusicPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4449
    .local v3, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "SetRingtone():strUri[%s],ringUri[%s]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v21, v6, v7

    const/4 v7, 0x1

    aput-object v18, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4450
    const-string v4, "file://"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4451
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    .line 4452
    .local v17, path:Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 4453
    .local v10, audio_id:J
    sget-object v12, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4455
    .local v12, baseUri:Landroid/net/Uri;
    :try_start_1
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const-string v6, "_data = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v17, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 4459
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_2

    .line 4460
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4461
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 4463
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4465
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-nez v4, :cond_4

    .line 4466
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const-string v6, "_data = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v17, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 4470
    sget-object v12, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 4472
    if-eqz v13, :cond_4

    .line 4473
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4474
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 4476
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4507
    .end local v13           #c:Landroid/database/Cursor;
    :cond_4
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-eqz v4, :cond_5

    .line 4508
    :try_start_2
    invoke-static {v12, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 4509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRingtone(): ringUri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4513
    .end local v10           #audio_id:J
    .end local v12           #baseUri:Landroid/net/Uri;
    .end local v17           #path:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 4514
    .local v20, strRingUri:Ljava/lang/String;
    const-string v4, "content://media/internal"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "content://media/external"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "content://media/internal"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "content://media/external"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4518
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->updateContentValue(ILandroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 4519
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 4479
    .end local v20           #strRingUri:Ljava/lang/String;
    .restart local v10       #audio_id:J
    .restart local v12       #baseUri:Landroid/net/Uri;
    .restart local v17       #path:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v14, v4

    .line 4487
    .local v14, e:Landroid/database/sqlite/SQLiteFullException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteFullException getMusicMainListCursor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 4489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 4490
    .local v9, am:Landroid/app/ActivityManager;
    const-string v4, "com.android.music"

    invoke-virtual {v9, v4}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 4559
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v9           #am:Landroid/app/ActivityManager;
    .end local v10           #audio_id:J
    .end local v12           #baseUri:Landroid/net/Uri;
    .end local v14           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v17           #path:Ljava/lang/String;
    .end local v21           #strUri:Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v14, v4

    .line 4560
    .local v14, e:Landroid/os/RemoteException;
    invoke-static/range {p0 .. p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 4561
    const-string v4, "MusicPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException occured  26 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v14           #e:Landroid/os/RemoteException;
    :cond_7
    :goto_2
    move-object/from16 v4, v18

    .line 4565
    goto/16 :goto_0

    .line 4493
    .restart local v3       #resolver:Landroid/content/ContentResolver;
    .restart local v10       #audio_id:J
    .restart local v12       #baseUri:Landroid/net/Uri;
    .restart local v17       #path:Ljava/lang/String;
    .restart local v21       #strUri:Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object v14, v4

    .line 4501
    .local v14, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 4502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 4503
    .restart local v9       #am:Landroid/app/ActivityManager;
    const-string v4, "com.android.music"

    invoke-virtual {v9, v4}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4522
    .end local v9           #am:Landroid/app/ActivityManager;
    .end local v10           #audio_id:J
    .end local v12           #baseUri:Landroid/net/Uri;
    .end local v14           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .end local v17           #path:Ljava/lang/String;
    .restart local v20       #strRingUri:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "strUri does not.... content://media/"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4523
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 4530
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/player/activity/MusicPlayer;->IDX_VOICE_CALL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/player/activity/MusicPlayer;->IDX_INDIVIDUAL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/player/activity/MusicPlayer;->IDX_VIDEO_CALL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_b

    .line 4533
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/player/activity/MusicPlayer;->IDX_VOICE_CALL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_d

    .line 4534
    const/16 v19, 0x1

    .line 4535
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 4554
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/player/activity/MusicPlayer;->IDX_VOICE_CALL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/player/activity/MusicPlayer;->IDX_VIDEO_CALL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_7

    .line 4556
    :cond_c
    const v4, 0x7f0a004e

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 4537
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/player/activity/MusicPlayer;->IDX_INDIVIDUAL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_e

    .line 4538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    .line 4539
    .local v15, filePath:Ljava/lang/String;
    new-instance v16, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4540
    .local v16, intent:Landroid/content/Intent;
    const-string v4, "ringtone_filepath"

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4541
    const-string v4, "ringtone_uri"

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4542
    const-string v4, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4544
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 4547
    .end local v15           #filePath:Ljava/lang/String;
    .end local v16           #intent:Landroid/content/Intent;
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->setActualDefaultVideoCallRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method private setVolume(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 4102
    :try_start_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v1, :cond_0

    .line 4103
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v1, p1}, Lcom/android/music/player/service/ICorePlayerService;->setCurrentVolume(I)V

    .line 4108
    :goto_0
    if-lez p1, :cond_1

    .line 4109
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonVolume:Landroid/widget/ImageView;

    const v2, 0x7f02010d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4118
    :goto_1
    return-void

    .line 4105
    :cond_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "setVolume() mCorePlayer==null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4115
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4116
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 4111
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonVolume:Landroid/widget/ImageView;

    const v2, 0x7f0200da

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 6
    .parameter "progress"
    .parameter "seekBar"

    .prologue
    .line 1333
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showBubble("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 1335
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v0

    .line 1336
    .local v0, bubbleX:I
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v1

    .line 1337
    .local v1, bubbleY:I
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1339
    const/16 v2, 0xf

    if-ne p1, v2, :cond_1

    .line 1340
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v1, v2

    .line 1346
    :goto_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2, p2, v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 1347
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 1348
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 1350
    iget-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mIsVolumeBubbleRunable:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1351
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mHideBubble:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1353
    :cond_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mHideBubble:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mIsVolumeBubbleRunable:Z

    .line 1355
    return-void

    .line 1341
    :cond_1
    if-nez p1, :cond_2

    .line 1342
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0

    .line 1344
    :cond_2
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method private unregisterTelephonyListener()V
    .locals 3

    .prologue
    .line 719
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "unregisterTelephonyListener() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/music/player/activity/MusicPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 721
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCallListener:Lcom/android/music/player/activity/MusicPlayer$CallListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 722
    return-void
.end method

.method private updateContentValue(ILandroid/net/Uri;)Z
    .locals 8
    .parameter "position"
    .parameter "uri"

    .prologue
    const-string v7, "MusicPlayer"

    const-string v4, "1"

    .line 4569
    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateContentValue(position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4572
    const/4 v2, 0x0

    .line 4575
    .local v2, result:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4576
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4577
    .local v3, values:Landroid/content/ContentValues;
    iget v4, p0, Lcom/android/music/player/activity/MusicPlayer;->IDX_INDIVIDUAL_RINGTONE:I

    if-eq p1, v4, :cond_0

    iget v4, p0, Lcom/android/music/player/activity/MusicPlayer;->IDX_VOICE_CALL_RINGTONE:I

    if-eq p1, v4, :cond_0

    iget v4, p0, Lcom/android/music/player/activity/MusicPlayer;->IDX_VIDEO_CALL_RINGTONE:I

    if-ne p1, v4, :cond_1

    .line 4580
    :cond_0
    const-string v4, "is_ringtone"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4584
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, p2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4585
    const/4 v2, 0x1

    .line 4599
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_1
    return v2

    .line 4582
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_1
    const-string v4, "is_alarm"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4586
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 4587
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 4588
    const-string v4, "MusicPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException occured :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4590
    const/4 v2, 0x0

    .line 4597
    goto :goto_1

    .line 4591
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 4592
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 4593
    const-string v4, "MusicPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnsupportedOperationException occured :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4595
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateSpeaker()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "MusicPlayer"

    .line 3374
    iget-boolean v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerMode:Z

    if-eqz v1, :cond_2

    .line 3376
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerMode:Z

    .line 3377
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerButton:Landroid/widget/ImageView;

    const v2, 0x7f02010f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3378
    const-string v1, "MusicPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "External Speaker isExtraSpeakerDockOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3380
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setExtraSpeakerDockOn(Z)V

    .line 3382
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3383
    .local v0, speakerDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/android/music/player/activity/MusicPlayer$21;

    invoke-direct {v3, p0}, Lcom/android/music/player/activity/MusicPlayer$21;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3390
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3403
    .end local v0           #speakerDialog:Landroid/app/AlertDialog$Builder;
    :cond_1
    :goto_0
    return-void

    .line 3395
    :cond_2
    iput-boolean v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerMode:Z

    .line 3396
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerButton:Landroid/widget/ImageView;

    const v2, 0x7f020110

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3397
    const-string v1, "MusicPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone Speaker isExtraSpeakerDockOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 3399
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setExtraSpeakerDockOn(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected attachTitleTextViews()V
    .locals 1

    .prologue
    .line 2572
    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    .line 2573
    const v0, 0x7f0c0004

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    .line 2574
    const v0, 0x7f0c006b

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    .line 2575
    return-void
.end method

.method public changeOrientation()V
    .locals 1

    .prologue
    .line 5700
    sget-boolean v0, Lcom/android/music/common/util/BatteryChecker;->mShowPopup:Z

    if-eqz v0, :cond_0

    .line 5713
    :cond_0
    return-void
.end method

.method protected changePlayButton(ZZ)V
    .locals 4
    .parameter "isPlaying"
    .parameter "isDown"

    .prologue
    const/4 v3, 0x2

    .line 3713
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changePlayButton("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3714
    if-eqz p1, :cond_0

    .line 3715
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 3716
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3721
    :goto_0
    return-void

    .line 3718
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3719
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected changeView()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5256
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v4, "changeView() is called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5257
    iget-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewChanging:Z

    if-eqz v3, :cond_0

    .line 5324
    :goto_0
    return-void

    .line 5261
    :cond_0
    iput-boolean v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewChanging:Z

    .line 5262
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v4, "changeView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5264
    new-instance v1, Lcom/android/music/common/manager/MusicAppManageFilter;

    invoke-direct {v1}, Lcom/android/music/common/manager/MusicAppManageFilter;-><init>()V

    .line 5268
    .local v1, filter:Lcom/android/music/common/manager/MusicAppManageFilter;
    const-string v3, "search"

    invoke-virtual {p0, v3}, Lcom/android/music/player/activity/MusicPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 5269
    .local v2, mSearchManager:Landroid/app/SearchManager;
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    .line 5274
    :try_start_0
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v4, "changeView:rotation == ListUtil.ROTATION_90"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5276
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 5277
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v4, "changeView() but getCurrentMedia()==null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5310
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 5312
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5319
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerWindow:Lcom/android/music/player/widget/MusicPlayerWindow;

    invoke-virtual {v3}, Lcom/android/music/player/widget/MusicPlayerWindow;->requestLayout()V

    .line 5321
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5322
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 5323
    iput-boolean v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewChanging:Z

    goto :goto_0

    .line 5281
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    .line 5282
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 5284
    :cond_2
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->ttsMessageBox:Landroid/app/AlertDialog;

    if-eqz v3, :cond_3

    .line 5285
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->ttsMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 5286
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mLongKey:Z

    .line 5290
    :cond_3
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->getPlayListType()I

    move-result v3

    iput v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    .line 5301
    iget v3, p0, Lcom/android/music/player/activity/MusicPlayer;->intentIndexOfMainListType:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 5302
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->getIndexOfPlayList()I

    move-result v3

    iput v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    .line 5306
    :goto_2
    const/4 v3, 0x1

    iput v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->manageMode:I

    .line 5307
    const/16 v3, 0xc

    iput v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    .line 5309
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lcom/android/music/common/manager/MusicAppManager;->launchDiscPlus(Landroid/content/Context;Lcom/android/music/common/manager/MusicAppManageFilter;)Z

    goto :goto_1

    .line 5304
    :cond_4
    iget v3, p0, Lcom/android/music/player/activity/MusicPlayer;->intentIndexOfMainListType:I

    iput v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected changeView(I)V
    .locals 7
    .parameter "rotation"

    .prologue
    const/16 v6, 0x33

    const/16 v5, 0x9

    const/4 v4, 0x0

    const/16 v3, 0x400

    .line 5327
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeView("

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

    .line 5328
    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewChanging:Z

    if-eqz v0, :cond_0

    .line 5365
    :goto_0
    return-void

    .line 5332
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->isSearchShown:Z

    if-nez v0, :cond_4

    .line 5333
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSearchShown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->isSearchShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5335
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 5341
    :goto_1
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->setContentView(I)V

    .line 5342
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer;->initializeControls()V

    .line 5344
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 5345
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5347
    :cond_1
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    if-eqz v0, :cond_2

    .line 5348
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->hideLyricPanel()V

    .line 5349
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 5350
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 5352
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5353
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 5356
    :cond_2
    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownAdditionalBar:Z

    if-eqz v0, :cond_3

    .line 5357
    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->additionalPanelFromAlbumArt:Z

    invoke-virtual {p0, v0, v4}, Lcom/android/music/player/activity/MusicPlayer;->showAdditionalPanel(ZZ)V

    .line 5359
    :cond_3
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->updatePlayerInfo()V

    .line 5361
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5362
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5363
    iput-boolean v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewChanging:Z

    .line 5364
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->setEnableTextScroll(Z)V

    goto :goto_0

    .line 5339
    :cond_4
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1
.end method

.method public doChangeRepeatMode()V
    .locals 5

    .prologue
    .line 3901
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v3, "doChangeRepeatMode() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3904
    :try_start_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->getRepeat()I

    move-result v1

    .line 3906
    .local v1, repeat:I
    packed-switch v1, :pswitch_data_0

    .line 3926
    .end local v1           #repeat:I
    :goto_0
    return-void

    .line 3908
    .restart local v1       #repeat:I
    :pswitch_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v3, 0x7f0200ee

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3909
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/music/player/service/ICorePlayerService;->setRepeat(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3921
    .end local v1           #repeat:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 3922
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3923
    const-string v2, "MusicPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException occured 29 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3912
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #repeat:I
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v3, 0x7f0200ef

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3913
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/music/player/service/ICorePlayerService;->setRepeat(I)V

    goto :goto_0

    .line 3916
    :pswitch_2
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v3, 0x7f0200f0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3917
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/music/player/service/ICorePlayerService;->setRepeat(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3906
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public doChangeShuffleMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3929
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v3, "doChangeShuffleMode() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3932
    :try_start_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->getShuffle()Z

    move-result v1

    .line 3934
    .local v1, shuffle:Z
    if-ne v1, v4, :cond_0

    .line 3935
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    const v3, 0x7f0200d4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3937
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/music/player/service/ICorePlayerService;->setShuffle(Z)V

    .line 3949
    .end local v1           #shuffle:Z
    :goto_0
    return-void

    .line 3939
    .restart local v1       #shuffle:Z
    :cond_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    const v3, 0x7f0200d5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3941
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/music/player/service/ICorePlayerService;->setShuffle(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3944
    .end local v1           #shuffle:Z
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 3945
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3946
    const-string v2, "MusicPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException occured 29 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doPause()V
    .locals 4

    .prologue
    .line 3885
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "doPause() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3886
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v1, :cond_1

    .line 3888
    :try_start_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3889
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->pause()V

    .line 3891
    :cond_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->changePlayButton(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3898
    :cond_1
    :goto_0
    return-void

    .line 3892
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3893
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3894
    const-string v1, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 1 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doPlay()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 3806
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v8, "doPlay() is called"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3807
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v7, :cond_0

    .line 3809
    :try_start_0
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v7}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3810
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v7}, Lcom/android/music/player/service/ICorePlayerService;->pause()V

    .line 3870
    :goto_0
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v7}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/music/player/activity/MusicPlayer;->changePlayButton(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3880
    :goto_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/music/player/activity/MusicPlayer;->bCorePlayerStatusRefeshed:Z

    .line 3882
    :cond_0
    return-void

    .line 3811
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v7}, Lcom/android/music/player/service/ICorePlayerService;->isStop()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3814
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v7}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v2

    .line 3815
    .local v2, filePath:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doPlay(): isStop() Check DRM,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    invoke-virtual {v7, v2}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3818
    const/4 v7, 0x2

    new-array v5, v7, [I

    .line 3819
    .local v5, popupStrings:[I
    const/4 v7, 0x2

    new-array v0, v7, [Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    .line 3820
    .local v0, button:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5, v0}, Lcom/android/music/common/manager/MusicDrmManager;->getDrmPopup(Z[I[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;)I

    move-result v6

    .line 3822
    .local v6, popupType:I
    if-nez v6, :cond_2

    .line 3823
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v7}, Lcom/android/music/player/service/ICorePlayerService;->play()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3871
    .end local v0           #button:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .end local v2           #filePath:Ljava/lang/String;
    .end local v5           #popupStrings:[I
    .end local v6           #popupType:I
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 3872
    .local v1, e:Landroid/os/RemoteException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3873
    const-string v7, "MusicPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemoteException occured 2 :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3839
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #button:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .restart local v2       #filePath:Ljava/lang/String;
    .restart local v5       #popupStrings:[I
    .restart local v6       #popupType:I
    :cond_2
    :try_start_2
    new-instance v4, Lcom/android/music/common/util/DrmPopupData;

    invoke-direct {v4}, Lcom/android/music/common/util/DrmPopupData;-><init>()V

    .line 3840
    .local v4, popupData:Lcom/android/music/common/util/DrmPopupData;
    iput-object v5, v4, Lcom/android/music/common/util/DrmPopupData;->popupStrings:[I

    .line 3841
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    invoke-virtual {v7}, Lcom/android/music/common/manager/MusicDrmManager;->getRemainedCounts()I

    move-result v7

    iput v7, v4, Lcom/android/music/common/util/DrmPopupData;->remainCount:I

    .line 3842
    iput v6, v4, Lcom/android/music/common/util/DrmPopupData;->popupType:I

    .line 3843
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v7}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v4, Lcom/android/music/common/util/DrmPopupData;->popupUri:Landroid/net/Uri;

    .line 3844
    iput-object v2, v4, Lcom/android/music/common/util/DrmPopupData;->popupFilePath:Ljava/lang/String;

    .line 3845
    iget v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    iput v7, v4, Lcom/android/music/common/util/DrmPopupData;->popupFrom:I

    .line 3848
    new-instance v3, Lcom/android/music/common/util/DrmServicePopup;

    invoke-direct {v3, p0, v4}, Lcom/android/music/common/util/DrmServicePopup;-><init>(Landroid/content/Context;Lcom/android/music/common/util/DrmPopupData;)V

    .line 3849
    .local v3, popup:Lcom/android/music/common/util/DrmServicePopup;
    invoke-virtual {v3}, Lcom/android/music/common/util/DrmServicePopup;->show()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 3875
    .end local v0           #button:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #popup:Lcom/android/music/common/util/DrmServicePopup;
    .end local v4           #popupData:Lcom/android/music/common/util/DrmPopupData;
    .end local v5           #popupStrings:[I
    .end local v6           #popupType:I
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 3876
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 3878
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0043

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 3852
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #filePath:Ljava/lang/String;
    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v7}, Lcom/android/music/player/service/ICorePlayerService;->play()V

    goto/16 :goto_0

    .line 3867
    .end local v2           #filePath:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v7}, Lcom/android/music/player/service/ICorePlayerService;->play()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method protected doPrepare()V
    .locals 4

    .prologue
    .line 2506
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "doPrepare() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    :try_start_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 2510
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "doPrepare() mCorePlayer == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    :goto_0
    return-void

    .line 2514
    :cond_0
    iget v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mIteratorAudioId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2546
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    iget v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mIteratorAudioId:I

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-interface {v1, v2, v3}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIteratorWithFilter(ILcom/android/music/common/data/MpListFilter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2565
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2566
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured in doPrepare():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2547
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2548
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/music/player/service/ICorePlayerService;->prepareWithLastPlayedFile(Z)V

    goto :goto_0

    .line 2555
    :cond_2
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    iget-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->intentIsFromList:Z

    invoke-interface {v1, v2}, Lcom/android/music/player/service/ICorePlayerService;->prepare(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected doSetSrsRepeatShuffleImage(ZIZZ)V
    .locals 4
    .parameter "isSrsMode"
    .parameter "repeat"
    .parameter "shuffle"
    .parameter "isMute"

    .prologue
    const/4 v3, 0x1

    .line 2269
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetRepeatShuffleImage(isSrsMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "repeat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",shuffle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isMute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonSrs:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v1, 0x7f0200d8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2276
    packed-switch p2, :pswitch_data_0

    .line 2288
    :goto_1
    if-ne p3, v3, :cond_1

    .line 2289
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    const v1, 0x7f0200d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2296
    :goto_2
    if-ne p4, v3, :cond_2

    .line 2297
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonVolume:Landroid/widget/ImageView;

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2302
    :goto_3
    return-void

    .line 2272
    :cond_0
    const v1, 0x7f0200d7

    goto :goto_0

    .line 2278
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 2281
    :pswitch_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 2284
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v1, 0x7f0200ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 2292
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 2299
    :cond_2
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonVolume:Landroid/widget/ImageView;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 2276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 5696
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getLaunchMode()I
    .locals 3

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicPlayer::getLaunchMode()["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    return v0
.end method

.method public getServiceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 550
    const-class v0, Lcom/android/music/player/service/CorePlayerService;

    return-object v0
.end method

.method hideAdditionalPanel()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 1292
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v3, "hideAdditionalPanel(): hide PropertyBar, ProgressBar "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownAdditionalBar:Z

    .line 1294
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1296
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1297
    .local v1, mPropertyBarFadeOut:Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1299
    .local v0, mProgressBarFadeOut:Landroid/view/animation/Animation;
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1300
    invoke-virtual {v1}, Landroid/view/animation/Animation;->startNow()V

    .line 1301
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1302
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 1304
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1305
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewProgressBar:Landroid/view/ViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1307
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->hideLyricPanel()V

    .line 1308
    return-void
.end method

.method hideLyricPanel()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1312
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    if-nez v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mLyricTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1317
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewLyricLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1318
    return-void
.end method

.method hideVolumePanel()V
    .locals 2

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownVolumeBar:Z

    .line 1368
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 1371
    return-void
.end method

.method public onAccuracyChanged(II)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 5641
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    .line 4604
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4606
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    .line 4607
    if-ne p2, v3, :cond_1

    .line 4608
    invoke-static {p0}, Lcom/android/music/player/activity/MusicTextToSpeech;->getInstance(Landroid/content/Context;)Lcom/android/music/player/activity/MusicTextToSpeech;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/music/player/activity/MusicTextToSpeech;->activityResult(IILandroid/content/Intent;)V

    .line 4650
    :cond_0
    :goto_0
    return-void

    .line 4611
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->ttsMessageBox:Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    .line 4612
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0080

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00a5

    new-instance v2, Lcom/android/music/player/activity/MusicPlayer$31;

    invoke-direct {v2, p0}, Lcom/android/music/player/activity/MusicPlayer$31;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00a6

    new-instance v2, Lcom/android/music/player/activity/MusicPlayer$30;

    invoke-direct {v2, p0}, Lcom/android/music/player/activity/MusicPlayer$30;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 4634
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->ttsMessageBox:Landroid/app/AlertDialog;

    .line 4635
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->ttsMessageBox:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/music/player/activity/MusicPlayer$32;

    invoke-direct {v1, p0}, Lcom/android/music/player/activity/MusicPlayer$32;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 4645
    :cond_2
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->ttsMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 4647
    :cond_3
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5204
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v3, "onConfigurationChanged() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5206
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_0

    .line 5207
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->close()V

    .line 5208
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    .line 5209
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->upgradeMenu()V

    .line 5218
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5219
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getVisualization(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    .line 5220
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v2}, Lcom/android/music/player/activity/MusicPlayer;->changeView(I)V

    .line 5223
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "cradle_dock_connected"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5224
    .local v0, isDockConnected:Z
    if-ne v0, v5, :cond_3

    .line 5225
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5227
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5228
    iput-boolean v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerMode:Z

    .line 5229
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerButton:Landroid/widget/ImageView;

    const v3, 0x7f020110

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5234
    :goto_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/music/player/activity/MusicPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 5235
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_1

    .line 5236
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 5243
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    return-void

    .line 5231
    :cond_2
    iput-boolean v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerMode:Z

    .line 5232
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerButton:Landroid/widget/ImageView;

    const v3, 0x7f02010f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5241
    :cond_3
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/16 v12, 0x400

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 564
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v7, "onCreate() is called"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-static {}, Lcom/android/music/player/service/CorePlayerService;->drawNone()V

    .line 567
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 570
    iput-object p0, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    .line 572
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mPrefs:Landroid/content/SharedPreferences;

    .line 575
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 576
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v7, 0x7f0a00eb

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 577
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->finish()V

    .line 710
    :goto_0
    return-void

    .line 581
    :cond_0
    iput-boolean v8, p0, Lcom/android/music/player/activity/MusicPlayer;->additionalPanelFromAlbumArt:Z

    .line 582
    iput-boolean v8, p0, Lcom/android/music/player/activity/MusicPlayer;->bUpdateMediaInfo:Z

    .line 583
    iput-boolean v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mPause:Z

    .line 584
    iput-boolean v8, p0, Lcom/android/music/player/activity/MusicPlayer;->isActivityExit:Z

    .line 585
    iput-boolean v9, p0, Lcom/android/music/player/activity/MusicPlayer;->mBackgroundPlaying:Z

    .line 586
    iput-boolean v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerInitDone:Z

    .line 587
    iput-boolean v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewChanging:Z

    .line 588
    iput v11, p0, Lcom/android/music/player/activity/MusicPlayer;->myFiles_sortOrder:I

    .line 589
    iput-object v10, p0, Lcom/android/music/player/activity/MusicPlayer;->myFiles_path:Ljava/lang/String;

    .line 590
    invoke-static {v9}, Lcom/android/music/common/util/MusicPlayerUtil;->setMusicPlayerResume(Z)V

    .line 592
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/Window;->requestFeature(I)Z

    .line 594
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getOrientation()I

    move-result v6

    if-eqz v6, :cond_1

    .line 595
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v12, v12}, Landroid/view/Window;->setFlags(II)V

    .line 598
    :cond_1
    new-instance v6, Lcom/android/music/player/widget/MusicPlayerWindow;

    invoke-direct {v6, p0}, Lcom/android/music/player/widget/MusicPlayerWindow;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerWindow:Lcom/android/music/player/widget/MusicPlayerWindow;

    .line 599
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerWindow:Lcom/android/music/player/widget/MusicPlayerWindow;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Lcom/android/music/player/widget/MusicPlayerWindow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 601
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerWindow:Lcom/android/music/player/widget/MusicPlayerWindow;

    invoke-virtual {v6, p0}, Lcom/android/music/player/widget/MusicPlayerWindow;->setOnMusicPlayerViewChangeListener(Lcom/android/music/player/widget/MusicPlayerWindow$OnMusicPlayerViewChangeListener;)V

    .line 603
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerWindow:Lcom/android/music/player/widget/MusicPlayerWindow;

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->setContentView(Landroid/view/View;)V

    .line 605
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 607
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v6, 0x7f030021

    invoke-virtual {v0, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerView:Landroid/widget/LinearLayout;

    .line 609
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerWindow:Lcom/android/music/player/widget/MusicPlayerWindow;

    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Lcom/android/music/player/widget/MusicPlayerWindow;->addView(Landroid/view/View;)V

    .line 610
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v6

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    .line 611
    new-instance v6, Lcom/android/music/common/manager/MusicDrmManager;

    invoke-direct {v6}, Lcom/android/music/common/manager/MusicDrmManager;-><init>()V

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    .line 614
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v7, "onCreate() : call MusicUtils.clearAlbumArtCache();"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-static {}, Lcom/android/music/common/util/MusicUtils;->clearAlbumArtCache()V

    .line 618
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer;->initializeControls()V

    .line 619
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->processIntent(Landroid/content/Intent;)V

    .line 622
    new-instance v6, Lcom/android/music/player/activity/MusicPlayer$CallListener;

    invoke-direct {v6, p0, v10}, Lcom/android/music/player/activity/MusicPlayer$CallListener;-><init>(Lcom/android/music/player/activity/MusicPlayer;Lcom/android/music/player/activity/MusicPlayer$1;)V

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mCallListener:Lcom/android/music/player/activity/MusicPlayer$CallListener;

    .line 623
    new-instance v6, Lcom/android/music/player/activity/MusicPlayer$2;

    invoke-direct {v6, p0}, Lcom/android/music/player/activity/MusicPlayer$2;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 654
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 656
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getVisualization(Landroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    .line 662
    iput-boolean v9, p0, Lcom/android/music/player/activity/MusicPlayer;->isFirstTime:Z

    .line 663
    iput-boolean v8, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownAdditionalBar:Z

    .line 664
    iput-boolean v8, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownVolumeBar:Z

    .line 666
    iput-object v10, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    .line 668
    new-instance v6, Lcom/android/music/player/activity/MusicPlayer$Worker;

    const-string v7, "album art worker"

    invoke-direct {v6, v7}, Lcom/android/music/player/activity/MusicPlayer$Worker;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtWorker:Lcom/android/music/player/activity/MusicPlayer$Worker;

    .line 669
    new-instance v6, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtWorker:Lcom/android/music/player/activity/MusicPlayer$Worker;

    invoke-virtual {v7}, Lcom/android/music/player/activity/MusicPlayer$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;-><init>(Lcom/android/music/player/activity/MusicPlayer;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    .line 671
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer;->registerMediaScannerReceiver()V

    .line 672
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v6}, Lcom/android/music/common/util/MusicPlayerUtil;->registerIntentFilter(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 673
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->getServiceClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/android/music/common/util/MusicPlayerUtil;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Z

    .line 678
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 680
    .local v3, processingPopup:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03001b

    invoke-virtual {v6, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 681
    .local v1, inflatedBody:Landroid/view/View;
    const v6, 0x7f0c005a

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 682
    .local v2, pBar4:Landroid/widget/ProgressBar;
    const v6, 0x7f0c005b

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 683
    .local v5, tv4:Landroid/widget/TextView;
    const v6, 0x7f0a00b4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 684
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 694
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 695
    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 697
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->preparingDialog:Landroid/app/AlertDialog;

    .line 699
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 701
    const-string v6, "search"

    invoke-virtual {p0, v6}, Lcom/android/music/player/activity/MusicPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    .line 702
    .local v4, searchManager:Landroid/app/SearchManager;
    new-instance v6, Lcom/android/music/player/activity/MusicPlayer$3;

    invoke-direct {v6, p0}, Lcom/android/music/player/activity/MusicPlayer$3;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-virtual {v4, v6}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 709
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v7, "onCreate() is returned"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .parameter "optionPopupDialogId"

    .prologue
    const/4 v12, 0x3

    .line 4130
    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreateDialog(optionPopupDialogId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") is called"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4132
    sparse-switch p1, :sswitch_data_0

    .line 4197
    const/4 v9, 0x0

    :goto_0
    return-object v9

    .line 4146
    :sswitch_0
    new-array v6, v12, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const v10, 0x7f0a0049

    invoke-virtual {p0, v10}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const v10, 0x7f0a004a

    invoke-virtual {p0, v10}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v9, 0x2

    const v10, 0x7f0a004b

    invoke-virtual {p0, v10}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    .line 4150
    .local v6, setAs:[Ljava/lang/CharSequence;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 4151
    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0a0027

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4152
    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/music/player/activity/MusicPlayer;->mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v9, v6, v10}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4153
    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    goto :goto_0

    .line 4159
    .end local v6           #setAs:[Ljava/lang/CharSequence;
    :sswitch_1
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMimeType:Ljava/lang/String;

    .line 4161
    .local v3, mimeType:Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v9}, Lcom/android/music/player/service/ICorePlayerService;->getLaunchMode()I

    move-result v9

    iput v9, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    .line 4163
    iget v9, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    if-ne v9, v12, :cond_1

    .line 4164
    :cond_0
    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v3, v9, Lcom/android/music/common/data/MediaMetadata;->filetype:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4171
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v9}, Lcom/android/music/player/activity/MusicPlayer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 4172
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4173
    .local v8, shareIntent:Landroid/content/Intent;
    invoke-virtual {v8, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4175
    const v9, 0x10060

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->mShareList:Ljava/util/List;

    .line 4176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4178
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;>;"
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 4179
    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0a0026

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4181
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->mShareList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 4183
    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->mShareList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 4184
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v10, Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;

    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v10, p0, v11, v9}, Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;-><init>(Lcom/android/music/player/activity/MusicPlayer;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4181
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4166
    .end local v0           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;>;"
    .end local v2           #i:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v8           #shareIntent:Landroid/content/Intent;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 4167
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 4187
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;>;"
    .restart local v2       #i:I
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    .restart local v8       #shareIntent:Landroid/content/Intent;
    :cond_2
    new-instance v7, Lcom/android/music/player/activity/MusicPlayer$ShareAppListAdapter;

    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v7, p0, v9, v0}, Lcom/android/music/player/activity/MusicPlayer$ShareAppListAdapter;-><init>(Lcom/android/music/player/activity/MusicPlayer;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 4188
    .local v7, shareAppListAdapter:Lcom/android/music/player/activity/MusicPlayer$ShareAppListAdapter;
    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/music/player/activity/MusicPlayer;->mShareListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v9, v7, v10}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4190
    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    goto/16 :goto_0

    .line 4132
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onCreateOptionsMenu() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    .line 816
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->upgradeMenu()V

    .line 818
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3573
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    iput-boolean v5, p0, Lcom/android/music/player/activity/MusicPlayer;->isActivityExit:Z

    .line 3575
    iput-boolean v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mPause:Z

    .line 3580
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 3581
    iput-object v4, p0, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    .line 3583
    :cond_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->ttsMessageBox:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 3584
    iput-object v4, p0, Lcom/android/music/player/activity/MusicPlayer;->ttsMessageBox:Landroid/app/AlertDialog;

    .line 3588
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->getLaunchMode()I

    move-result v1

    if-eqz v1, :cond_2

    .line 3589
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/android/music/player/service/ICorePlayerService;->setPreviewUri(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3597
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v1, :cond_4

    .line 3598
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/android/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_3

    .line 3599
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1, v5}, Lcom/android/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 3601
    :cond_3
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 3607
    :cond_4
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3608
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3609
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3610
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3617
    iget-boolean v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBackgroundPlaying:Z

    if-nez v1, :cond_5

    .line 3618
    invoke-static {p0}, Lcom/android/music/common/util/MusicPlayerUtil;->pausePlay(Landroid/content/Context;)V

    .line 3621
    :cond_5
    iput-object v4, p0, Lcom/android/music/player/activity/MusicPlayer;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    .line 3622
    invoke-static {p0}, Lcom/android/music/common/util/MusicPlayerUtil;->unbindService(Landroid/content/Context;)V

    .line 3626
    :try_start_1
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/player/activity/MusicPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3627
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/player/activity/MusicPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3628
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_6

    .line 3629
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3635
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtWorker:Lcom/android/music/player/activity/MusicPlayer$Worker;

    if-eqz v1, :cond_7

    .line 3636
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtWorker:Lcom/android/music/player/activity/MusicPlayer$Worker;

    invoke-virtual {v1}, Lcom/android/music/player/activity/MusicPlayer$Worker;->quit()V

    .line 3637
    iput-object v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtWorker:Lcom/android/music/player/activity/MusicPlayer$Worker;

    .line 3640
    :cond_7
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->preparingDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_8

    .line 3641
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->preparingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3643
    :cond_8
    invoke-static {p0}, Lcom/android/music/player/activity/MusicTextToSpeech;->getInstance(Landroid/content/Context;)Lcom/android/music/player/activity/MusicTextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/player/activity/MusicTextToSpeech;->destroy()V

    .line 3644
    iput-object v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerWindow:Lcom/android/music/player/widget/MusicPlayerWindow;

    .line 3645
    iput-object v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    .line 3647
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 3650
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3651
    return-void

    .line 3592
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3593
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3594
    const-string v1, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 27 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3631
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 3632
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy : Receiver is not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method onFFDown()V
    .locals 3

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "MusicPlayer::onFFDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    const/16 v0, 0xa

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 1783
    return-void
.end method

.method onFFUp(J)V
    .locals 4
    .parameter "interval"

    .prologue
    .line 1786
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicPlayer::onFFUp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    .line 1788
    const/16 v1, 0xb

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 1789
    const-wide/16 v1, 0x12c

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 1791
    :try_start_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/music/player/service/ICorePlayerService;->playNext(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1798
    :cond_0
    :goto_0
    return-void

    .line 1792
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1793
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 1794
    const-string v1, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 14 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFinishActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mBackgroundPlaying:Z

    .line 5690
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 5692
    sput-boolean v2, Lcom/android/music/common/util/BatteryChecker;->mFinishApp:Z

    .line 5693
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v4, 0xe

    .line 1828
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 1847
    const/16 v1, 0x19

    if-eq v1, p1, :cond_0

    const/16 v1, 0x18

    if-ne v1, p1, :cond_2

    .line 1849
    :cond_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown:mLongKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mLongKey:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mLongKey:Z

    if-nez v1, :cond_1

    .line 1853
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1854
    .local v0, msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1855
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1856
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1857
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "onKeyDown(): Long key is set"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    const/4 v1, 0x1

    .line 1864
    :goto_0
    return v1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v5, 0x18

    const/16 v4, 0xe

    const/4 v3, 0x1

    .line 1868
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    if-eq v5, p1, :cond_0

    const/16 v0, 0x19

    if-ne v0, p1, :cond_1

    .line 1872
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mLongKey:Z

    .line 1874
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1875
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1879
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onKeyUp: not long press"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    if-ne v5, p1, :cond_3

    .line 1881
    invoke-direct {p0, v3}, Lcom/android/music/player/activity/MusicPlayer;->changeVolume(I)V

    .line 1885
    :goto_0
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->showVolumePanel()V

    .line 1891
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    :cond_2
    move v0, v3

    .line 1877
    goto :goto_1

    .line 1883
    :cond_3
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->changeVolume(I)V

    goto :goto_0
.end method

.method public onMusicPlayerViewChange(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 5253
    return-void
.end method

.method public onMyKeyLongPress(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMyKeyLongPress("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 1920
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->changeVolume(I)V

    .line 1925
    :cond_0
    :goto_0
    return-void

    .line 1921
    :cond_1
    const/16 v0, 0x19

    if-ne v0, p1, :cond_0

    .line 1922
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->changeVolume(I)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 751
    if-eqz p1, :cond_1

    .line 752
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mPause:Z

    .line 754
    invoke-direct {p0, p1}, Lcom/android/music/player/activity/MusicPlayer;->processIntent(Landroid/content/Intent;)V

    .line 756
    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->bCalledByList:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 768
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->doPrepare()V

    .line 769
    const/4 v0, 0x3

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent() intent==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 24
    .parameter "item"

    .prologue
    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "onOptionsItemSelected() is called"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 1139
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v18, 0x1

    return v18

    .line 972
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "onOptionsItemSelected(): MENU_ADD_TO_QUICK_LIST"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    new-instance v15, Lcom/android/music/common/data/MpListFilter;

    const/16 v18, 0x9

    const/16 v19, 0x1

    move-object v0, v15

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 975
    .local v15, mQuickFilter:Lcom/android/music/common/data/MpListFilter;
    move-object v0, v15

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v21, 0x1

    const/16 v22, -0x1

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object v1, v15

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v20, v18, v19

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMediaAudioId()I

    move-result v8

    .line 979
    .local v8, curAudioId:I
    if-ltz v8, :cond_2

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMediaAudioId()I

    move-result v19

    move-object/from16 v0, v18

    move-object v1, v15

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/music/common/data/MusicDB;->addItem(Lcom/android/music/common/data/MpListFilter;I)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 984
    const v18, 0x7f0a0029

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    .line 990
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1131
    .end local v8           #curAudioId:I
    .end local v15           #mQuickFilter:Lcom/android/music/common/data/MpListFilter;
    :catch_0
    move-exception v18

    move-object/from16 v9, v18

    .line 1133
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 988
    .end local v9           #e:Landroid/os/RemoteException;
    .restart local v8       #curAudioId:I
    .restart local v15       #mQuickFilter:Lcom/android/music/common/data/MpListFilter;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    move-object/from16 v18, v0

    const v19, 0x7f0a0029

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Toast;->setText(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1134
    .end local v8           #curAudioId:I
    .end local v15           #mQuickFilter:Lcom/android/music/common/data/MpListFilter;
    :catch_1
    move-exception v18

    move-object/from16 v9, v18

    .line 1135
    .local v9, e:Landroid/content/ActivityNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onOptionsItemSelected:ActivityNotFoundException"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 993
    .end local v9           #e:Landroid/content/ActivityNotFoundException;
    .restart local v8       #curAudioId:I
    .restart local v15       #mQuickFilter:Lcom/android/music/common/data/MpListFilter;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "MENU_ADD_TO_QUICK_LIST is selected, but curAudioId<0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1001
    .end local v8           #curAudioId:I
    .end local v15           #mQuickFilter:Lcom/android/music/common/data/MpListFilter;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "onOptionsItemSelected(): MENU_GO_TO_QUICK_LIST"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const v19, 0x7f0a001f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 1004
    .local v17, title:[Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object v7, v0

    const/16 v18, 0x0

    const-string v19, "0"

    aput-object v19, v7, v18

    const/16 v18, 0x1

    const-string v19, "-1"

    aput-object v19, v7, v18

    .line 1006
    .local v7, con:[Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    const-class v18, Lcom/android/music/list/activity/MpListActivity;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1007
    .local v10, intent:Landroid/content/Intent;
    const-string v18, "ListType"

    const/16 v19, 0x9

    move-object v0, v10

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1008
    const-string v18, "TitleText"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    const-string v18, "Conditions"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1010
    const-string v18, "CheckListType"

    const/16 v19, 0x8

    move-object v0, v10

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1012
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1046
    .end local v7           #con:[Ljava/lang/String;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v17           #title:[Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "onOptionsItemSelected(): MENU_ADD_TO_PLAYLIST"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object v13, v0

    .line 1049
    .local v13, mCondition:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/music/player/service/ICorePlayerService;->getIndexOfPlayList()I

    move-result v11

    .line 1051
    .local v11, itemIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/music/player/service/ICorePlayerService;->getMpListFilter()Lcom/android/music/common/data/MpListFilter;

    move-result-object v14

    .line 1052
    .local v14, mFilter:Lcom/android/music/common/data/MpListFilter;
    if-eqz v14, :cond_3

    move-object v0, v14

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    if-eqz v18, :cond_3

    .line 1053
    const/16 v18, 0x0

    move-object v0, v14

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->bIsID:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    const-string v19, "0"

    :goto_2
    aput-object v19, v13, v18

    .line 1055
    move-object v0, v14

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->bIsID:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1056
    const/16 v18, 0x1

    move-object v0, v14

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v13, v18

    .line 1063
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "onOptionsItemSelected():%s,%s,%s"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aget-object v22, v13, v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x1

    aget-object v22, v13, v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const/16 v22, 0x2

    aget-object v22, v13, v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_3
    add-int/lit8 v18, v11, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Z

    move-object v12, v0

    .line 1067
    .local v12, listBooleanIndex:[Z
    const/16 v18, 0x0

    move-object v0, v12

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 1068
    add-int/lit8 v18, v11, 0x1

    const/16 v19, 0x1

    aput-boolean v19, v12, v18

    .line 1070
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-class v19, Lcom/android/music/list/activity/MpListActivity;

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1071
    .restart local v10       #intent:Landroid/content/Intent;
    const-string v18, "ListType"

    const/16 v19, 0x2

    move-object v0, v10

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1072
    const-string v18, "TitleText"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const v21, 0x7f0a0034

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    const-string v18, "Check"

    const/16 v19, 0x1

    move-object v0, v10

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1075
    const-string v18, "CheckListType"

    const/16 v19, 0x1

    move-object v0, v10

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1077
    const-string v18, "CheckedList"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 1078
    const-string v18, "Conditions"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1079
    const-string v18, "RootListType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/music/player/service/ICorePlayerService;->getPlayListType()I

    move-result v19

    move-object v0, v10

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "onOptionsItemSelected():itemIndex=%d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1053
    .end local v10           #intent:Landroid/content/Intent;
    .end local v12           #listBooleanIndex:[Z
    :cond_4
    const-string v19, "1"

    goto/16 :goto_2

    .line 1058
    :cond_5
    move-object v0, v14

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1059
    const/16 v18, 0x1

    move-object v0, v14

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v13, v18

    goto/16 :goto_3

    .line 1061
    :cond_6
    const/16 v18, 0x1

    const-string v19, "-1"

    aput-object v19, v13, v18

    goto/16 :goto_3

    .line 1087
    .end local v11           #itemIndex:I
    .end local v13           #mCondition:[Ljava/lang/String;
    .end local v14           #mFilter:Lcom/android/music/common/data/MpListFilter;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/player/activity/MusicPlayer;->changeView()V

    goto/16 :goto_0

    .line 1091
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "onOptionsItemSelected(): MENU_SET_AS"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->showDialog(I)V

    goto/16 :goto_0

    .line 1097
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "onOptionsItemSelected(): MENU_SHOP"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    new-instance v16, Landroid/content/Intent;

    const-string v18, "com.pv.verizon.mod.ACTION_START"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1099
    .local v16, newintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1103
    .end local v16           #newintent:Landroid/content/Intent;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "onOptionsItemSelected(): MENU_SHARE_TRACK_VIA"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->showDialog(I)V

    goto/16 :goto_0

    .line 1109
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "onOptionsItemSelected(): MENU_TRANSFER_TO_HEADSET"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    new-instance v5, Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 1111
    .local v5, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->size()I

    move-result v18

    if-eqz v18, :cond_7

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "MENU_TRANSFER_TO_HEADSET, BT headset is connected"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/media/AudioManager;->setBluetoothA2dpForceOn(Z)V

    .line 1123
    :goto_4
    const/4 v5, 0x0

    .line 1124
    goto/16 :goto_0

    .line 1115
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "MENU_TRANSFER_TO_HEADSET, BT headset is not connected"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    new-instance v6, Landroid/content/Intent;

    const-string v18, "android.bluetooth.devicepicker.action.LAUNCH"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1117
    .local v6, btIntent:Landroid/content/Intent;
    const-string v18, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/16 v19, 0x1

    move-object v0, v6

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1118
    const-string v18, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/16 v19, 0x4

    move-object v0, v6

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1119
    const-string v18, "android.bluetooth.FromHeadsetActivity"

    const/16 v19, 0x1

    move-object v0, v6

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1121
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 1127
    .end local v5           #a2dp:Landroid/bluetooth/BluetoothA2dp;
    .end local v6           #btIntent:Landroid/content/Intent;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "onOptionsItemSelected(): MENU_TRANSFER_TO_PHONE"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/media/AudioManager;->setBluetoothA2dpForceOn(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 970
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3491
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "onPause() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 3493
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mPause:Z

    .line 3494
    invoke-static {v4}, Lcom/android/music/common/util/MusicPlayerUtil;->setMusicPlayerResume(Z)V

    .line 3497
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer;->unregisterTelephonyListener()V

    .line 3498
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v1, :cond_0

    .line 3499
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 3506
    :cond_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    if-eqz v1, :cond_1

    .line 3508
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 3512
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBarRecceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/player/activity/MusicPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3513
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/player/activity/MusicPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3519
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/music/player/activity/MusicPlayer;->setEnableTextScroll(Z)V

    .line 3521
    return-void

    .line 3514
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3515
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterReceiver(mProgressBarRecceiver) IllegalStateException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3516
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 3517
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterReceiver(mProgressBarRecceiver) IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 17
    .parameter "menu"

    .prologue
    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object v12, v0

    const-string v13, "onPrepareOptionsMenu() is called"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v6, 0x0

    .line 825
    .local v6, currentUri:Ljava/lang/String;
    const/4 v5, 0x0

    .line 826
    .local v5, currentFilepath:Ljava/lang/String;
    const/4 v8, 0x0

    .line 827
    .local v8, isDrm:Z
    const/4 v11, 0x0

    .line 831
    .local v11, option:Landroid/drm/mobile2/Drm2Options;
    const/4 v9, 0x1

    .line 832
    .local v9, isRingtone:Z
    const/4 v10, 0x1

    .line 835
    .local v10, isSendAs:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object v12, v0

    if-nez v12, :cond_0

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object v12, v0

    const-string v13, "mCorePlayer() : mCorePlayer == null "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v12, 0x0

    .line 964
    :goto_0
    return v12

    .line 840
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object v12, v0

    invoke-interface {v12}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 845
    :goto_1
    if-nez v6, :cond_4

    .line 846
    const/4 v9, 0x0

    .line 847
    const/4 v10, 0x0

    .line 893
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    move-object v12, v0

    if-nez v12, :cond_1

    .line 894
    const-string v12, "audio"

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 897
    :cond_1
    new-instance v2, Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    move-object v12, v0

    invoke-direct {v2, v12}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 898
    .local v2, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 900
    const/4 v12, 0x3

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 901
    const/4 v12, 0x2

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 906
    :goto_3
    const/4 v2, 0x0

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerView:Landroid/widget/LinearLayout;

    move-object v12, v0

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerView:Landroid/widget/LinearLayout;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v12

    if-nez v12, :cond_3

    .line 911
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    move v12, v0

    if-eqz v12, :cond_b

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object v12, v0

    const-string v13, "onPrepareOptionsMenu() mLaunchMode != LAUNCH_NORMAL"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const/4 v12, 0x6

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 915
    const/4 v12, 0x0

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 916
    const/4 v12, 0x7

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 918
    const/16 v12, 0x9

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 920
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mIsLiveStreamMode:Z

    move v12, v0

    if-eqz v12, :cond_2

    .line 921
    const/4 v9, 0x0

    .line 922
    const/4 v10, 0x0

    .line 947
    :cond_2
    :goto_4
    if-eqz v9, :cond_f

    .line 948
    const/4 v12, 0x5

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 952
    :goto_5
    if-eqz v10, :cond_10

    .line 953
    const/4 v12, 0x4

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 964
    :cond_3
    :goto_6
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v12

    goto/16 :goto_0

    .line 841
    .end local v2           #a2dp:Landroid/bluetooth/BluetoothA2dp;
    :catch_0
    move-exception v12

    move-object v7, v12

    .line 842
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 848
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_4
    invoke-static {v6}, Lcom/android/music/common/util/UriUtil;->IsUsedMediaProvider(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 849
    const/4 v9, 0x0

    .line 850
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 852
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object v12, v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "currentUri=="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    move-object v12, v0

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 855
    if-nez v5, :cond_8

    .line 856
    const/4 v9, 0x0

    .line 857
    const/4 v10, 0x0

    .line 881
    :cond_6
    :goto_7
    const-string v12, "content://media/external"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "content://media/internal"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "file://"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "content://drm/"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 885
    const/4 v9, 0x0

    .line 886
    const/4 v10, 0x0

    .line 889
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object v12, v0

    const-string v13, "onPrepareOptionsMenu(isDrm=%s,isRingtone=%s,isSendAs=%s)"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 859
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object v12, v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "currentFilepath=="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",launchMode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v12, v0

    invoke-virtual {v12, v5}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v8

    .line 863
    if-eqz v8, :cond_6

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/music/common/manager/MusicDrmManager;->getOptionInfo()Landroid/drm/mobile2/Drm2Options;

    move-result-object v11

    .line 866
    if-nez v11, :cond_9

    .line 867
    const/4 v9, 0x0

    .line 868
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 870
    :cond_9
    iget-boolean v9, v11, Landroid/drm/mobile2/Drm2Options;->bRingtone:Z

    .line 871
    iget-boolean v10, v11, Landroid/drm/mobile2/Drm2Options;->bSendAs:Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    .line 874
    :catch_1
    move-exception v12

    move-object v7, v12

    .line 875
    .local v7, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    move-object v12, v0

    const v13, 0x7f0a0043

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 877
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 903
    .end local v7           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #a2dp:Landroid/bluetooth/BluetoothA2dp;
    :cond_a
    const/4 v12, 0x3

    :try_start_3
    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 904
    const/4 v12, 0x2

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 958
    .end local v2           #a2dp:Landroid/bluetooth/BluetoothA2dp;
    :catch_2
    move-exception v12

    move-object v7, v12

    .line 959
    .local v7, e:Landroid/os/RemoteException;
    invoke-static/range {p0 .. p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 960
    const-string v12, "MusicPlayer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RemoteException occured 18 :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 925
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v2       #a2dp:Landroid/bluetooth/BluetoothA2dp;
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object v12, v0

    invoke-interface {v12}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMediaAudioId()I

    move-result v4

    .line 926
    .local v4, curAudioId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object v12, v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onPrepareOptionsMenu() curAudioId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    if-eqz v6, :cond_c

    if-eqz v5, :cond_c

    if-gez v4, :cond_d

    .line 929
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object v12, v0

    const-string v13, "onPrepareOptionsMenu() currentUri==null || currentFilepath == null || curAudioId<0"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const/4 v12, 0x6

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 931
    const/4 v12, 0x0

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 932
    const/4 v12, 0x7

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 933
    const/16 v12, 0xa

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 943
    :goto_8
    const/16 v12, 0x9

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 935
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    move-object v12, v0

    invoke-virtual {v12, v4}, Lcom/android/music/common/data/MusicDB;->isExistQuickList(I)Z

    move-result v3

    .line 936
    .local v3, bIsQuickList:Z
    const/4 v12, 0x6

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 937
    const/4 v12, 0x0

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    if-nez v3, :cond_e

    const/4 v13, 0x1

    :goto_9
    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 938
    const/4 v12, 0x7

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    invoke-interface {v12, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 939
    const/16 v12, 0xa

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object v12, v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onPrepareOptionsMenu() bIsQuickList="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 937
    :cond_e
    const/4 v13, 0x0

    goto :goto_9

    .line 950
    .end local v3           #bIsQuickList:Z
    .end local v4           #curAudioId:I
    :cond_f
    const/4 v12, 0x5

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 955
    :cond_10
    const/4 v12, 0x4

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_6
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 3212
    sget-boolean v0, Lcom/android/music/common/util/BatteryChecker;->mFinishApp:Z

    if-eqz v0, :cond_0

    .line 3213
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer;->finishMusicPlayer()V

    .line 3214
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 3215
    return-void
.end method

.method protected onResume()V
    .locals 12

    .prologue
    .line 3247
    const/16 v0, 0x13

    .line 3248
    .local v0, EQCount:I
    const/4 v6, 0x0

    .line 3249
    .local v6, tempEQImageView:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v9, "MusicPlayer::onResume() is called"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3250
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 3252
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer;->registerTelephonyListener()V

    .line 3254
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3255
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v9, 0x7f0a00eb

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 3256
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->finish()V

    .line 3371
    :goto_0
    return-void

    .line 3260
    :cond_0
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getVisualization(Landroid/content/Context;)I

    move-result v8

    iput v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    .line 3267
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mPause:Z

    .line 3269
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->updatePlayStatus()V

    .line 3272
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mPrefs:Landroid/content/SharedPreferences;

    const-string v9, "cradle_dock_connected"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 3273
    .local v4, isDockConnected:Z
    const/4 v8, 0x1

    if-ne v4, v8, :cond_7

    .line 3274
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerButton:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3276
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v8

    if-nez v8, :cond_6

    .line 3277
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerMode:Z

    .line 3278
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerButton:Landroid/widget/ImageView;

    const v9, 0x7f020110

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3283
    :goto_1
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lcom/android/music/player/activity/MusicPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 3284
    .local v7, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v8

    if-eqz v8, :cond_1

    .line 3285
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerButton:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3294
    .end local v7           #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_2
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/music/common/util/MusicPlayerUtil;->setMusicPlayerResume(Z)V

    .line 3296
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v8, :cond_2

    .line 3297
    const/4 v8, 0x3

    const-wide/16 v9, 0x1f4

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 3299
    :cond_2
    const/16 v8, 0x14

    const-wide/16 v9, 0x1f4

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 3304
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v8}, Lcom/android/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v8

    sget-object v9, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v8, v9, :cond_3

    .line 3305
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 3308
    :cond_3
    new-instance v8, Lcom/android/music/common/util/BatteryChecker;

    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-direct {v8, v9, p0}, Lcom/android/music/common/util/BatteryChecker;-><init>(Lcom/android/music/player/service/ICorePlayerService;Lcom/android/music/common/util/OnLowBatteryListener;)V

    iput-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    .line 3309
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/app/Activity;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-virtual {v8, v9}, Lcom/android/music/common/util/BatteryChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3311
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 3312
    .local v3, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3313
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v3}, Lcom/android/music/player/activity/MusicPlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3315
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 3320
    .local v1, configuration:Landroid/content/res/Configuration;
    const v8, 0x7f0c006e

    invoke-virtual {p0, v8}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #configuration:Landroid/content/res/Configuration;
    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    .line 3321
    iget v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    if-eqz v8, :cond_8

    .line 3322
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->hideLyricPanel()V

    .line 3323
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/16 v9, 0x33

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 3324
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    const/16 v9, 0x33

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 3326
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 3327
    const/16 v8, 0x9

    const-wide/16 v9, 0x0

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 3346
    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/music/player/service/CorePlayerService;->drawDone()V

    .line 3348
    iget-boolean v8, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownAdditionalBar:Z

    if-nez v8, :cond_5

    .line 3349
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/music/player/activity/MusicPlayer;->showAdditionalPanel(ZZ)V

    .line 3350
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x20

    const-wide/16 v10, 0x1388

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3363
    :cond_5
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 3364
    .local v5, progressFilter:Landroid/content/IntentFilter;
    const-string v8, "musicplayer.show.progressbar"

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3365
    const-string v8, "musicplayer.hide.progressbar"

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3366
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBarRecceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v5}, Lcom/android/music/player/activity/MusicPlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3368
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/music/player/activity/MusicPlayer;->bUpdateMediaInfo:Z

    .line 3370
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/music/player/activity/MusicPlayer;->setEnableTextScroll(Z)V

    goto/16 :goto_0

    .line 3280
    .end local v3           #intentFilterBattery:Landroid/content/IntentFilter;
    .end local v5           #progressFilter:Landroid/content/IntentFilter;
    :cond_6
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerMode:Z

    .line 3281
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerButton:Landroid/widget/ImageView;

    const v9, 0x7f02010f

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 3289
    :cond_7
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerButton:Landroid/widget/ImageView;

    if-eqz v8, :cond_1

    .line 3290
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerButton:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 3329
    .restart local v3       #intentFilterBattery:Landroid/content/IntentFilter;
    :cond_8
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicLyric:Ljava/lang/String;

    if-nez v8, :cond_9

    .line 3330
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 3331
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 3334
    :cond_9
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    if-ge v2, v0, :cond_a

    .line 3336
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->EQTopImageView:[I

    aget v8, v8, v2

    invoke-virtual {p0, v8}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #tempEQImageView:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 3337
    .restart local v6       #tempEQImageView:Landroid/widget/ImageView;
    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3338
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->EQBottomImageView:[I

    aget v8, v8, v2

    invoke-virtual {p0, v8}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #tempEQImageView:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 3339
    .restart local v6       #tempEQImageView:Landroid/widget/ImageView;
    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3334
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3342
    :cond_a
    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 3343
    const/4 v8, 0x3

    const-wide/16 v9, 0x0

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto/16 :goto_3
.end method

.method onRewDown()V
    .locals 3

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "MusicPlayer::onRewDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    const/16 v0, 0xc

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 1803
    return-void
.end method

.method onRewUp(J)V
    .locals 5
    .parameter "interval"

    .prologue
    const/4 v4, 0x0

    .line 1806
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicPlayer::onRewUp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    iput v4, p0, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    .line 1808
    const/16 v1, 0xd

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 1810
    const-wide/16 v1, 0x12c

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 1811
    :try_start_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->getPosition()I

    move-result v1

    const/16 v2, 0xbb8

    if-le v1, v2, :cond_1

    .line 1812
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/music/player/service/ICorePlayerService;->setPosition(I)V

    .line 1813
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->updatePlayStatus()V

    .line 1823
    :cond_0
    :goto_0
    return-void

    .line 1815
    :cond_1
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/music/player/service/ICorePlayerService;->playPrev(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1818
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1819
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 1820
    const-string v1, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 19 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->isSearchShown:Z

    .line 519
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 520
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onServicePrepared()V
    .locals 4

    .prologue
    .line 3654
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "onServicePrepared() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3656
    :try_start_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    if-nez v1, :cond_0

    .line 3657
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    .line 3674
    :cond_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 3675
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mIsLiveStreamMode:Z

    .line 3676
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/music/player/service/ICorePlayerService;->setLaunchMode(I)V

    .line 3678
    iget v1, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 3679
    const/4 v1, 0x4

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 3700
    :goto_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v1, :cond_1

    .line 3701
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->hideNotificationInfo()V

    .line 3710
    :cond_1
    :goto_1
    return-void

    .line 3689
    :cond_2
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->doPrepare()V

    .line 3690
    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3706
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3707
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3708
    const-string v1, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 20 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3693
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->intentAction:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->intentAction:Ljava/lang/String;

    const-string v2, "Search"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 3695
    const/4 v1, 0x5

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_0

    .line 3697
    :cond_4
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "It is MusicPlayer, not PreviewPlayer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 3230
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "onStart() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    if-nez v1, :cond_0

    .line 3232
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    .line 3236
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v1, :cond_1

    .line 3237
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->hideNotificationInfo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3243
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 3244
    return-void

    .line 3239
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3240
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 36:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStop()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 3524
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v4, "onStop() is called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->ttsMessageBox:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 3528
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->ttsMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 3529
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mLongKey:Z

    .line 3533
    :cond_0
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/music/player/activity/MusicPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 3534
    .local v2, pm:Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 3541
    .local v0, bIsScreenOn:Z
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPause() : pm.isScreenOn() return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_2

    const-string v5, "true"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    if-ne v0, v6, :cond_3

    .line 3546
    :try_start_0
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v3

    if-ne v3, v6, :cond_1

    .line 3547
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->showNotificationInfo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3569
    :cond_1
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 3570
    return-void

    .line 3541
    :cond_2
    const-string v5, "false"

    goto :goto_0

    .line 3549
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 3550
    .local v1, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException occured 35:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3555
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v4, "onPause() called by LCD off.. do not Show notificationInfno"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onTouchEvent() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected playStream()V
    .locals 23

    .prologue
    .line 3096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "playStream() is called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    const/4 v4, 0x0

    :try_start_0
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    .line 3099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->changePlayButton(ZZ)V

    .line 3101
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    move-object v5, v0

    aput-object v5, v22, v4

    .line 3103
    .local v22, uris:[Ljava/lang/String;
    const/16 v20, 0x0

    .line 3104
    .local v20, uri:Ljava/lang/String;
    const/4 v12, 0x0

    .line 3105
    .local v12, contentUri:Ljava/lang/String;
    const/16 v19, 0x0

    .line 3106
    .local v19, tmpPath:Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v21, v0

    .line 3107
    .local v21, uriLength:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 3108
    aget-object v20, v22, v14

    .line 3107
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 3110
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playStream() uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    if-nez v20, :cond_1

    .line 3112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "playStream() uri = null, return"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3205
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    .line 3207
    .end local v12           #contentUri:Ljava/lang/String;
    .end local v14           #i:I
    .end local v19           #tmpPath:Ljava/lang/String;
    .end local v20           #uri:Ljava/lang/String;
    .end local v21           #uriLength:I
    .end local v22           #uris:[Ljava/lang/String;
    :goto_1
    return-void

    .line 3116
    .restart local v12       #contentUri:Ljava/lang/String;
    .restart local v14       #i:I
    .restart local v19       #tmpPath:Ljava/lang/String;
    .restart local v20       #uri:Ljava/lang/String;
    .restart local v21       #uriLength:I
    .restart local v22       #uris:[Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v4, "file://"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3117
    const/4 v4, 0x7

    move-object/from16 v0, v20

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 3118
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3143
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    move v5, v0

    invoke-interface {v4, v5}, Lcom/android/music/player/service/ICorePlayerService;->setLaunchMode(I)V

    .line 3144
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 3145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->myFiles_path:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/player/activity/MusicPlayer;->myFiles_sortOrder:I

    move v6, v0

    move-object v0, v4

    move-object/from16 v1, v20

    move-object v2, v5

    move v3, v6

    invoke-interface {v0, v1, v2, v3}, Lcom/android/music/player/service/ICorePlayerService;->setPreviewUriAndFilePath(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3150
    :goto_2
    if-eqz v19, :cond_6

    .line 3152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3154
    const/4 v4, 0x2

    move v0, v4

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 3155
    .local v17, popupStrings:[I
    const/4 v4, 0x2

    new-array v11, v4, [Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    .line 3156
    .local v11, button:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v17

    move-object v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/common/manager/MusicDrmManager;->getDrmPopup(Z[I[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;)I

    move-result v18

    .line 3158
    .local v18, popupType:I
    if-nez v18, :cond_4

    .line 3159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object v4, v0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V

    .line 3196
    .end local v11           #button:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .end local v17           #popupStrings:[I
    .end local v18           #popupType:I
    :goto_3
    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3205
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    goto/16 :goto_1

    .line 3147
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/player/activity/MusicPlayer;->myFiles_sortOrder:I

    move v5, v0

    move-object v0, v4

    move-object/from16 v1, v20

    move v2, v5

    invoke-interface {v0, v1, v2}, Lcom/android/music/player/service/ICorePlayerService;->setPreviewUri(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 3197
    .end local v12           #contentUri:Ljava/lang/String;
    .end local v14           #i:I
    .end local v19           #tmpPath:Ljava/lang/String;
    .end local v20           #uri:Ljava/lang/String;
    .end local v21           #uriLength:I
    .end local v22           #uris:[Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v13, v4

    .line 3198
    .local v13, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3199
    const-string v4, "MusicPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException occured 22 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3205
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    goto/16 :goto_1

    .line 3162
    .end local v13           #e:Landroid/os/RemoteException;
    .restart local v11       #button:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .restart local v12       #contentUri:Ljava/lang/String;
    .restart local v14       #i:I
    .restart local v17       #popupStrings:[I
    .restart local v18       #popupType:I
    .restart local v19       #tmpPath:Ljava/lang/String;
    .restart local v20       #uri:Ljava/lang/String;
    .restart local v21       #uriLength:I
    .restart local v22       #uris:[Ljava/lang/String;
    :cond_4
    :try_start_4
    new-instance v16, Lcom/android/music/common/util/DrmPopupData;

    invoke-direct/range {v16 .. v16}, Lcom/android/music/common/util/DrmPopupData;-><init>()V

    .line 3163
    .local v16, popupData:Lcom/android/music/common/util/DrmPopupData;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupStrings:[I

    .line 3164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/music/common/manager/MusicDrmManager;->getRemainedCounts()I

    move-result v4

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->remainCount:I

    .line 3165
    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupType:I

    .line 3166
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupUri:Landroid/net/Uri;

    .line 3167
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupFilePath:Ljava/lang/String;

    .line 3168
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    move v4, v0

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupFrom:I

    .line 3171
    new-instance v15, Lcom/android/music/common/util/DrmServicePopup;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/music/common/util/DrmServicePopup;-><init>(Landroid/content/Context;Lcom/android/music/common/util/DrmPopupData;)V

    .line 3172
    .local v15, popup:Lcom/android/music/common/util/DrmServicePopup;
    invoke-virtual {v15}, Lcom/android/music/common/util/DrmServicePopup;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 3200
    .end local v11           #button:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .end local v12           #contentUri:Ljava/lang/String;
    .end local v14           #i:I
    .end local v15           #popup:Lcom/android/music/common/util/DrmServicePopup;
    .end local v16           #popupData:Lcom/android/music/common/util/DrmPopupData;
    .end local v17           #popupStrings:[I
    .end local v18           #popupType:I
    .end local v19           #tmpPath:Ljava/lang/String;
    .end local v20           #uri:Ljava/lang/String;
    .end local v21           #uriLength:I
    .end local v22           #uris:[Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v13, v4

    .line 3201
    .local v13, e:Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 3203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f0a0043

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3205
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    goto/16 :goto_1

    .line 3189
    .end local v13           #e:Ljava/io/FileNotFoundException;
    .restart local v12       #contentUri:Ljava/lang/String;
    .restart local v14       #i:I
    .restart local v19       #tmpPath:Ljava/lang/String;
    .restart local v20       #uri:Ljava/lang/String;
    .restart local v21       #uriLength:I
    .restart local v22       #uris:[Ljava/lang/String;
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object v4, v0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 3205
    .end local v12           #contentUri:Ljava/lang/String;
    .end local v14           #i:I
    .end local v19           #tmpPath:Ljava/lang/String;
    .end local v20           #uri:Ljava/lang/String;
    .end local v21           #uriLength:I
    .end local v22           #uris:[Ljava/lang/String;
    :catchall_0
    move-exception v4

    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    throw v4

    .line 3192
    .restart local v12       #contentUri:Ljava/lang/String;
    .restart local v14       #i:I
    .restart local v19       #tmpPath:Ljava/lang/String;
    .restart local v20       #uri:Ljava/lang/String;
    .restart local v21       #uriLength:I
    .restart local v22       #uris:[Ljava/lang/String;
    :cond_6
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "playStream() tmpPath==null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object v4, v0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3
.end method

.method queueUpdate(IJ)V
    .locals 3
    .parameter "what"
    .parameter "delay"

    .prologue
    const/4 v1, 0x2

    .line 2672
    if-ne p1, v1, :cond_2

    .line 2673
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2678
    :goto_0
    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mPause:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 2680
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2682
    :cond_1
    return-void

    .line 2675
    :cond_2
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queueUpdate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected refreshPlayStatus(I)V
    .locals 5
    .parameter "millisecond"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2619
    invoke-virtual {p0, p1}, Lcom/android/music/player/activity/MusicPlayer;->refreshPlayedTime(I)V

    .line 2621
    int-to-double v1, p1

    const-wide/high16 v3, 0x4059

    mul-double/2addr v1, v3

    iget v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    .line 2623
    .local v0, progressStatus:I
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2624
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->invalidate()V

    .line 2625
    return-void
.end method

.method protected refreshPlayedTime(I)V
    .locals 4
    .parameter "millisecond"

    .prologue
    .line 2630
    iget-boolean v1, p0, Lcom/android/music/player/activity/MusicPlayer;->isActivityExit:Z

    if-eqz v1, :cond_1

    .line 2647
    :cond_0
    :goto_0
    return-void

    .line 2634
    :cond_1
    iget v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    if-lez v1, :cond_0

    .line 2638
    iget-boolean v1, p0, Lcom/android/music/player/activity/MusicPlayer;->showTimeElapsed:Z

    if-eqz v1, :cond_2

    .line 2639
    move v0, p1

    .line 2644
    .local v0, playTimeMillisecond:I
    :goto_1
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mPlayedTimeView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    if-le v0, v2, :cond_3

    iget v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    :goto_2
    iget-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->showTimeElapsed:Z

    invoke-static {v2, v3}, Lcom/android/music/common/data/MediaMetadata;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2646
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mPlayedTimeView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    .line 2641
    .end local v0           #playTimeMillisecond:I
    :cond_2
    iget v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    sub-int v0, v1, p1

    .restart local v0       #playTimeMillisecond:I
    goto :goto_1

    :cond_3
    move v2, v0

    .line 2644
    goto :goto_2
.end method

.method protected setEnableTextScroll(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    .line 2579
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableTextScroll : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2582
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2584
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2585
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2587
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2588
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2589
    :cond_2
    return-void
.end method

.method protected setLiveStreamMode(Z)V
    .locals 5
    .parameter "isLiveStream"

    .prologue
    const/4 v4, 0x0

    .line 2252
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLiveStreamMode(isLiveStream="

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

    .line 2253
    if-nez p1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 2255
    .local v0, enable:Z
    :goto_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2256
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRew:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2257
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonFF:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2258
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2260
    if-eqz v0, :cond_1

    .line 2261
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mDurationView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2265
    :goto_1
    return-void

    .end local v0           #enable:Z
    :cond_0
    move v0, v4

    .line 2253
    goto :goto_0

    .line 2263
    .restart local v0       #enable:Z
    :cond_1
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mDurationView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method showAdditionalPanel(ZZ)V
    .locals 6
    .parameter "fromalbumart"
    .parameter "bShowLyric"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1189
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "showAdditionalPanel(): %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iput-boolean v5, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownAdditionalBar:Z

    .line 1191
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1192
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1193
    iput-boolean p1, p0, Lcom/android/music/player/activity/MusicPlayer;->additionalPanelFromAlbumArt:Z

    .line 1196
    return-void
.end method

.method showLyricPanel()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1200
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    if-nez v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicLyric:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1202
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "mMusicLyric !=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1204
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mLyricTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicLyric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewLyricLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1206
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mLyricTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1214
    :cond_0
    :goto_0
    return-void

    .line 1208
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1209
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewLyricLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1210
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mLyricTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicLyric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mLyricTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method showVolumePanel()V
    .locals 3

    .prologue
    const/16 v2, 0x1f

    .line 1322
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 1324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownVolumeBar:Z

    .line 1325
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-direct {p0, v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 1327
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1328
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 1329
    return-void
.end method

.method protected updateMediaInfo()V
    .locals 11

    .prologue
    .line 2339
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v7, "updateMediaInfo() called"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    iget-boolean v6, p0, Lcom/android/music/player/activity/MusicPlayer;->isActivityExit:Z

    if-eqz v6, :cond_1

    .line 2341
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v7, "updateMediaInfo() : isActivityExit==true"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    :cond_0
    :goto_0
    return-void

    .line 2345
    :cond_1
    const/4 v4, 0x0

    .line 2346
    .local v4, mediaUri:Landroid/net/Uri;
    :try_start_0
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v6}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;

    move-result-object v3

    .line 2347
    .local v3, mediaStr:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 2348
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2352
    :cond_2
    if-eqz v4, :cond_3

    if-eqz v3, :cond_b

    const-string v6, "/0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2353
    :cond_3
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v7, "updateMediaInfo() :mediaUri == null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v6}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v1

    .line 2360
    .local v1, filePath:Ljava/lang/String;
    if-nez v1, :cond_4

    .line 2362
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v7, "updateMediaInfo : filePath is null - so return"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2499
    .end local v1           #filePath:Ljava/lang/String;
    .end local v3           #mediaStr:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 2500
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2501
    const-string v6, "MusicPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteException occured 28 :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2366
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #filePath:Ljava/lang/String;
    .restart local v3       #mediaStr:Ljava/lang/String;
    :cond_4
    :try_start_1
    sget v6, Lcom/android/music/common/data/MusicDB;->MediaCount:I

    if-eqz v6, :cond_0

    .line 2367
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->attachTitleTextViews()V

    .line 2368
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    .line 2369
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/music/common/util/ListUtil;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2370
    :cond_5
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    if-eqz v6, :cond_6

    .line 2371
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2372
    :cond_6
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    if-eqz v6, :cond_7

    .line 2373
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2374
    :cond_7
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v6, :cond_8

    .line 2375
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2376
    :cond_8
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mPlayedTimeView:Landroid/widget/TextView;

    if-eqz v6, :cond_9

    .line 2377
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mPlayedTimeView:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/music/common/data/MediaMetadata;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2379
    :cond_9
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mDurationView:Landroid/widget/TextView;

    if-eqz v6, :cond_a

    .line 2380
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mDurationView:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/music/common/data/MediaMetadata;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2383
    :cond_a
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->removeMessages(I)V

    .line 2384
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    const/4 v7, 0x7

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2388
    .end local v1           #filePath:Ljava/lang/String;
    :cond_b
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateMediaInfo() mediaUri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->attachTitleTextViews()V

    .line 2391
    invoke-static {v3}, Lcom/android/music/common/util/UriUtil;->IsUsedMediaProvider(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 2392
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    if-nez v6, :cond_c

    .line 2393
    new-instance v6, Lcom/android/music/common/data/MediaMetadata;

    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-direct {v6, v7}, Lcom/android/music/common/data/MediaMetadata;-><init>(Lcom/android/music/common/data/MusicDB;)V

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    .line 2394
    :cond_c
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    invoke-virtual {v6, v4}, Lcom/android/music/common/data/MediaMetadata;->parse(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2395
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    invoke-virtual {v6, p0}, Lcom/android/music/common/data/MediaMetadata;->makeUIData(Landroid/content/Context;)V

    .line 2405
    :cond_d
    :goto_1
    const/4 v2, 0x1

    .line 2411
    .local v2, mNeedNewTitleView:Z
    if-eqz v2, :cond_e

    .line 2412
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->attachTitleTextViews()V

    .line 2413
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v7, v7, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2415
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v7, v7, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    if-nez v7, :cond_11

    const v7, 0x7f0a00e4

    invoke-virtual {p0, v7}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2418
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v7, v7, Lcom/android/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    if-nez v7, :cond_12

    const v7, 0x7f0a00e3

    invoke-virtual {p0, v7}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2421
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateMediaInfo() title="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v8, v8, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",artist="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v8, v8, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",album="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v8, v8, Lcom/android/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    :cond_e
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateMediaInfo() mVisualizationType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    iget v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    if-nez v6, :cond_13

    .line 2431
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->removeMessages(I)V

    .line 2432
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    const/4 v7, 0x7

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget v8, v8, Lcom/android/music/common/data/MediaMetadata;->currentAlbumId:I

    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-wide v9, v9, Lcom/android/music/common/data/MediaMetadata;->currentMediaId:J

    long-to-int v9, v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2471
    .end local v2           #mNeedNewTitleView:Z
    :cond_f
    :goto_4
    :try_start_2
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v6}, Lcom/android/music/player/service/ICorePlayerService;->getPosition()I

    move-result v5

    .line 2472
    .local v5, position:I
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v6}, Lcom/android/music/player/service/ICorePlayerService;->getDuration()I

    move-result v6

    iput v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    .line 2477
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mDurationView:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/music/common/data/MediaMetadata;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2481
    invoke-virtual {p0, v5}, Lcom/android/music/player/activity/MusicPlayer;->refreshPlayStatus(I)V

    .line 2483
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v6}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 2485
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/music/player/activity/MusicPlayer;->changePlayButton(ZZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2491
    .end local v5           #position:I
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 2492
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_3
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2493
    const-string v6, "MusicPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteException occured 27 :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2396
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_10
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    invoke-virtual {v6, p0, v4}, Lcom/android/music/common/data/MediaMetadata;->makeUIDataFromUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 2400
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    const-string v7, "<unknown>"

    iput-object v7, v6, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    goto/16 :goto_1

    .line 2415
    .restart local v2       #mNeedNewTitleView:Z
    :cond_11
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v7, v7, Lcom/android/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    goto/16 :goto_2

    .line 2418
    :cond_12
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v7, v7, Lcom/android/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    goto/16 :goto_3

    .line 2436
    :cond_13
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    const/16 v7, 0x9

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget v8, v8, Lcom/android/music/common/data/MediaMetadata;->currentAlbumId:I

    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-wide v9, v9, Lcom/android/music/common/data/MediaMetadata;->currentMediaId:J

    long-to-int v9, v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2438
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_f

    .line 2439
    const/16 v6, 0x9

    const-wide/16 v7, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto/16 :goto_4

    .line 2442
    .end local v2           #mNeedNewTitleView:Z
    :cond_14
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v7, "updateMediaInfo() uri is not content://medai or file://"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    .line 2444
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    if-eqz v6, :cond_15

    .line 2449
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    const-string v7, "<unknown>"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2452
    :cond_15
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    if-eqz v6, :cond_16

    .line 2454
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    const v7, 0x7f0a00e4

    invoke-virtual {p0, v7}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2457
    :cond_16
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    if-eqz v6, :cond_17

    .line 2459
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    const v7, 0x7f0a00e3

    invoke-virtual {p0, v7}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2464
    :cond_17
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->removeMessages(I)V

    .line 2465
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    const/4 v7, 0x7

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    .line 2488
    .restart local v5       #position:I
    :cond_18
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {p0, v6, v7}, Lcom/android/music/player/activity/MusicPlayer;->changePlayButton(ZZ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method

.method protected updatePlayStatus()V
    .locals 4

    .prologue
    .line 2596
    :try_start_0
    iget-boolean v1, p0, Lcom/android/music/player/activity/MusicPlayer;->bCorePlayerStatusRefeshed:Z

    if-eqz v1, :cond_1

    .line 2598
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v1, :cond_0

    .line 2599
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/music/player/activity/MusicPlayer;->refreshPlayStatus(I)V

    .line 2612
    :cond_0
    :goto_0
    return-void

    .line 2604
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/music/player/activity/MusicPlayer;->refreshPlayStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2608
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2609
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2610
    const-string v1, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 30 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected updatePlayerInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2305
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v6, "updatePlayerInfo() called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    iget-boolean v5, p0, Lcom/android/music/player/activity/MusicPlayer;->isActivityExit:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v5, :cond_1

    .line 2336
    :cond_0
    :goto_0
    return-void

    .line 2318
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->updateMediaInfo()V

    .line 2319
    sget-object v5, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    const/high16 v6, 0x20

    if-ne v5, v6, :cond_2

    move v2, v8

    .line 2320
    .local v2, isSrsMode:Z
    :goto_1
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v5}, Lcom/android/music/player/service/ICorePlayerService;->getRepeat()I

    move-result v3

    .line 2321
    .local v3, repeat:I
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v5}, Lcom/android/music/player/service/ICorePlayerService;->getShuffle()Z

    move-result v4

    .line 2322
    .local v4, shuffle:Z
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v5}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentVolume()I

    move-result v5

    if-nez v5, :cond_3

    move v1, v8

    .line 2324
    .local v1, isMute:Z
    :goto_2
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/android/music/player/activity/MusicPlayer;->doSetSrsRepeatShuffleImage(ZIZZ)V

    .line 2326
    iget v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    if-eqz v5, :cond_0

    .line 2327
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v6, "updatePlayerInfo():mVisualizationType!=0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2330
    const/16 v5, 0x9

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2332
    .end local v1           #isMute:Z
    .end local v2           #isSrsMode:Z
    .end local v3           #repeat:I
    .end local v4           #shuffle:Z
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 2333
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2334
    const-string v5, "MusicPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException occured 29 :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    move v2, v7

    .line 2319
    goto :goto_1

    .restart local v2       #isSrsMode:Z
    .restart local v3       #repeat:I
    .restart local v4       #shuffle:Z
    :cond_3
    move v1, v7

    .line 2322
    goto :goto_2
.end method

.method protected updateStreamBufferStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2650
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v3, "updateStreamBufferStatus() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    iget-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mIsLiveStreamMode:Z

    if-eq v2, v4, :cond_0

    iget-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->isActivityExit:Z

    if-eqz v2, :cond_1

    .line 2669
    :cond_0
    :goto_0
    return-void

    .line 2657
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->getBufferStatus()I

    move-result v1

    .line 2658
    .local v1, secondProgress:I
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 2660
    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 2661
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->getDuration()I

    move-result v2

    iput v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    .line 2662
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mDurationView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/music/common/data/MediaMetadata;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2665
    .end local v1           #secondProgress:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2666
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2667
    const-string v2, "MusicPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException occured 31 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public upgradeMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 5178
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0a002a

    invoke-virtual {p0, v1}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v2, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02002c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5180
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0a0023

    invoke-interface {v0, v4, v4, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020018

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5182
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x7

    const v2, 0x7f0a0028

    invoke-interface {v0, v4, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020020

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5184
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0a0025

    invoke-interface {v0, v4, v3, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02002e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5186
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0a002e

    invoke-interface {v0, v4, v5, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5188
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x5

    const v2, 0x7f0a0026

    invoke-interface {v0, v4, v6, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02002b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5190
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x5

    const/4 v2, 0x6

    const v3, 0x7f0a0027

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020029

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5192
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    const/16 v1, 0xb

    const/4 v2, 0x7

    const v3, 0x7f0a003c

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5194
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x6

    const/16 v2, 0x8

    const v3, 0x7f0a0034

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020017

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5196
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    const/16 v1, 0x9

    const/16 v2, 0x9

    const v3, 0x7f0a0002

    invoke-virtual {p0, v3}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02002a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->menuSettingsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 5199
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const v3, 0x7f0a0040

    invoke-virtual {p0, v3}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->menuDetailsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 5202
    return-void
.end method
